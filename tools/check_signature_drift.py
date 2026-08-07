"""
Signature-drift gate.

Why this exists
---------------
The build compiles a small set of classes from Java with "-implicit:none". Every
other app class is read by javac from src/ for its *signatures only* — its smali,
which is what actually runs, is never regenerated.

That creates a failure mode with no build error: if a jadx-decompiled source file
has drifted from the smali that ships beside it, a call compiles cleanly against
the Java signature and then throws NoSuchMethodError / NoSuchFieldError at runtime,
on device, with nothing in the build log.

This script scans the freshly generated smali for references into app classes that
were NOT regenerated, and verifies each referenced member really exists in the
shipped smali — walking the superclass chain, since an inherited member lives in a
parent file.

Exit code 0 = no drift. Non-zero = drift found; do not ship.
"""
import os
import re
import sys

WORKSPACE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SMALI_ROOT = os.path.join(WORKSPACE, "apktool_out", "smali")

# Only these package roots are ours. android/* and java/* resolve against the
# framework at runtime and are out of scope.
APP_PREFIXES = ("Lcom/sprd/", "Lcom/duoqin/", "Lcom/kosherjava/")

INVOKE_RE = re.compile(
    r"^\s*invoke-[a-z/]+\s*\{[^}]*\},\s*(L[^;]+;)->([^(]+)(\([^)]*\)[^\s]*)"
)
FIELD_RE = re.compile(
    r"^\s*[is](?:get|put)[a-z-]*\s+[^,]+,\s*[^,]+,\s*(L[^;]+;)->([^:]+):(\S+)"
)
SUPER_RE = re.compile(r"^\.super\s+(L[^;]+;)")


def smali_path(cls):
    """Lcom/foo/Bar; -> absolute path of its smali file, or None."""
    return os.path.join(SMALI_ROOT, *cls[1:-1].split("/")) + ".smali"


def members_of(cls, _cache={}):
    """(methods, fields, super) declared directly in cls."""
    if cls in _cache:
        return _cache[cls]
    path = smali_path(cls)
    methods, fields, sup = set(), set(), None
    if os.path.exists(path):
        with open(path, encoding="utf-8", errors="replace") as fh:
            for line in fh:
                if line.startswith(".method"):
                    m = re.search(r"([^\s]+)(\([^)]*\)[^\s]*)\s*$", line)
                    if m:
                        methods.add(m.group(1) + m.group(2))
                elif line.startswith(".field"):
                    m = re.search(r"([^\s:]+):(\S+)", line)
                    if m:
                        fields.add(m.group(1) + ":" + m.group(2))
                elif line.startswith(".super"):
                    m = SUPER_RE.match(line)
                    if m:
                        sup = m.group(1)
    _cache[cls] = (methods, fields, sup)
    return _cache[cls]


def resolves(cls, member, is_field):
    """Walk the superclass chain looking for member.

    Returns "ok"        - found in one of our classes
            "framework" - not found before the chain left our tree
            "missing"   - chain ended inside our tree without a hit

    "framework" is NOT proof of correctness. A call like
    HomeApplication->getLauncherModel() is absent from HomeApplication.smali and
    then walks up to android.app.Application, which we cannot inspect — so a naive
    check passes it and the device throws NoSuchMethodError. That exact bug shipped
    once; anything landing here is reported for review rather than waved through.
    """
    seen = set()
    entered_tree = False
    while cls and cls not in seen:
        seen.add(cls)
        if not os.path.exists(smali_path(cls)):
            return "framework" if entered_tree else "ok"
        entered_tree = True
        methods, fields, sup = members_of(cls)
        if member in (fields if is_field else methods):
            return "ok"
        cls = sup
    return "missing"


def main():
    if len(sys.argv) < 2:
        print("usage: check_signature_drift.py <regenerated.smali> [...]")
        return 2

    regenerated = {}
    for p in sys.argv[1:]:
        rel = os.path.relpath(os.path.abspath(p), SMALI_ROOT).replace(os.sep, "/")
        regenerated["L" + rel[: -len(".smali")] + ";"] = p

    problems = []
    inherited = []
    for cls, path in sorted(regenerated.items()):
        with open(path, encoding="utf-8", errors="replace") as fh:
            for lineno, line in enumerate(fh, 1):
                for rx, is_field in ((INVOKE_RE, False), (FIELD_RE, True)):
                    m = rx.match(line)
                    if not m:
                        continue
                    target = m.group(1)
                    if not target.startswith(APP_PREFIXES):
                        continue
                    if target in regenerated:
                        continue  # regenerated together, consistent by construction
                    member = (
                        m.group(2) + ":" + m.group(3)
                        if is_field
                        else m.group(2) + m.group(3)
                    )
                    verdict = resolves(target, member, is_field)
                    entry = (f"{os.path.basename(path)}:{lineno}  "
                             f"{target}->{member}")
                    if verdict == "missing":
                        problems.append(entry)
                    elif verdict == "framework":
                        inherited.append(entry)

    if inherited:
        print(f"[?] {len(inherited)} reference(s) not declared by the target class; "
              f"they can only resolve via a framework superclass:")
        for r in inherited:
            print("    " + r)
        print("    Verify each is genuinely inherited from the Android SDK. If one is "
              "an app method that simply does not exist, it throws on device.")

    if problems:
        print(f"[!] SIGNATURE DRIFT: {len(problems)} reference(s) do not exist "
              f"in the shipped smali:")
        for p in problems:
            print("    " + p)
        print("[!] These compile fine but throw NoSuchMethodError on the device.")
        return 1

    print(f"[+] No signature drift across {len(regenerated)} regenerated class(es).")
    return 0


if __name__ == "__main__":
    sys.exit(main())

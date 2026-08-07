"""
Behaviour-parity gate.

Why this exists
---------------
Most of src/ is jadx output. For the classes that were hand-patched directly in
smali, the Java mirror was never kept in sync — it is a *less capable* copy. Adding
such a class to the compile list therefore deletes working behaviour with no error
from javac, no error from d8, and no error from apktool.

This actually happened: compiling Home.java dropped the widget-page key handling
(Menu -> removal dialog, Back -> page 0, arrows swallowed on widget pages), because
that logic only ever existed in Home.smali.

The check compares, per outer class, the set of calls and field accesses into other
app classes, between a known-good snapshot and the freshly generated smali. Anything
the snapshot reached and the new build does not is a candidate lost behaviour.

Inner classes are folded into their outer class because anonymous classes get
renumbered by the compiler, which makes per-file comparison useless.

Usage:
    check_behaviour_parity.py <snapshot_smali_root> <class/path/Name> [...]

Exit 0 = parity. Non-zero = references lost; review before shipping.
"""
import os
import re
import sys

WORKSPACE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CURRENT_ROOT = os.path.join(WORKSPACE, "apktool_out", "smali")

APP_PREFIXES = ("Lcom/sprd/", "Lcom/duoqin/", "Lcom/kosherjava/")

REF_RE = re.compile(r"(L(?:com/sprd|com/duoqin|com/kosherjava)/[^;]+;)->([^\s,]+)")

# References that legitimately differ between a hand-written and a compiled version
# without any behaviour change.
IGNORE_MEMBER_PREFIXES = ("access$", "<init>", "this$")


def collect(root, pkg_dir, cls):
    """Every app-class reference made by cls and its inner classes."""
    d = os.path.join(root, *pkg_dir.split("/"))
    refs = set()
    if not os.path.isdir(d):
        return refs
    for f in os.listdir(d):
        if not f.endswith(".smali"):
            continue
        stem = f[: -len(".smali")]
        if stem != cls and not stem.startswith(cls + "$"):
            continue
        with open(os.path.join(d, f), encoding="utf-8", errors="replace") as fh:
            for line in fh:
                for target, member in REF_RE.findall(line):
                    if member.startswith(IGNORE_MEMBER_PREFIXES):
                        continue
                    # Ignore references to our own inner classes: the compiler
                    # renumbers anonymous classes, so those never compare usefully.
                    # References to the outer class itself ARE kept — javac emits
                    # inherited calls on the static type, and dropping them here
                    # would hide the very losses this script looks for.
                    if target.startswith("L" + pkg_dir + "/" + cls + "$"):
                        continue
                    refs.add(target + "->" + member)
    return refs


def main():
    if len(sys.argv) < 3:
        print(__doc__)
        return 2

    snapshot_root = sys.argv[1]
    if not os.path.isdir(snapshot_root):
        print(f"[!] Snapshot root not found: {snapshot_root}")
        return 2

    baseline = set()
    baseline_path = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                                 "behaviour_parity_baseline.txt")
    if os.path.exists(baseline_path):
        with open(baseline_path, encoding="utf-8") as fh:
            for line in fh:
                line = line.strip()
                if not line or line.startswith("#"):
                    continue
                parts = line.split(None, 1)
                if len(parts) == 2:
                    baseline.add((parts[0], parts[1].strip()))

    lost_total = 0
    for rel in sys.argv[2:]:
        pkg_dir, cls = rel.rsplit("/", 1)
        before = collect(snapshot_root, pkg_dir, cls)
        after = collect(CURRENT_ROOT, pkg_dir, cls)
        if not before:
            print(f"[ ] {rel}: no snapshot, skipped")
            continue
        # A hand-written smali call names the *declaring* class
        # (BaseHomeActivity->setupFeatureBar); javac emits the same call on the
        # *static* type (Home->setupFeatureBar). Same dispatch at runtime. Compare
        # member signatures too so that difference does not read as a loss.
        after_members = {r.split("->", 1)[1] for r in after}
        lost = sorted(r for r in (before - after)
                      if r.split("->", 1)[1] not in after_members
                      and (rel, r) not in baseline)
        accepted = sorted(r for r in (before - after)
                          if r.split("->", 1)[1] not in after_members
                          and (rel, r) in baseline)
        before_members = {r.split("->", 1)[1] for r in before}
        gained = sorted(r for r in (after - before)
                        if r.split("->", 1)[1] not in before_members)
        if lost:
            lost_total += len(lost)
            print(f"[!] {rel}: {len(lost)} reference(s) LOST")
            for r in lost:
                print("      - " + r)
        if gained:
            print(f"[+] {rel}: {len(gained)} new reference(s)")
            for r in gained:
                print("      + " + r)
        if accepted:
            print(f"[=] {rel}: {len(accepted)} accepted delta(s) "
                  f"(see tools/behaviour_parity_baseline.txt)")
        if not lost and not gained and not accepted:
            print(f"[+] {rel}: parity")

    if lost_total:
        print(f"\n[!] {lost_total} reference(s) present before and gone now.")
        print("[!] Each one is behaviour that existed on the device and no longer does.")
        return 1

    print("\n[+] No behaviour lost.")
    return 0


if __name__ == "__main__":
    sys.exit(main())

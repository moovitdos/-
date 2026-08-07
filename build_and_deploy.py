import os
import sys
import subprocess
import shutil
import zipfile

WORKSPACE = os.path.dirname(os.path.abspath(__file__))
TOOLS_DIR = os.path.join(WORKSPACE, "tools")
BUILD_TMP = os.path.join(WORKSPACE, "build_tmp")

ANDROID_JAR = os.path.join(TOOLS_DIR, "android-19", "android.jar")
D8_JAR = os.path.join(TOOLS_DIR, "d8.jar")
ZIPALIGN = os.path.join(TOOLS_DIR, "zipalign.exe")
APKSIGNER_JAR = os.path.join(TOOLS_DIR, "apksigner.jar")
APKTOOL_JAR = os.path.join(TOOLS_DIR, "apktool", "apktool.jar")
ADB = os.path.join(TOOLS_DIR, "adb", "adb.exe")

KEYSTORE = os.path.join(WORKSPACE, "debug.keystore")
OUTPUT_APK = os.path.join(WORKSPACE, "ClassicHome_v2_with_widgets.apk")
STUBS_JAR = os.path.join(TOOLS_DIR, "stubs", "stubs.jar")

# Every class built from Java. Anything not listed here keeps the smali that came out
# of the original APK and is only read by javac for signatures.
#
# Deliberately absent:
#   HomeApplication  - its smali is original and untouched; compiling it would add an
#                      unused getLauncherModel() and swap running bytes for a jadx
#                      round-trip with nothing to gain.
#   GamActivity      - dead code. No <activity> in AndroidManifest.xml, so it can
#                      never launch. It is also one of the files that will not compile.
TARGET_CLASSES = [
    "com/sprd/simple/launcher/R.java",
    "com/sprd/classichome/settings/LauncherSettings.java",
    "com/sprd/classichome/settings/LauncherSettingsActivity.java",
    "com/sprd/classichome/widget/WidgetHostManager.java",
    "com/sprd/classichome/mainmenu/MainMenuWidgetHelper.java",
    "com/sprd/classichome/Home.java",
    "com/sprd/classichome/HomeStatusView.java",
    "com/sprd/common/util/KeyCodeEventUtil.java",
    "com/sprd/classichome/model/LauncherModel.java",
    "com/sprd/classichome/mainmenu/MainMenuActivity.java",
]


def _emitted_top_level(classes_dir):
    """Fully-qualified names of the top-level classes javac actually wrote."""
    out = set()
    for root, _dirs, files in os.walk(classes_dir):
        for f in files:
            if f.endswith(".class") and "$" not in f:
                rel = os.path.relpath(os.path.join(root, f), classes_dir)
                out.add(rel[:-len(".class")].replace(os.sep, "."))
    return out

def get_short_path(path):
    try:
        import ctypes
        buffer = ctypes.create_unicode_buffer(1024)
        ctypes.windll.kernel32.GetShortPathNameW(path, buffer, 1024)
        if buffer.value:
            return buffer.value
    except Exception:
        pass
    return path

SHORT_WORKSPACE = get_short_path(WORKSPACE)

def run_cmd(cmd, check=True, cwd=WORKSPACE, shell=False):
    print(f"[*] Running: {' '.join(cmd) if isinstance(cmd, list) else cmd}")
    res = subprocess.run(cmd, cwd=cwd, shell=shell, text=True, capture_output=True)
    if res.stdout:
        print(res.stdout.strip())
    if res.stderr:
        print("[STDERR]", res.stderr.strip())
    if check and res.returncode != 0:
        print(f"[!] Command failed with return code {res.returncode}")
        sys.exit(res.returncode)
    return res

def step_1_compile_java():
    print("\n=== [1/5] Compiling Java Helper Classes ===")
    classes_dir = os.path.join(BUILD_TMP, "classes")
    dex_dir = os.path.join(BUILD_TMP, "dex")
    shutil.rmtree(classes_dir, ignore_errors=True)
    shutil.rmtree(dex_dir, ignore_errors=True)
    os.makedirs(classes_dir, exist_ok=True)
    os.makedirs(dex_dir, exist_ok=True)

    src_files = [os.path.join(WORKSPACE, "src", *p.split("/")) for p in TARGET_CLASSES]

    missing = [f for f in src_files if not os.path.exists(f)]
    if missing:
        print("[!] Target sources missing:")
        for m in missing:
            print("    " + m)
        sys.exit(1)

    print(f"[*] Compiling {len(src_files)} Java files...")

    # -bootclasspath carries android.jar plus our tiny stub jar. The stubs supply
    # signatures for @hide/OEM classes (SystemProperties, EventRecordManager,
    # ActionBarView) that are absent from the public SDK but present on the device.
    # They are never handed to d8, so they never enter the APK.
    bootcp = ANDROID_JAR + os.pathsep + STUBS_JAR

    # NOTE: "-cp original_from_device.apk" used to sit here. It was a no-op — the APK
    # holds classes.dex and zero .class files, so javac could never read anything from
    # it. Removed.
    #
    # The next two flags MUST travel together. "-sourcepath src" lets javac resolve
    # the rest of the app from source; "-implicit:none" stops it emitting class files
    # for anything it merely read. Ship -sourcepath without -implicit:none and the
    # build silently overwrites the smali of BaseHomeActivity, Utilities, UtilitiesExt,
    # FlashlightController, FeatureBarHelper, AppsSort and more.
    cmd_javac = [
        "javac",
        "-source", "1.8",
        "-target", "1.8",
        "-encoding", "utf-8",
        "-nowarn",
        "-bootclasspath", bootcp,
        "-sourcepath", os.path.join(WORKSPACE, "src"),
        "-implicit:none",
        "-Xmaxerrs", "10000",
        "-d", classes_dir
    ] + src_files
    run_cmd(cmd_javac)

    emitted = _emitted_top_level(classes_dir)
    expected = {p[:-len(".java")].replace("/", ".") for p in TARGET_CLASSES}
    leaked = emitted - expected
    if leaked:
        print("[!] -implicit:none failed to contain the compile. These classes leaked:")
        for c in sorted(leaked):
            print("    " + c)
        print("[!] Refusing to continue — they would overwrite untouched smali.")
        sys.exit(1)
    print(f"[+] Compile contained: exactly {len(emitted)} top-level classes, no leaks.")

    # Convert .class to classes.dex using D8
    class_files = []
    for root, dirs, files in os.walk(classes_dir):
        for f in files:
            if f.endswith(".class"):
                class_files.append(os.path.join(root, f))

    cmd_d8 = [
        "java", "-cp", D8_JAR, "com.android.tools.r8.D8",
        "--min-api", "19",
        "--lib", ANDROID_JAR,
        "--output", dex_dir
    ] + class_files
    run_cmd(cmd_d8)

    dex_file = os.path.join(dex_dir, "classes.dex")
    if not os.path.exists(dex_file):
        print("[!] DEX generation failed!")
        sys.exit(1)

    # Convert DEX to Smali using apktool
    dummy_apk = os.path.join(BUILD_TMP, "dummy.apk")
    with zipfile.ZipFile(dummy_apk, "w") as z:
        z.write(dex_file, "classes.dex")
        z.write(os.path.join(WORKSPACE, "apktool_out", "AndroidManifest.xml"), "AndroidManifest.xml")

    smali_temp = os.path.join(BUILD_TMP, "smali_out")
    shutil.rmtree(smali_temp, ignore_errors=True)
    run_cmd(["java", "-jar", APKTOOL_JAR, "d", dummy_apk, "-o", smali_temp, "-r", "-f"])

    src_smali_root = os.path.join(smali_temp, "smali")
    dest_smali_root = os.path.join(WORKSPACE, "apktool_out", "smali")

    # Replace each target class atomically: drop the old outer class AND its inner
    # classes before copying the new set in.
    #
    # Without this the build only ever overwrites, never deletes. Anonymous inner
    # classes are numbered by declaration order, so removing or reordering a listener
    # leaves a stale Foo$4.smali behind that still gets packed into the APK.
    # WidgetHostManager$4.smali is exactly that — an orphan from an older revision.
    #
    # Matching is exact: "Home" removes Home.smali and Home$*.smali, and must not
    # touch HomeStatusView.smali.
    removed = 0
    for rel_java in TARGET_CLASSES:
        pkg_dir, cls = rel_java[:-len(".java")].rsplit("/", 1)
        d = os.path.join(dest_smali_root, *pkg_dir.split("/"))
        if not os.path.isdir(d):
            continue
        for existing in os.listdir(d):
            if not existing.endswith(".smali"):
                continue
            stem = existing[:-len(".smali")]
            if stem == cls or stem.startswith(cls + "$"):
                os.remove(os.path.join(d, existing))
                removed += 1
    if removed:
        print(f"[*] Cleared {removed} stale smali file(s) for the target classes")

    injected = []
    for root, _dirs, files in os.walk(src_smali_root):
        for f in files:
            if f.endswith(".smali"):
                rel = os.path.relpath(os.path.join(root, f), src_smali_root)
                dest = os.path.join(dest_smali_root, rel)
                os.makedirs(os.path.dirname(dest), exist_ok=True)
                shutil.copy2(os.path.join(root, f), dest)
                injected.append(dest)
    print(f"[+] Injected {len(injected)} smali file(s)")

    _gate_signature_drift(injected)


def _gate_signature_drift(injected):
    """Blocking gate. See tools/check_signature_drift.py for the failure mode."""
    print("\n=== [1b/5] Signature-drift gate ===")
    checker = os.path.join(TOOLS_DIR, "check_signature_drift.py")
    if not os.path.exists(checker):
        print("[!] check_signature_drift.py is missing — refusing to build blind.")
        sys.exit(1)
    res = subprocess.run([sys.executable, checker] + injected,
                         cwd=WORKSPACE, text=True, capture_output=True)
    if res.stdout:
        print(res.stdout.strip())
    if res.stderr:
        print("[STDERR]", res.stderr.strip())
    if res.returncode != 0:
        print("[!] Aborting: the APK would build cleanly and then crash on device.")
        sys.exit(res.returncode)

def step_2_build_apk():
    print("\n=== [2/5] Building APK with Apktool ===")
    framework_apk = os.path.join(TOOLS_DIR, "framework", "1.apk")
    if os.path.exists(framework_apk):
        run_cmd(["java", "-jar", APKTOOL_JAR, "if", framework_apk])

    unsigned_apk = os.path.join(BUILD_TMP, "ClassicHome_unsigned.apk")
    if os.path.exists(unsigned_apk):
        os.remove(unsigned_apk)

    short_out = os.path.join(SHORT_WORKSPACE, "apktool_out")
    short_target = os.path.join(SHORT_WORKSPACE, "build_tmp", "ClassicHome_unsigned.apk")
    run_cmd(["java", "-jar", APKTOOL_JAR, "b", short_out, "-o", short_target])

def step_3_zipalign():
    print("\n=== [3/5] Aligning APK (zipalign 4-byte) ===")
    unsigned_apk = os.path.join(BUILD_TMP, "ClassicHome_unsigned.apk")
    aligned_apk = os.path.join(BUILD_TMP, "ClassicHome_aligned.apk")
    if os.path.exists(aligned_apk):
        os.remove(aligned_apk)

    run_cmd([ZIPALIGN, "-p", "-f", "4", unsigned_apk, aligned_apk])

def step_4_sign_apk():
    print("\n=== [4/5] Signing APK with debug key ===")
    aligned_apk = os.path.join(BUILD_TMP, "ClassicHome_aligned.apk")

    if not os.path.exists(KEYSTORE):
        print("[*] Generating debug.keystore...")
        cmd_key = [
            "keytool", "-genkeypair", "-v",
            "-keystore", KEYSTORE,
            "-storepass", "android",
            "-alias", "androiddebugkey",
            "-keypass", "android",
            "-keyalg", "RSA",
            "-keysize", "2048",
            "-validity", "10000",
            "-dname", "CN=Android Debug,O=Android,C=US"
        ]
        run_cmd(cmd_key)

    if os.path.exists(OUTPUT_APK):
        os.remove(OUTPUT_APK)

    cmd_sign = [
        "java", "-jar", APKSIGNER_JAR, "sign",
        "--ks", KEYSTORE,
        "--ks-pass", "pass:android",
        "--ks-key-alias", "androiddebugkey",
        "--key-pass", "pass:android",
        "--out", OUTPUT_APK,
        aligned_apk
    ]
    run_cmd(cmd_sign)
    print(f"\n[SUCCESS] Generated signed APK at: {OUTPUT_APK}")
    print(f"File Size: {os.path.getsize(OUTPUT_APK)} bytes")

def step_5_deploy():
    print("\n=== [5/5] Deploying to Connected ADB Device ===")
    res = subprocess.run([ADB, "devices"], capture_output=True, text=True)
    devices = []
    for line in res.stdout.splitlines():
        parts = line.strip().split()
        if len(parts) >= 2 and parts[1] == "device":
            devices.append(parts[0])
    if len(devices) != 1:
        print("[-] Deployment requires exactly one authorized ADB device.")
        if devices:
            print("[!] Connected authorized devices:", ", ".join(devices))
        return

    device = devices[0]
    print(f"[+] Found authorized device: {device}")
    run_cmd([ADB, "-s", device, "install", "-r", "-d", OUTPUT_APK])
    run_cmd([ADB, "-s", device, "shell", "am", "force-stop", "com.sprd.simple.launcher.mod"])
    run_cmd([ADB, "-s", device, "shell", "am", "start", "-n", "com.sprd.simple.launcher.mod/com.sprd.classichome.Home"])
    print("[+] Launched modified Home Launcher successfully on device!")

if __name__ == "__main__":
    os.makedirs(BUILD_TMP, exist_ok=True)
    step_1_compile_java()
    step_2_build_apk()
    step_3_zipalign()
    step_4_sign_apk()
    if len(sys.argv) > 1 and sys.argv[1] == "--deploy":
        step_5_deploy()
    else:
        print("[*] Build-only mode. Use --deploy to install on an authorized ADB device.")

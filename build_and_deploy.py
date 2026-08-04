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

    src_files = [
        os.path.join(WORKSPACE, "src", "com", "sprd", "classichome", "widget", "WidgetHostManager.java"),
        os.path.join(WORKSPACE, "src", "com", "sprd", "classichome", "mainmenu", "MainMenuWidgetHelper.java")
    ]

    if not src_files:
        print("[!] No java source files found in src/")
        return

    # Find javac
    javac = "javac"
    cmd_javac = [
        javac,
        "-source", "1.8",
        "-target", "1.8",
        "-encoding", "utf-8",
        "-bootclasspath", ANDROID_JAR,
        "-cp", os.path.join(WORKSPACE, "src"),
        "-d", classes_dir
    ] + src_files
    run_cmd(cmd_javac)

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

    # Copy generated smali to apktool_out/smali
    src_smali_root = os.path.join(smali_temp, "smali")
    dest_smali_root = os.path.join(WORKSPACE, "apktool_out", "smali")
    for root, dirs, files in os.walk(src_smali_root):
        for f in files:
            if f.endswith(".smali"):
                rel = os.path.relpath(os.path.join(root, f), src_smali_root)
                dest = os.path.join(dest_smali_root, rel)
                os.makedirs(os.path.dirname(dest), exist_ok=True)
                shutil.copy2(os.path.join(root, f), dest)
                print(f"[+] Injected smali: {rel}")

def step_2_build_apk():
    print("\n=== [2/5] Building APK with Apktool ===")
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
    lines = [line.strip() for line in res.stdout.splitlines() if line.strip() and not line.startswith("List")]
    if not lines:
        print("[-] No connected device found via ADB. Skipping auto-install.")
        return

    print(f"[+] Found device: {lines[0]}")
    run_cmd([ADB, "install", "-r", "-d", OUTPUT_APK], check=False)
    run_cmd([ADB, "shell", "am", "start", "-n", "com.sprd.simple.launcher.mod/com.sprd.classichome.Home"], check=False)
    print("[+] Launched modified Home Launcher successfully on device!")

if __name__ == "__main__":
    os.makedirs(BUILD_TMP, exist_ok=True)
    step_1_compile_java()
    step_2_build_apk()
    step_3_zipalign()
    step_4_sign_apk()
    if len(sys.argv) > 1 and sys.argv[1] == "--deploy" or len(sys.argv) == 1:
        step_5_deploy()

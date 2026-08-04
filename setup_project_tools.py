import os
import shutil
import glob

WORKSPACE = os.path.dirname(os.path.abspath(__file__))
TOOLS_DIR = os.path.join(WORKSPACE, "tools")

os.makedirs(TOOLS_DIR, exist_ok=True)
os.makedirs(os.path.join(TOOLS_DIR, "android-19"), exist_ok=True)
os.makedirs(os.path.join(TOOLS_DIR, "adb"), exist_ok=True)
os.makedirs(os.path.join(TOOLS_DIR, "apktool"), exist_ok=True)

# 1. Copy android.jar
src_android_jar = r"C:\AndroidSDK\platforms\android-19\android.jar"
if os.path.exists(src_android_jar):
    shutil.copy2(src_android_jar, os.path.join(TOOLS_DIR, "android-19", "android.jar"))
    print("[+] Copied android.jar (API 19)")

# 2. Copy d8.jar
src_d8 = r"C:\Android\android-sdk\build-tools\30.0.3\lib\d8.jar"
if os.path.exists(src_d8):
    shutil.copy2(src_d8, os.path.join(TOOLS_DIR, "d8.jar"))
    print("[+] Copied d8.jar")

# 3. Copy zipalign.exe
src_zipalign = r"C:\Android\android-sdk\build-tools\30.0.3\zipalign.exe"
if os.path.exists(src_zipalign):
    shutil.copy2(src_zipalign, os.path.join(TOOLS_DIR, "zipalign.exe"))
    print("[+] Copied zipalign.exe")

# 4. Copy apksigner
src_apksigner = r"C:\Android\android-sdk\build-tools\30.0.3\lib\apksigner.jar"
if os.path.exists(src_apksigner):
    shutil.copy2(src_apksigner, os.path.join(TOOLS_DIR, "apksigner.jar"))
    print("[+] Copied apksigner.jar")

# 5. Copy aapt and aapt2
for tool in ["aapt.exe", "aapt2.exe"]:
    p = os.path.join(r"C:\Android\android-sdk\build-tools\30.0.3", tool)
    if os.path.exists(p):
        shutil.copy2(p, os.path.join(TOOLS_DIR, tool))
        print(f"[+] Copied {tool}")

# 6. Copy ADB
adb_dir = r"C:\adb"
if not os.path.exists(adb_dir):
    adb_dir = r"C:\Android\android-sdk\platform-tools"

if os.path.exists(adb_dir):
    for f in ["adb.exe", "AdbWinApi.dll", "AdbWinUsbApi.dll"]:
        src_f = os.path.join(adb_dir, f)
        if os.path.exists(src_f):
            shutil.copy2(src_f, os.path.join(TOOLS_DIR, "adb", f))
            print(f"[+] Copied adb/{f}")

# 7. Locate and copy apktool.jar
apktool_candidates = [
    r"C:\ProgramData\chocolatey\lib\apktool\tools\apktool.jar",
    r"C:\apktool\apktool.jar",
    r"C:\Users\a0527\apktool.jar"
]
for cand in apktool_candidates:
    if os.path.exists(cand):
        shutil.copy2(cand, os.path.join(TOOLS_DIR, "apktool", "apktool.jar"))
        print(f"[+] Copied apktool.jar from {cand}")
        break

print("\n[*] All essential tools are copied to local ./tools folder!")

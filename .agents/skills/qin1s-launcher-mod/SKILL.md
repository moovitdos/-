---
name: qin1s-launcher-mod
description: סקיל מקיף לפיתוח, הידור, הנדסה לאחור, פאצ'ינג והרחבת אפליקציית מסך הבית (ClassicHome) עבור מכשירי מקשים Qin 1s / Qin 1s+ (Android 4.4.4 KitKat API 19).
---

# סקיל פיתוח והרחבת מסך הבית - Qin 1s / 1s+ ClassicHome Mod

מדריך זה מספק את כל הידע הארכיטקטוני, כלי העבודה, מבנה הקוד וההוראות המדויקות להמשך פיתוח, תחזוקה והוספת פיצ'רים במסך הבית של מכשיר ה-Qin 1s+.

---

## 1. ארכיטקטורת המערכת

- **מכשיר יעד**: Xiaomi / Duoqin Qin 1s / 1s+ (מעבד Unisoc SC9820E / Spreadtrum).
- **גרסת אנדרואיד**: Android 4.4.4 (KitKat), API 19.
- **רזולוציית מסך**: 240x320 פיקסלים (QVGA Portrait).
- **קלט**: מקלדת מקשים פיזית (D-Pad, מקשי בחירה, ספרות, כוכבית וסולמית).
- **חבילת מקור**: `com.sprd.simple.launcher` (`ClassicHome.apk`).
- **חבילת יעד (מוד)**: `com.sprd.simple.launcher.mod` (מאפשר התקנה לצד או מעל גרסת המערכת ללא התנגשות חתימות).

---

## 2. מיפוי מקשים ואירועים (Keycode Map)

במכשיר ה-Qin 1s+, המקשים ממופים לקודי אירוע ייעודיים ב-`Home.smali` (`onKeyUp` / `onKeyDown`):

| מקש פיזי | KeyCode (Hex) | KeyCode (Dec) | תפקיד מקורי במסך 0 | תפקיד מורחב בעמודי הווידג'טים |
| :--- | :--- | :--- | :--- | :--- |
| **סולמית (`#`)** | `0x12` | 18 | שינוי מצב שמע / רטט | **מעבר עמודים מחזורי ב-ViewFlipper (`0 -> 1 -> ... -> 0`)** |
| **מקש שמאלי / Menu** | `0x52` | 82 | פתיחת קיצור שמאל (`mLeftCn`) | **פתיחת דיאלוג הסרת ווידג'ט בעמוד הנוכחי** |
| **מקש ימני / Back** | `0x4` | 4 | פתיחת קיצור ימין (`mRightCn`) | **חזרה מיידית למסך הראשי (עמוד 0)** |
| **D-Pad למעלה** | `0x13` | 19 | קיצור למעלה | מנוטרל מקיצורים (גלילה חופשית) |
| **D-Pad למטה** | `0x14` | 20 | משיכת וילון התראות | מנוטרל מקיצורים (גלילה חופשית) |
| **D-Pad שמאלה** | `0x15` | 21 | קיצור שמאלה | מנוטרל מקיצורים (גלילה חופשית) |
| **D-Pad ימינה** | `0x16` | 22 | קיצור ימינה | מנוטרל מקיצורים (גלילה חופשית) |
| **מקש מרכזי (Center)** | `0x17` | 23 | כניסה לתפריט ראשי (`goMainMenu`) | כניסה לתפריט ראשי |

---

## 3. מבנה פרויקט וחלוקת קבצים

```text
מסך בית/
├── tools/                        # כל כלי הפיתוח וההידור המקומיים (עצמאי לחלוטין)
│   ├── android-19/android.jar    # Android SDK Platform API 19
│   ├── apktool/apktool.jar       # Apktool 2.11.1
│   ├── adb/                      # adb.exe, AdbWinApi.dll, AdbWinUsbApi.dll
│   ├── d8.jar                    # D8 DEX Compiler
│   ├── zipalign.exe              # ZipAlign 4-byte
│   ├── apksigner.jar             # APK Signer (v1/v2/v3 signatures)
│   ├── aapt.exe / aapt2.exe      # Asset Packaging Tool
├── src/                          # קוד מקור ב-Java של המודולים המותאמים
│   └── com/sprd/classichome/
│       ├── widget/
│       │   └── WidgetHostManager.java   # מנהל הווידג'טים, ריבוי עמודים ואירועי מחזור חיים
│       └── mainmenu/
│           └── MainMenuWidgetHelper.java # דיאלוג הוספת ווידג'ט מתפריט האפליקציות בלחיצה ארוכה
├── apktool_out/                  # קוד ה-Smali והמשאבים המפורקים
│   ├── smali/com/sprd/classichome/
│   │   ├── Home.smali            # הפעילות הראשית של מסך הבית (ניהול מקשים, Flipper, Lifecycle)
│   │   ├── mainmenu/MainMenuActivity.smali # לכידת לחיצה ארוכה (onItemLongClick)
│   │   └── widget/               # קבצי Smali של מנהל הווידג'טים (מוזרקים אוטומטית)
│   ├── res/layout/home.xml       # פריסת ה-ViewFlipper עם עמודי הגלילה
│   └── AndroidManifest.xml       # הגדרות הרשאות ו-Widget Host
├── build_and_deploy.py           # סקריפט אוטומטי מלא להידור, בנייה, חתימה והתקנה
├── build.bat                     # קובץ הפעלה מהיר בלחיצה אחת ל-Windows
├── PROJECT_MAP.md                # מפת הקשר ותיעוד טכני מלא
└── debug.keystore                # מפתח חתימה debug
```

---

## 4. תהליך הידור היברידי (Java -> DEX -> Smali -> APK)

הפרויקט עושה שימוש בשיטת עבודה היברידית המאפשרת לכתוב קוד מתקדם ונקי ב-Java ולהזריק אותו ישירות ל-Smali:

1. **כתיבת קוד ב-Java**:
   כל הרכיבים החדשים נכתבים ב-`src/` ב-Java 1.8 נקי.
2. **הידור ל-Bytecode (`javac`)**:
   ```bash
   javac -source 1.8 -target 1.8 -bootclasspath tools/android-19/android.jar -d build_tmp/classes src/...
   ```
3. **הידור ל-Dalvik Executable (`d8`)**:
   ```bash
   java -cp tools/d8.jar com.android.tools.r8.D8 --min-api 19 --lib tools/android-19/android.jar --output build_tmp/dex build_tmp/classes/...
   ```
4. **פירוק ל-Smali (`apktool d`)**:
   ה-DEX מפורק ל-Smali ומוזרק ל-`apktool_out/smali/com/sprd/classichome/...`.
5. **בנייה וחתימה (`apktool b` -> `zipalign` -> `apksigner`)**:
   נבנה קובץ APK חתום ומוכן: `ClassicHome_v2_with_widgets.apk`.

---

## 5. דגשים קריטיים ופתרון בעיות (Troubleshooting)

### א. תמיכה בנתיבים בעברית ב-Windows
Apktool עלול להיתקל בבעיות כאשר יש רווחים או עברית בנתיב.
- **הפתרון**: הסקריפט `build_and_deploy.py` משתמש אוטומטית ב-Windows Short Path (`GetShortPathNameW`, כגון `1A16~1`), מה שמבטיח פעולה חלקה 100%.

### ב. מגבלת אוגרים (Registers / `.locals`) ב-Smali
כאשר עורכים מתודות קיימות (כמו `onKeyUp` ב-`Home.smali`), יש לוודא שמוגדרים מספיק רגיסטרים מקומיים:
- השתמש ב-`.locals 6` (או יותר).
- שים לב: `v0..v5` הם מקומיים, ו-`p0` (this) נמצא באוגר שאחרי ה-locals. דריסה של `p0` תגרום ל-`java.lang.VerifyError`.

### ג. שגיאת חתימת אפליקציית מערכת (`INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES`)
אפליקציית `com.sprd.simple.launcher` מגיעה מובנית ב-`/system/priv-app/`. כדי להתקין עדכון ללא גישת Root לצריבה ב-system:
- ב-`apktool.yml` הוגדר: `renameManifestPackage: com.sprd.simple.launcher.mod`.
- כך האפליקציה מותקנת ופועלת באופן מיידי ויציב כ-Launcher לכל דבר.

---

## 6. הרצת בנייה והתקנה בלחיצה אחת

לביצוע הידור, חתימה והתקנה על המכשיר המחובר:
- לחץ פעמיים על [build.bat](file:///c:/Users/a0527/Desktop/%D7%9E%D7%A1%D7%9A%20%D7%91%D7%99%D7%AA/build.bat), או הרץ בטרמינל:
  ```powershell
  python build_and_deploy.py
  ```
קובץ ה-APK המוגמר ייווצר בנתיב:
`c:\Users\a0527\Desktop\מסך בית\ClassicHome_v2_with_widgets.apk`

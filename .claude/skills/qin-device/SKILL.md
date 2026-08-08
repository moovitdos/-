---
name: qin-device
description: עבודה מול מכשיר ה-Qin 1s+ המחובר — adb, צילומי מסך, הדלקת מסך, ניווט במקשים, אימות פיקסלים, logcat ופתיחת מסכים. חובה לפני כל בדיקה על המכשיר או דיבאג ויזואלי.
---

# עבודה מול המכשיר (Qin 1s+)

מכשיר יחיד מחובר ב-USB (סריאלי `NML102601112` היסטורית). ‏adb מקומי: `tools\adb\adb.exe`
(בדרך כלל גם `adb` גלובלי עובד). המכשיר עם רוט (SuperSU — מאשר בלי prompt).

## צילום מסך — הריטואל המלא

```powershell
adb shell settings put system screen_off_timeout 600000   # זמני! ברירת המחדל 30000
adb shell input keyevent 26                               # להעיר (26 = toggle! אם המסך דלוק זה מכבה)
adb shell am start -n com.sprd.simple.launcher.mod/com.sprd.classichome.settings.LauncherSettingsActivity
adb shell screencap -p /sdcard/s.png
adb pull /sdcard/s.png <יעד>                              # דרך PowerShell (נתיב עברי)
# בסוף החזרה: adb shell settings put system screen_off_timeout 30000
```

- **PNG של ~318 בייט = המסך כבוי.** לא באג בקוד. ‏`keyevent 26` הוא toggle — אחרי 318 בייט
  לשלוח שוב ולצלם מחדש. ‏224 (WAKEUP) לא אמין ב-ROM הזה.
- ‏USB לפעמים נופל באמצע (`no devices found`) — ‏`adb kill-server; adb start-server`.

## ניווט במקשים

`input keyevent`: ‏19 למעלה · 20 למטה · 21 שמאלה · 22 ימינה · 23 אישור · 4 חזרה · 82 תפריט.

⚠️ **משמעת ניווט:** לחיצות עיוורות מסוכנות — במסך הבית לחיצי ה-D-pad ממופים לקיצורים
(עלולים לפתוח אפליקציה אחרת), ובדיאלוג אישור `keyevent 23` יכול לאשר פעולה הרסנית (איפוס!).
כללים: לפתוח מסכים עם `am start` מפורש ולא בניווט; לצלם מסך לפני שמאשרים משהו בדיאלוג;
מדיאלוג לא מוכר לצאת עם `keyevent 4`; אחרי כל 2–3 לחיצות ניווט — צילום לוודא איפה אנחנו.

## מסכים שימושיים

```powershell
# ההגדרות של המוד (בדיקות עיצוב):
adb shell am start -n com.sprd.simple.launcher.mod/com.sprd.classichome.settings.LauncherSettingsActivity
# הגדרות המערכת (רפרנס עיצובי):
adb shell am start -n com.android.settings/.Settings
adb shell am start -a android.settings.DISPLAY_SETTINGS
# מסך הבית של המוד:
adb shell am start -n com.sprd.simple.launcher.mod/com.sprd.classichome.Home
```

מי בפוקוס עכשיו (יש שתי חבילות launcher עם אותו שם תצוגה!):
```powershell
adb shell "dumpsys activity activities | grep mFocusedActivity"
```

## אימות פיקסלים (השיטה שמוכיחה זהות למערכת)

צילום 240×320; דגימת עמודה אנכית ב-PowerShell עם System.Drawing וקיבוץ לרצועות צבע:

```powershell
Add-Type -AssemblyName System.Drawing
$bmp = [System.Drawing.Bitmap]::FromFile("s.png")
# רצועות בעמודה x=120: לולאה על y, GetPixel, הדפסה כשהצבע משתנה
```

ערכי אמת (RGB565 של המסך מעגל מעט): רקע ‎#5A595A · פוקוס/מפריד ‎#737173 · לחוץ ‎#848684 ·
כותרת טורקיז ‎#00BED6 · ‏feature bar ‎#636563. השוואה נכונה = צילום המסך שלנו מול צילום מסך
מערכת מקביל, רצועה מול רצועה (דוגמאות רפרנס: `plan_research/rom_settings_design/reference/`).

## 🆘 חילוץ מכשיר תקוע (בלי מסך בית שמיש)

תרחיש: המוד הושבת/קורס וגם המקורי מושבת — במכשיר בלי מגע זה מצב חמור. כללי יסוד:
- **`adb install -r` לא מאפס רכיב מושבת** (המצב נשמר ב-`package-restrictions.xml`) —
  התקנה מחדש לא מצילה; חייבים `pm enable`.
- הסדר הבטוח תמיד: קודם להפעיל יעד, אחר-כך להשבית מקור (ראה qin-launcher-map).

```powershell
# מצב הרכיבים (מי מושבת):
adb shell pm list packages -d
# להפעיל חזרה את המקורי (חבילה זרה — דרך su):
adb shell "su -c 'pm enable com.sprd.simple.launcher'"
# להפעיל חזרה את ה-Home של המוד:
adb shell pm enable com.sprd.simple.launcher.mod/com.sprd.classichome.Home
# לשגר ידנית מסך בית / את מסך ההגדרות (שנשאר תמיד נגיש):
adb shell am start -c android.intent.category.HOME -a android.intent.action.MAIN
adb shell am start -n com.sprd.simple.launcher.mod/com.sprd.classichome.settings.LauncherSettingsActivity
```

רשת ביטחון נוספת שמותקנת במכשיר: `de.szalkowski.activitylauncher` — משגר כל activity.
אחרי `--deploy` שנכשל ב-`am start`: כנראה ה-Home מושבת — `pm enable` קודם.

## שונות

- ‏logcat קטן ומתגלגל מהר: `adb logcat -d | Select-String -Pattern "LauncherSettings|שם"` מיד אחרי
  התופעה, לא רטרואקטיבית.
- משיכת אפליקציית מערכת לפירוק: `adb shell pm path <pkg>` → ‏`adb pull` → ‏`apktool d`
  (בתיקייה זמנית ASCII — ‏aapt לא בולע עברית).
- ‏`input keyevent` לא שקול למקש פיזי (scanCode 0, לא מפעיל מנגנוני קרנל) — לבדיקות קלט עמוקות
  ראה `testtools` בפרויקט העכבר.
- אין במכשיר `wc`/`head`/`cut`/`tr`/`printf` — לעבד פלט במחשב.

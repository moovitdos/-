---
name: qin-launcher-build
description: בנייה, פריסה והרחבה של מוד מסך הבית ל-Qin 1s+ — צנרת javac→d8→smali→apktool, רשימת TARGET_CLASSES, הוספת קלאסים ומשאבים, שער ה-drift, ותקלות בנייה נפוצות. חובה לפני כל בנייה, הוספת קובץ Java, או הוספת משאב.
---

# בנייה ופריסה — ClassicHome Mod

## הפקודות

```powershell
python build_and_deploy.py            # בנייה בלבד → ClassicHome_v2_with_widgets.apk
python build_and_deploy.py --deploy   # בנייה + התקנה (adb install -r -d) + הפעלת Home מחדש
```

דרישה חיצונית יחידה: JDK ב-PATH (‏`javac` שתומך `-source/-target 1.8` + ‏`java` להרצת
d8/apktool/apksigner). ‏`build.bat` = אותו סקריפט (מעביר ארגומנטים; בלי ארגומנט — בנייה בלבד).

## מה הצנרת עושה (5 שלבים)

1. **Java→smali:** ‏`javac -source/-target 1.8 -bootclasspath android-19\android.jar;stubs.jar -sourcepath src -implicit:none`
   על הקבצים שב-`TARGET_CLASSES` בלבד → `d8 --min-api 19` → dex → ‏`apktool d` חזרה ל-smali →
   ה-smali הישן של בדיוק הקלאסים האלה (כולל `Cls$*` פנימיים) נמחק מ-`apktool_out/smali/` והטרי מוזרק.
2. **שער חתימות (`tools/check_signature_drift.py`):** חוסם בנייה אם smali מחודש קורא למתודה/שדה
   שלא קיימים ב-smali הלא-מחודש. ⚠️ קלאס שחסר לגמרי (בלי קובץ smali בכלל) עובר **בשקט** —
   נחשב מחלקת framework בלי שום אזהרה.
3. **משאבים:** מתקין את ה-framework של המכשיר (`tools/framework/1.apk`) ואז `apktool b` —
   לכן מותר לכתוב ב-XML משאבי `@android:` של Duoqin (למשל `Theme.Holo.Light.NewUI`) שלא קיימים ב-android.jar.
4. `zipalign 4` → `apksigner` עם `debug.keystore`.
5. `--deploy`: התקנה + ‏`am force-stop` + הפעלת `com.sprd.classichome.Home`.

## חוקי הרחבה

**קלאס Java חדש** — שלושה צעדים, כולם חובה:
1. הקובץ ב-`src/` בחבילה הנכונה.
2. שורה ב-`TARGET_CLASSES` שב-`build_and_deploy.py`.
3. אקטיביטי חדש → גם `<activity>` ב-`apktool_out/AndroidManifest.xml` (XML רגיל, עריכה ידנית).

בגלל `-implicit:none`, קלאס שרק *מוזכר* מקובץ מקומפל נקרא לחתימות אבל **לא נפלט** —
בלי רישום מקבלים `NoClassDefFoundError` בזמן ריצה ושער ה-drift שותק. שער דליפה נפרד מפיל
את הבנייה אם javac פלט קלאס עליון שלא ברשימה.

**משאב חדש:**
- נקרא רק מ-XML (manifest, layout, סגנון) → פשוט להוסיף ל-`apktool_out/res/` — נבנה מחדש בכל build.
- נקרא מ-Java → **גם** `<public type=... name=... id=...>` ב-`public.xml` (לבחור את ה-ID הפנוי הבא
  באותו type — לבדוק ברשימה הקיימת) **וגם** קבוע זהה ב-`src/com/sprd/simple/launcher/R.java`.
  javac מטמיע קבועי R, אז אי-התאמה = קריסה/משאב שגוי בזמן ריצה בלי אזהרת קומפילציה.
- דרך שלישית (בלי צנרת בכלל): `getResources().getIdentifier(...)` בזמן ריצה — כך נטענים
  משאבי framework של Duoqin. ראה הסקיל `qin-newui`.
- תמונות חדשות: `drawable-ldpi-320x240-v4/` (התצורה של המכשיר) או `drawable-nodpi-v4/`.

**העברת קלאס smali קיים ל-Java (ל-TARGET_CLASSES) — שער ה-parity הידני, חובה:**
רוב ה-Java ב-`src/` הוא פלט jadx *פחות-יכולתי* מה-smali שרץ בפועל — קימפולו מוחק התנהגות
בלי שום שגיאה (קרה בפועל: `Home.java` מחק את טיפול מקשי עמודי הווידג'טים). לכן:
1. לפני ההעברה — לוודא snapshot עדכני של ה-smali (האחרון: לפי `.last_smali_backup`,
   למשל `backup_smali_20260807_1103/`; ליצור חדש אם ה-smali השתנה מאז).
2. אחרי הוספה ל-`TARGET_CLASSES` ובנייה:
   `python tools\check_behaviour_parity.py <snapshot_root> <class/path/Name>` —
   ‏exit 0 = תאימות; אחרת מודפסות הפניות שאבדו. הפרשים לגיטימיים נרשמים
   ב-`tools/behaviour_parity_baseline.txt`.
3. ⚠️ השער הזה **ידני** — ‏`build_and_deploy.py` לא מריץ אותו (בניגוד לשער ה-drift שרץ אוטומטית).

**עריכת smali ידנית** (רק לקלאסים שלא ב-TARGET_CLASSES): לוודא מספיק `.locals`; דריסת `p0`
גורמת `VerifyError`. עדיף להעביר את הקלאס ל-Java (בהליך שלמעלה) מאשר להעמיק בעריכות smali.

## תקלות מוכרות

- **נתיב עברי:** הסקריפט ממיר בעצמו לנתיב 8.3 (`1A16~1`). כלי חיצוני שנכשל על "Illegal byte
  sequence" — להריץ מתיקייה זמנית ASCII או דרך הנתיב הקצר.
- **`INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES`:** מנסים להתקין מעל חבילה אחרת/חתימה אחרת.
  המוד מותקן כ-`com.sprd.simple.launcher.mod` (דרך `renameManifestPackage` ב-`apktool.yml`).
- **הבנייה עברה אבל המכשיר מתנהג ישן:** לוודא שהורץ `--deploy`; לוודא שהעריכה הייתה בקובץ
  שב-`TARGET_CLASSES` (עריכת Java תיעודי לא עושה כלום).
- **javac נופל על סמל `@hide`** (למשל `Settings.System.POINTER_SPEED`): להשתמש במחרוזת
  (`"pointer_speed"`) — `stubs.jar` מכסה רק חלק מה-API הנסתר.

## אחרי כל שינוי בצנרת — לעדכן את הסקיל הזה ואת כללי הברזל ב-CLAUDE.md (חוזה התיעוד).

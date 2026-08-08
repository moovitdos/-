---
name: qin-mouse-context
description: רקע על סמן העכבר המובנה של ה-Qin 1s+ ופרויקט StarMouse — מנגנון setEnableFor3rdApp, ה-re-assert, ומה רלוונטי ללאנצ'ר (מצב עריכת ווידג'טים בעכבר). לטעון כשעובדים על פיצ'ר שמשתמש בעכבר או כשצריך ידע מהפרויקט האח.
---

# רקע: העכבר במכשיר ופרויקט StarMouse

**הפרויקט האח:** `C:\Users\a0527\Desktop\עכבר במכשיר מקשים` — המקור המלא הוא `GUIDE.md` שם
(כולל 30 מלכודות מאומתות על המכשיר הזה — שוות בדיקה לפני כל מלחמה בבעיה מוזרה, גם בלאנצ'ר).
האפליקציה: `StarMouseApp/` (חבילה `com.mouse`) — לחיצה ארוכה על `*` מדליקה/מכבה עכבר בכל אפליקציה.

## איך העכבר המובנה עובד (תמצית מאומתת)

- ל-ROM יש סמן עכבר מובנה + מיפוי D-pad→תנועה. המתג האמיתי:
  `InputManagerService.setEnableFor3rdApp(boolean)` / `getEnableFor3rdApp()` — ‏Binder ציבורי
  **בלי בדיקת הרשאה**, נגיש מכל תהליך ב-reflection דרך `android.hardware.input.InputManager`.
- `MouseObserverController` (בתוך system_server) מכבה את העכבר **בכל מעבר-פוקוס** אם החבילה
  הקדמית לא ב-`Settings.Global mouse_support_list`. לכן שימוש יציב דורש **re-assert תקופתי**
  (בדמון של StarMouse: לולאת 150ms שכותבת רק כשהמצב נדרס — `getEnable` זול, 0.15ms).
- כתיבה ל-`mouse_support_list` דורשת `WRITE_SECURE_SETTINGS` שחסום לנו (חתימת Duoqin) —
  לכן לא נוגעים ברשימה; מדליקים ישירות.
- ערך ללא פסיק ב-`mouse_support_list` נחשב פגום ומרוקן את הרשימה — עוד סיבה לא לגעת.

## הרלוונטיות ללאנצ'ר

- **מצב עריכת ווידג'טים**: שמיש במלואו ב-D-pad; העכבר הוא שיפור אופציונלי בלבד. **הוכרע**
  (UPGRADE_PLAN §"העכבר — הוכרע") שהלאנצ'ר **לא נוגע** ב-setEnableFor3rdApp ולא מריץ re-assert —
  ההדלקה/כיבוי באחריות StarMouseApp בלבד, והלאנצ'ר רק מגיב לאירועי מצביע כשהם מגיעים.
  הסיבה: re-assert מהלאנצ'ר היה מתנגש עם דמון ה-150ms של StarMouse (מלכודת "הדגל המרפרף").
- ⚠️ ‏**שתי חבילות launcher עם אותו שם תצוגה** ("מסך הבית"): `com.sprd.simple.launcher` (מקורית)
  ו-`.mod` (שלנו). כל התאמה לפי שם-תצוגה (בחוקי StarMouse, בבחירת אפליקציות) חייבת להציג את
  שם החבילה. לאימות מי בפוקוס: `dumpsys activity activities | grep mFocusedActivity`.
- 🛑 **אסור להתקין InputFilter / שירות-נגישות מסנן על ה-ROM הזה** — מקריס את system_server
  (קוד vendor של תנועת סמן רץ על pthread בלי JVM; מלכודת 24 ב-GUIDE עם tombstone). לבליעת
  מקשים יש פתרון בטוח בפרויקט העכבר (EVIOCGRAB בדמון-רוט).
- מהירות המצביע: `Settings.System "pointer_speed"` (סולם ‎-7..7, ‏`@hide` — במחרוזת). לכתוב
  בסולם המערכת כדי להישאר מסונכרן עם מסך ההגדרות של ה-ROM.

## אם צריך לחקור קלט/framework לעומק

בפרויקט העכבר: `reference/` (ראיות jadx/deodex: ‏InputManagerService, ‏MouseObserverController),
‏`StarMouseApp/testtools/` (הזרקת אירועי קרנל אמיתיים — `input keyevent` לא שקול למקש פיזי),
ומיפוי ההתקנים המלא (המקלדת מפוצלת בין `sprd-gpio-keys` ל-`sprd-keypad`) ב-GUIDE §4.2.

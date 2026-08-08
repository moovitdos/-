---
name: qin-newui
description: בניית UI שנראה כמו אפליקציות המערכת של ה-Qin 1s+ — ערכת NewUI של Duoqin, שורות הגדרות, קטגוריות, דיאלוגים, סוויץ'/צ'קבוקס, feature bar תחתון, RTL. חובה לפני כל מסך חדש, שינוי עיצוב, או כשמשהו "לא נראה כמו המכשיר".
---

# ערכת NewUI — איך UI נראה "של המכשיר"

**המקור המלא:** `plan_research/rom_settings_design/` — דוחות המחקר (מפרט צבעים/מידות מדויק,
היררכיית ה-ROM, פריסות), צילומי רפרנס, **והפירוקים המלאים ב-`decompiled/`**: ‏Settings.apk
של ה-ROM ו-framework-res כולו — כל סגנון/משאב `duoqin_*` ניתן לחיפוש שם. כאן — התמצית המעשית.
**המימוש החי לדוגמה:** `src/com/sprd/classichome/settings/LauncherSettingsActivity.java`.

## העיקרון

Duoqin הוסיפו ל-`framework-res` משפחת סגנונות ציבורית `NewUI`. המסך הראשי של הגדרות ה-ROM
יורש ממנה **בלי שום override** (וערכת ה-application שלה מוסיפה רק overrides שוליים שאינם
צבע/רקע) — כלומר כל אפליקציה יכולה לקבל מראה זהה. הפעלה בזמן ריצה,
**לפני `super.onCreate()`** (הסגנון לא קיים ב-android.jar):

```java
int id = getResources().getIdentifier("Theme.Holo.Light.NewUI", "style", "android");
if (id != 0) setTheme(id);
```

במניפסט של המוד קיים גם `@style/BaseTheme` שהוא parent של אותו סגנון (מותר כי הבנייה
מקשרת מול ה-framework של המכשיר) — שתי החגורות ביחד.

## המפרט (אומת פיקסל-פיקסל מול המכשיר, 2026-08-07)

| דבר | ערך |
| :--- | :--- |
| רקע חלון (`duoqin_color_background`) | ‎#FF575859 — אפור כהה, **לא לבן ולא שחור** |
| שורה בפוקוס / מפריד / רצועת קטגוריה | ‎#FF707273 (`duoqin_color_background_focus`) |
| שורה לחוצה | ‎#FF7F8081 |
| טורקיז (כותרת + accent) | ‎#FF00C0D4 (`duoqin_primary_color`) |
| טקסט ראשי / משני | לבן 24sp / ‎#FFA7AAB1 ‏16sp |
| פס כותרת | 48dp (36px), טקסט ממורכז לבן — מגיע **חינם מהחלון** (overlay ב-framework) |
| שורת רשימה | minHeight 68dp (51px), ריפוד אופקי 12dp |
| רצועת קטגוריה | 36dp (27px) |
| מפריד שורות | 1px ‎#707273 |
| ‏feature bar תחתון | 32px, רקע ‎#FF646566, אייקונים 32×32 |

המרה במכשיר: ‏1dp = 0.75px (ldpi 120).

## המתכון למסך רשימה זהה למערכת

1. **Theme** כמו למעלה, לפני `super.onCreate()`.
2. **שורות:** להנפיח את פריסת ה-framework בשם `duoqin_layout_preference`
   (`getIdentifier(..., "layout", "android")`) — ids סטנדרטיים: `android.R.id.title/summary/icon/widget_frame`.
   להסתיר את עטיפת האייקון (המערכת עצמה מסתירה). זה נותן מטריקות זהות בלי משאבים חדשים.
3. **קטגוריות:** `new TextView(ctx, null, android.R.attr.listSeparatorTextViewStyle)` +
   ‏`areAllItemsEnabled()=false` באדפטר כדי שה-D-pad ידלג עליהן.
4. **מפרידים — מלכודת!** ‏ListView שנוצר בקוד לא מצייר מפרידים תחת הערכה (ה-drawable בלי גובה
   מובנה → גובה 0). חובה במפורש, בסדר הזה:
   `setDivider(getIdentifier("duoqin_list_divider_inset","drawable","android"))` ואז
   `setDividerHeight(1px)`. ‏PreferenceActivity מקבל את זה חינם (מהסגנון `PreferenceFragmentListNewUI`).
5. **Feature bar תחתון:** `new FeatureBarHelper(this)` **אחרי** `setContentView` (עושה re-parenting
   לתוכן). ‏`hideLeft()` כמו במסכי הגדרות. **מלכודת:** הלאנצ'ר מאפס `feature_bar_height=0px`
   ב-`res/values/dimens.xml` (ל-Home סרגל משלו) — לתקן פר-מסך:
   `getFeatureBar().getLayoutParams().height = 32` (פיקסלים, כמו Settings.apk).
6. **RTL:** ‏`supportsRtl=true` + ‏targetSdk 19 → אוטומטי מהלוקייל. לא להשתמש ב-`Gravity.RIGHT` ידני.

## קונבנציות ה-ROM (לשמור עליהן)

- **Switch טורקיז = רק מתג-אב אחד בראש מסך.** כל שאר הבוליאנים — **CheckBox** (מסומן טורקיז).
- בחירה-מרשימה: דיאלוג single-choice עם **הערך הנוכחי מסומן ברדיו**, וה-summary של השורה
  מציג את הערך. דיאלוגים יוצאים כהים עם פס-כפתורים תחתון — חינם מהערכה.
- שורות ניווט במסך שורש — בלי summary ובלי אייקונים. עומק מקסימלי: 3 מפלסים.
- מתג שמייצג מצב חיצוני (שירות, הרשאה) — לחשב את מצבו מהמציאות ולא מדגל שמור.
- סליידרים תמיד בדיאלוג, לא inline.

## מלכודות נוספות

- `setTheme()` אחרי `super.onCreate()` — לא עושה כלום.
- ‏SeekBar ב-RTL: הקצה הגבוה משמאל אבל D-pad שמאל *מוריד* — להחליף
  `DPAD_LEFT↔DPAD_RIGHT` ב-`onKeyDown` של ה-SeekBar.
- לא לקרוא ערך מ-View ב-`onDialogClosed` (מחזיר 0) — לשמור בשדה מ-`onProgressChanged`.
- כותרת עם ווידג'ט בצד — נחתכת מהר על 240px; לקצר טקסטים.
- בדיקת שפיות: אם הרקע **שחור** והמערכת **אפורה** — הערכה לא הוחלה (getIdentifier החזיר 0
  או שנקרא אחרי super.onCreate).

## סקיל אח בפרויקט העכבר

`C:\Users\a0527\Desktop\עכבר במכשיר מקשים\.claude\skills\qin-rom-theme\SKILL.md` — אותו נושא
מזווית PreferenceActivity (מסך סטטי). שינוי מהותי בידע כאן — לעדכן גם שם או להצליב קישור.

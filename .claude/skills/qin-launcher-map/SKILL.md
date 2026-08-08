---
name: qin-launcher-map
description: מפת הקוד של מוד מסך הבית — אילו קלאסים עושים מה, מה רץ מ-Java ומה מ-smali, מפתחות ההגדרות, מנוע קיצורי המקשים, קבוצות אפליקציות, ווידג'טים, ומנגנון החלפת הלאנצ'ר. חובה לפני שינוי התנהגות או הוספת פיצ'ר.
---

# מפת הקוד — ClassicHome Mod

## מי רץ מאיפה

**מ-Java (ב-`TARGET_CLASSES`, נבנה כל build):**

| קלאס | תפקיד |
| :--- | :--- |
| `Home` | האקטיביטי הראשי: ViewFlipper של עמודי ווידג'טים, טיפול מקשים, ושורת השיחות-שלא-נענו (`updateStatusInfo()` על ה-view ‏`home_weather`, מכבד `missed_calls_enabled`) |
| `HomeStatusView` | כרטיס השעון והתאריכים: שעון, תאריך לועזי, תאריך עברי ורקע הכרטיס (`applyCustomSettings`) |
| `model/LauncherModel` | טעינת אפליקציות וקבוצות; `forceReloadApps(Context)` לרענון אחרי שינוי שיוך |
| `common/util/KeyCodeEventUtil` | צומת המקשים של Home — קורא ל-handleShort/LongPressKey |
| `mainmenu/MainMenuActivity` | תפריט היישומים (רשת אפליקציות) |
| `mainmenu/MainMenuWidgetHelper` | דיאלוג הוספת ווידג'ט בלחיצה ארוכה |
| `widget/WidgetHostManager` | כל חיי הווידג'טים: הצבה, עמודים, עריכת מיקום/גודל, `resetPage0Layout()` |
| `settings/LauncherSettings` | מודל האחסון + מנוע פעולות המקשים + החלפת לאנצ'ר (פירוט בהמשך) |
| `settings/LauncherSettingsActivity` | מסך ההגדרות (עוצב מחדש 2026-08-07 בסגנון NewUI) |
| `com/sprd/simple/launcher/R` | קבועי משאבים, מתוחזק ידנית מול public.xml |

**מ-smali מקורי (לא לגעת בלי צורך):** כל השאר — `BaseListActivity`, `FeatureBarHelper`
(סרגל תחתון — ראה סקיל qin-newui), `HomeApplication`, wallpaper picker וכו'.

## אחסון: `SharedPreferences "launcher_custom_settings"` (הכל דרך `LauncherSettings`)

| תחום | מפתחות (ברירת מחדל) |
| :--- | :--- |
| שעון | `clock_enabled(t)/size(46)/color(לבן)/font_style(0)/time_format(0)` |
| תאריך לועזי/עברי | `date_*` / `hebrew_date_*` (enabled/size/color) |
| מראה | `card_bg_type(1)/card_corner_radius(10)/missed_calls_enabled(t)/home_columns(3)/menu_columns(3)` |
| שיוך אפליקציות | `app_group_<pkg>/<cls>` = `mainmenu/extra/game/hide` (ברירת מחדל = אין מפתח) |
| מצבי ספרות | `num_short_press_mode(0=חייגן)` / `num_long_press_mode(0=חיוג מהיר)` |
| קיצורי מקשים | `key_num_{short,long}_{0..9,star,pound}` · `key_dpad_{up,down,left,right,center}_{short,long}` · `key_softkey_{left,right}_{short,long}` |
| ווידג'ט ממתין לעריכה | `pending_widget_edit` (נצרך פעם אחת ב-Home) |

ערכי פעולת מקש: `default` (מחיקת המפתח) · `app:pkg/cls` · `action:flashlight/notifications/
silent/settings/main_menu/call_log/flipper_next/widget_edit/none`.
איפוסים סלקטיביים: `resetDisplaySettings` / `resetKeyShortcuts` / `resetAppGroups` / `resetAll` (הכל).

## מנוע הקיצורים

`KeyCodeEventUtil` (מ-Home) → ‏`LauncherSettings.handleShortPressKey/handleLongPressKey(keyCode)`
→ קריאת המפתח המתאים → `executeKeyAction`. ספרות מכבדות את מצב הספרות (חייגן/קיצורים).
**כל** משפחות המפתחות נקראות ע"י המנוע — אם מוסיפים מקש חדש, לחשוף אותו גם ב-UI ההגדרות
(היו "יתומים" בעבר; תוקן ב-2026-08-07).

## מסך ההגדרות (אחרי העיצוב מחדש)

אקטיביטי יחיד (`singleTask`), מפלסים כמצבי רשימה (`mSection`): שורש → time/look/widgets/apps/
keys/reset, ו-apps→apps_manage (מפלס 3). ‏Back מטפס ומשחזר מיקום. שורש: מתג-אב "מסך הבית
המשודרג" + קטגוריות תצוגה/התנהגות/מערכת. העיצוב: סקיל `qin-newui`. רקע מלא על ההחלטות:
`plan_research/rom_settings_design/04_launcher_settings_analysis.md` (מצב ה"לפני" והבעיות שתוקנו).

## החלפת לאנצ'ר (הקוד הרגיש ביותר — `LauncherSettings` תחתית הקובץ)

- מצב "פעיל" = `isModHomeEnabled && !isStockHomeEnabled`, מחושב מ-PackageManager בזמן אמת.
- השבתת ה-stock דורשת su (`runSu`); הפעלת/השבתת רכיב של עצמנו — חינם.
- **סדר בטוח בלבד:** קודם מפעילים את היעד, אחר-כך משביתים את המקור. `clearPackagePreferredActivities`
  לבדו מסוכן (משאיר את המכשיר בלי מסך בית שמיש — ResolverActivity על מכשיר בלי מגע).
- נתיב חזרה שתמיד עובד: מסך ההגדרות הוא LAUNCHER activity עצמאי שנשאר נגיש.

## ווידג'טים

`WidgetHostManager.getWidgetList()` → פריטים עם `id/label/page`. עריכת מיקום/גודל נעשית
במסך הבית (settings כותב `pending_widget_edit`, משגר HOME ונסגר). עמוד 0 = המסך הראשי
(ווידג'ט במצב צפייה-בלבד, לא תופס פוקוס).

# מיפוי מלא של מסך ההגדרות הנוכחי (ClassicHome mod, Qin 1s+)

## 1. איך ה-UI בנוי — LauncherSettingsActivity.java (1241 שורות, קובץ שמקומפל בפועל)

**ארכיטקטורה:** `Activity` רגיל (לא PreferenceActivity). אין XML layout בכלל — `ListView` יחיד שנוצר בקוד ב-`onCreate` והופך ל-contentView. אדפטר מותאם `SettingsAdapter extends BaseAdapter` עם 3 view types:
- `TYPE_HEADER (0)` — TextView שנבנה מ-`android.R.attr.listSeparatorTextViewStyle` (כלומר הכותרת האפורה של ה-ROM עצמו תחת NewUI) + `Gravity.RIGHT`.
- `TYPE_ITEM (1)` — `android.R.layout.simple_list_item_2` (text1=כותרת, text2=summary), עם `Gravity.RIGHT` על שניהם.
- `TYPE_SWITCH (2)` — שורה שנבנית ידנית בקוד: `LinearLayout` אופקי, `Switch` מתווסף ראשון (כדי שינחת בצד שמאל ב-RTL), padding גולמי בפיקסלים `(8,6,8,6)`, שני TextView (summary ב-`setTextSize(11)` קשיח). ה-Switch עצמו `setFocusable(false)+setClickable(false)` — השורה כולה מטפלת בלחיצה.

**Theme:** כפול-ביטחון — המניפסט מצביע על `@style/BaseTheme` שהוא `parent="@android:style/Theme.Holo.Light.NewUI"` (המשפחה של Duoqin ב-framework-res: action bar טורקיז, רקע בהיר, switches טורקיז), ובנוסף `applyRomTheme()` פותר את `Theme.Holo.Light.NewUI` לפי שם ב-runtime לפני `super.onCreate()` וקורא `setTheme(id)`; נופל בשקט ל-Holo רגיל אם המשפחה לא קיימת.

**ניווט:** אקטיביטי אחד, שני מפלסים בלבד. משתנה `mSection` (null = שורש) ובנייה מחדש של `mItems` לפי סקשן. `onBackPressed` מטפס מפלס אחד לפני יציאה. מפתחות סקשן: `sec:time`, `sec:look`, `sec:widgets`, `sec:apps`, `sec:keys`, `sec:reset`. הכותרת מתעדכנת ב-`setScreenTitle` (גם `setTitle` וגם `getActionBar().setTitle`).

**D-pad:** `areAllItemsEnabled()=false` + `isEnabled()` מחזיר true רק ל-ITEM/SWITCH — כך חיצים מדלגים על כותרות. אין טיפול מקשים נוסף מעבר לזה.

**RTL:** אין `layoutDirection`/`textAlignment` — הכל דרך `Gravity.RIGHT` ידני וסדר הוספת views (ה-Switch קודם = שמאל). המניפסט מצהיר `supportsRtl=true`.

**Dispatch:** הכל עובר דרך `handleSettingClick(String key)` — שרשרת if/else של ~200 שורות עם מפתחות מחרוזתיים, כולל prefixes עמוסים (`sec:`, `widget:<id>`).

## 2. רשימת הפריטים המלאה (המצב הנוכחי)

### שורש ("הגדרות מסך הבית")
| מפתח שורה | סוג | מה עושה |
|---|---|---|
| `home_active` | Switch | מצב חי מחושב: `isModHomeEnabled && !isStockHomeEnabled`. הפעלה = `activateModHome` (su: `pm disable` ל-stock), נפילה ל-home chooser בלי רוט; כיבוי = דיאלוג אישור → `restoreStockHome` + `finish()` |
| `sec:time` | פריט | "שעון ותאריך" |
| `sec:look` | פריט | "מראה מסך הבית" |
| `sec:widgets` | פריט | "ווידג'טים" + summary דינמי (ספירת widgets) |
| `sec:apps` | פריט | "תפריט היישומים" |
| `sec:keys` | פריט | "מקשים" |
| `sec:reset` | פריט | "איפוס" |

### שעון ותאריך (כותרות: שעון / תאריך לועזי / תאריך עברי)
- `clock_enabled` (switch), `clock_size` (דיאלוג single-choice: 34/46/58/68sp), `clock_color` (בורר 9 צבעים טקסטואלי), `clock_font_style` (Normal/Bold/Light/Monospace/Serif)
- `date_enabled` (switch), `date_size` (11/14/16/18sp)
- `hebrew_date_enabled` (switch), `hebrew_date_size`, `hebrew_date_color` (בורר צבעים)

### מראה מסך הבית (שטוח, בלי כותרות)
- `card_bg_type` (5 אופציות: שקוף/זכוכית 15%/זכוכית 35%/Dark Frost/Solid Dark)
- `card_corner_radius` (0/8/14/22dp)
- `missed_calls_enabled` (switch)
- `home_columns` (2..5)

### ווידג'טים (דינמי)
- שורה לכל widget מוצב (`widget:<id>`, summary = "מסך ראשי"/"עמוד N") → דיאלוג פעולות: "מיקום וגודל" (שומר `pending_widget_edit`, משגר HOME, `finish()`) / "הסרה"
- `widgets_reset_layout` תחת כותרת "פריסה"; אם ריק — שורה אינפורמטיבית `widgets_none`

### תפריט היישומים
- `menu_columns` (2..5)
- `apps_management` → דיאלוג רשימת כל האפליקציות (עם תגית קבוצה כטקסט "[תפריט]"/"[כלים]"...) → דיאלוג יעד (mainmenu/extra/game/hide/default) → `forceReloadLauncherModel` (reflection ל-`LauncherModel.forceReloadApps`)
- `reset_apps` → אישור → `resetAppGroups`

### מקשים (כותרות: מקשי ספרות / חיצים / מקשים רכים)
- `num_short_press_mode` (חייגן/קיצורים), `num_long_press_mode` (חיוג מהיר/אפליקציות/פר-מקש)
- `shortcuts_numbers_short`, `shortcuts_numbers_long` → דיאלוג בחירת מקש (12: ספרות+*/#) → דיאלוג פעולה
- חיצים: `shortcut_dpad_up/down/left/right` → מגדירים **רק** `key_dpad_*_short`; `shortcut_dpad_center_long` → `key_dpad_center_long`
- מקשים רכים: `shortcut_softkey_left` → `key_softkey_left_short` (MENU), `shortcut_softkey_right` → `key_softkey_right_short` (BACK)
- דיאלוג פעולה למקש — 11 אופציות: ברירת מחדל / בחירת אפליקציה / פנס / וילון התראות / שקט / הגדרות / תפריט ראשי / יומן שיחות / עמוד widgets הבא / עריכת widget / ללא

### איפוס
- `reset_all` → אישור → `LauncherSettings.resetAll` (מוחק את **כל** קובץ ה-prefs)

### קוד מת / יתום בתוך האקטיביטי
- `showTimeFormatDialog` + `getClockTimeFormatSummary` + מפתח `clock_time_format` — קיימים ומטופלים ב-handleSettingClick אבל **אין שורה שמציגה אותם**.
- `home_choose` מטופל ב-handleSettingClick אבל אף שורה לא יוצרת אותו.
- `getDateColor/setDateColor` קיימים ב-LauncherSettings — אין UI לצבע תאריך לועזי.
- long-press לחיצים (`key_dpad_up/down/left/right_long`), short למקש מרכזי (`key_dpad_center_short`) ו-long למקשים רכים (`key_softkey_*_long`) — כולם **נקראים** ע"י `handleShortPressKey`/`handleLongPressKey` אבל אין UI שמגדיר אותם.
- imports לא בשימוש: `ImageView`, `Color`.

## 3. מודל האחסון — LauncherSettings.java

`SharedPreferences` בשם `"launcher_custom_settings"` (MODE_PRIVATE), הכל דרך מתודות סטטיות. מפתחות וברירות מחדל:

| מפתח | סוג | ברירת מחדל |
|---|---|---|
| `clock_enabled` | bool | true |
| `clock_size` | int | 46 |
| `clock_color` | int | Color.WHITE |
| `clock_font_style` | int | 0 (Normal; 1=Bold,2=Light,3=Mono,4=Serif) |
| `clock_time_format` | int | 0 (system; 1=24h,2=24h+ss,3=12h AM/PM,4=12h) |
| `date_enabled` / `date_size` / `date_color` | bool/int/int | true / 14 / WHITE |
| `hebrew_date_enabled` / `hebrew_date_size` / `hebrew_date_color` | bool/int/int | true / 14 / WHITE |
| `card_bg_type` | int | 1 = SUBTLE_GLASS (0=שקוף `0x00`, 1=`0x33FFFFFF`, 2=`0x55FFFFFF`, 3=`0x66000000`, 4=`0xDD181818`) |
| `card_corner_radius` | int | **10** (dp) |
| `missed_calls_enabled` | bool | true |
| `menu_columns` / `home_columns` | int | 3, clamped 2..5 |
| `pending_widget_edit` | int | -1, נצרך פעם אחת (`takePendingWidgetEdit` מוחק) |
| `app_group_<pkg>/<cls>` | string | "mainmenu"/"extra"/"game"/"hide"; default = הסרת המפתח |
| `num_long_press_mode` / `num_short_press_mode` | int | 0 / 0 |
| `key_num_{short,long}_{0..9,star,pound}`, `key_dpad_*_{short,long}`, `key_softkey_*_{short,long}` | string | "default" (הסרה); ערכים: `app:pkg/cls` או `action:flashlight/notifications/silent/settings/main_menu/call_log/flipper_next/widget_edit/none` |

בנוסף הקובץ מכיל את כל לוגיקת החלפת ה-launcher: `STOCK_PKG=com.sprd.simple.launcher`, `HOME_CLASS=com.sprd.classichome.Home`, `runSu()` (su בתהליך ה-UI!), `activateModHome`/`restoreStockHome` (סדר בטוח: להפעיל stock לפני להשבית mod), `openHomeChooser` (נסיון ל-`Settings$HomeSettingsActivity` ואז HOME intent). `resetAll()` = `clear()` על כל הקובץ.

## 4. מניפסט (apktool_out/AndroidManifest.xml, שורה 39)

```xml
<activity android:icon="@drawable/ic_launcher_settings"
    android:label="@string/launcher_settings_title"  <!-- iw: "הגדרות מסך הבית" -->
    android:launchMode="singleTask"
    android:name="com.sprd.classichome.settings.LauncherSettingsActivity"
    android:screenOrientation="portrait" android:theme="@style/BaseTheme">
    <intent-filter> MAIN + LAUNCHER + DEFAULT </intent-filter>
</activity>
```
- אין `android:exported` (APK ישן — exported במשתמע בגלל intent-filter). `BaseTheme` מוגדר ב-`res/values/styles.xml` שורה 3: `parent="@android:style/Theme.Holo.Light.NewUI"`.

## 5. נקודות שיגור

1. **אייקון בתפריט האפליקציות** — ה-intent-filter LAUNCHER; מופיע כ"הגדרות מסך הבית" עם `ic_launcher_settings`. זו הדרך הראשית, וגם רשת הביטחון אחרי השבתת ה-Home (לכן singleTask + LAUNCHER).
2. **פעולת מקש** `action:settings` — `LauncherSettings.executeKeyAction` (smali: `LauncherSettings.smali:649`) יוצר Intent ישיר ל-LauncherSettingsActivity. מגיע מ-`KeyCodeEventUtil.smali` (שורות 235/468) שקורא ל-`handleShortPressKey`/`handleLongPressKey` מכל מקש ב-Home.
3. אין שום הפניה אחרת ב-smali מחוץ לחבילת settings — Home/MainMenu/HomeStatusView קוראים רק getters סטטיים. ה-smali של האקטיביטי עצמו (36 קבצים) הוא תוצר קומפילציה של ה-Java הזה ותואם לו.

## 6. פסיקה — הבעיות הקונקרטיות

### בעיות ויזואליות (מול מראה NewUI של ה-ROM)
1. **שורות ה-Switch נבנות ידנית עם padding בפיקסלים גולמיים (8,6)** ו-summary ב-11sp קשיח — לא תואמות את מטריקות השורות של simple_list_item_2 שלצידן: גבהים שונים, ריווח שונה, טיפוגרפיה לא אחידה בין סוגי השורות באותו מסך.
2. **RTL עקום**: הכל `Gravity.RIGHT` ידני במקום `layoutDirection=rtl`/`textAlignment=viewStart`; ה-padding של simple_list_item_2 נשאר LTR; ה"✓" בדיאלוג העמודות מודבק כטקסט בסוף המחרוזת.
3. **כל המחרוזות בעברית קשיחות בקוד** (לא ב-strings.xml), עם ערבוב אנגלית בסוגריים ("Speed Dial", "Dark Frost", "Bold") — נראה לא מלוטש ולא ניתן לתרגום.
4. **בורר הצבעים הוא רשימת שמות בלבד** — אין swatch של הצבע ליד השם; בחירה עיוורת. הפלטה (9 צבעים) קשיחה בקוד ומוכפלת פעמיים (בדיאלוג וב-summary).
5. **דיאלוגים בלי חיווי בחירה נוכחית**: `setItems` (צבעים, פעולות מקש, ניהול אפליקציות) לא מציין מה מוגדר עכשיו; רק דיאלוגי single-choice מציינים. דיאלוג העמודות מזייף עם "✓" טקסטואלי.
6. **בורר האפליקציות טוען אייקונים לכל אפליקציה (`loadIcon`) על ה-UI thread ואז לא מציג אותם** — עבודה סינכרונית מיותרת שגורמת להשהיה מורגשת/ANR על SC9820e, ובסוף רשימה טקסטואלית בלבד.
7. **`card_corner_radius` ברירת מחדל 10dp אבל אופציות הדיאלוג הן 0/8/14/22** — הדיאלוג מציג "8dp" כנבחר כשהערך בפועל 10; אותו דפוס חיפוש-אינדקס גם בגדלים.
8. **שימוש לא עקבי בכותרות קטגוריה**: "שעון ותאריך" ו"מקשים" עם headers, "מראה" ו"תפריט היישומים" שטוחים לגמרי, "ווידג'טים" עם header אחד באמצע.
9. **`runSu` רץ על ה-UI thread** (`waitFor()`) בלחיצה על המתג הראשי — המסך קופא עד לאישור הרוט.

### בעיות מבניות בהיררכיה
1. **UI יתום/חסר**: פורמט שעה (dialog מוכן, אין שורה); צבע תאריך לועזי (storage בלי UI); long-press לחיצים ולמקשים רכים ו-short למקש מרכזי — המנוע (`handleLongPressKey`) קורא אותם אבל אי אפשר להגדיר; `home_choose` handler בלתי-נגיש.
2. **סקשן "מקשים" לא סימטרי ומטעה**: לספרות יש short+long מלאים; לחיצים רק short (והשורות לא אומרות את זה — "למעלה" בלי ציון סוג הלחיצה); למרכזי רק long; לרכים רק short. המשתמש לא יודע איזו לחיצה הוא מגדיר.
3. **ניהול אפליקציות = 3 דיאלוגים מקוננים** על רשימת כל האפליקציות בלי חיפוש/סינון — כואב במכשיר 12 מקשים; כל פתיחה שואבת וממיינת מחדש את כל ה-PM באופן סינכרוני.
4. **"מיקום וגודל" של widget סוגר את ההגדרות** (`finish()` + HOME intent + דגל pending) — אין דרך לחזור אחורה להגדרות; זרימה מפתיעה.
5. **"איפוס" מבטיח "שעון, צבעים, מקשים והגדרות" אבל `resetAll` מוחק את כל הקובץ** — כולל שיוכי אפליקציות (שיש להם איפוס נפרד ב"תפריט היישומים") ודגל widget edit ממתין. חוסר התאמה בין תווית להתנהגות וכפילות בין שני מסכי איפוס.
6. **Dispatch מחרוזתי מונוליטי**: מפתח שורה לפעמים שווה למפתח pref (`clock_enabled`) ולפעמים לא (`shortcut_dpad_up` → `key_dpad_up_short`); prefixes (`sec:`, `widget:`) בתוך אותו מרחב שמות. כל שינוי מבני דורש עריכה בשלושה מקומות (builder, handler, summary).
7. **המתג הראשי (רוט/רכיבי מערכת) יושב באותה רשימה עם הגדרות קוסמטיות** — עירוב דרגות סיכון בלי הפרדה ויזואלית.
8. **`onBackPressed` חוזר תמיד ל-`setSelection(0)`** — המשתמש מאבד את מיקומו ברשימת השורש אחרי כל ביקור בסקשן; אין שימור `mSection` ב-savedInstanceState.
9. **פורמטי summary לא אחידים**: "46sp" / "3 בשורה" / "ברירת מחדל: מנהל קבצים" / "התאמת צבע" (סטטי בלי ערך נוכחי אצל צבע תאריך עברי).

### מה דווקא כן טוב (לשמר בעיצוב מחדש)
- הירושה מ-`Theme.Holo.Light.NewUI` (כפולה: מניפסט + runtime) נותנת בחינם action bar טורקיז, רקע בהיר, switches טורקיז ו-separators של ה-ROM.
- headers מ-`listSeparatorTextViewStyle` = מראה זהה לאפליקציית ההגדרות של המערכת.
- `areAllItemsEnabled=false` + Switch לא-focusable = ניווט D-pad נקי.
- מבנה שני מפלסים עם Back שמטפס — נכון למקלדת T9 ולמסך 240x320 (~5.5 שורות).
- המתג הראשי מדווח מצב אמת מ-PackageManager ולא דגל שמור.


## עובדות מפתח

- ה-UI: Activity רגיל + ListView יחיד שנבנה בקוד + BaseAdapter מותאם עם 3 view types (header/item/switch); אין XML layout ואין PreferenceActivity
- Theme: BaseTheme במניפסט (parent Theme.Holo.Light.NewUI של ה-ROM) + applyRomTheme() שפותר את אותו style לפי שם ב-runtime לפני super.onCreate — המסך כבר יורש את מראה NewUI (טורקיז/לבן/אפור)
- ניווט: אקטיביטי אחד, שני מפלסים דרך mSection (time/look/widgets/apps/keys/reset); Back מטפס מפלס; לא נשמר ב-savedInstanceState ותמיד חוזר ל-setSelection(0)
- אחסון: SharedPreferences בשם launcher_custom_settings, הכל סטטי; resetAll() מוחק את כל הקובץ כולל app_group_* — בניגוד לתווית המסך
- UI יתום: clock_time_format (דיאלוג מוכן בלי שורה), date_color, long-press לחיצים/מקשים רכים ו-short למרכזי (המנוע קורא אותם, אין UI), home_choose handler בלתי-נגיש
- באגים ויזואליים מרכזיים: switch rows עם padding בפיקסלים גולמיים ו-summary 11sp קשיח; RTL רק דרך Gravity.RIGHT; בורר צבעים בלי swatches; דיאלוגי setItems בלי חיווי בחירה נוכחית; corner_radius ברירת מחדל 10 לא קיים באופציות 0/8/14/22
- בעיות ביצועים: loadIcon לכל אפליקציה על ה-UI thread בלי להציג אייקונים; runSu עם waitFor על ה-UI thread במתג הראשי
- שיגור: אייקון LAUNCHER בתפריט האפליקציות (singleTask, ic_launcher_settings) + פעולת מקש action:settings דרך executeKeyAction; אין הפניות smali אחרות מחוץ לחבילת settings
- כל המחרוזות בעברית קשיחות בקוד Java, לא ב-strings.xml
- לשמר: ירושת NewUI, headers מ-listSeparatorTextViewStyle, areAllItemsEnabled=false ל-D-pad, מבנה שני מפלסים, מתג ראשי שמדווח מצב אמת מ-PackageManager

# איך אפליקציית ההגדרות של ה-Qin 1s+ משיגה את העיצוב שלה — ממצאים מלאים

## 1. שרשרת ערכות הנושא (מה מוגדר איפה)

**AndroidManifest.xml** (`rom_settings/out/AndroidManifest.xml`):
- `<application android:theme="@style/Theme_Holo_new_ui" android:supportsRtl="true">` (שורה 71)
- Activity ראשית `Settings` (שורה 72): `android:theme="@style/SettingsTheme"`
- `SubSettings` (שורה 81): **בלי theme** → יורש את `Theme_Holo_new_ui` מה-application.

**styles.xml של האפליקציה** (`rom_settings/out/res/values/styles.xml`):
- `SettingsTheme` (שורה 314) = `parent="@android:style/Theme.Holo.Light.NewUI"` **בלי שום override** — כלומר המסך הראשי הוא ערכת הפלטפורמה נטו.
- `Theme_Holo_new_ui` (שורה 292) = אותו parent + overrides מינוריים בלבד: `preferenceInformationStyle` → `@style/PreferenceInformationCustom` (layout מקומי `preference_information_holo_custom`), `homeAsUpIndicator`, `apnPreferenceStyle`, וכמה אייקוני wifi. **שום צבע/רקע לא מוגדר באפליקציה.**
- `Theme.Settings` (שורה 270) קיים אבל לא בשימוש במניפסט.
- מסקנה מרכזית: **כל המראה מגיע מ-`@android:style/Theme.Holo.Light.NewUI` שב-framework-res** (parent שלו: `Theme.Holo.Light`). כל המשאבים מסומנים PUBLIC — אפליקציה צד-ג' יכולה לצרוך אותם.

## 2. תוכן `Theme.Holo.Light.NewUI` (מתוך framework-res מפוענח: `scratchpad/fw_out/res/values/styles.xml` שורה 2712)

הפריטים המרכזיים:
- `windowBackground` + `colorBackground` = `@color/duoqin_color_background`
- `actionBarStyle` = `Widget.Holo.Light.ActionBar.NewUI`, `actionBarSize` = `@dimen/duoqin_action_bar_height` (48dp)
- `listSeparatorTextViewStyle` = `Widget.Holo.Light.TextView.ListSeparator.NewUI` (מפרידי קטגוריה)
- `listDivider` = `@drawable/duoqin_list_divider_inset`, `listChoiceBackgroundIndicator`/`selectableItemBackground` = `@drawable/duoqin_list_selector`
- `switchStyle` = `Widget.Holo.Light.CompoundButton.Switch.NewUI`, `switchPreferenceStyle` = `Duoqin.Preference.SwitchPreference`
- `preferenceStyle`/`preferenceScreenStyle` = `Duoqin.Preference` → `layout=@layout/duoqin_layout_preference`
- `textAppearance` = `Duoqin.TextAppearance` (medium 24sp, לבן), `textColorPrimary` = `@color/primary_text_holo_light_newui`
- `listPreferredItemHeight` = `duoqin_dimen_list_item_height` (68dp), `listPreferredItemPadding*` = `duoqin_list_padding_horizontal` (12dp)
- `preferenceFragmentPaddingSide` = 0dp

## 3. צבעים אמיתיים (framework-res, כולם `@android:color/...`, PUBLIC; אומתו פיקסל-פיקסל מול צילומי מסך של ה-ROM ב-RGB565)

| משאב | ערך | תפקיד | אימות מצילום |
|---|---|---|---|
| `duoqin_color_action_bar_background` / `duoqin_primary_color` | **#FF00C0D4** | הטורקיז — פס הכותרת + accent | נדגם #00BED6 (565) ✓ |
| `duoqin_color_background` | **#FF575859** | רקע חלון/שורות (אפור כהה — **לא לבן!**) | נדגם #5A595A ✓ |
| `duoqin_color_background_focus` | **#FF707273** | שורה בפוקוס D-pad + רקע מפריד קטגוריה | נדגם #737173 ✓ |
| `duoqin_color_background_pressed` | **#FF7F8081** | שורה לחוצה | נדגם #848684 ✓ |
| `duoqin_color_divider` | → מפנה ל-background_focus = **#FF707273** | קווי הפרדה בין שורות | נדגם, 1px ✓ |
| `duoqin_color_button_bar_background` | **#FF646566** | רקע ה-feature bar התחתון | נדגם #636563 ✓ |
| `duoqin_color_text_primary` | **#FFFFFFFF** | טקסט ראשי (לבן) | ✓ |
| `duoqin_color_text_secondary` | **#FFA7AAB1** | summary + טקסט מפריד קטגוריה | |
| `duoqin_color_text_disable` | **#FF9699A3** | טקסט מנוטרל | |
| `duoqin_color_button_background_disabled` | #80646566 | כפתור מנוטרל | |
| `text_color_newui` → `duoqin_text_color_primary` | selector: enabled=לבן, disabled=#FF9699A3 | ColorStateList לטקסט | |

צבעים מקומיים באפליקציה (`rom_settings/out/res/values/colors.xml`) — שוליים בלבד: `switch_accent_color=#FF7FCAC3` (רק tint לאייקון SIM), `material_deep_teal_500=#FF009688` (רק לקטגוריות "material" הכמעט-לא-בשימוש).

## 4. מידות (framework-res; המכשיר ldpi ⇒ 1dp=0.75px, מסך 240x320px)

| משאב | ערך | בפיקסלים במכשיר |
|---|---|---|
| `duoqin_action_bar_height` | 48dp | **36px** (נמדד: y=24..59 ✓; סטטוס-בר 24px מעליו) |
| `duoqin_dimen_list_item_height` | 68dp | 51px (שורת preference, נמדד 50-51 ✓) |
| `duoqin_dimen_list_item_height_small` | 52dp | 39px |
| `duoqin_dimen_list_header_height` | 36dp | **27px** (רצועת קטגוריה, נמדד ✓) |
| `duoqin_dimen_list_divider_height` | **1px** (px!) | 1px ✓ |
| `duoqin_list_padding_horizontal` | 12dp | 9px (padding אופקי של שורות) |
| `duoqin_list_item_icon_width` | 32dp | 24px |
| `duoqin_text_size_large/medium/small/smallest` | 28/24/20/16 **sp** | 21/18/15/12px |
| `text_size_large_newui` | → medium = 24sp | 18px |
| `action_bar_title_text_size_newui` | 16px (ל-ActionBarView הנסתר בלבד) | |
| `preference_fragment_padding_side_newui` | 0dp | 0 |
| `preference_item_padding_side` | → 12dp; `preference_item_padding_inner` = 8px; `preference_icon_minWidth` = 0dp | |
| `duoqin_list_divider_padding_horizontal` | 0dp (ה-inset של ה-divider בפועל 0) | |

מידות אפליקציה רלוונטיות (`rom_settings/out/res/values/dimens.xml`): `feature_bar_height=32px`, `single_listview_height_size=44px`, `double_listview_height_size=64px`, `category_text_height=@android:dimen/duoqin_dimen_list_header_height`. וב-`values-ldpi-320x240-v4/dimens.xml`: `feature_bar_size=24dip` (טקסט ה-feature bar).

## 5. פס הכותרת הטורקיז — המנגנון האמיתי (חשוב!)

זה **לא** רקע ה-ActionBar. `Widget.Holo.Light.ActionBar.NewUI` מגדיר דווקא `background=#FF2A2D35` (כהה). Duoqin שתלו **overlay בתוך layout המסגרת של החלון** — `fw_out/res/layout/screen_action_bar.xml`: בתוך `ActionBarContainer` יש `RelativeLayout @android:id/duoqin_action_bar` עם:
- `background="@drawable/duoqin_action_bar_background"` — shape מלבן **#FF00C0D4 עם פינות עליונות מעוגלות 12dp** (נראה בצילום כ-2-3 שורות פיקסלים מוחלקות בפינות)
- `paddingStart/End=12dp`, `layoutDirection="ltr"`
- `TextView @id/douqin_action_bar_title` (כן, עם שגיאת הכתיב "douqin") — **ממורכז**, `Duoqin.TextAppearance.Medium` = 24sp לבן, singleLine, ellipsize=end
- שני `ImageView` חצים (`duoqin_action_bar_left_arrow`/`right_arrow`, `ic_action_bar_left_arrow`) — ברירת מחדל invisible.

ה-ActionBarView המקורי קיים מתחת אבל מוסתר ע"י ה-overlay; framework.jar של Duoqin (שונה מ-AOSP, יש לו גם `ActionBarView.setOverrideOverflowButton()` ו-`Window.setShouldOverrideResources()`) מזין את הכותרת ל-TextView הזה. **לשחזור באפליקציה אחרת: מספיק setTheme ל-NewUI בזמן ריצה — הכותרת הטורקיזית הממורכזת מגיעה חינם מהחלון עצמו.** (זה מסביר למה בסקיל הקיים זה עובד בלי לבנות title bar ידני.)

## 6. שורות, קטגוריות ומפרידים

- **שורת preference** (framework `duoqin_layout_preference.xml`): LinearLayout אופקי, minHeight 68dp, padding אופקי 12dp; אייקון 32x32dp; כותרת 24sp לבן; summary 16sp `#FFA7AAB1` עם `layout_marginTop=-4dp`; `widget_frame` בסוף.
- **מפריד קטגוריה** (`Widget.Holo.Light.TextView.ListSeparator.NewUI`, fw styles שורה 3700): רקע `#FF707273`, גובה 36dp (27px), טקסט 16sp צבע `#FFA7AAB1`, `paddingStart=12dp`, `textAllCaps=false`. PreferenceCategory מקבל את זה אוטומטית דרך `listSeparatorTextViewStyle`.
- **divider בין שורות**: `duoqin_list_divider_inset` = inset(0) של `#FF707273`, גובה 1px.
- **פוקוס/לחיצה**: `duoqin_list_selector` — focused→`#FF707273`, pressed→`#FF7F8081`, window-unfocused→שקוף. משמש גם כ-`selectableItemBackground`.
- באפליקציה יש layouts חלופיים (`preference_material.xml` — minHeight 48dp, `preference_category_material.xml` — טקסט teal #FF009688) אבל הם כמעט לא בשימוש (רק `preference_progress_category.xml`); המראה בפועל = ה-framework.

## 7. הסוויץ' הטורקיז

`Widget.Holo.Light.CompoundButton.Switch.NewUI` (fw styles שורה 3511): `thumb=@drawable/duoqin_switch_inner`, `track=@drawable/duoqin_switch_track`, `textOn/Off=@null`, `switchMinWidth=36px`, `switchPadding=8px`. ה-9-patches ב-`fw_out/res/drawable-ldpi-v4/`: `duoqin_switch_bg_on.9.png` (מילוי **#00BED4**), `duoqin_switch_bg_off.9.png` (**#A3A5A8**), `duoqin_switch_thumb.9.png` (לבן, 54x30). SwitchPreference מקבל אותו אוטומטית דרך `switchPreferenceStyle` בערכה. כפתורים: `Widget.Holo.Light.Button.NewUI` → `duoqin_btn_background`; באפליקציה גם `@android:drawable/duoqin_btn_bg` (selector: idle=#FF646566, focus=#FF707273, pressed=#FF7F8081).

## 8. ה-feature bar התחתון (הפס עם חץ-חזרה ו-OK)

**מימוש בתוך האפליקציה, לא ב-framework** — חבילה `com.sprd.android.support.featurebar`:
- Layout: `rom_settings/out/res/layout/decor_layout.xml` — RelativeLayout שורש; בתחתית `@id/feature_bar` בגובה `feature_bar_height=32px`, רקע `@android:color/duoqin_color_button_bar_background` (#FF646566); שלושה TextView (left/center/right), `maxWidth=74px`, טקסט לבן בגודל `feature_bar_size=24dip`, עם compound drawables: `featurebar_option` (שמאל), `featurebar_select` (מרכז), `featurebar_back` (ימין — `drawableRight`); מעליו `FrameLayout @id/content` עם `layout_above="@id/feature_bar"`.
- אייקונים: `rom_settings/out/res/drawable-ldpi-v4/featurebar_*.png` — **32x32px**, ~37 אייקונים (back/select/option/ok/save/...).
- מנגנון (`FeatureBarHelper.smali`, `wrapDecor()`): נקרא **אחרי** `super.onCreate` — לוקח את הילדים של `android.R.id.content`, מעביר אותם ל-`@id/content` של decor_layout, ו-`setContentView(wrapper)`. כלומר **הבר הוא re-parenting של תוכן החלון, לא theme attribute**.
- התנהגות: property `persist.sys.duoqin.featurebar` (ברירת מחדל true) ⇒ מצב אייקונים; אחרת טקסט (`default_feature_bar_options/center/back` = "Options"/"Select"/"Back", strings.xml שורות 3-5). מאזין ל-broadcast `com.duoqin.featurebar.change`. שלושת ה-TextView לחיצים ומזריקים KeyEvents דרך `Window.injectInputEvent` (API של Duoqin). בנוסף קורא ל-`ActionBarView.setOverrideOverflowButton(mKeyLeft)` (Duoqin-only; לעטוף ב-reflection/try-catch בשחזור).
- שימוש: `Settings.smali` — `setSoftKey()` יוצר `new FeatureBarHelper(this)` ואז `hideLeft()`; מציג את Options רק לפרגמנטים ב-`HAS_OPTION_FRAGMENTS`; `hide()` לפרגמנטים מיוחדים.

## 9. מתכון שחזור מדויק לאפליקציה אחרת

1. `getResources().getIdentifier("Theme.Holo.Light.NewUI","style","android")` → `setTheme(id)` **לפני** `super.onCreate()` (הסגנון לא ב-android.jar; ראה הסקיל הקיים `C:\Users\a0527\Desktop\עכבר במכשיר מקשים\.claude\skills\qin-rom-theme\SKILL.md`). זה נותן: רקע #FF575859, action bar טורקיז ממורכז 48dp, מפרידים, selector, סוויץ', טקסטים — הכל.
2. `PreferenceActivity`/`PreferenceFragment` רגיל — שורות duoqin_layout_preference חינם.
3. את ה-feature bar להעתיק מהאפליקציה: decor_layout.xml + PNGs 32x32 + לוגיקת wrapDecor (בלי החלקים ה-Duoqin-only, או דרך reflection). צבעים/מידות: רקע `@android:color/duoqin_color_button_bar_background`, גובה 32px, טקסט 24dip לבן.
4. אין להשתמש ב"לבן" — הרקע האמיתי הוא **#FF575859**; "המפרידים האפורים" הם **#FF707273** (גם רצועת הקטגוריה וגם קווי ה-1px).

## קבצים שנבדקו
- APK מפוענח: `...\scratchpad\rom_settings\out\` (AndroidManifest.xml, res/values/{styles,colors,dimens}.xml, res/layout/decor_layout.xml, smali של FeatureBarHelper ו-Settings)
- framework-res מפוענח: `...\scratchpad\fw_out\res\` (values/styles.xml שורות 2712-3712, layout/screen_action_bar.xml, layout/duoqin_layout_preference.xml, drawable/duoqin_*.xml, color/*.xml, drawable-ldpi-v4/duoqin_switch_*.9.png)
- צילומי ייחוס שנדגמו: `...\scratchpad\ref_settings_main.png`, `ref_sub1.png` (240x320, RGB565)

## עובדות מפתח

- כל העיצוב מגיע מ-@android:style/Theme.Holo.Light.NewUI ב-framework-res (PUBLIC); האפליקציה כמעט לא מוסיפה כלום — SettingsTheme הוא הערכה נטו בלי overrides
- הטורקיז = #FF00C0D4 (duoqin_color_action_bar_background / duoqin_primary_color); מצויר ע"י overlay ששתול ב-framework layout screen_action_bar.xml (RelativeLayout @id/duoqin_action_bar עם shape בעל פינות עליונות מעוגלות 12dp וכותרת ממורכזת 24sp לבנה) — לא רקע ה-ActionBar עצמו
- הרקע הוא לא לבן: duoqin_color_background = #FF575859; פוקוס #FF707273; לחיצה #FF7F8081; מפריד קטגוריה: רקע #FF707273, גובה 36dp (27px), טקסט 16sp #FFA7AAB1; divider שורות 1px #FF707273
- פס הכותרת 48dp (36px במכשיר, ldpi 0.75); שורת preference minHeight 68dp; padding אופקי 12dp; טקסטים 24sp כותרת (לבן) / 16sp summary (#FFA7AAB1)
- סוויץ': Widget.Holo.Light.CompoundButton.Switch.NewUI — track on=#00BED4, off=#A3A5A8, thumb לבן, switchMinWidth 36px; מגיע אוטומטית מה-theme דרך switchStyle/switchPreferenceStyle
- ה-feature bar התחתון הוא קוד בתוך האפליקציה (com.sprd.android.support.featurebar): decor_layout.xml בגובה 32px רקע @android:color/duoqin_color_button_bar_background (#FF646566), אייקונים 32x32 (featurebar_back/select/option), מנגנון wrapDecor שעושה re-parenting ל-android.R.id.content — צריך להעתיק אותו לאפליקציה אחרת
- שחזור: setTheme(getIdentifier("Theme.Holo.Light.NewUI","style","android")) לפני super.onCreate + PreferenceActivity רגיל = מראה זהה חינם; רק ה-feature bar דורש העתקה
- framework-res מפוענח מלא זמין ב-scratchpad/fw_out (מהסשן הזה) לעיון בכל משאב duoqin_*

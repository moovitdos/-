# עיצוב אפליקציית ההגדרות של Qin 1s+ — ממצאים מלאים

חקרתי את ה-Settings המפורק, את framework-res האמיתי (נמשך מהמכשיר המחובר ב-ADB), ואת AudioProfile.apk — שמתברר שהוא זה שמצייר את מסכי "הגדרות שמע" ו"עוצמה" שבצילומי הרפרנס. כל הצבעים אומתו מול פיקסלים בצילומי המסך.

## תובנת-על: כמעט הכול יושב ב-framework-res, לא באפליקציה

ה-theme הוא `Theme_Holo_new_ui` (באפליקציה) שכל כולו יורש מ-`@android:style/Theme.Holo.Light.NewUI` שב-framework. ה-framework מגדיר את פריסת שורת-ההעדפה, הסלקטור, הצ'קבוקסים, הדיאלוגים וה-SeekBar. **כל המשאבים האלה PUBLIC** — אפליקציה אחרת יכולה לצרוך אותם ישירות (`getIdentifier(..., "android")`) או להעתיק את ה-XML.

## פלטת הצבעים (framework, values/colors.xml, אומת מול צילומים)

| משאב | ערך | תפקיד |
|---|---|---|
| `duoqin_color_background` | `#FF575859` | רקע חלון + רקע דיאלוג (זה ה"אפור הכהה") |
| `duoqin_color_background_focus` | `#FF707273` | **הדגשת שורה בפוקוס D-pad** + רקע פס-קטגוריה + צבע divider |
| `duoqin_color_background_pressed` | `#FF7F8081` | לחיצה |
| `duoqin_color_action_bar_background` | `#FF00C0D4` | הטורקיז של סרגל הכותרת |
| `duoqin_primary_color` | `#FF00C0D4` | טורקיז כללי (לינקים, אלמנטים checked) |
| `duoqin_color_button_bar_background` | `#FF646566` | רקע סרגל המקשים התחתון + פס כפתורי דיאלוג |
| `duoqin_color_text_primary` | `#FFFFFFFF` | טקסט ראשי (לבן) |
| `duoqin_color_text_secondary` | `#FFA7AAB1` | summary, כותרות קטגוריה, כותרת דיאלוג |
| `duoqin_color_text_disable` | `#FF9699A3` | טקסט מנוטרל |

מידות (ב-ldpi ×0.75): action bar 48dp→36px (פינות עליונות מעוגלות 12dp!); שורת רשימה minHeight 68dp→51px (קטנה: 52dp→39px); פס קטגוריה 36dp→27px; ריפוד אופקי 12dp→9px; divider 1px; טקסט medium 24sp→18px, small 20sp→15px, smallest 16sp→12px.

## 1. שורת העדפה (list row)

הפריסה בפועל: **`framework layout/duoqin_layout_preference.xml`** (דרך `preferenceStyle`→`Duoqin.Preference` ב-theme). מבנה:
- LinearLayout אופקי, `minHeight=68dp`, `paddingStart=12dp`, `paddingEnd=?scrollbarSize`, gravity=center_vertical, **רקע שקוף** (הרקע מגיע מהחלון #575859).
- מסגרת אייקון: `@android:id/icon` בגודל 32dp (מוסתרת כשאין אייקון; ב-Settings משתמשים ב-`empty_icon_pikel` ריק).
- RelativeLayout (weight=1, padding אנכי 4dp): `title` — 24sp לבן, singleLine, ellipsize=marquee; `summary` — 16sp `#A7AAB1`, מתחת לכותרת עם `marginTop=-4dp`, maxLines=10.
- `@android:id/widget_frame` — LinearLayout אנכי בקצה ה-end; **ב-RTL הוא בצד שמאל הפיזי** (כך הצ'קבוקס של "רטט" מופיע משמאל בצילום).
- checkbox widget: framework `layout/preference_widget_checkbox.xml`; ה-drawable הוא `@android:drawable/duoqin_btn_check` — PNG‏ 24×24: checked = מילוי טורקיז `#00BED4` עם וי לבן; unchecked = ריבוע לבן 20% אלפא; focus = 30% אלפא.
- המסך הראשי של Settings שונה: `Settings$HeaderAdapter` משתמש ב-`rom_settings/out/res/layout/preference_header_item.xml` — minHeight `44px`, כותרת `TextAppearance.Perference.Header.Title` (24sp), אייקון 30px.

## 2. פס קטגוריה ("כללי" / "רינגטון")

סגנון פלטפורמה public: **`@android:style/Widget.Holo.Light.TextView.ListSeparator.NewUI`** = רקע `#707273`, גובה `36dp` (27px), טקסט 16sp `#A7AAB1`, `paddingStart=12dp`, `textAllCaps=false`. ב-preference XML רגיל — `<PreferenceCategory>` מקבל את זה חינם מה-theme. במסך הראשי: `layout/preference_header_category.xml` עוטף עם `layout_marginStart/End=?listPreferredItemPaddingStart` (לכן הפס מוזח מעט מהקצוות).

## 3. דיאלוגים

**Duoqin שכתבו את `Theme.Holo.Light.Dialog` עצמו להיות כהה**: `windowBackground=#575859`. כל AlertDialog (גם "Light") משתמש ב-9-patch כהים. פריסת הדיאלוג (framework `layout/alert_dialog_holo.xml`, שוכתבה):
- topPanel: כותרת בגובה `48dp` (36px), טקסט **ממורכז**, 22sp, צבע `#A7AAB1`; קו divider אופציונלי `#707273` בעובי 1px מתחת.
- contentPanel: רקע `#575859`, minHeight 64dp, message ממורכז.
- buttonPanel: רקע `#646566`, שורת כפתורים בגובה `36px` + divider עליון 1px, **`layoutDirection="ltr"` כפוי** ⇒ button1 (חיובי, "אישור") תמיד שמאל פיזי, button2 ("ביטול") ימין — כפי שרואים בצילום. סגנון כפתור: `Widget.Holo.Light.Button.Dialog` = טקסט לבן 24sp, רקע `duoqin_list_selector` (שקוף; פוקוס ⇒ `#707273`).
- דיאלוג בחירה-בודדת (ListPreference): framework `layout/select_dialog_singlechoice_holo.xml` — `CheckedTextView`, טקסט 24sp לבן, `minHeight=52dp` (39px), `checkMark=@android:drawable/duoqin_btn_radio` (רדיו 24px: on = עיגול טורקיז; off = לבן 20%), padding צדדי `8px`.

**מסך העוצמה** הוא בכלל מ-**AudioProfile.apk** (`com.sprd.audioprofile`, `/system/app/AudioProfile.apk`): `AudioProfileRingerVolumePreference` עם dialog layout ‏`audioprofile_out/res/layout/audio_profile_preference_dialog_ringervolume.xml`: ScrollView עם **`layoutDirection="ltr"`**, ובתוכו לכל stream: TextView תווית בגובה 36dp, צבע `?textColorSecondary`, ריפוד 12dp (העברית מיושרת ימינה מכוח כיוון הטקסט) ואז SeekBar ברוחב מלא עם `background=@android:drawable/duoqin_list_selector` (לכן שורת הסליידר בפוקוס נצבעת `#707273`), ריפוד 12dp צדדים / 8dp אנכי.
- **SeekBar**: Duoqin שינו את `Widget.Holo.SeekBar` בפריימוורק: `thumb=@drawable/seek_thumb` — סלקטור: normal = עיגול לבן, focused/pressed = **טורקיז `#00BED4`** (PNG‏ 32×30); פס מילוי לבן, track לבן 20% אלפא; minHeight/maxHeight 13dp.

## 4. סרגל המקשים התחתון (softkey / feature bar)

לא של הפריימוורק — כל אפליקציה נושאת עותק (`com.sprd.android.support.featurebar.FeatureBarHelper`). פריסה: `rom_settings/out/res/layout/decor_layout.xml`:
- RelativeLayout ‏`@id/feature_bar` בתחתית: רקע `@android:color/duoqin_color_button_bar_background` (`#646566`), **גובה `32px`** (`feature_bar_height`).
- שלושה TextView: שמאל (`drawableLeft=featurebar_option`, ריפוד 12dp), מרכז (`featurebar_select` — ריבוע וי), ימין (`drawableRight=featurebar_back` — חץ חזרה). טקסט 24dp לבן, `maxWidth=74px`.
- אייקונים: PNG לבנים 32×32 ב-`rom_settings/out/res/drawable-ldpi-v4/featurebar_*.png` (יש סט שלם: ok, cancel, back, select, option, save, edit...).
- `FeatureBarHelper.wrapDecor()` עוטף את ה-decor: מוצא את `android.R.id.content`, מעביר את התוכן ל-FrameLayout של decor_layout כך שהבר תמיד בתחתית. נשלט ב-property ‏`persist.sys.duoqin.featurebar`.
- **פתרון תעלומת הצדדים**: ב-Settings ל-feature_bar אין `layoutDirection`, ולכן תחת locale עברי ה-RTL הופך אותו — "back" (שמוגדר ימין) מצויר משמאל. ב-AudioProfile הוסיפו `android:layoutDirection="ltr"` על אותו bar ⇒ back נשאר בימין הפיזי. שני הקבצים זהים חוץ מזה. למי שמחקה: לקבוע `ltr` ולבחור צדדים ידנית, או להשאיר RTL ולקבל היפוך.

## 5. הדגשת פוקוס D-pad

**`@android:drawable/duoqin_list_selector`** (public, וגם `?android:attr/selectableItemBackground` ו-`listChoiceBackgroundIndicator` תחת ה-theme): selector צבעים שטוחים — focused ⇒ `#707273`; pressed ⇒ `#7F8081`; אחרת שקוף. אין אנימציה ואין מסגרת — רק מילוי אפור בהיר. ה-ListView של preferences מקבל גם `listSelector` וגם divider ‏1px ‏`#707273` דרך `PreferenceFragmentListNewUI`.

## עוד שווה לדעת
- סרגל הכותרת הטורקיז הוא לא ActionBarView רגיל אלא overlay ‏`@android:id/duoqin_action_bar` בתוך framework ‏`layout/screen_action_bar.xml`: רקע shape עם **פינות עליונות מעוגלות 12dp**, `layoutDirection="ltr"`, כותרת ממורכזת 24sp לבנה, וחצים שמאל/ימין (`ic_action_bar_left_arrow`/`right`, ברירת מחדל invisible).
- Switch טורקיז: `Widget.Holo.Light.CompoundButton.Switch.NewUI` — thumb ‏`duoqin_switch_inner`, track ‏`duoqin_switch_track` (9-patch ‏`duoqin_switch_bg_on/off`), ‏`switchMinWidth=36px`.
- scrollbar: לבן דק (ב-RTL מופיע בצד שמאל).
- טקסט ה-summary והקטגוריות משתמשים ב-color-state-lists ‏`primary/secondary_text_holo_light_newui` (לבן / `#A7AAB1`, disabled ⇒ `#9699A3`).

## עובדות מפתח

- הכול נגזר מ-framework-res: theme ציבורי Theme.Holo.Light.NewUI; רקע חלון #575859, פוקוס D-pad #707273 (drawable public: duoqin_list_selector), לחיצה #7F8081, טורקיז #00C0D4, סרגל תחתון/כפתורי דיאלוג #646566, טקסט לבן + משני #A7AAB1
- שורת רשימה = framework duoqin_layout_preference: minHeight 68dp, ריפוד start ‏12dp, title ‏24sp לבן, summary ‏16sp ‏#A7AAB1 עם marginTop -4dp, widget_frame בקצה end (ב-RTL משמאל); צ'קבוקס/רדיו 24px — checked טורקיז #00BED4, unchecked לבן 20% אלפא
- פס קטגוריה = style ציבורי Widget.Holo.Light.TextView.ListSeparator.NewUI: רקע #707273, גובה 36dp (27px), טקסט 16sp #A7AAB1, paddingStart 12dp — PreferenceCategory מקבל אותו אוטומטית תחת ה-theme
- דיאלוגים: Duoqin שכתבו את Theme.Holo.Light.Dialog לכהה (#575859); כותרת ממורכזת 36px צבע #A7AAB1; פס כפתורים #646566 בגובה 36px+divider ‏1px עם layoutDirection=ltr כפוי — אישור (button1) תמיד שמאל, ביטול ימין; כפתורים שטופים שנצבעים #707273 בפוקוס
- מסך העוצמה הוא של AudioProfile.apk (com.sprd.audioprofile) — לא של Settings: ScrollView ‏ltr עם תווית 36dp + SeekBar מלא לכל stream, רקע הסליידר הוא duoqin_list_selector; ה-thumb מפריימוורק (seek_thumb): לבן רגיל, טורקיז #00BED4 בפוקוס, track לבן 20%
- סרגל מקשים תחתון: decor_layout.xml באפליקציה (לא בפריימוורק) — גובה 32px, רקע #646566, שלושה TextView עם PNG לבנים 32×32 (featurebar_back/select/option); צד ה-back מתהפך כי ב-Settings אין layoutDirection=ltr על הבר וב-AudioProfile יש — זו כל הסיבה להבדל בין המסכים
- סרגל כותרת טורקיז: shape עם פינות עליונות מעוגלות 12dp, גובה 48dp (36px), כותרת ממורכזת 24sp לבנה — framework screen_action_bar.xml, id ציבורי duoqin_action_bar
- המרות ldpi (×0.75): 24sp→18px, 20sp→15px, 16sp→12px, 68dp→51px, 52dp→39px, 36dp→27px, 12dp→9px

# ארכיטקטורת המידע של אפליקציית ההגדרות ב-ROM של Qin 1s+

## 1. נקודת הכניסה ומקור הרשימה הראשית

- **Activity ראשי**: `com.android.settings.Settings` (יורש מ-`PreferenceActivity`), מוגדר ב-`AndroidManifest.xml` שורה 72 עם `theme=@style/SettingsTheme`; ה-application כולו רץ עם `Theme_Holo_new_ui` ו-`supportsRtl="true"`.
- **הרשימה הראשית מוגדרת ב-XML אחד**: `res/xml/settings_headers.xml` (פורמט `<preference-headers>` של Android 4.x). נטען ב-`Settings.smali` שורה 2110 (`loadHeadersFromResource`), ואז עובר סינון דינמי ב-`updateHeaderList()` (שורות 1322–1761).
- תתי-מסכים נפתחים או כ-fragment בתוך `.SubSettings` activity, או כ-intent לאפליקציה חיצונית (com.sprd.*, com.duoqin.*).

## 2. העץ המלא של המסך הראשי (כותרות בעברית מ-res/values-iw/strings.xml)

### קטגוריה: **כללי** (`wireless_section`, header_category_common)
| # | כותרת בעברית | id | יעד | תנאי הצגה |
|---|---|---|---|---|
| 1 | הגדרות שיחה | call_settings | intent → com.sprd.phone.callsetting.MobileSimChooserActivity | תמיד |
| 2 | **"."** (זו באמת הכותרת! `wifi_settings_title` בעברית = ".") | wifi_settings | fragment wifi.WifiSettings | יש חומרת WiFi |
| 3 | בלוטוס | bluetooth_settings | fragment bluetooth.BluetoothSettings | יש חומרת BT |
| 4 | צלילים | audio_profiles_sound_settings | intent → com.sprd.audioprofile.AudioProfileSoundSettings | תמיד |
| 5 | מצב נא לא להפריע | nodisturb_mode | intent → com.duoqin.nodistrub.NoDisturbSettings | תמיד |
| 6 | פרופילי שמע | audio_profiles | intent → AudioProfileSettings | רק אם `IsSupVoice` (config bool) |
| 7 | אלחוטי ורשתות | wireless_settings | fragment WirelessSettings | תמיד |
| 8 | תצוגה | display_settings | fragment DisplaySettings | תמיד |
| 9 | שידור קולי | voice_broadcast_settings_tile | fragment VoiceBroadcastSettings | תמיד |
| 10 | שימוש בנתונים | data_usage_settings | fragment DataUsageSummaryEx | bandwidth-control פעיל |
| 11 | ניהול רשת | network_preference_settings | intent → NetworkManagementSettings | דגל CU_SUPPORT (כנראה מוסתר) |
| — | operator_settings | placeholder | נפתר מ-meta-data או מוסר | בד"כ מוסר |

### קטגוריה: **אישי** (`personal_section`)
| # | כותרת | id | יעד |
|---|---|---|---|
| 12 | שרותי Duoqin | duoqin_account | intent → com.duoqin.syncassistant AccountActivity |
| 13 | מיקום | location_settings | fragment location.LocationSettings (מותנה GPS/רשת) |
| 14 | מיקום מרוחק | remote_locating_settings | fragment com.duoqin.settings.RemoteLocatingSettings |
| 15 | אבטחה | security_settings | fragment SecuritySettings |
| 16 | תאריך ושעה | date_time_settings | fragment DateTimeSettings |
| 17 | שפה וקלט | language_settings | fragment InputMethodAndLanguageSettings |
| 18 | הפעלה/כיבוי אוטומטיים | power_alarm | intent → timerpower.AlarmClock |
| 19 | הגדרות קיצורי דרך | navkey_settings | intent → com.duoqin.settings.NavKeySettings |

### קטגוריה: **מערכת** (`system_section`)
| # | כותרת | id | יעד | תנאי |
|---|---|---|---|---|
| 20 | איחסון | storage_settings | fragment deviceinfo.Memory | תמיד |
| 21 | סוללה | battery_settings | fragment PowerUsageSummary | יש סוללה |
| 22 | שליטה בעכבר | mouse_control_settings | intent → Settings$MouseControlerFragmentActivity | תמיד |
| 23 | ישומים | application_settings | fragment ManageAppSettings | ב-user build רק אם persist.sys.allow_debug=1 |
| 24 | איפוס | privacy_settings | fragment PrivacySettings | תמיד |
| 25 | עדכון מערכת | system_update_settings | intent → com.duoqin.systemupdate.MainEntry | תמיד |
| 26 | אפשרויות למפתחים | development_settings | fragment DevelopmentSettings | רק אם הופעל |
| 27 | אודות המכשיר | about_settings | fragment DeviceInfoSettings | תמיד |
| — | צלילים (SoundSettings AOSP) | sound_settings | fragment SoundSettings | רק אם !IsSupVoice (חלופה לפרופילי שמע) |
| — | manufacturer_settings | placeholder | נפתר/מוסר | בד"כ מוסר |

זה תואם בדיוק את מה שנראה במכשיר החי: **כללי → הגדרות שיחה → "." → בלוטוס → צלילים...**

## 3. איך שורות מרונדרות (Settings$HeaderAdapter.smali)

- **רק 2 סוגי שורות בשימוש בפועל**: `getHeaderType()` (שורה 156) מחזיר 0 (קטגוריה — אין fragment ואין intent) או 1 (שורה רגילה). קיימים בקוד גם סוג switch (`preference_header_switch_item`) וסוג button (`preference_header_button_item`) אבל הם **לעולם לא מוחזרים** — אין מתגים inline במסך הראשי.
- **אין אייקונים בפועל**: למרות שה-XML מגדיר אייקונים (`ic_settings_*_pikel`), הפונקציה `updateCommonHeaderView` (שורה 204) עושה `icon.setVisibility(GONE)`. שורות הן **טקסט בלבד**. חצי מהכניסות בכלל מוגדרות עם `empty_icon_pikel`.
- **קטגוריה** = `res/layout/preference_header_category.xml`: TextView בודד, גובה `category_text_height`, סגנון `listSeparatorTextViewStyle`, צבע `text_color_newui` — פס-כותרת דק, לא כרטיס.
- **שורה רגילה** = `res/layout/preference_header_item.xml`: minHeight **44px** (על מסך 240x320), כותרת בשורה אחת (marquee) + summary אופציונלי מתחתיה (עד 2 שורות); ה-summary מוסתר כשריק (updateCommonHeaderView שורות 280–311). בכותרות המסך הראשי אין summaries בכלל.
- מידות: `single_listview_height_size=44px`, אייקון (כשקיים בתתי-מסכים) `30px`.

## 4. מבנה תתי-מסכים (דוגמאות)

**צלילים — `res/xml/sound_settings.xml`**: פריט-העל קודם (ווליום — `RingerVolumePreference`, דיאלוג sliders), ואז `PreferenceCategory` "צליל שיחה & רטט" → צליל מכשיר (`DefaultRingtonePreference`), רטט בעת צילצול (CheckBox); קטגוריה "מערכת" → צליל התראה, 4 CheckBoxים, `ListPreference`. שימו לב: הקטגוריות מוגדרות כ-`<PreferenceCategory/>` **ריקות** שאחריהן אחים ברשימה שטוחה — מפריד ויזואלי בלבד. יש גם `PreferenceScreen` מקונן (dock_audio) = עומק 3.

**תצוגה — `res/xml/display_settings.xml`**: בהירות ראשונה (`BrightnessPreference` — דיאלוג slider), ואז ערבוב של: `PreferenceScreen` עם fragment (טפט, שומר מסך, גופן), `CheckBoxPreference` (סיבוב, featurebar), `ListPreference` עם summary סטטי (שינה/screen_timeout, גודל גופן — `WarnedListPreference`), ו-`PreferenceScreen` עם intent (פנס). קטגוריה אחת בסוף (עכבר → `PointerSpeedPreference`).

**תאריך ושעה — `res/xml/date_time_prefs.xml`**: ללא קטגוריות בכלל — רשימה שטוחה: CheckBox אוטומטי עם `summaryOn/summaryOff`, ואז `Preference` רגילים שה-summary שלהם הוא **הערך הנוכחי** (קבע תאריך / קבע שעה / בחר איזור זמן), CheckBox "פורמט 24", `ListPreference` "בחר אופן תצוגת תאריך".

**אבטחה — `security_settings_misc.xml`**: כל הפריטים עטופים ב-`PreferenceCategory` אמיתיות (עם ילדים מקוננים) — שתי הצורות קיימות ב-ROM.

## 5. קונבנציות מבניות (מה ללמד את הלאנצ'ר)

1. **3 קטגוריות עליונות**: כללי → אישי → מערכת; הנפוץ ביותר ראשון, "אודות"/"מפתחים" בסוף.
2. **עומק מקסימלי ~3**: רשימה ראשית → מסך משנה → דיאלוג או PreferenceScreen מקונן. אין יותr עמוק.
3. **טקסט בלבד, בלי אייקונים** בשורות; קטגוריות הן מפרידי-טקסט דקים.
4. **מתג ראשי = SwitchPreference יחיד בראש מסך** (מיקום, מיקום מרוחק, אפשרויות מפתחים, WiFi/BT/Hotspot enablers); **כל שאר הטוגלים = CheckBoxPreference** (סגנון 4.4). דפוס Duoqin נפוץ: מתג-אב + ילדים עם `android:dependency` שמתאפרים כשהאב כבוי (voice_boardcast_settings.xml, duoqin_chat_settings.xml).
5. **בחירה-מרשימה = ListPreference** שפותח דיאלוג radio, כשה-summary מציג את הערך הנוכחי.
6. **סליידרים תמיד בדיאלוג**, לא inline: BrightnessPreference, RingerVolumePreference, PointerSpeedPreference.
7. **summary** משמש ל: ערך נוכחי (תאריך/שעה/timezone), הסבר קצר, או summaryOn/summaryOff לטוגלים. בשורות ניווט במסך הראשי — אין summary.
8. **ניווט** מוצג כשורת טקסט פשוטה (אין חץ, אין ווידג'ט) — ההבחנה טוגל/ניווט היא רק ע"י ה-checkbox בצד.

## 6. Preference מותאמים ב-smali ששווה לחקות

- `com.android.settings.BrightnessPreference` — דיאלוג עם SeekBar (smali/com/android/settings/BrightnessPreference.smali)
- `RingerVolumePreference` (יורש VolumePreference) — דיאלוג רב-סליידרים
- `DefaultRingtonePreference` — בורר רינגטונים
- `WarnedListPreference` — ListPreference עם אזהרה לפני החלה (גודל גופן)
- `location/RadioButtonPreference` — CheckBox שמתנהג כ-radio לבחירה-יחידה במסך location_mode
- `SingleLineSummaryPreference`, `EditPinPreference`, `PointerSpeedPreference`
- `DevelopmentSwitchPreference`, `LocationSwitchPreference` — מתג-אב בראש מסך

הערה חשובה למי שמעתיק את התחושה: הכותרת של WiFi בעברית היא "." (באג/עריכה מכוונת ב-values-iw), לכן במכשיר רואים שורה עם נקודה בלבד — לא לחקות את זה, אבל זה מסביר את הרשימה החיה.

## עובדות מפתח

- הרשימה הראשית מוגדרת ב-res/xml/settings_headers.xml (preference-headers), נטענת ב-Settings.smali שורה 2110 ומסוננת דינמית ב-updateHeaderList (שורה 1322)
- שלוש קטגוריות עליונות בעברית: כללי (wireless_section), אישי (personal_section), מערכת (system_section) — קטגוריה = header בלי fragment/intent
- שורת ה-'.' במכשיר היא WiFi: wifi_settings_title ב-values-iw/strings.xml שורה 502 הוא הסטרינג '.'
- האדפטר מסתיר אייקונים (setVisibility GONE ב-updateCommonHeaderView) — שורות המסך הראשי הן טקסט בלבד; רק 2 view types בשימוש: קטגוריה ושורה רגילה, אין מתגים inline למעלה
- שורה: minHeight 44px, כותרת שורה-אחת + summary עד 2 שורות שמוסתר כשריק; קטגוריה: TextView דק בסגנון listSeparatorTextViewStyle בצבע text_color_newui
- קונבנציית טוגלים: SwitchPreference רק כמתג-אב בראש מסך; כל השאר CheckBoxPreference; ילדים עם android:dependency מתאפרים כשהאב כבוי
- בחירות = ListPreference בדיאלוג עם הערך הנוכחי כ-summary; סליידרים תמיד בדיאלוג (BrightnessPreference, RingerVolumePreference, PointerSpeedPreference)
- עומק ניווט מקסימלי 3: רשימה ראשית → מסך משנה → דיאלוג/PreferenceScreen מקונן
- PreferenceCategory משמש בשתי צורות: ריק כמפריד ברשימה שטוחה (sound_settings) או עם ילדים מקוננים (security_settings_misc)
- Preference מותאמים לחיקוי: WarnedListPreference, RadioButtonPreference, SingleLineSummaryPreference, BrightnessPreference, DefaultRingtonePreference

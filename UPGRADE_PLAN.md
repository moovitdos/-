# תוכנית שדרוג מקיפה — Qin 1s+ ClassicHome Mod

מסמך זה מסכם מחקר ואימות של 14 סוכנים (7 תכנון + 7 הפרכה יריבה), בתוספת אימותים
שביצעתי ישירות מול המכשיר ומול הקוד. כל טענה שהופרכה בשלב האימות מופיעה כאן
**בצורתה המתוקנת בלבד**.

התוצרים הגולמיים שמורים ב-[plan_research/](plan_research/).

---

## עובדות בסיס שמעצבות הכל

אומתו ישירות מול המכשיר ומול הקוד. הן גוברות על כל טענה סותרת.

| עובדה | משמעות |
|---|---|
| Qin_1s_ / sp9820e, Android 4.4.4 API 19, מסך 240x320, density 120 | ‏1dp = 0.75px. במונחי dp זהו מסך "normal" בגודל 320x427dp |
| **המכשיר מרוט** (`su -c id` → uid=0) | פותח מסלולים שהתכנונים סגרו. ברירת המחדל נשארת ללא רוט |
| **המכשיר מריץ את המסך המקורי, לא את המוד** | מחסנית הפעילויות מכילה רק `com.sprd.simple.launcher/` ואפס `.mod`. חלק מהתסמינים שדווחו נבדקו על האפליקציה הלא נכונה |
| ה-APK המותקן ישן מהבילד המקומי | במכשיר `5ccb3f22`, מקומי `a260a5f5` |
| `original_from_device.apk` זהה בייט-בייט ל-`/system/priv-app/ClassicHome.apk` | הבסיס נכון |
| ה-`resources.arsc` ב-`tools/framework/1.apk` זהה לזה של המכשיר | ה-framework נכון |
| ה-APK מכיל **0 קבצי `.class`**, רק `classes.dex` | ‏`-cp original_from_device.apk` לא תורם ל-javac כלום. זו הסיבה שכל הקוד כתוב ב-reflection |
| ה-ROM ‏pre-odexed — `framework.jar` הוא stub של 313 בייט | קוד ה-framework ב-`framework.odex`. לא נדרש לתוכנית זו |
| `com.android.carrierconfigs` **מותקן** | ה-kill-switch יעבור במכשיר הזה — אבל ראה שלב 0 |

---

## שני באגים שאימתתי בעצמי

### מקש `#` — הפיצ'ר המרכזי שה-README מבטיח לא עובד

`Home.smali:897` קורא ל-`pressKeyEventForMainActivity`. אם הוא מחזיר true,
שורה 901 קופצת מעל ה-`sparse-switch` כולו. וב-`KeyCodeEventUtil.smali` בסביבות
שורה 531, ‏keycode 18 מריץ `startDialActivityByKeyCode("#")` ומשאיר את `v0`
על 1 — כלומר **true**. לכן `:sswitch_pound` ב-`Home.smali:992` לעולם לא נגיש.

חשוב: `Home.java:329` **משעתק את אותו מבנה בדיוק**. כלומר המעבר ל-Java
לא מתקן את הבאג — זה תיקון נפרד.

### מלכודת ה-kill-switch

`Home.java:155-157` מכיל `System.exit(0)` אם `com.android.carrierconfigs` חסרה.
זה **הוסר מה-smali שרץ** (grep מחזיר אפס). קימפול של `Home.java` כמו שהוא
יחזיר את הפצצה לחיים.

---

## שלב 0 — מעבר ל-Java (חוסם את כל השאר)

### מה כבר הוכח

הרצה בפועל של `javac` על כל 79 הקבצים: **363 שגיאות**, אבל 330 מהן (91%)
מרוכזות ב-`com/kosherjava` ו-`com/duoqin/calendar` בלבד — ארטיפקטים של jadx
ו-`java.time.LocalDate` שנוסף רק ב-API 26. קוד המשגר עצמו כמעט נקי:
‏`Home` שגיאה אחת, `LauncherModel` ארבע, `MainMenuActivity` שלוש.

מסלול עובד הוכח: עם `-implicit:none`, **ארבעה** stubs, ושישה תיקוני מקור —
כל מחלקות היעד מתקמפלות באפס שגיאות, `d8` מסיים ב-exit 0, ו-apktool מייצר
72 קבצי smali.

ארבעת ה-stubs (לא חמישה — `libcore/icu/ICU` נבדק ונמצא מיותר):
`android/app/EventRecordManager`, `android/os/SystemProperties`,
`com/android/internal/widget/ActionBarView`, `java/time/LocalDate`.

### שינוי אטומי חובה

`-sourcepath ""` → `-sourcepath src` ו-`-implicit:none` **חייבים לנחות באותו
commit**. הראשון מפעיל קימפול מרומז, השני מרסן אותו. אם הראשון ינחת לבד,
הבנייה תדרוס בשקט את `BaseHomeActivity`, `Utilities`, `UtilitiesExt`,
`FlashlightController`, `FeatureBarHelper`, `AppsSort`,
`HebrewCalendarConvertUtil` ו-`JewishDate`.

### הפער האמיתי הוא בארבע מחלקות, לא באחת

השוואת גוף-מול-גוף אחרי נרמול:

| מחלקה | smali קיים | מ-Java | פער |
|---|---|---|---|
| `KeyCodeEventUtil` | 365 | 570 | **56%** |
| `HomeStatusView` | 238 | 345 | **45%** |
| `MainMenuActivity` | 201 | 215 | 7% |
| `Home` | 618 | 598 | 3% |

`HomeStatusView` הוא המקרה החמור: ה-`applyCustomSettings` שרץ במכשיר הוא
176 שורות, וזה שב-Java הוא 411 שורות הכוללות טיפול בפורמט 12/24 שעות,
`sans-serif-light` ו-try/catch — **קוד שמעולם לא רץ על המכשיר**. זו לא
"העברת התנהגות" אלא החלפת מימוש במימוש אחר לא בדוק.

### מה אסור להוסיף לרשימת הקימפול

- **`HomeApplication`** — ה-smali שלו מקורי ובלתי נגוע. הקימפול מוסיף מתודה
  `getLauncherModel()` שאף פיצ'ר לא דורש. אין תמורה.
- **`GamActivity`** — קוד מת. `AndroidManifest.xml:26` רושם רק `GamesActivity`.
  אין לו `<activity>` בכלל, ולכן הוא בלתי ניתן להשקה ולא יכול לקרוס.

הכלל: מוסיפים מחלקה רק אם היא כבר מתוחזקת ידנית ב-smali, או שרוצים לשנות אותה.

### עובדות מרגיעות שאומתו

- בודק סחיפת חתימות נכתב והורץ על 72 קבצי ה-smali החדשים: **אפס סחיפה
  אמיתית** היום. חמש התאמות בלבד, כולן `invoke-super` ל-`BaseHomeActivity`
  שנפתרות ל-`android.app.Activity`. הבדיקה חייבת להיכנס כשער קבוע.
- **אפס** הפניות מסוג `launcher/R$id;->` בכל עץ ה-smali — כל קבועי R הוטמעו
  inline. דריסת `R$*.smali` לא יכולה לשבור דבר.
- שלושה יתומים אחרי המעבר: `Home$4`, `Home$5`, `WidgetHostManager$4`.

### צעדים

1. **commit או tag של המצב הנוכחי**, ודרישת עץ נקי. אין תוכנית rollback
   והבנייה הראשונה דורסת בלתי-הפיך.
2. הוספת ארבעת ה-stubs ל-bootclasspath.
3. שישה תיקוני מקור, כולל **מחיקת ה-kill-switch** מ-`Home.java:155-157`.
   שים לב: `Home.java:127` ו-`FlashlightController.java:53` הן שגיאות
   **סדר-שני** שיתגלו רק אחרי הסבב הראשון.
4. שינוי `-sourcepath` + `-implicit:none` יחד.
5. **צמצום `HomeStatusView.java` להתנהגות ה-smali שרץ** לפני הוספתו לרשימת
   הקימפול (הוכרע: שומרים על המימוש הבדוק בן 176 השורות). קימפול הגרסה בת
   411 השורות כמו שהיא יחליף בשקט מימוש בדוק במימוש שלא נבדק.
6. שער סחיפת חתימות ב-`build_and_deploy.py` וב-CI.
7. מחיקת `WidgetHostManager$*.smali` לפני כל בנייה — לולאת ההעתקה רק דורסת,
   לעולם לא מוחקת, ומאזינים אנונימיים חדשים משנים מספור ומשאירים יתומים.

**לשחזור הספירה:** ברירת המחדל של javac היא `-Xmaxerrs 100`. צריך
`-Xmaxerrs 10000` כדי לראות 363.

---

## שלב 1 — בטיחות ונגישות (חייב לקדום לכל UI)

### חוסם מוחלט: שתי שורות זהות בבורר

המוד והמקורי חולקים **בדיוק אותו label** ("מסך הבית") ואף אחד מהם לא מגדיר
`android:icon`. בבורר מסך הבית יופיעו שתי שורות זהות לחלוטין. זה חייב להיפתר
לפני כל דבר אחר.

התיקון חייב להשתמש ב**משאב קיים בלבד**, אחרת נגררים להקצאת מזהי R חדשים:
`@drawable/ic_launcher_settings` (0x7f020064) או
`@mipmap/duoqin_launcher_extras` / `duoqin_launcher_games` — שניים כבר בשימוש
במניפסט בשורות 20 ו-26.

### היפוך הבטיחות — הטעות המסוכנת ביותר בכל התכנון

התכנון המקורי סימן את `clearPackagePreferredActivities` כ"כפתור שתמיד עובד".
**זה הפוך.** אחרי ניקוי ההעדפה נשארים **שני** מועמדי HOME בלי ברירת מחדל,
ואז `PackageManagerService.chooseBestActivity` מחזיר את `ResolverActivity`,
ו-`startHomeActivityLocked` מפעיל אותו כמסך הבית — כולל באתחול. על מסך
240x320 **ללא מגע**, אם הבורר לא נשלט במלואו ב-D-pad, המכשיר נשאר בלי מסך
בית שמיש.

**המסלול הבטוח באמת** הוא `setComponentEnabledSetting(DISABLED)` על ה-`Home`
של המוד — אחריו נשאר **מועמד יחיד** ואין בורר בכלל.

"החזר את המקורי" צריך לבצע בסדר הזה:
1. `setComponentEnabledSetting(DISABLED)` על ה-Home של המוד
2. `clearPackagePreferredActivities(getPackageName())`
3. לירות HOME

### פרטים שחייבים להיכנס

- `Settings.ACTION_HOME_SETTINGS` **לא קיים ב-API 19** (נוסף ב-21). אין להשתמש.
- גיבוי ראשון: `com.android.settings.Settings$HomeSettingsActivity`, מוגן
  ב-`resolveActivity` ‏+ try/catch. רק אחריו ליפול ל-`ACTION_APPLICATION_DETAILS_SETTINGS`.
- **probe חובה לפני כל פעולה**: `queryIntentActivities(MAIN+CATEGORY_HOME).size()`.
  הוא מגלה גם שהמוד מושבת, גם שהמקורי הוסר, וגם אם התוצאה תהיה "מועמד יחיד"
  (בטוח) מול "שניים בלי ברירת מחדל" (מסוכן).
- `getComponentEnabledSetting` מחזיר `DEFAULT=0` ולא `ENABLED=1` כל עוד לא
  שונה. הלוגיקה הנכונה: `state != DISABLED ⇒ מופעל`. מימוש נאיבי שבודק `==1`
  יציג "כבוי" בהתקנה נקייה.
- `build_and_deploy.py:200` מריץ `am start` בסוף כל בנייה. אחרי ההשבתה זה
  ייכשל, ו-`adb install -r` **אינו** מאפס מצב enabled (הוא נשמר ב-
  `package-restrictions.xml` ושורד עדכון-במקום). צריך `pm enable` לפני.
- אחרי ההשבתה — `finish()` על מסך ההגדרות וסילוק המשימה, אחרת המשתמש יחזור
  עם Back למסך בית מושבת.
- מסלול החתימה סגור סופית: `SET_PREFERRED_APPLICATIONS` הוא signature-בלבד
  (לא signature|system), אבל ה-APK חתום במפתח פרטי של Duoqin
  (‏SHA1 `47:17:AB:5D:...`) שאינו זמין.

### רשת ביטחון

אייקון ההגדרות של המוד יופיע בתפריט של המשגר **המקורי**, כי הוא סורק
`queryIntentActivities(MAIN+LAUNCHER)` ואפליקציה שלא מופיעה ב-`customize_apps.xml`
שלו נופלת לברירת מחדל `mainmenu`. אומת מול הפירוק של ה-APK המקורי, לא מול
עץ המוד. בנוסף מותקן `de.szalkowski.activitylauncher` כמסלול חילוץ.

---

## שלב 2 — עיצוב מסך הבית

### שורת השיחות שלא נענו

**סיבת השורש אינה AppOps** (זו הייתה ספקולציה שהופרכה — ההרשאה קיימת במניפסט
והיא install-time רגילה ב-API 19). ההסבר הוודאי פשוט יותר:
`home.xml:12` מגדיר את `@id/home_weather` **ללא `android:visibility`**, כלומר
VISIBLE מרגע ה-inflate ועד הריצה הראשונה של `updateStatusInfo()`. בנוסף מסלול
`cursor==null` (‏`Home.smali:562`) לא מכבה אותה.

התיקון: ברירת מחדל `gone` ב-XML + `setVisibility(GONE)` בראש המתודה.

וגם: `isMissedCallsEnabled` קיים רק ב-`Home.java:93` ולא ב-smali שרץ — המתג
בהגדרות לא עושה כלום היום.

> **סכנת קריסה:** `Home.smali:398` ו-`409` משיגים את שני ה-TextView לפי
> `getChildAt(0)`/`getChildAt(1)`, **מחוץ** ל-try/catch (ה-try מתחיל רק ב-488).
> מחיקת ה-TextView השני מ-`home.xml` תזרוק `IndexOutOfBoundsException`
> ותפיל את המסך הראשי.

### ביטול הגלילה

`ScrollView.executeKeyEvent` בולע DPAD **רק כאשר `canScroll()==true`**, כלומר
רק כשהתוכן באמת חורג. התוכן חורג בדיוק בשני מצבים: ווידג'ט בעמוד 0, ושורת
השיחות פתוחה — שניהם מטופלים בסעיף הקודם. כלומר תיקון שורת השיחות לבדו כבר
מחזיר את קיצורי ה-D-Pad ברוב המקרים, וביטול הגלילה נחוץ לתרחיש "ווידג'ט
גבוה בעמוד 0".

`page_1_scroll` (0x7f0d0019) ו-`page_2_scroll` (0x7f0d001b) **אינם מופנים
מה-smali כלל** — אפס התאמות. ההחלפה ל-`FrameLayout` בטוחה יותר ממה שהוערך.
יש להסיר גם את `fillViewport` ו-`scrollbars` שנשארים חסרי משמעות.

מזהים שחייבים להישמר: `0x7f0d000c`, `0x7f0d000f`, `0x7f0d0011`, `0x7f0d0018`,
`0x7f0d001a`, `0x7f0d001d`.

### תקציב שטח — תיקון חישוב

`feature_bar_size` ב-`values-ldpi-320x240-v4/dimens.xml` הוא **גודל הטקסט**
של תוויות הסרגל, לא גובהו. הגובה הוא `feature_bar_height` וערכו
**0.0px** (`res/values/dimens.xml:5`), בלי דריסה.

השטח השימושי הוא **~240x300px**, לא 283. כל מספרי הגדלים שהוערכו קודם
פסימיים בכ-6%.

### רשת — זה לא GridView

הווידג'ט הוא **`com.sprd.common.view.LoopGridView`**, תת-מחלקה של GridView.
היא קוראת `getNumColumns()` בזמן ריצה בחמישה מקומות עבור לוגיקת הגלישה
המעגלית. שינוי מספר העמודות **משנה בשקט את סמנטיקת הגלישה**: ‏`isLastLine()`
מחשב `count % getNumColumns()`, כך שעם 14 אפליקציות ו-4 עמודות השארית היא 2
ו-DPAD_DOWN יגלוש רק משני הפריטים האחרונים.

יש לבדוק ידנית גלישה מעגלית בכל ערך עמודות שנחשף (2/3/4/5).

**גלישה מעגלית אינה מגיעה חינם מ-AbsListView** — אין ב-API 19 שום מנגנון כזה.
עמוד רשת חדש שייבנה בקוד יצטרך `LoopGridView`, וזו אינה זמינה ל-javac
(ראה אילוץ ה-classpath) — כלומר יצירה ב-reflection.

מלכודות נוספות:
- `MainMenuAdapter.getView` קורא `getMeasuredHeight()/getNumColumns()` — חלוקה
  בעמודות במקום בשורות. אם הגובה ייקבע ע"י `layout_weight`, ‏`getMeasuredHeight()`
  יהיה 0 במעבר המדידה הראשון וכל התאים ייבנו בגובה 0.
- `MainMenuActivity$1.smali:50-52` מקבע `setSelection(4)`.
- גודל האייקון מיושם **דקלרטיבית** ב-`main_menu_item.xml:4`, ‏`MainMenuAdapter`
  לא קורא את ה-dimen בכלל. אין hook פר-פריט.
- נקודת ההזרקה ב-`MainMenuActivity.smali` היא אחרי שורה **72** (לא 71), ובדיקת
  ה-null מתרחשת רק אחריה.
- ‏badge ה-`unread_info` לא נבחן מול תאים של 48px ב-5 עמודות.
- טפט: דורש `SET_WALLPAPER` במניפסט, ו-`SetWallpaperActivity.smali` **מעולם
  לא נפתח** — לא ידוע אילו טפטים היא מציגה והאם שרדה את `renameManifestPackage`.

---

## שלב 3 — מקשים

### החוסם היחיד לדרישה 4 הוא שער אחד

ה-hook כבר קיים ובמקום הנכון: `KeyCodeEventUtil.smali:471` קורא ל-
`handleShortPressKey` לפני הכל, ו-`:224` ל-`handleLongPressKey`.

מה שחוסם הוא שער גלובלי ב-`LauncherSettings.java:393-397` שמחזיר false מיידית
לכל הספרות כשמצב החיוג הוא ברירת המחדל. **הסרת השער נותנת בדיוק את מה שביקשת**:
קיצור אם הוגדר, אחרת חיוג מהיר.

### רגרסיה חמורה — אין מקשי ווליום חומרתיים

`getevent_capture.log` מכיל **אפס** מופעים של `KEY_VOLUME`. ארבעת התקני הקלט
הם `sprd-gpio-keys` (רק `KEY_SWITCHVIDEOMODE` = מקש `*`), שני התקני אוזניות
ו-`sprd-keypad`.

כלומר הווליום ב-2/8 הוא **אמצעי הווליום היחיד מחוץ לאפליקציות**. הסרתו היא
רגרסיה תפקודית ולא אי-נוחות. המיגרציה חייבת להיות חובה, או שברירת המחדל של
`key_num_short_2/8` תוגדר לווליום.

### שליטת מדיה — API ציבורי, בלי reflection

`AudioManager.dispatchMediaKeyEvent(KeyEvent)` אומת כקיים ב-
`tools/android-19/android.jar`, והוא **ציבורי** (בניגוד ל-`StatusBarManager`
ו-`SystemProperties` שאינם שם). אין צורך ב-reflection.

### סתירה ארכיטקטונית — חייבים לבחור צד

שליחה (`dispatchMediaKeyEvent`) וצריכה (`registerMediaButtonEventReceiver`)
**אינן יכולות לדור בכפיפה אחת**. ב-KitKat הרישום דוחף את הרכיב שלנו לראש
`mRCStack` ב-`AudioService`, ו-`dispatchMediaKeyEvent` מנתב לראש אותו stack.
אם נעשה re-assert, ‏(א) המדיה שנשלח תחזור אלינו במקום לנגן, ו-(ב) כפתור
האוזניות יפסיק לשלוט בנגן בכל המכשיר.

### באגי מקשים נוספים שהתגלו

- **ירי כפול בלחיצה ארוכה.** `BaseHomeActivity.smali:434` בודק `mLongPressKey`,
  אבל `Home.smali:885-897` השמיט את הבדיקה. לכל מקש שאין לו יעד בטבלת
  ה-long-press — BACK, ‏`*`, וחיצים — לחיצה ארוכה תפעיל את הפעולה ה**קצרה**.
  התיקון: אי אפשר לקרוא את `mLongPressKey` (private — יזרוק `IllegalAccessError`),
  אבל אפשר `event.getEventTime() - event.getDownTime() < getLongPressTimeout()`,
  או לשנות את השדה ל-protected.
- **שער speeddial נסתר.** `KeyCodeEventUtil.smali:288` קורא
  `Settings.Global.getInt("speeddial_setting", 1)`; אם הערך שונה מ-1, לחיצה
  ארוכה על ספרה **בולעת את האירוע ולא עושה כלום**.
- **ההסרה משפיעה על כל המסכים.** `pressKeyEventForMainActivity` נקרא משני
  מקומות: `Home.smali:897` ו-`BaseHomeActivity.smali:439`, ו-`MainMenuActivity`
  יורש מ-`BaseHomeActivity`. קיצור שהוגדר ל-`key_softkey_right_short` (=BACK)
  **יחסום יציאה מהתפריט**.
- **`ACTION_FLIPPER_NEXT`** מוגדר אך לא ממומש. המימוש הנכון הוא ב-Java טהורה
  בלי שום עריכת smali ובלי broadcast: ה-Context שמגיע ל-`executeKeyAction`
  הוא **מופע ה-Activity של Home עצמו** (‏`Home.smali:897` מעביר `p0`).
  לכן `((Activity)context).findViewById(getIdentifier("home_flipper",...))`
  ואז `showNext()`. חובה גם להוסיף אותו למערך `actions` ול-`getShortcutSummary`,
  אחרת יישאר בלתי ניתן לבחירה.
- **`executeKeyAction`**: הכנסת ענפים אחרי שורה 388 היא **שגיאת קומפילציה** —
  זו ה-`return false` שאחרי ה-catch. יש להוסיף בין 383 ל-384, בתוך ה-try.
- **שני פריטי UI יהפכו לשקר.** אחרי הסרת השער, `getNumShortPressMode` לא נקראת
  משום מקום. או להסיר את `num_short_press_mode`, או להוסיף ערך שלישי
  `NUM_SHORT_PER_KEY=2` במקביל ל-`NUM_LONG_PER_KEY` הקיים.
- **חסר `RECEIVE_BOOT_COMPLETED`** ואין אף `<receiver>` או `<service>` במניפסט.
- **`executeKeyAction` רץ ב-UI thread** מתוך `onKeyUp`. ‏`dispatchMediaKeyEvent`
  הוא Binder ל-`AudioService` ו-`queryBroadcastReceivers` סורק את PackageManager —
  שניהם יכולים לתקוע את מסך הבית לעשרות מילישניות.
- **`FLAG_SHOW_UI`**: פאנל הווליום של KitKat הוא Dialog מערכת ולא נבדק על
  240x320. חלופה בטוחה: `FLAG_SHOW_UI=0` + Toast עברי משלנו עם המספר הנוכחי.
- אין תועלת במחיקת הבלוקים המתים `547-564` ו-`567-584` — חוסך ~40 בתים ומוסיף
  סיכון ליישור. עדיף מיפוי מחדש בלבד.

---

## שלב 4 — ניהול אפליקציות והסתרה

הפיצ'ר **לא שבור לגמרי** — הצינור מחובר ורץ. הוא נשען על מודל שבור בארבע נקודות.

1. **ה-smali כותב את הקבוצה הפתורה בחזרה לשדה.** `LauncherModel$LoaderTask.smali:853`
   כותב ל-`AppItemInfo.group` והורס את ברירת המחדל מה-XML, בעוד `LauncherModel.java:311-312`
   משתמש במשתנה מקומי. שתי הגרסאות התפצלו.
2. **המסך מציג רק את ה-override.** `getCustomAppGroup` מחזיר null כשאין דריסה,
   ולכן ~90% מהאפליקציות מוצגות בלי תגית ולמשתמש אין מושג איפה הן.
3. **המנגנון בלתי שמיש.** ‏`AlertDialog.setItems` כפול שנסגר אחרי כל שינוי,
   ‏60+ אפליקציות על 240x320, בלי חיפוש ובלי שמירת מיקום גלילה.
4. **`customize_apps.xml` סותר את עצמו.** ‏3 התנגשויות קבוצה אמיתיות
   (27/40, 29/42, 30/43) שבהן `HashMap.put` גורם ל"האחרון מנצח" — הערות,
   הורדות ו-STK מסומנות `extra` ואז `hide`. בנוסף התנגשות position אחת (44/49)
   וכפילות זהה חסרת השפעה (28/41). ובנוסף **26 מתוך 52** השורות מפנות
   לאפליקציות שאינן מותקנות.

**מה שאומת כתקין:** מפתח ה-prefs `pkg/cls` תואם, כי שני הצדדים קוראים
ל-`queryIntentActivities`. ‏`hide` אכן מסתיר משלושת המסכים. אפליקציה שלא
מופיעה ב-XML מקבלת `mainmenu`.

**תיקון שגוי שהוסר:** הטענה ש-`LauncherSettingsActivity` אינה נגישה מהקוד
הופרכה — `LauncherSettings.smali:535` מכיל `const-class` בענף `ACTION_SETTINGS`.
היא כן נגישה דרך כל מקש שממופה ל-`action:settings`.

**אי-התאמה פוטנציאלית לבדיקה:** `LauncherModel.java:207` בונה `pkgName` מ-
`activityInfo.applicationInfo.packageName`, בעוד `LauncherSettingsActivity:577`
לוקח `ri.activityInfo.packageName`. ברוב המקרים זהים, לא תמיד.

**אילוצי UI על המכשיר הזה:**
- `setChoiceMode(CHOICE_MODE_MULTIPLE)` לא מציג שום סימון אלא אם שורש השורה
  מממש `Checkable`. פריסה של אייקון+תווית לא תעבוד — צריך `CheckedTextView`.
- `EditText` לסינון הוא בחירה גרועה: T9 פיזי, עברית, וכניסת פוקוס גונבת את
  ה-D-pad ואת הספרות. עדיף סינון לפי קבוצה במקש רך + קפיצה לאות במקש ספרה.

---

## שלב 5 — ווידג'טים וגיאומטריה

הכל אפשרי בלי רוט, ורובו בלי לגעת ב-smali המתוחזק ידנית.

**נקודות אחיזה:** `setupHomeWidgets` נקרא מ-`onResume` → `refreshWidgets`
(‏`Home.smali:1202` → `1217`) **וגם** מ-`setupViews` (‏`Home.smali:471`) בהפעלה
קרה. לכן דגל מצב-עריכה חייב להיצרך **אטומית** (`getAndClear`).

**API מאומת ב-API 19:** `updateAppWidgetSize`, `updateAppWidgetOptions`,
`getAppWidgetOptions`, ארבעת מפתחות `OPTION_APPWIDGET_MIN/MAX_*`,
`minResizeWidth/Height`, `resizeMode`. ה-options רק **מיידעים** את הספק;
הגודל הנראה נקבע מה-LayoutParams.

**אופטימיזציה חובה:** אין לקרוא ל-`updateAppWidgetSize` בכל `onResume` — היא
מבצעת `getAppWidgetOptions` שהוא סבב Binder לכל ווידג'ט. לקרוא רק כשהגודל
השתנה, ולהעביר את ה-Bundle שחזר ולא Bundle ריק.

**מקשים במצב עריכה:** `Home` ו-`BaseHomeActivity` **אינם** דורסים
`dispatchKeyEvent`, ולכן View ממוקד יקבל מקשים ראשון. **אבל** חובה לצרוך את
ה-DOWN של כל מקש רצוי: אם ה-overlay מחזיר true ב-`onKeyDown`, ‏`startTracking()`
לא נקרא, ובעליית המקש `isTracking()` נכשל ו-`Home.onKeyUp` מחזיר false.
צריכה חלקית תגרום לחיוג `#` או להפעלת קיצורי החיצים.

### העכבר — הוכרע: באחריות אפליקציית העכבר בלבד

**המשגר לא נוגע ב-`setEnableFor3rdApp` בכלל.** ההפעלה והכיבוי של העכבר הם
באחריות `StarMouseApp`, והמשגר רק **מגיב** לאירועי מצביע כשהם מגיעים.

זה מייתר שלושה דברים שהיו בתכנון ומסיר את הסיכון הגדול ביותר בשלב הזה:

- אין reflection ל-`setEnableFor3rdApp`, ולכן ההנחה הלא-מאומתת לגבי נגישות
  מ-uid של אפליקציה רגילה **יורדת מהפרק**.
- אין probe ואין הסתרת UI מותנית.
- **אין לולאת re-assert**, ולכן אין התנגשות עם דמון ה-150ms של `StarMouseApp`.
  זו הייתה מלכודת "הדגל המרפרף" — הבאג שהמשתמש חווה כ"לא עושה כלום".

**המחיר, ויש כזה:** המשגר לא יכול להבטיח שהעכבר דלוק. לכן **מצב עריכת
הגיאומטריה חייב להיות שמיש במלואו ב-D-pad**, והעכבר הוא שיפור אופציונלי בלבד.
מבחינת מכשיר מקשים זו ממילא ההחלטה הנכונה.

תכנון האינטראקציה נשאר "קליק-הזז-קליק", שעובד גם אם מצב העכבר מייצר רק
hover+קליק ולא זרם `ACTION_DOWN/MOVE/UP` מלא.

**חשבון מסך:** 10sp = 7.5px. מחרוזת רמז של ~50 תווים לא תיכנס ל-240px.
צריך גופן מינימלי ~12sp, רצועה של שתי שורות, וידיות 10x10px לפחות.

**`input keyevent` לא מפעיל את הסמן** — אימות מצב העכבר חייב מקשים פיזיים.

**עוד פערים:** `makeViewOnly` חוסם פוקוס בעמוד 0 וצריך ביטול זמני;
`resizeMode == RESIZE_NONE` לא מטופל; אין תוכנית לשחזור בחירה אחרי
pause+resume; ומצב עריכה שמשתמש ב-`#` גוזל את מקש הדפדוף היחיד.

**מלכודת נעילה:** אם המשתמש ידחוף את השעון מחוץ למסך אין לו איך לחזור (אין מגע).
חובה clamp שמונע מיקום מחוץ למסך **מלכתחילה** + מקש איפוס גלובלי.

---

## שלב 6 — מסך ההגדרות

### הגילוי המרכזי: הקוד דורס ערכת נושא שכבר נכונה

`styles.xml:3` מגדיר `BaseTheme` עם parent `@android:style/Theme.Holo.Light.NewUI`,
והמניפסט כבר מחיל אותה. אבל `LauncherSettingsActivity` צובע ידנית רקע
`0xFF121212` וכותרות זהב `0xFFFFB300` ומבטל את זה.

אומת מול ה-framework של המכשיר שהערכה קיימת ומחווטת במלואה ל-Preference:
`preferenceStyle`, `switchPreferenceStyle`, `switchStyle`,
`preferenceFragmentStyle`, `listSeparatorTextViewStyle`.

**הרקע האמיתי של ה-ROM הוא אפור `#575859` עם הדגשה טורקיז `#00c0d4`, לא שחור.**

מעבר ל-`PreferenceActivity` נותן את מראה ה-ROM כמעט בחינם.

### שתי נקודות כשל שחייבות טיפול

1. `PreferenceActivity` כותב ל-`<pkg>_preferences` ולא ל-`launcher_custom_settings`.
2. **חמור יותר:** רוב המפתחות הקיימים שמורים כ-**int** בעוד `ListPreference`
   מתמיד **String** → `ClassCastException` אצל משתמשים קיימים.

### אילוץ classpath — החמור ביותר לשלב הזה

כל מחלקת Preference/Fragment חדשה רשאית לגעת **רק** ב-framework,
ב-`LauncherSettings`, ב-`WidgetHostManager` וב-`MainMenuWidgetHelper`.
כל נגיעה ב-`LauncherModel`, `Home`, `MainMenuActivity` או `MainMenuAdapter`
חייבת reflection או `getIdentifier`.

### קיבוץ לפי מצב נוכחי — לא ניתן למימוש כפי שתוכנן

אין ל-Fragment דרך לדעת את הקבוצה הנוכחית של אפליקציה שלא שונתה, כי
`getCustomAppGroup` מחזיר null. ברירת המחדל יושבת ב-`customize_apps.xml`
ומיושמת ע"י `LauncherModel` שב-dex המקורי.

או שה-Fragment יפרסר בעצמו את `customize_apps.xml` (תוך שכפול סמנטיקת
"האחרון מנצח"), או שמוותרים על הקטגוריות ומציגים רשימה ממוינת שבה ה-summary
הוא הקבוצה הנוכחית.

### מלכודות נוספות

- **`public.xml` חייב הרחבה בארבעה טיפוסים**, לא שניים: `xml` מ-0x7f050001,
  `string` מ-0x7f080094, **`layout` 0x7f04000b**, ו-**`array` מ-0x7f0a0002**.
  קריטי במיוחד ל-layout: הליטרל 0x7f040005 (home) מופיע ב-smali הידני.
  ובנוסף חייב קבוע תואם ב-`src/.../R.java` — הוא **מקומפל מ-src ולא נוצר ע"י aapt**.
- **`Duoqin.Preference` משתמש ב-`@layout/duoqin_layout_preference`** — פריסה
  מותאמת ולא `preference.xml` של AOSP. חובה לאמת את קיום
  `@android:id/widget_frame` לפני כתיבת `onBindView`, אחרת ריבוע הצבע לא יופיע.
- **`prefs_keys_nav.xml` מפספס ארבעה מפתחות קיימים**: `key_dpad_{up,down,left,right}_long`.
- **DeviceAdmin — שני סיכונים:** הפעלתו חוסמת הסרת התקנה, ובאפליקציה שהיא
  המשגר זה עלול לתת מכשיר עם משגר קורס שאי אפשר להסיר בלי adb. בנוסף
  `ADD_DEVICE_ADMIN` דורש שפעילות `DeviceAdminAdd` קיימת ב-ROM מקוצץ.
- **כלל אחיד לכל Intent של `com.android.settings`**: `resolveActivity` לפני
  ההצגה, ואם אין — לא להציג את השורה כלל.
- **אין תוכנית התאוששות.** לעטוף `onCreate` של כל פרגמנט בבדיקת שפיות
  (`getAll()` + `instanceof`) שמנקה מפתח בטיפוס לא צפוי במקום לזרוק.

---

## החלטות שהוכרעו

| # | ההחלטה | ההכרעה | השלכה מחייבת |
|---|---|---|---|
| 1 | עמוד 0 — כמה ווידג'טים? | **כמה, עם מיקום חופשי** | להסיר את הגבלת הווידג'ט היחיד ב-`WidgetHostManager.java:211-224`. עמוד 0 הופך ל-`FrameLayout` עם מיקום מוחלט. **clamp קשיח חובה** — בלי גלילה ובלי מגע, ווידג'ט שיֵצא מהמסך אבוד. מרחיב את שלב 5 |
| 2 | איזו גרסת `applyCustomSettings`? | **זו שרצה היום** (176 שורות) | ראה אזהרה קריטית מתחת לטבלה |
| 3 | ווליום ב-2/8 | **לשחרר, אבל ברירת מחדל לווליום** | להוסיף `action:volume_up` / `action:volume_down` ל-`executeKeyAction`, ולזרוע אותם כברירת מחדל ל-`key_num_short_2` ו-`key_num_short_8`. התנהגות ההתקנה הנקייה נשארת זהה להיום |
| 4 | תיקיות סינתטיות | **לא — לשפר את הקיים** | שלב 4 מצטמצם: תיקון ארבעת באגי המודל, ניקוי ההתנגשויות ב-`customize_apps.xml`, שינוי שמות שלושת המסכים, ומסך ניהול אמיתי. `activity-alias` ו-`FolderActivity` יורדים מהתוכנית לגמרי |

> ### ⚠ אזהרה קריטית הנובעת מהכרעה 2
>
> בחירה בגרסה שרצה היום אומרת ש**אסור לקמפל את `HomeStatusView.java` כמו שהוא**.
> ה-Java מכיל מימוש אחר לגמרי (411 שורות מול 176), וקימפול תמים יחליף בשקט
> את המימוש הבדוק במימוש שמעולם לא רץ.
>
> הסדר הנכון בשלב 0: **קודם** להעביר את התנהגות ה-smali שרץ אל תוך
> `HomeStatusView.java` (כלומר לצמצם את ה-Java כך שיתאים ל-176 השורות),
> ורק **אחר כך** להוסיף אותו לרשימת הקימפול. תמיכה בפורמט 12/24 שעות
> תיכנס בנפרד, כשינוי מבוקר עם בדיקה משלו.

### עדיין פתוח

**מדיה: שולח או צרכן?** שולח = `dispatchMediaKeyEvent` בלבד, שולט בנגן.
צרכן = `registerMediaButtonEventReceiver`, ואז מקש האוזניות מפעיל את הפעולות
שלנו במקום מוזיקה — **בכל המכשיר**. השניים אינם יכולים לדור בכפיפה אחת.
לא חוסם את שלב 0; חייב הכרעה לפני שלב 3.

---

## מה לא אפשרי

### בלתי אפשרי

- **חתימה במפתח הפלטפורמה.** המפתח הפרטי של Duoqin אינו זמין.
- **לכידת ספרות במסך כבוי מתוך אפליקציה רגילה** — ראה ההסבר המלא למטה.

### מקשים במסך כבוי — למה לא, ומה כן

**למה אפליקציה רגילה לא יכולה.** כשהמסך כבוי, `PhoneWindowManager.interceptKeyBeforeQueueing`
מחליט מה קורה לכל מקש **לפני** שהוא נכנס לתור האירועים, ומשליך את רובם המוחלט.
בנוסף אין באנדרואיד מושג של "מקש חם גלובלי": אירועי מקש מנותבים לחלון הממוקד,
וכשהמסך כבוי אין חלון אפליקציה ממוקד. `WakeLock` לא עוזר — הוא מחזיק את המעבד
ער, אבל לא משנה את ניתוב הקלט.

שני המסלולים המאושרים היחידים, ושניהם נסגרו כאן:

| מסלול | למה נסגר |
|---|---|
| `registerMediaButtonEventReceiver` | מקבל **רק** קודי `MEDIA_*` ו-`HEADSETHOOK`, לא ספרות. ובנוסף `getevent_capture.log` מכיל אפס אירועים מהתקן האוזניות |
| `AccessibilityService.onKeyEvent` | קיים מ-API 18, אבל גם הוא תלוי בחלון פעיל ולא מקבל ספרות חומרתיות במסך כבוי |

**מה כן אפשרי — והמכשיר שלך מרוט.** תהליך רוט יכול לפתוח את
`/dev/input/eventN` ולקרוא אירועי `EV_KEY` ישירות מהדרייבר, **מעקף מלא של
`InputDispatcher` ושל מדיניות המסך הכבוי**. הספרות במכשיר הזה מגיעות מהתקן
`sprd-keypad`.

שתי מלכודות שחייבות טיפול:

1. **קריאה לא צורכת.** האירועים ימשיכו גם ל-framework במקביל. כדי לצרוך
   בלעדית צריך `EVIOCGRAB` — אבל grab קבוע ישבור הקלדה רגילה לחלוטין.
   הפתרון: לתפוס **רק כשהמסך כבוי** ולשחרר מיד כשהוא נדלק.
2. **זו לא עבודה של המשגר.** המשגר הוא אפליקציה רגילה בלי רוט.

**המלצה ארכיטקטונית:** זה שייך לדמון הרוט של `StarMouseApp`, בדיוק כמו
שהוכרע לגבי הפעלת העכבר. הדמון כבר רץ עם הרשאות רוט ועם לולאת ניטור; הוספת
קריאת `/dev/input` וצריכה מותנית-מסך היא הרחבה טבעית שלו. המשגר יחשוף רק
נקודת קצה שהדמון יוכל לירות אליה.

### אפשרי רק עם רוט

- לכידת מקשים במסך כבוי — כמתואר למעלה, בדמון ולא במשגר.
- התקנה כאפליקציית מערכת ב-`/system/priv-app`, שפותרת את בעיית ההרשאות
  מהשורש — כולל `BIND_APPWIDGET` שהיום עובד רק דרך מסלול ה-fallback של
  `ACTION_APPWIDGET_BIND`.

### הנחות שחייבות בדיקה על המכשיר לפני שחרור

- **האם `ResolverActivity` של KitKat נשלט במלואו ב-D-pad על 240x320 ללא מגע** —
  כולל מעבר פוקוס מהרשימה לכפתורי Always/Just once. שני צעדים מרכזיים תלויים
  בזה לחלוטין. **עד שזה נבדק, אין לשחרר UI שיכול להוביל למצב "בלי ברירת מחדל"**.
- האם apktool 2.11.1 בונה כאן דרך aapt1 או aapt2 — זה משנה איך `public.xml`
  נאכף. שווה בנייה ניסיונית עם משאב דמה אחד ואימות ש-0x7f040005 ו-0x7f0d0018
  לא זזו, לפני הוספת 100+ משאבים.
- האם `MainMenuAdapter` מחשב שורות/עמודים מתוך שלוש העמודות המקוריות. את
  התפריט הראשי, בניגוד למסך ההגדרות, המשתמש לא יכול לעקוף.

---

## באגים שנמצאו מעבר לבקשה

1. **מקש `#` לא מדפדף** — הפיצ'ר המרכזי שה-README מבטיח. אומת ישירות.
2. **מלכודת ה-kill-switch** ב-`Home.java:155-157`.
3. **ירי כפול בלחיצה ארוכה** על BACK, `*` וחיצים.
4. **שער speeddial נסתר** שבולע לחיצות ארוכות בשקט.
5. **`isMissedCallsEnabled` ו-`clock_time_format`** — הגדרות שלא מחוברות לכלום ב-APK.
6. **מיפוי גופנים שגוי ב-smali**: `Typeface.create(null, rawStyleInt)` הופך
   LIGHT לנטוי, MONOSPACE למודגש-נטוי, ו-SERIF מחוץ לטווח.
7. **`ACTION_FLIPPER_NEXT`** מוגדר ולא ממומש.
8. **קוד מת עם עלות ריצה**: `ContentObserver` על `com.duoqin.weather` רשום
   ומפעיל שתי מתודות ריקות.
9. **`WidgetHostManager$4.smali`** — יתום מגרסה ישנה שכבר לא נוצר מחדש.
10. **CI לא יכול לשחזר את הבילד המקומי** — `release.yml` מקמפל 2 קבצים בלבד.
11. **היגיינת גיט**: `sync_to_github.bat` מריץ `git add .`, ו-`.gitignore` לא
    מכסה `__pycache__/`, `.freebuff/` ו-`apktool_out/build/`.
12. **`versionCode` נשאר 19** ולא עולה בין גרסאות.

---

## בטיחות מערכת הבנייה

זהו התשתית שכל השלבים נשענים עליה.

1. **לולאת ההעתקה דורסת ולעולם לא מוחקת.** יש להוסיף מחיקה של
   `WidgetHostManager$*.smali` לפני כל בנייה, אחרת יתומים נכנסים ל-APK.
2. **חמשת הקבצים המתוחזקים ידנית** — `Home`, `HomeStatusView`,
   `LauncherModel`, `LauncherModel$LoaderTask`, `KeyCodeEventUtil`. שער
   בסקריפט שמסרב לדרוס אותם עד שהמעבר הושלם. די בשם קובץ מתנגש אחד.
3. **בדיקת שפיות לפני בנייה**: לוודא ש-`KeyCodeEventUtil.smali` מכיל
   `handleShortPressKey` ושב-`Home.smali` קיים `:sswitch_pound`. חמש שורות
   שמונעות בדיוק את הכשל השקט.
4. **שער סחיפת חתימות** — הדבר היחיד שיתפוס `NoSuchMethodError` שנובע
   מ-`-implicit:none`.
5. **שער אימות dex**: טעות ב-smali מתגלה רק כ-`VerifyError` על המכשיר.
   כדאי `apktool b` + `d8 --min-api 19` כשער חוסם.
6. **`public.xml` ו-`R.java`** מקבעים מזהי משאבים. `R.java` מקומפל מ-src
   ולא נוצר ע"י aapt — כל משאב חדש דורש שתי עריכות מתואמות.

---

## אימות

**לפני כל בדיקה התנהגותית**: המכשיר מריץ כרגע את המסך המקורי. חובה להתקין
את הבילד הנוכחי ולהפעיל את המוד, אחרת בודקים את האפליקציה הלא נכונה — בדיוק
מה שקרה עם דיווח ההסתרה.

```bash
python build_and_deploy.py --deploy
```

| שלב | איך בודקים |
|---|---|
| 0 | ‏`javac` באפס שגיאות, `d8` exit 0, שער סחיפת חתימות נקי, האפליקציה עולה |
| 1 | ‏probe מחזיר מספר מועמדי HOME צפוי; "החזר את המקורי" עובד מהמצב המושבת |
| 2 | שורת השיחות נעלמת כשאין שיחות; חיצי D-Pad עובדים גם עם ווידג'ט בעמוד 0 |
| 3 | `#` מדפדף; קיצור לספרה עובד וחיוג מהיר נשמר; BACK עדיין יוצא מהתפריט |
| 4 | הסתרה משפיעה על שלושת המסכים; המסך מציג את הקבוצה האפקטיבית |
| 5 | מצב העריכה שמיש **במלואו ב-D-pad** בלי עכבר; שינוי גודל ומיקום נשמר אחרי pause+resume; clamp מונע יציאה מהמסך |
| 6 | המסך נפתח בערכת ה-ROM; מפתח בטיפוס שגוי לא מפיל אותו |

**האימות היחיד האמיתי הוא התקנה על המכשיר** — ה-kill-switch (אם לא יוסר)
הופך כל smoke-test מחוץ למכשיר לבלתי אפשרי.

# מחקר עיצוב מסך ההגדרות — Qin 1s+ (2026-08-07)

חומרי המקור שמאחורי עיצוב-מחדש של מסך ההגדרות בסגנון ה-ROM. התמצית המעשית: הסקיל
`.claude/skills/qin-newui/SKILL.md`. כאן — הדוחות המלאים והראיות.

## הדוחות (פלט 5 סוכני מחקר, מאומתים מול המכשיר)

| קובץ | תוכן |
|---|---|
| `01_rom_theme_spec.md` | איך אפליקציית ההגדרות משיגה את המראה: שרשרת הערכות, כל הצבעים (מאומתים פיקסל-פיקסל), מידות, פס הכותרת, הסוויץ', ה-feature bar |
| `02_rom_hierarchy.md` | ארכיטקטורת המידע של הגדרות ה-ROM: העץ המלא בעברית, קונבנציות מבניות |
| `03_rom_layouts.md` | פריסות ורכיבים: שורות, קטגוריות, דיאלוגים, סלקטורים |
| `04_launcher_settings_analysis.md` | מסך ההגדרות של הלאנצ'ר **לפני** העיצוב מחדש: מיפוי מלא + כל הבעיות (הבסיס להחלטות) |
| `05_build_resources_analysis.md` | מערכת הבנייה והמשאבים: TARGET_CLASSES, ‏public.xml/R.java, מה מותר ואיך |

הערה: הדוחות נכתבו כשהפירוקים ישבו בתיקייה זמנית (`...scratchpad\rom_settings\out`,
`...scratchpad\fw_out`) — הנתיבים האלה בתוך הדוחות מתים; העצים עצמם נשמרו כאן, ראו למטה.

## `decompiled/` — הפירוקים המלאים (ניתנים ל-grep)

| תיקייה | מה זה | מקור |
|---|---|---|
| `settings_apk/` | ‏Settings.apk של ה-ROM מפורק ב-apktool (manifest, res, smali) | נמשך מהמכשיר: `/system/priv-app/Settings.apk` |
| `framework_res/` | ‏framework-res של Duoqin מפורק — **כל** משאבי `duoqin_*` וסגנונות `NewUI` (styles.xml, layouts, drawables) | ה-framework של המכשיר |
| `Settings.apk` | הקובץ המקורי שנמשך | — |

שימוש טיפוסי: לחפש סגנון/צבע/מידה של המערכת —
`grep -r "duoqin_color" decompiled/framework_res/res/values/` וכדומה.

רענון (אם ה-ROM ישתנה): ‏`adb pull /system/priv-app/Settings.apk` ואז
`java -jar tools\apktool\apktool.jar d -f -o <יעד> Settings.apk` (בתיקייה זמנית ASCII).

## `reference/` — רפרנסים מהירים

צילומי מסך של המערכת (המקור להשוואות פיקסלים) ושל התוצאה שלנו, + שתי פריסות המפתח של
ה-framework‏ (`duoqin_layout_preference.xml`, ‏`screen_action_bar.xml`) בהישג יד.

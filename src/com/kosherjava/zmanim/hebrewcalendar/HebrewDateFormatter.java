package com.kosherjava.zmanim.hebrewcalendar;

import com.kosherjava.zmanim.hebrewcalendar.JewishCalendar;
import java.text.SimpleDateFormat;
import java.util.EnumMap;

/* loaded from: classes.dex */
public class HebrewDateFormatter {
    private static final String GERESH = "׳";
    private static final String GERSHAYIM = "״";
    private EnumMap<JewishCalendar.Parsha, String> hebrewParshaMap;
    private static final String[] hebrewMonths = {"ניסן", "אייר", "סיון", "תמוז", "אב", "אלול", "תשרי", "חשון", "כסלו", "טבת", "שבט", "אדר", "אדר ב", "אדר א"};
    private static final String[] hebrewDaysOfWeek = {"ראשון", "שני", "שלישי", "רביעי", "חמישי", "ששי", "שבת"};
    private boolean hebrewFormat = false;
    private boolean useLonghebrewYears = false;
    private boolean useGershGershayim = true;
    private boolean longWeekFormat = true;
    private boolean useFinalFormLetters = false;
    private SimpleDateFormat weekFormat = null;
    private String[] transliteratedMonths = {"Nissan", "Iyar", "Sivan", "Tammuz", "Av", "Elul", "Tishrei", "Cheshvan", "Kislev", "Teves", "Shevat", "Adar", "Adar II", "Adar I"};
    private String hebrewOmerPrefix = "ב";
    private String transliteratedShabbosDayOfweek = "Shabbos";
    private String[] transliteratedHolidays = {"Erev Pesach", "Pesach", "Chol Hamoed Pesach", "Pesach Sheni", "Erev Shavuos", "Shavuos", "Seventeenth of Tammuz", "Tishah B'Av", "Tu B'Av", "Erev Rosh Hashana", "Rosh Hashana", "Fast of Gedalyah", "Erev Yom Kippur", "Yom Kippur", "Erev Succos", "Succos", "Chol Hamoed Succos", "Hoshana Rabbah", "Shemini Atzeres", "Simchas Torah", "Erev Chanukah", "Chanukah", "Tenth of Teves", "Tu B'Shvat", "Fast of Esther", "Purim", "Shushan Purim", "Purim Katan", "Rosh Chodesh", "Yom HaShoah", "Yom Hazikaron", "Yom Ha'atzmaut", "Yom Yerushalayim", "Lag B'Omer", "Shushan Purim Katan", "Isru Chag"};
    private final String[] hebrewHolidays = {"ערב פסח", "פסח", "חול המועד פסח", "פסח שני", "ערב שבועות", "שבועות", "שבעה עשר בתמוז", "תשעה באב", "ט״ו באב", "ערב ראש השנה", "ראש השנה", "צום גדליה", "ערב יום כיפור", "יום כיפור", "ערב סוכות", "סוכות", "חול המועד סוכות", "הושענא רבה", "שמיני עצרת", "שמחת תורה", "ערב חנוכה", "חנוכה", "עשרה בטבת", "ט״ו בשבט", "תענית אסתר", "פורים", "פורים שושן", "פורים קטן", "ראש חודש", "יום השואה", "יום הזיכרון", "יום העצמאות", "יום ירושלים", "ל״ג בעומר", "פורים שושן קטן", "אסרו חג"};
    private EnumMap<JewishCalendar.Parsha, String> transliteratedParshaMap = new EnumMap<>(JewishCalendar.Parsha.class);

    public HebrewDateFormatter() {
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NONE, (JewishCalendar.Parsha) "");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BERESHIS, (JewishCalendar.Parsha) "Bereshis");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NOACH, (JewishCalendar.Parsha) "Noach");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.LECH_LECHA, (JewishCalendar.Parsha) "Lech Lecha");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYERA, (JewishCalendar.Parsha) "Vayera");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.CHAYEI_SARA, (JewishCalendar.Parsha) "Chayei Sara");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TOLDOS, (JewishCalendar.Parsha) "Toldos");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYETZEI, (JewishCalendar.Parsha) "Vayetzei");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYISHLACH, (JewishCalendar.Parsha) "Vayishlach");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYESHEV, (JewishCalendar.Parsha) "Vayeshev");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MIKETZ, (JewishCalendar.Parsha) "Miketz");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYIGASH, (JewishCalendar.Parsha) "Vayigash");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYECHI, (JewishCalendar.Parsha) "Vayechi");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHEMOS, (JewishCalendar.Parsha) "Shemos");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAERA, (JewishCalendar.Parsha) "Vaera");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BO, (JewishCalendar.Parsha) "Bo");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BESHALACH, (JewishCalendar.Parsha) "Beshalach");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.YISRO, (JewishCalendar.Parsha) "Yisro");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MISHPATIM, (JewishCalendar.Parsha) "Mishpatim");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TERUMAH, (JewishCalendar.Parsha) "Terumah");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TETZAVEH, (JewishCalendar.Parsha) "Tetzaveh");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KI_SISA, (JewishCalendar.Parsha) "Ki Sisa");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYAKHEL, (JewishCalendar.Parsha) "Vayakhel");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.PEKUDEI, (JewishCalendar.Parsha) "Pekudei");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYIKRA, (JewishCalendar.Parsha) "Vayikra");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TZAV, (JewishCalendar.Parsha) "Tzav");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHMINI, (JewishCalendar.Parsha) "Shmini");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TAZRIA, (JewishCalendar.Parsha) "Tazria");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.METZORA, (JewishCalendar.Parsha) "Metzora");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.ACHREI_MOS, (JewishCalendar.Parsha) "Achrei Mos");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KEDOSHIM, (JewishCalendar.Parsha) "Kedoshim");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.EMOR, (JewishCalendar.Parsha) "Emor");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BEHAR, (JewishCalendar.Parsha) "Behar");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BECHUKOSAI, (JewishCalendar.Parsha) "Bechukosai");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BAMIDBAR, (JewishCalendar.Parsha) "Bamidbar");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NASSO, (JewishCalendar.Parsha) "Nasso");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BEHAALOSCHA, (JewishCalendar.Parsha) "Beha'aloscha");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHLACH, (JewishCalendar.Parsha) "Sh'lach");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KORACH, (JewishCalendar.Parsha) "Korach");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.CHUKAS, (JewishCalendar.Parsha) "Chukas");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BALAK, (JewishCalendar.Parsha) "Balak");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.PINCHAS, (JewishCalendar.Parsha) "Pinchas");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MATOS, (JewishCalendar.Parsha) "Matos");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MASEI, (JewishCalendar.Parsha) "Masei");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.DEVARIM, (JewishCalendar.Parsha) "Devarim");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAESCHANAN, (JewishCalendar.Parsha) "Vaeschanan");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.EIKEV, (JewishCalendar.Parsha) "Eikev");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.REEH, (JewishCalendar.Parsha) "Re'eh");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHOFTIM, (JewishCalendar.Parsha) "Shoftim");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KI_SEITZEI, (JewishCalendar.Parsha) "Ki Seitzei");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KI_SAVO, (JewishCalendar.Parsha) "Ki Savo");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NITZAVIM, (JewishCalendar.Parsha) "Nitzavim");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYEILECH, (JewishCalendar.Parsha) "Vayeilech");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.HAAZINU, (JewishCalendar.Parsha) "Ha'Azinu");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VZOS_HABERACHA, (JewishCalendar.Parsha) "Vezos Habracha");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYAKHEL_PEKUDEI, (JewishCalendar.Parsha) "Vayakhel Pekudei");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TAZRIA_METZORA, (JewishCalendar.Parsha) "Tazria Metzora");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.ACHREI_MOS_KEDOSHIM, (JewishCalendar.Parsha) "Achrei Mos Kedoshim");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BEHAR_BECHUKOSAI, (JewishCalendar.Parsha) "Behar Bechukosai");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.CHUKAS_BALAK, (JewishCalendar.Parsha) "Chukas Balak");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MATOS_MASEI, (JewishCalendar.Parsha) "Matos Masei");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NITZAVIM_VAYEILECH, (JewishCalendar.Parsha) "Nitzavim Vayeilech");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHKALIM, (JewishCalendar.Parsha) "Shekalim");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.ZACHOR, (JewishCalendar.Parsha) "Zachor");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.PARA, (JewishCalendar.Parsha) "Parah");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.HACHODESH, (JewishCalendar.Parsha) "Hachodesh");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHUVA, (JewishCalendar.Parsha) "Shuva");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHIRA, (JewishCalendar.Parsha) "Shira");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.HAGADOL, (JewishCalendar.Parsha) "Hagadol");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.CHAZON, (JewishCalendar.Parsha) "Chazon");
        this.transliteratedParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NACHAMU, (JewishCalendar.Parsha) "Nachamu");
        this.hebrewParshaMap = new EnumMap<>(JewishCalendar.Parsha.class);
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NONE, (JewishCalendar.Parsha) "");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BERESHIS, (JewishCalendar.Parsha) "בראשית");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NOACH, (JewishCalendar.Parsha) "נח");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.LECH_LECHA, (JewishCalendar.Parsha) "לך לך");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYERA, (JewishCalendar.Parsha) "וירא");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.CHAYEI_SARA, (JewishCalendar.Parsha) "חיי שרה");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TOLDOS, (JewishCalendar.Parsha) "תולדות");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYETZEI, (JewishCalendar.Parsha) "ויצא");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYISHLACH, (JewishCalendar.Parsha) "וישלח");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYESHEV, (JewishCalendar.Parsha) "וישב");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MIKETZ, (JewishCalendar.Parsha) "מקץ");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYIGASH, (JewishCalendar.Parsha) "ויגש");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYECHI, (JewishCalendar.Parsha) "ויחי");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHEMOS, (JewishCalendar.Parsha) "שמות");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAERA, (JewishCalendar.Parsha) "וארא");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BO, (JewishCalendar.Parsha) "בא");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BESHALACH, (JewishCalendar.Parsha) "בשלח");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.YISRO, (JewishCalendar.Parsha) "יתרו");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MISHPATIM, (JewishCalendar.Parsha) "משפטים");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TERUMAH, (JewishCalendar.Parsha) "תרומה");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TETZAVEH, (JewishCalendar.Parsha) "תצוה");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KI_SISA, (JewishCalendar.Parsha) "כי תשא");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYAKHEL, (JewishCalendar.Parsha) "ויקהל");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.PEKUDEI, (JewishCalendar.Parsha) "פקודי");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYIKRA, (JewishCalendar.Parsha) "ויקרא");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TZAV, (JewishCalendar.Parsha) "צו");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHMINI, (JewishCalendar.Parsha) "שמיני");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TAZRIA, (JewishCalendar.Parsha) "תזריע");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.METZORA, (JewishCalendar.Parsha) "מצרע");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.ACHREI_MOS, (JewishCalendar.Parsha) "אחרי מות");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KEDOSHIM, (JewishCalendar.Parsha) "קדושים");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.EMOR, (JewishCalendar.Parsha) "אמור");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BEHAR, (JewishCalendar.Parsha) "בהר");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BECHUKOSAI, (JewishCalendar.Parsha) "בחקתי");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BAMIDBAR, (JewishCalendar.Parsha) "במדבר");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NASSO, (JewishCalendar.Parsha) "נשא");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BEHAALOSCHA, (JewishCalendar.Parsha) "בהעלתך");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHLACH, (JewishCalendar.Parsha) "שלח לך");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KORACH, (JewishCalendar.Parsha) "קרח");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.CHUKAS, (JewishCalendar.Parsha) "חוקת");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BALAK, (JewishCalendar.Parsha) "בלק");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.PINCHAS, (JewishCalendar.Parsha) "פינחס");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MATOS, (JewishCalendar.Parsha) "מטות");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MASEI, (JewishCalendar.Parsha) "מסעי");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.DEVARIM, (JewishCalendar.Parsha) "דברים");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAESCHANAN, (JewishCalendar.Parsha) "ואתחנן");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.EIKEV, (JewishCalendar.Parsha) "עקב");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.REEH, (JewishCalendar.Parsha) "ראה");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHOFTIM, (JewishCalendar.Parsha) "שופטים");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KI_SEITZEI, (JewishCalendar.Parsha) "כי תצא");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.KI_SAVO, (JewishCalendar.Parsha) "כי תבוא");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NITZAVIM, (JewishCalendar.Parsha) "נצבים");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYEILECH, (JewishCalendar.Parsha) "וילך");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.HAAZINU, (JewishCalendar.Parsha) "האזינו");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VZOS_HABERACHA, (JewishCalendar.Parsha) "וזאת הברכה ");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.VAYAKHEL_PEKUDEI, (JewishCalendar.Parsha) "ויקהל פקודי");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.TAZRIA_METZORA, (JewishCalendar.Parsha) "תזריע מצרע");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.ACHREI_MOS_KEDOSHIM, (JewishCalendar.Parsha) "אחרי מות קדושים");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.BEHAR_BECHUKOSAI, (JewishCalendar.Parsha) "בהר בחקתי");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.CHUKAS_BALAK, (JewishCalendar.Parsha) "חוקת בלק");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.MATOS_MASEI, (JewishCalendar.Parsha) "מטות מסעי");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NITZAVIM_VAYEILECH, (JewishCalendar.Parsha) "נצבים וילך");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHKALIM, (JewishCalendar.Parsha) "שקלים");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.ZACHOR, (JewishCalendar.Parsha) "זכור");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.PARA, (JewishCalendar.Parsha) "פרה");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.HACHODESH, (JewishCalendar.Parsha) "החדש");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHUVA, (JewishCalendar.Parsha) "שובה");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.SHIRA, (JewishCalendar.Parsha) "שירה");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.HAGADOL, (JewishCalendar.Parsha) "הגדול");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.CHAZON, (JewishCalendar.Parsha) "חזון");
        this.hebrewParshaMap.put((EnumMap<JewishCalendar.Parsha, String>) JewishCalendar.Parsha.NACHAMU, (JewishCalendar.Parsha) "נחמו");
    }

    public boolean isLongWeekFormat() {
        return this.longWeekFormat;
    }

    public void setLongWeekFormat(boolean longWeekFormat) {
        this.longWeekFormat = longWeekFormat;
        if (longWeekFormat) {
            this.weekFormat = new SimpleDateFormat("EEEE");
        } else {
            this.weekFormat = new SimpleDateFormat("EEE");
        }
    }

    public String getTransliteratedShabbosDayOfWeek() {
        return this.transliteratedShabbosDayOfweek;
    }

    public void setTransliteratedShabbosDayOfWeek(String transliteratedShabbos) {
        this.transliteratedShabbosDayOfweek = transliteratedShabbos;
    }

    public String[] getTransliteratedHolidayList() {
        return this.transliteratedHolidays;
    }

    public void setTransliteratedHolidayList(String[] transliteratedHolidays) {
        this.transliteratedHolidays = transliteratedHolidays;
    }

    public String formatYomTov(JewishCalendar jewishCalendar) {
        int index = jewishCalendar.getYomTovIndex();
        if (index != 21) {
            return index == -1 ? "" : this.hebrewFormat ? this.hebrewHolidays[index] : this.transliteratedHolidays[index];
        }
        int dayOfChanukah = jewishCalendar.getDayOfChanukah();
        return this.hebrewFormat ? formatHebrewNumber(dayOfChanukah) + " " + this.hebrewHolidays[index] : this.transliteratedHolidays[index] + " " + dayOfChanukah;
    }

    public String formatRoshChodesh(JewishCalendar jewishCalendar) {
        if (!jewishCalendar.isRoshChodesh()) {
            return "";
        }
        int month = jewishCalendar.getJewishMonth();
        if (jewishCalendar.getJewishDayOfMonth() == 30) {
            if (month < 12 || (month == 12 && jewishCalendar.isJewishLeapYear())) {
                month++;
            } else {
                month = 1;
            }
        }
        JewishCalendar jewishCalendar2 = (JewishCalendar) jewishCalendar.clone();
        jewishCalendar2.setJewishMonth(month);
        String formattedRoshChodesh = this.hebrewFormat ? this.hebrewHolidays[28] : this.transliteratedHolidays[28];
        return formattedRoshChodesh + " " + formatMonth(jewishCalendar2);
    }

    public boolean isHebrewFormat() {
        return this.hebrewFormat;
    }

    public void setHebrewFormat(boolean hebrewFormat) {
        this.hebrewFormat = hebrewFormat;
    }

    public String getHebrewOmerPrefix() {
        return this.hebrewOmerPrefix;
    }

    public void setHebrewOmerPrefix(String hebrewOmerPrefix) {
        this.hebrewOmerPrefix = hebrewOmerPrefix;
    }

    public String[] getTransliteratedMonthList() {
        return this.transliteratedMonths;
    }

    public void setTransliteratedMonthList(String[] transliteratedMonths) {
        this.transliteratedMonths = transliteratedMonths;
    }

    public String formatDayOfWeek(JewishDate jewishDate) {
        if (this.hebrewFormat) {
            if (isLongWeekFormat()) {
                return hebrewDaysOfWeek[jewishDate.getDayOfWeek() - 1];
            }
            if (jewishDate.getDayOfWeek() == 7) {
                return formatHebrewNumber(300);
            }
            return formatHebrewNumber(jewishDate.getDayOfWeek());
        }
        if (jewishDate.getDayOfWeek() == 7) {
            if (isLongWeekFormat()) {
                return getTransliteratedShabbosDayOfWeek();
            }
            return getTransliteratedShabbosDayOfWeek().substring(0, 3);
        }
        return this.weekFormat.format(jewishDate.getGregorianCalendar().getTime());
    }

    public boolean isUseGershGershayim() {
        return this.useGershGershayim;
    }

    public void setUseGershGershayim(boolean useGershGershayim) {
        this.useGershGershayim = useGershGershayim;
    }

    public boolean isUseFinalFormLetters() {
        return this.useFinalFormLetters;
    }

    public void setUseFinalFormLetters(boolean useFinalFormLetters) {
        this.useFinalFormLetters = useFinalFormLetters;
    }

    public boolean isUseLongHebrewYears() {
        return this.useLonghebrewYears;
    }

    public void setUseLongHebrewYears(boolean useLongHebrewYears) {
        this.useLonghebrewYears = useLongHebrewYears;
    }

    public String format(JewishDate jewishDate) {
        if (isHebrewFormat()) {
            return formatHebrewNumber(jewishDate.getJewishDayOfMonth()) + " " + formatMonth(jewishDate) + " " + formatHebrewNumber(jewishDate.getJewishYear());
        }
        return jewishDate.getJewishDayOfMonth() + " " + formatMonth(jewishDate) + ", " + jewishDate.getJewishYear();
    }

    public String formatMonth(JewishDate jewishDate) {
        int month = jewishDate.getJewishMonth();
        if (isHebrewFormat()) {
            boolean zIsJewishLeapYear = jewishDate.isJewishLeapYear();
            String str = GERESH;
            if (zIsJewishLeapYear && month == 12) {
                StringBuilder sbAppend = new StringBuilder().append(hebrewMonths[13]);
                if (!this.useGershGershayim) {
                    str = "";
                }
                return sbAppend.append(str).toString();
            }
            if (jewishDate.isJewishLeapYear() && month == 13) {
                StringBuilder sbAppend2 = new StringBuilder().append(hebrewMonths[12]);
                if (!this.useGershGershayim) {
                    str = "";
                }
                return sbAppend2.append(str).toString();
            }
            return hebrewMonths[month - 1];
        }
        if (jewishDate.isJewishLeapYear() && month == 12) {
            return this.transliteratedMonths[13];
        }
        return this.transliteratedMonths[month - 1];
    }

    public String formatOmer(JewishCalendar jewishCalendar) {
        int omer = jewishCalendar.getDayOfOmer();
        if (omer == -1) {
            return "";
        }
        if (this.hebrewFormat) {
            return formatHebrewNumber(omer) + " " + this.hebrewOmerPrefix + "עומר";
        }
        if (omer == 33) {
            return this.transliteratedHolidays[33];
        }
        return "Omer " + omer;
    }

    private static String formatMolad(long moladChalakim) {
        int DAY_CHALAKIM = 1080 * 24;
        long days = moladChalakim / DAY_CHALAKIM;
        long adjustedChalakim = moladChalakim - (DAY_CHALAKIM * days);
        int hours = (int) (adjustedChalakim / 1080);
        if (hours >= 6) {
            days++;
        }
        long adjustedChalakim2 = adjustedChalakim - (hours * 1080);
        int minutes = (int) (adjustedChalakim2 / 18);
        return "Day: " + (days % 7) + " hours: " + hours + ", minutes " + minutes + ", chalakim: " + (adjustedChalakim2 - (minutes * 18));
    }

    public String getFormattedKviah(int jewishYear) {
        JewishDate jewishDate = new JewishDate(jewishYear, 7, 1);
        int kviah = jewishDate.getCheshvanKislevKviah();
        int roshHashanaDayOfweek = jewishDate.getDayOfWeek();
        String returnValue = formatHebrewNumber(roshHashanaDayOfweek);
        String returnValue2 = returnValue + (kviah == 0 ? "ח" : kviah == 2 ? "ש" : "כ");
        jewishDate.setJewishDate(jewishYear, 1, 15);
        int pesachDayOfweek = jewishDate.getDayOfWeek();
        return (returnValue2 + formatHebrewNumber(pesachDayOfweek)).replaceAll(GERESH, "");
    }

    public String formatDafYomiBavli(Daf daf) {
        if (this.hebrewFormat) {
            return daf.getMasechta() + " " + formatHebrewNumber(daf.getDaf());
        }
        return daf.getMasechtaTransliterated() + " " + daf.getDaf();
    }

    public String formatDafYomiYerushalmi(Daf daf) {
        if (daf == null) {
            if (this.hebrewFormat) {
                return Daf.getYerushlmiMasechtos()[39];
            }
            return Daf.getYerushlmiMasechtosTransliterated()[39];
        }
        if (this.hebrewFormat) {
            return daf.getYerushalmiMasechta() + " " + formatHebrewNumber(daf.getDaf());
        }
        return daf.getYerushlmiMasechtaTransliterated() + " " + daf.getDaf();
    }

    public String formatHebrewNumber(int number) {
        if (number < 0) {
            throw new IllegalArgumentException("negative numbers can't be formatted");
        }
        if (number > 9999) {
            throw new IllegalArgumentException("numbers > 9999 can't be formatted");
        }
        String[] jHundreds = {"", "ק", "ר", "ש", "ת", "תק", "תר", "תש", "תת", "תתק"};
        String[] jTens = {"", "י", "כ", "ל", "מ", "נ", "ס", "ע", "פ", "צ"};
        String[] jTenEnds = {"", "י", "ך", "ל", "ם", "ן", "ס", "ע", "ף", "ץ"};
        String[] tavTaz = {"טו", "טז"};
        String[] jOnes = {"", "א", "ב", "ג", "ד", "ה", "ו", "ז", "ח", "ט"};
        if (number == 0) {
            return "אפס";
        }
        int shortNumber = number % 1000;
        boolean singleDigitNumber = shortNumber < 11 || (shortNumber < 100 && shortNumber % 10 == 0) || (shortNumber <= 400 && shortNumber % 100 == 0);
        int thousands = number / 1000;
        StringBuilder sb = new StringBuilder();
        if (number % 1000 != 0) {
            if (this.useLonghebrewYears && number >= 1000) {
                sb.append(jOnes[thousands]);
                if (isUseGershGershayim()) {
                    sb.append(GERESH);
                }
                sb.append(" ");
            }
            int number2 = number % 1000;
            int hundreds = number2 / 100;
            sb.append(jHundreds[hundreds]);
            int number3 = number2 % 100;
            if (number3 == 15) {
                sb.append(tavTaz[0]);
            } else if (number3 == 16) {
                sb.append(tavTaz[1]);
            } else {
                int tens = number3 / 10;
                if (number3 % 10 == 0) {
                    if (!singleDigitNumber && isUseFinalFormLetters()) {
                        sb.append(jTenEnds[tens]);
                    } else {
                        sb.append(jTens[tens]);
                    }
                } else {
                    sb.append(jTens[tens]);
                    sb.append(jOnes[number3 % 10]);
                }
            }
            if (isUseGershGershayim()) {
                if (singleDigitNumber) {
                    sb.append(GERESH);
                } else {
                    sb.insert(sb.length() - 1, GERSHAYIM);
                }
            }
            return sb.toString();
        }
        sb.append(jOnes[thousands]);
        if (isUseGershGershayim()) {
            sb.append(GERESH);
        }
        sb.append(" ");
        sb.append("אלפים");
        return sb.toString();
    }

    public EnumMap<JewishCalendar.Parsha, String> getTransliteratedParshiosList() {
        return this.transliteratedParshaMap;
    }

    public void setTransliteratedParshiosList(EnumMap<JewishCalendar.Parsha, String> transliteratedParshaMap) {
        this.transliteratedParshaMap = transliteratedParshaMap;
    }

    public String formatParsha(JewishCalendar jewishCalendar) {
        JewishCalendar.Parsha parsha = jewishCalendar.getParshah();
        return (this.hebrewFormat ? this.hebrewParshaMap : this.transliteratedParshaMap).get(parsha);
    }

    public String formatSpecialParsha(JewishCalendar jewishCalendar) {
        JewishCalendar.Parsha specialParsha = jewishCalendar.getSpecialShabbos();
        return (this.hebrewFormat ? this.hebrewParshaMap : this.transliteratedParshaMap).get(specialParsha);
    }
}

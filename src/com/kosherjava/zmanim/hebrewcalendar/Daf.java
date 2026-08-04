package com.kosherjava.zmanim.hebrewcalendar;

/* loaded from: classes.dex */
public class Daf {
    private int daf;
    private int masechtaNumber;
    private static String[] masechtosBavliTransliterated = {"Berachos", "Shabbos", "Eruvin", "Pesachim", "Shekalim", "Yoma", "Sukkah", "Beitzah", "Rosh Hashana", "Taanis", "Megillah", "Moed Katan", "Chagigah", "Yevamos", "Kesubos", "Nedarim", "Nazir", "Sotah", "Gitin", "Kiddushin", "Bava Kamma", "Bava Metzia", "Bava Basra", "Sanhedrin", "Makkos", "Shevuos", "Avodah Zarah", "Horiyos", "Zevachim", "Menachos", "Chullin", "Bechoros", "Arachin", "Temurah", "Kerisos", "Meilah", "Kinnim", "Tamid", "Midos", "Niddah"};
    private static final String[] masechtosBavli = {"ברכות", "שבת", "עירובין", "פסחים", "שקלים", "יומא", "סוכה", "ביצה", "ראש השנה", "תענית", "מגילה", "מועד קטן", "חגיגה", "יבמות", "כתובות", "נדרים", "נזיר", "סוטה", "גיטין", "קידושין", "בבא קמא", "בבא מציעא", "בבא בתרא", "סנהדרין", "מכות", "שבועות", "עבודה זרה", "הוריות", "זבחים", "מנחות", "חולין", "בכורות", "ערכין", "תמורה", "כריתות", "מעילה", "קינים", "תמיד", "מידות", "נדה"};
    private static String[] masechtosYerushalmiTransliterated = {"Berachos", "Pe'ah", "Demai", "Kilayim", "Shevi'is", "Terumos", "Ma'asros", "Ma'aser Sheni", "Chalah", "Orlah", "Bikurim", "Shabbos", "Eruvin", "Pesachim", "Beitzah", "Rosh Hashanah", "Yoma", "Sukah", "Ta'anis", "Shekalim", "Megilah", "Chagigah", "Moed Katan", "Yevamos", "Kesuvos", "Sotah", "Nedarim", "Nazir", "Gitin", "Kidushin", "Bava Kama", "Bava Metzia", "Bava Basra", "Shevuos", "Makos", "Sanhedrin", "Avodah Zarah", "Horayos", "Nidah", "No Daf Today"};
    private static final String[] masechtosYerushalmi = {"ברכות", "פיאה", "דמאי", "כלאים", "שביעית", "תרומות", "מעשרות", "מעשר שני", "חלה", "עורלה", "ביכורים", "שבת", "עירובין", "פסחים", "ביצה", "ראש השנה", "יומא", "סוכה", "תענית", "שקלים", "מגילה", "חגיגה", "מועד קטן", "יבמות", "כתובות", "סוטה", "נדרים", "נזיר", "גיטין", "קידושין", "בבא קמא", "בבא מציעא", "בבא בתרא", "שבועות", "מכות", "סנהדרין", "עבודה זרה", "הוריות", "נידה", "אין דף היום"};

    public int getMasechtaNumber() {
        return this.masechtaNumber;
    }

    public void setMasechtaNumber(int masechtaNumber) {
        this.masechtaNumber = masechtaNumber;
    }

    public Daf(int masechtaNumber, int daf) {
        this.masechtaNumber = masechtaNumber;
        this.daf = daf;
    }

    public int getDaf() {
        return this.daf;
    }

    public void setDaf(int daf) {
        this.daf = daf;
    }

    public String getMasechtaTransliterated() {
        return masechtosBavliTransliterated[this.masechtaNumber];
    }

    public void setMasechtaTransliterated(String[] masechtosBavliTransliterated2) {
        masechtosBavliTransliterated = masechtosBavliTransliterated2;
    }

    public String getMasechta() {
        return masechtosBavli[this.masechtaNumber];
    }

    public String getYerushalmiMasechtaTransliterated() {
        return masechtosYerushalmiTransliterated[this.masechtaNumber];
    }

    @Deprecated
    public String getYerushlmiMasechtaTransliterated() {
        return getYerushalmiMasechtaTransliterated();
    }

    public void setYerushalmiMasechtaTransliterated(String[] masechtosYerushalmiTransliterated2) {
        masechtosYerushalmiTransliterated = masechtosYerushalmiTransliterated2;
    }

    @Deprecated
    public void setYerushlmiMasechtaTransliterated(String[] masechtosYerushalmiTransliterated2) {
        setYerushalmiMasechtaTransliterated(masechtosYerushalmiTransliterated2);
    }

    public static String[] getYerushalmiMasechtosTransliterated() {
        return masechtosYerushalmiTransliterated;
    }

    @Deprecated
    public static String[] getYerushlmiMasechtosTransliterated() {
        return getYerushalmiMasechtosTransliterated();
    }

    public static String[] getYerushalmiMasechtos() {
        return masechtosYerushalmi;
    }

    @Deprecated
    public static String[] getYerushlmiMasechtos() {
        return getYerushalmiMasechtos();
    }

    public String getYerushalmiMasechta() {
        return masechtosYerushalmi[this.masechtaNumber];
    }
}

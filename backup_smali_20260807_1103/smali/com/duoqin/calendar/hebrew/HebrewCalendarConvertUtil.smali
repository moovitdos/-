.class public Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;
.super Ljava/lang/Object;
.source "HebrewCalendarConvertUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildGregorianDateImpl(III)Lcom/duoqin/calendar/hebrew/HDate;
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 42
    sget-object v1, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

    invoke-virtual {v1, p0, p1, p2}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->fromYMD(III)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v0

    .line 43
    .local v0, "hebrewDate":Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    sget-object v1, Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;

    invoke-virtual {v1, v0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->convert(Lcom/duoqin/calendar/hebrew/HDate;)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v1

    return-object v1
.end method

.method public static buildHebrewDate(III)Ljava/lang/String;
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 13
    sget-object v3, Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;

    invoke-virtual {v3, p0, p1, p2}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->fromYMD(III)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v0

    .line 14
    .local v0, "gregorianDate":Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    sget-object v3, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

    invoke-virtual {v3, v0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->convert(Lcom/duoqin/calendar/hebrew/HDate;)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v1

    .line 15
    .local v1, "hebrewDate":Lcom/duoqin/calendar/hebrew/HDate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    .local v2, "hebrewDateStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 15
    .end local v2    # "hebrewDateStr":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static buildHebrewDateImpl(Ljava/util/Calendar;)Lcom/duoqin/calendar/hebrew/HDate;
    .locals 5
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 33
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 38
    :goto_0
    return-object v4

    .line 34
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 35
    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 36
    .local v2, "month":I
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 37
    .local v0, "day":I
    sget-object v4, Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;

    invoke-virtual {v4, v3, v2, v0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->fromYMD(III)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v1

    .line 38
    .local v1, "gregorianDate":Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    sget-object v4, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

    invoke-virtual {v4, v1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->convert(Lcom/duoqin/calendar/hebrew/HDate;)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v4

    goto :goto_0
.end method

.method private static getLanguageEnv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 131
    .local v0, "l":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "language":Ljava/lang/String;
    return-object v1
.end method

.method public static isHebrewSetting()Z
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;->getLanguageEnv()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "iw"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x1

    .line 125
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

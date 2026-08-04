.class public Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;
.super Ljava/lang/Object;
.source "YerushalmiYomiCalculator.java"


# static fields
.field private static final BLATT_PER_MASECHTA:[I

.field private static final DAF_YOMI_START_DAY:Ljava/util/Calendar;

.field private static final DAY_MILIS:I = 0x5265c00

.field private static final WHOLE_SHAS_DAFS:I = 0x612


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x7bc

    invoke-direct {v0, v3, v1, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->DAF_YOMI_START_DAY:Ljava/util/Calendar;

    .line 40
    const/16 v0, 0x27

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->BLATT_PER_MASECHTA:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x44
        0x25
        0x22
        0x2c
        0x1f
        0x3b
        0x1a
        0x21
        0x1c
        0x14
        0xd
        0x5c
        0x41
        0x47
        0x16
        0x16
        0x2a
        0x1a
        0x1a
        0x21
        0x22
        0x16
        0x13
        0x55
        0x48
        0x2f
        0x28
        0x2f
        0x36
        0x30
        0x2c
        0x25
        0x22
        0x2c
        0x9
        0x39
        0x25
        0x13
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDafYomiYerushalmi(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Lcom/kosherjava/zmanim/hebrewcalendar/Daf;
    .locals 11
    .param p0, "calendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 60
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 61
    .local v0, "nextCycle":Ljava/util/Calendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 62
    .local v1, "prevCycle":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getGregorianCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 63
    .local v2, "requested":Ljava/util/Calendar;
    const/4 v3, 0x0

    .line 64
    .local v3, "masechta":I
    const/4 v4, 0x0

    .line 67
    .local v4, "dafYomi":Lcom/kosherjava/zmanim/hebrewcalendar/Daf;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    goto/16 :goto_3

    .line 73
    :cond_0
    sget-object v5, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->DAF_YOMI_START_DAY:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 79
    sget-object v5, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->DAF_YOMI_START_DAY:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 82
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 86
    const/16 v5, 0x612

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 87
    invoke-static {v1, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->getNumOfSpecialDays(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->getDiffBetweenDays(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v5

    long-to-int v6, v5

    .line 94
    .local v6, "dafNo":I
    invoke-static {v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->getNumOfSpecialDays(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v5

    .line 95
    .local v5, "specialDays":I
    sub-int v7, v6, v5

    .line 98
    .local v7, "total":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    sget-object v9, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->BLATT_PER_MASECHTA:[I

    array-length v9, v9

    if-ge v8, v9, :cond_3

    .line 100
    sget-object v9, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->BLATT_PER_MASECHTA:[I

    aget v9, v9, v8

    if-ge v7, v9, :cond_2

    .line 101
    new-instance v9, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;

    add-int/lit8 v10, v7, 0x1

    invoke-direct {v9, v3, v10}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;-><init>(II)V

    move-object v4, v9

    .line 102
    goto :goto_2

    .line 104
    :cond_2
    sget-object v9, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->BLATT_PER_MASECHTA:[I

    aget v9, v9, v8

    sub-int/2addr v7, v9

    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 98
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 108
    .end local v8    # "j":I
    :cond_3
    :goto_2
    return-object v4

    .line 74
    .end local v5    # "specialDays":I
    .end local v6    # "dafNo":I
    .end local v7    # "total":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is prior to organized Daf Yomi Yerushalmi cycles that started on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->DAF_YOMI_START_DAY:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_5
    :goto_3
    const/4 v5, 0x0

    return-object v5
.end method

.method private static getDiffBetweenDays(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 4
    .param p0, "start"    # Ljava/util/Calendar;
    .param p1, "end"    # Ljava/util/Calendar;

    .line 167
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getNumOfSpecialDays(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 8
    .param p0, "start"    # Ljava/util/Calendar;
    .param p1, "end"    # Ljava/util/Calendar;

    .line 122
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v0, p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v0

    .line 123
    .local v0, "startYear":I
    new-instance v1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v1, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v1

    .line 126
    .local v1, "endYear":I
    const/4 v2, 0x0

    .line 129
    .local v2, "specialDays":I
    new-instance v3, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v6, 0x168a

    invoke-direct {v3, v6, v4, v5}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>(III)V

    .line 130
    .local v3, "yom_kippur":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    new-instance v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    const/4 v5, 0x5

    const/16 v7, 0x9

    invoke-direct {v4, v6, v5, v7}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>(III)V

    .line 133
    .local v4, "tisha_beav":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_2

    .line 134
    invoke-virtual {v3, v5}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setJewishYear(I)V

    .line 135
    invoke-virtual {v4, v5}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setJewishYear(I)V

    .line 137
    invoke-virtual {v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getGregorianCalendar()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {p0, v6, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->isBetween(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 140
    :cond_0
    invoke-virtual {v4}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getGregorianCalendar()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {p0, v6, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->isBetween(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    add-int/lit8 v2, v2, 0x1

    .line 133
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 145
    .end local v5    # "i":I
    :cond_2
    return v2
.end method

.method private static isBetween(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 1
    .param p0, "start"    # Ljava/util/Calendar;
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "end"    # Ljava/util/Calendar;

    .line 157
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

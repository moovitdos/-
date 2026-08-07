.class public Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;
.super Ljava/lang/Object;
.source "YomiCalculator.java"


# static fields
.field private static final dafYomiJulianStartDay:I

.field private static final dafYomiStartDay:Ljava/util/Calendar;

.field private static final shekalimChangeDay:Ljava/util/Calendar;

.field private static final shekalimJulianChangeDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x8

    const/16 v2, 0xb

    const/16 v3, 0x783

    invoke-direct {v0, v3, v1, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->dafYomiStartDay:Ljava/util/Calendar;

    .line 35
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->dafYomiStartDay:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->getJulianDay(Ljava/util/Calendar;)I

    move-result v0

    sput v0, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->dafYomiJulianStartDay:I

    .line 40
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    const/16 v2, 0x18

    const/16 v3, 0x7b7

    invoke-direct {v0, v3, v1, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->shekalimChangeDay:Ljava/util/Calendar;

    .line 45
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->shekalimChangeDay:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->getJulianDay(Ljava/util/Calendar;)I

    move-result v0

    sput v0, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->shekalimJulianChangeDay:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDafYomiBavli(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Lcom/kosherjava/zmanim/hebrewcalendar/Daf;
    .locals 12
    .param p0, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 77
    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 79
    .local v0, "blattPerMasechta":[I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getGregorianCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 81
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 82
    .local v2, "dafYomi":Lcom/kosherjava/zmanim/hebrewcalendar/Daf;
    invoke-static {v1}, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->getJulianDay(Ljava/util/Calendar;)I

    move-result v3

    .line 83
    .local v3, "julianDay":I
    const/4 v4, 0x0

    .line 84
    .local v4, "cycleNo":I
    const/4 v5, 0x0

    .line 85
    .local v5, "dafNo":I
    sget-object v6, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->dafYomiStartDay:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 90
    sget-object v6, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->shekalimChangeDay:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->shekalimChangeDay:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    sget v6, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->dafYomiJulianStartDay:I

    sub-int v6, v3, v6

    div-int/lit16 v6, v6, 0xa8e

    add-int/lit8 v6, v6, 0x1

    .line 95
    .end local v4    # "cycleNo":I
    .local v6, "cycleNo":I
    sget v4, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->dafYomiJulianStartDay:I

    sub-int v4, v3, v4

    rem-int/lit16 v4, v4, 0xa8e

    .end local v5    # "dafNo":I
    .local v4, "dafNo":I
    goto :goto_1

    .line 91
    .end local v6    # "cycleNo":I
    .local v4, "cycleNo":I
    .restart local v5    # "dafNo":I
    :cond_1
    :goto_0
    sget v6, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->shekalimJulianChangeDay:I

    sub-int v6, v3, v6

    div-int/lit16 v6, v6, 0xa97

    add-int/lit8 v6, v6, 0x8

    .line 92
    .end local v4    # "cycleNo":I
    .restart local v6    # "cycleNo":I
    sget v4, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->shekalimJulianChangeDay:I

    sub-int v4, v3, v4

    rem-int/lit16 v4, v4, 0xa97

    .line 98
    .end local v5    # "dafNo":I
    .local v4, "dafNo":I
    :goto_1
    const/4 v5, 0x0

    .line 99
    .local v5, "total":I
    const/4 v7, -0x1

    .line 100
    .local v7, "masechta":I
    const/4 v8, 0x0

    .line 103
    .local v8, "blatt":I
    const/4 v9, 0x7

    const/4 v10, 0x4

    if-gt v6, v9, :cond_2

    .line 104
    const/16 v9, 0xd

    aput v9, v0, v10

    goto :goto_2

    .line 106
    :cond_2
    const/16 v9, 0x16

    aput v9, v0, v10

    .line 109
    :goto_2
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    array-length v10, v0

    if-ge v9, v10, :cond_7

    .line 110
    add-int/lit8 v7, v7, 0x1

    .line 111
    aget v10, v0, v9

    add-int/2addr v10, v5

    add-int/lit8 v5, v10, -0x1

    .line 112
    if-ge v4, v5, :cond_6

    .line 113
    aget v10, v0, v9

    add-int/lit8 v10, v10, 0x1

    sub-int v11, v5, v4

    sub-int/2addr v10, v11

    .line 115
    .end local v8    # "blatt":I
    .local v10, "blatt":I
    const/16 v8, 0x24

    if-ne v7, v8, :cond_3

    .line 116
    add-int/lit8 v10, v10, 0x15

    move v8, v10

    goto :goto_4

    .line 117
    :cond_3
    const/16 v8, 0x25

    if-ne v7, v8, :cond_4

    .line 118
    add-int/lit8 v10, v10, 0x18

    move v8, v10

    goto :goto_4

    .line 119
    :cond_4
    const/16 v8, 0x26

    if-ne v7, v8, :cond_5

    .line 120
    add-int/lit8 v10, v10, 0x20

    move v8, v10

    goto :goto_4

    .line 119
    :cond_5
    move v8, v10

    .line 122
    .end local v10    # "blatt":I
    .restart local v8    # "blatt":I
    :goto_4
    new-instance v10, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;

    invoke-direct {v10, v7, v8}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;-><init>(II)V

    move-object v2, v10

    .line 123
    goto :goto_5

    .line 109
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 127
    .end local v9    # "j":I
    :cond_7
    :goto_5
    return-object v2

    .line 87
    .end local v6    # "cycleNo":I
    .end local v7    # "masechta":I
    .end local v8    # "blatt":I
    .local v4, "cycleNo":I
    .local v5, "dafNo":I
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is prior to organized Daf Yomi Bavli cycles that started on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/kosherjava/zmanim/hebrewcalendar/YomiCalculator;->dafYomiStartDay:Ljava/util/Calendar;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v6

    :goto_7
    goto :goto_6

    nop

    :array_0
    .array-data 4
        0x40
        0x9d
        0x69
        0x79
        0x16
        0x58
        0x38
        0x28
        0x23
        0x1f
        0x20
        0x1d
        0x1b
        0x7a
        0x70
        0x5b
        0x42
        0x31
        0x5a
        0x52
        0x77
        0x77
        0xb0
        0x71
        0x18
        0x31
        0x4c
        0xe
        0x78
        0x6e
        0x8e
        0x3d
        0x22
        0x22
        0x1c
        0x16
        0x4
        0x9
        0x5
        0x49
    .end array-data
.end method

.method private static getJulianDay(Ljava/util/Calendar;)I
    .locals 11
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 139
    .local v1, "year":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 140
    .local v3, "month":I
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 141
    .local v0, "day":I
    if-gt v3, v2, :cond_0

    .line 142
    add-int/lit8 v1, v1, -0x1

    .line 143
    add-int/lit8 v3, v3, 0xc

    .line 145
    :cond_0
    div-int/lit8 v2, v1, 0x64

    .line 146
    .local v2, "a":I
    rsub-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v2, 0x4

    add-int/2addr v4, v5

    .line 147
    .local v4, "b":I
    add-int/lit16 v5, v1, 0x126c

    int-to-double v5, v5

    const-wide v7, 0x4076d40000000000L    # 365.25

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    add-int/lit8 v7, v3, 0x1

    int-to-double v7, v7

    const-wide v9, 0x403e99a027525461L    # 30.6001

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    const-wide v7, 0x4097d20000000000L    # 1524.5

    sub-double/2addr v5, v7

    double-to-int v5, v5

    return v5
.end method

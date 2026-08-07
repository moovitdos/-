.class public Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;
.super Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;
.source "HebrewCalendar.java"

# interfaces
.implements Lcom/duoqin/calendar/hebrew/HJewishCalendar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar$1;
    }
.end annotation


# static fields
.field private static final FIRST_MOLAD:Lcom/duoqin/calendar/hebrew/impl/HTime;

.field public static final INSTANCE:Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

.field private static final LEAP_CYCLE:[Z

.field private static final ONE_MONTH:Lcom/duoqin/calendar/hebrew/impl/HTime;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

    invoke-direct {v0}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;-><init>()V

    sput-object v0, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

    .line 14
    const/16 v0, 0x13

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->LEAP_CYCLE:[Z

    .line 23
    new-instance v0, Lcom/duoqin/calendar/hebrew/impl/HTime;

    const-wide/16 v1, 0x2

    const/4 v3, 0x5

    const/16 v4, 0xcc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/duoqin/calendar/hebrew/impl/HTime;-><init>(JII)V

    sput-object v0, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->FIRST_MOLAD:Lcom/duoqin/calendar/hebrew/impl/HTime;

    .line 24
    new-instance v0, Lcom/duoqin/calendar/hebrew/impl/HTime;

    const-wide/16 v1, 0x1d

    const/16 v3, 0xc

    const/16 v4, 0x319

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/duoqin/calendar/hebrew/impl/HTime;-><init>(JII)V

    sput-object v0, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->ONE_MONTH:Lcom/duoqin/calendar/hebrew/impl/HTime;

    return-void

    .line 14
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method absDay(Lcom/duoqin/calendar/hebrew/HDate;)J
    .locals 10
    .param p1, "date"    # Lcom/duoqin/calendar/hebrew/HDate;

    .prologue
    .line 128
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v5

    .line 129
    .local v5, "year":I
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getMonth()I

    move-result v1

    .line 130
    .local v1, "month":I
    invoke-virtual {p0, v5}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->absDayRoshHashana(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long v3, v6, v8

    .line 131
    .local v3, "toReturn":J
    const/4 v0, 0x7

    .line 132
    .local v0, "m":I
    :cond_0
    if-eq v0, v1, :cond_1

    .line 133
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v6

    invoke-virtual {p0, v6, v0}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->monthLength(II)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 134
    invoke-virtual {p0, v5, v0}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->nextYearMonth(II)[I

    move-result-object v2

    .line 135
    .local v2, "nextYM":[I
    const/4 v6, 0x1

    aget v0, v2, v6

    .line 136
    const/4 v6, 0x0

    aget v6, v2, v6

    if-eq v6, v5, :cond_0

    .line 137
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ran through whol year without finding month "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 140
    .end local v2    # "nextYM":[I
    :cond_1
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getDay()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 141
    return-wide v3
.end method

.method absDayRoshHashana(I)J
    .locals 14
    .param p1, "year"    # I

    .prologue
    const/16 v13, 0xf

    const/16 v12, 0x9

    const/4 v11, 0x7

    const/4 v4, 0x1

    const-wide/16 v9, 0x1

    .line 86
    invoke-virtual {p0, p1, v11}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->molad(II)Lcom/duoqin/calendar/hebrew/impl/HTime;

    move-result-object v3

    .line 88
    .local v3, "moladTime":Lcom/duoqin/calendar/hebrew/impl/HTime;
    invoke-virtual {v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->getDay()J

    move-result-wide v0

    .line 91
    .local v0, "candidate":J
    sub-long v5, v0, v9

    const-wide/16 v7, 0x7

    rem-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit8 v2, v5, 0x1

    .line 92
    .local v2, "dw":I
    invoke-virtual {v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->getHour()I

    move-result v5

    const/16 v6, 0x12

    if-ge v5, v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->isLeap(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    invoke-virtual {v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->getHour()I

    move-result v5

    if-gt v5, v12, :cond_1

    invoke-virtual {v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->getHour()I

    move-result v5

    if-ne v5, v12, :cond_0

    invoke-virtual {v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->getPart()I

    move-result v5

    const/16 v6, 0xcc

    if-ge v5, v6, :cond_1

    :cond_0
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->isLeap(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    invoke-virtual {v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->getHour()I

    move-result v5

    if-gt v5, v13, :cond_1

    invoke-virtual {v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->getHour()I

    move-result v5

    if-ne v5, v13, :cond_2

    invoke-virtual {v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->getPart()I

    move-result v5

    const/16 v6, 0x24d

    if-lt v5, v6, :cond_2

    .line 103
    :cond_1
    if-ne v2, v11, :cond_5

    move v2, v4

    .line 104
    :goto_0
    add-long/2addr v0, v9

    .line 108
    :cond_2
    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    .line 109
    :cond_3
    add-long/2addr v0, v9

    .line 112
    :cond_4
    return-wide v0

    .line 103
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public fromAbs(J)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    .locals 8
    .param p1, "absDayFromBeginning"    # J

    .prologue
    .line 169
    const/16 v2, 0xeb

    .line 171
    .local v2, "monthsIn19":I
    sget-object v4, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->ONE_MONTH:Lcom/duoqin/calendar/hebrew/impl/HTime;

    const/16 v5, 0xeb

    invoke-virtual {v4, v5}, Lcom/duoqin/calendar/hebrew/impl/HTime;->times(I)Lcom/duoqin/calendar/hebrew/impl/HTime;

    move-result-object v0

    .line 173
    .local v0, "cycle19":Lcom/duoqin/calendar/hebrew/impl/HTime;
    invoke-virtual {v0}, Lcom/duoqin/calendar/hebrew/impl/HTime;->getDay()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    div-long v4, p1, v4

    long-to-int v1, v4

    .line 175
    .local v1, "cyclesToSkip":I
    new-instance v3, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    mul-int/lit8 v4, v1, 0x13

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x1

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;-><init>(Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;III)V

    .line 176
    .local v3, "startDay":Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    invoke-virtual {p0, v3}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->absDay(Lcom/duoqin/calendar/hebrew/HDate;)J

    move-result-wide v4

    sub-long v4, p1, v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->addDays(I)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v4

    return-object v4
.end method

.method final getStart()J
    .locals 2

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getType()Lcom/duoqin/calendar/hebrew/HCalendarType;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/duoqin/calendar/hebrew/HCalendarType;->HEBREW:Lcom/duoqin/calendar/hebrew/HCalendarType;

    return-object v0
.end method

.method public getYearType(I)Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;
    .locals 10
    .param p1, "year"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x1

    .line 181
    new-instance v6, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    invoke-direct {v6, p0, p1, v9, v8}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;-><init>(Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;III)V

    invoke-virtual {p0, v6}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->absDay(Lcom/duoqin/calendar/hebrew/HDate;)J

    move-result-wide v1

    .line 182
    .local v1, "rosh0":J
    new-instance v6, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    add-int/lit8 v7, p1, 0x1

    invoke-direct {v6, p0, v7, v9, v8}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;-><init>(Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;III)V

    invoke-virtual {p0, v6}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->absDay(Lcom/duoqin/calendar/hebrew/HDate;)J

    move-result-wide v3

    .line 183
    .local v3, "rosh1":J
    sub-long v6, v3, v1

    long-to-int v5, v6

    .line 185
    .local v5, "yearLength":I
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->isLeap(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit16 v0, v5, -0x17f

    .line 187
    .local v0, "excessLength":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid year length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for year="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 185
    .end local v0    # "excessLength":I
    :cond_0
    add-int/lit16 v0, v5, -0x161

    goto :goto_0

    .line 189
    .restart local v0    # "excessLength":I
    :pswitch_0
    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->SHORT:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    .line 193
    :goto_1
    return-object v6

    .line 191
    :pswitch_1
    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->NORMAL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    goto :goto_1

    .line 193
    :pswitch_2
    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->FULL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isLeap(I)Z
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->LEAP_CYCLE:[Z

    rem-int/lit8 v1, p1, 0x13

    aget-boolean v0, v0, v1

    return v0
.end method

.method molad(II)Lcom/duoqin/calendar/hebrew/impl/HTime;
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v5, 0x6

    .line 72
    add-int/lit8 v4, p1, -0x1

    div-int/lit8 v0, v4, 0x13

    .line 74
    .local v0, "cycles":I
    mul-int/lit16 v3, v0, 0xeb

    .line 76
    .local v3, "preMonths":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, p1, -0x1

    rem-int/lit8 v4, v4, 0x13

    if-gt v1, v4, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->isLeap(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    :goto_1
    add-int/2addr v3, v4

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const/16 v4, 0xc

    goto :goto_1

    .line 80
    :cond_1
    if-le p2, v5, :cond_2

    add-int/lit8 v2, p2, -0x7

    .line 81
    .local v2, "numMonthsPastThisYear":I
    :goto_2
    add-int/2addr v3, v2

    .line 82
    sget-object v4, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->FIRST_MOLAD:Lcom/duoqin/calendar/hebrew/impl/HTime;

    sget-object v5, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->ONE_MONTH:Lcom/duoqin/calendar/hebrew/impl/HTime;

    invoke-virtual {v5, v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->times(I)Lcom/duoqin/calendar/hebrew/impl/HTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/duoqin/calendar/hebrew/impl/HTime;->add(Lcom/duoqin/calendar/hebrew/impl/HTime;)Lcom/duoqin/calendar/hebrew/impl/HTime;

    move-result-object v4

    return-object v4

    .line 80
    .end local v2    # "numMonthsPastThisYear":I
    :cond_2
    add-int/lit8 v6, p2, -0x1

    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->isLeap(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x7

    :goto_3
    add-int v2, v6, v4

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3
.end method

.method public monthLength(II)I
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/16 v0, 0x1e

    const/16 v1, 0x1d

    .line 38
    sget-object v2, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar$1;->$SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth:[I

    invoke-static {p2}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->get(I)Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 58
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 54
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->isLeap(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->getYearType(I)Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    move-result-object v2

    sget-object v3, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->FULL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 58
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->getYearType(I)Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    move-result-object v2

    sget-object v3, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->SHORT:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    if-ne v2, v3, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final monthsInYear(I)I
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->isLeap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method final nextYearMonth(II)[I
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 146
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 147
    new-array v0, v1, [I

    add-int/lit8 v1, p1, 0x1

    aput v1, v0, v3

    const/4 v1, 0x7

    aput v1, v0, v2

    .line 151
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->monthsInYear(I)I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 149
    new-array v0, v1, [I

    aput p1, v0, v3

    add-int/lit8 v1, p2, 0x1

    aput v1, v0, v2

    goto :goto_0

    .line 151
    :cond_1
    new-array v0, v1, [I

    aput p1, v0, v3

    aput v2, v0, v2

    goto :goto_0
.end method

.method final prevYearMonth(II)[I
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 157
    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 158
    new-array v0, v1, [I

    add-int/lit8 v1, p1, -0x1

    aput v1, v0, v3

    const/4 v1, 0x6

    aput v1, v0, v2

    .line 161
    :goto_0
    return-object v0

    .line 159
    :cond_0
    if-le p2, v2, :cond_1

    .line 160
    new-array v0, v1, [I

    aput p1, v0, v3

    add-int/lit8 v1, p2, -0x1

    aput v1, v0, v2

    goto :goto_0

    .line 161
    :cond_1
    new-array v0, v1, [I

    aput p1, v0, v3

    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->monthsInYear(I)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0
.end method

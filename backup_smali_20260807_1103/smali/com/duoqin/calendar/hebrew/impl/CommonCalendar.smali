.class public abstract Lcom/duoqin/calendar/hebrew/impl/CommonCalendar;
.super Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;
.source "CommonCalendar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;-><init>()V

    return-void
.end method


# virtual methods
.method absDay(Lcom/duoqin/calendar/hebrew/HDate;)J
    .locals 10
    .param p1, "date"    # Lcom/duoqin/calendar/hebrew/HDate;

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->getStart()J

    move-result-wide v5

    .line 41
    .local v5, "toReturn":J
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getDay()I

    move-result v0

    .line 42
    .local v0, "d":I
    int-to-long v8, v0

    add-long/2addr v5, v8

    .line 44
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getMonth()I

    move-result v4

    .line 45
    .local v4, "m":I
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v7

    .line 47
    .local v7, "y":I
    :goto_0
    if-le v4, v3, :cond_0

    .line 48
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p0, v7, v8}, Lcom/duoqin/calendar/hebrew/impl/CommonCalendar;->monthLength(II)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v5, v8

    .line 49
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 52
    :cond_0
    add-int/lit8 v7, v7, -0x1

    .line 54
    add-int/lit8 v8, v7, -0x1

    div-int/lit16 v2, v8, 0x190

    .line 56
    .local v2, "fourHundredYearCycles":I
    const/16 v8, 0x76c

    const/4 v9, 0x2

    invoke-virtual {p0, v8, v9}, Lcom/duoqin/calendar/hebrew/impl/CommonCalendar;->monthLength(II)I

    move-result v8

    const/16 v9, 0x1d

    if-ne v8, v9, :cond_1

    .line 58
    .local v3, "isJulian":Z
    :goto_1
    const v9, 0x23a50

    if-eqz v3, :cond_2

    const/16 v8, 0x64

    :goto_2
    add-int v1, v9, v8

    .line 59
    .local v1, "daysin400":I
    mul-int v8, v2, v1

    int-to-long v8, v8

    add-long/2addr v5, v8

    .line 61
    mul-int/lit16 v8, v2, 0x190

    sub-int/2addr v7, v8

    .line 63
    :goto_3
    if-lez v7, :cond_4

    .line 64
    invoke-virtual {p0, v7}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->isLeap(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x16e

    :goto_4
    int-to-long v8, v8

    add-long/2addr v5, v8

    .line 65
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 56
    .end local v1    # "daysin400":I
    .end local v3    # "isJulian":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 58
    .restart local v3    # "isJulian":Z
    :cond_2
    const/16 v8, 0x61

    goto :goto_2

    .line 64
    .restart local v1    # "daysin400":I
    :cond_3
    const/16 v8, 0x16d

    goto :goto_4

    .line 67
    :cond_4
    return-wide v5
.end method

.method fromAbs(J)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    .locals 10
    .param p1, "absDay"    # J

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->getStart()J

    move-result-wide v6

    sub-long v0, p1, v6

    .line 73
    .local v0, "absDayFromStart":J
    const/16 v6, 0x76c

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/duoqin/calendar/hebrew/impl/CommonCalendar;->monthLength(II)I

    move-result v6

    const/16 v7, 0x1d

    if-ne v6, v7, :cond_0

    const/4 v5, 0x1

    .line 74
    .local v5, "isJulian":Z
    :goto_0
    const v7, 0x23a50

    if-eqz v5, :cond_1

    const/16 v6, 0x64

    :goto_1
    add-int v4, v7, v6

    .line 76
    .local v4, "daysin400":I
    const-wide/16 v6, 0x1

    sub-long v6, v0, v6

    int-to-long v8, v4

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 77
    .local v2, "cycles":I
    new-instance v3, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    mul-int/lit16 v6, v2, 0x190

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {v3, p0, v6, v7, v8}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;-><init>(Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;III)V

    .line 79
    .local v3, "d0":Lcom/duoqin/calendar/hebrew/HDate;
    mul-int v6, v2, v4

    int-to-long v6, v6

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    long-to-int v6, v6

    invoke-interface {v3, v6}, Lcom/duoqin/calendar/hebrew/HDate;->addDays(I)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v6

    check-cast v6, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    return-object v6

    .line 73
    .end local v2    # "cycles":I
    .end local v3    # "d0":Lcom/duoqin/calendar/hebrew/HDate;
    .end local v4    # "daysin400":I
    .end local v5    # "isJulian":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 74
    .restart local v5    # "isJulian":Z
    :cond_1
    const/16 v6, 0x61

    goto :goto_1
.end method

.method public final monthLength(II)I
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 8
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    .line 9
    :cond_0
    const/16 v0, 0x1f

    .line 13
    :goto_0
    return v0

    .line 10
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->isLeap(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    .line 13
    :cond_3
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public final monthsInYear(I)I
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 18
    const/16 v0, 0xc

    return v0
.end method

.method final nextYearMonth(II)[I
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 24
    new-array v0, v1, [I

    add-int/lit8 v1, p1, 0x1

    aput v1, v0, v3

    aput v2, v0, v2

    .line 26
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [I

    aput p1, v0, v3

    add-int/lit8 v1, p2, 0x1

    aput v1, v0, v2

    goto :goto_0
.end method

.method final prevYearMonth(II)[I
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    if-ne p2, v2, :cond_0

    .line 32
    new-array v0, v0, [I

    add-int/lit8 v1, p1, -0x1

    aput v1, v0, v3

    const/16 v1, 0xc

    aput v1, v0, v2

    .line 34
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v0, [I

    aput p1, v0, v3

    add-int/lit8 v1, p2, -0x1

    aput v1, v0, v2

    goto :goto_0
.end method

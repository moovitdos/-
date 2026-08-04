.class public abstract Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;
.super Ljava/lang/Object;
.source "AbstractCalendar.java"

# interfaces
.implements Lcom/duoqin/calendar/hebrew/HCalendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract absDay(Lcom/duoqin/calendar/hebrew/HDate;)J
.end method

.method public final addDays(Lcom/duoqin/calendar/hebrew/HDate;I)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    .locals 7
    .param p1, "date"    # Lcom/duoqin/calendar/hebrew/HDate;
    .param p2, "numDays"    # I

    .prologue
    .line 38
    if-gez p2, :cond_0

    .line 39
    neg-int v6, p2

    invoke-virtual {p0, p1, v6}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->subtractDays(Lcom/duoqin/calendar/hebrew/HDate;I)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v6

    .line 54
    :goto_0
    return-object v6

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v5

    .line 41
    .local v5, "y":I
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getMonth()I

    move-result v3

    .line 42
    .local v3, "m":I
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getDay()I

    move-result v1

    .line 43
    .local v1, "d":I
    move v2, p2

    .line 44
    .local v2, "inc":I
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getCalendar()Lcom/duoqin/calendar/hebrew/HCalendar;

    move-result-object v0

    .line 45
    .local v0, "cal":Lcom/duoqin/calendar/hebrew/HCalendar;
    :goto_1
    invoke-interface {v0, v5, v3}, Lcom/duoqin/calendar/hebrew/HCalendar;->monthLength(II)I

    move-result v6

    sub-int/2addr v6, v1

    if-le v2, v6, :cond_1

    .line 46
    invoke-interface {v0, v5, v3}, Lcom/duoqin/calendar/hebrew/HCalendar;->monthLength(II)I

    move-result v6

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v2, v6

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v5, v3}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->nextYearMonth(II)[I

    move-result-object v4

    .line 49
    .local v4, "nextYearMonth":[I
    const/4 v6, 0x0

    aget v5, v4, v6

    .line 50
    const/4 v6, 0x1

    aget v3, v4, v6

    .line 51
    goto :goto_1

    .line 53
    .end local v4    # "nextYearMonth":[I
    :cond_1
    add-int/2addr v1, v2

    .line 54
    invoke-virtual {p0, v5, v3, v1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->fromYMD(III)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v6

    goto :goto_0
.end method

.method public final convert(Lcom/duoqin/calendar/hebrew/HDate;)Lcom/duoqin/calendar/hebrew/HDate;
    .locals 4
    .param p1, "otherDate"    # Lcom/duoqin/calendar/hebrew/HDate;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->getType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v2

    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getCalendarType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    .end local p1    # "otherDate":Lcom/duoqin/calendar/hebrew/HDate;
    :goto_0
    return-object p1

    .line 114
    .restart local p1    # "otherDate":Lcom/duoqin/calendar/hebrew/HDate;
    :cond_0
    check-cast p1, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    .end local p1    # "otherDate":Lcom/duoqin/calendar/hebrew/HDate;
    invoke-virtual {p1}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->absDay()J

    move-result-wide v0

    .line 115
    .local v0, "absDay":J
    invoke-virtual {p0, v0, v1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->fromAbs(J)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object p1

    goto :goto_0
.end method

.method abstract fromAbs(J)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
.end method

.method public final fromYMD(III)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 16
    if-lez p2, :cond_0

    move v1, p2

    .line 17
    .local v1, "m":I
    :goto_0
    if-lez p3, :cond_1

    move v0, p3

    .line 18
    .local v0, "d":I
    :goto_1
    new-instance v2, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;-><init>(Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;III)V

    return-object v2

    .line 16
    .end local v0    # "d":I
    .end local v1    # "m":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->monthsInYear(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v1, v2, p2

    goto :goto_0

    .line 17
    .restart local v1    # "m":I
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->monthLength(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v0, v2, p3

    goto :goto_1
.end method

.method abstract getStart()J
.end method

.method public isValidDate(III)Z
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v1, 0x0

    .line 23
    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->monthsInYear(I)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    if-lez p2, :cond_2

    move v0, p2

    .line 26
    .local v0, "m":I
    :goto_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p0, p1, v0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->monthLength(II)I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "m":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->monthsInYear(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v0, v2, p2

    goto :goto_1
.end method

.method abstract nextYearMonth(II)[I
.end method

.method abstract prevYearMonth(II)[I
.end method

.method public subtractDays(Lcom/duoqin/calendar/hebrew/HDate;I)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    .locals 7
    .param p1, "date"    # Lcom/duoqin/calendar/hebrew/HDate;
    .param p2, "numDays"    # I

    .prologue
    .line 66
    if-gez p2, :cond_0

    .line 67
    neg-int v6, p2

    invoke-virtual {p0, p1, v6}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->addDays(Lcom/duoqin/calendar/hebrew/HDate;I)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v6

    .line 82
    :goto_0
    return-object v6

    .line 68
    :cond_0
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v5

    .line 69
    .local v5, "y":I
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getMonth()I

    move-result v3

    .line 70
    .local v3, "m":I
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getDay()I

    move-result v1

    .line 71
    .local v1, "d":I
    move v2, p2

    .line 73
    .local v2, "inc":I
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getCalendar()Lcom/duoqin/calendar/hebrew/HCalendar;

    move-result-object v0

    .line 74
    .local v0, "cal":Lcom/duoqin/calendar/hebrew/HCalendar;
    :goto_1
    if-lt v2, v1, :cond_1

    .line 75
    sub-int/2addr v2, v1

    .line 76
    invoke-virtual {p0, v5, v3}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->prevYearMonth(II)[I

    move-result-object v4

    .line 77
    .local v4, "prevYearMonth":[I
    const/4 v6, 0x0

    aget v5, v4, v6

    .line 78
    const/4 v6, 0x1

    aget v3, v4, v6

    .line 79
    invoke-interface {v0, v5, v3}, Lcom/duoqin/calendar/hebrew/HCalendar;->monthLength(II)I

    move-result v1

    .line 80
    goto :goto_1

    .line 81
    .end local v4    # "prevYearMonth":[I
    :cond_1
    sub-int/2addr v1, v2

    .line 82
    invoke-virtual {p0, v5, v3, v1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->fromYMD(III)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v6

    goto :goto_0
.end method

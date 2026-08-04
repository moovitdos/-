.class public Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
.super Ljava/lang/Object;
.source "HDateImpl.java"

# interfaces
.implements Lcom/duoqin/calendar/hebrew/HDate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoqin/calendar/hebrew/impl/HDateImpl$1;
    }
.end annotation


# instance fields
.field private _calendar:Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;

.field private final _day:I

.field private final _month:I

.field private final _year:I


# direct methods
.method public constructor <init>(Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;III)V
    .locals 3
    .param p1, "calendar"    # Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_calendar:Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;

    .line 17
    iput p2, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_year:I

    .line 18
    iput p3, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_month:I

    .line 19
    iput p4, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_day:I

    .line 20
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_calendar:Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;

    invoke-virtual {v0, p2, p3, p4}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->isValidDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date created for calendar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_calendar:Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;

    invoke-virtual {v2}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->getType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    return-void
.end method

.method private chronologicalMonthOrder(I)I
    .locals 3
    .param p1, "m"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_calendar:Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;

    invoke-virtual {v1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->getType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v1

    sget-object v2, Lcom/duoqin/calendar/hebrew/HCalendarType;->HEBREW:Lcom/duoqin/calendar/hebrew/HCalendarType;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 178
    .local v0, "isHebrew":Z
    if-eqz v0, :cond_0

    .line 179
    const/4 v1, 0x7

    if-ge p1, v1, :cond_0

    add-int/lit8 p1, p1, 0xd

    .line 181
    .end local p1    # "m":I
    :cond_0
    return p1
.end method


# virtual methods
.method public absDay()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_calendar:Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;

    invoke-virtual {v0, p0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->absDay(Lcom/duoqin/calendar/hebrew/HDate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic addDays(I)Lcom/duoqin/calendar/hebrew/HDate;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->addDays(I)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v0

    return-object v0
.end method

.method public final addDays(I)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    .locals 1
    .param p1, "numDays"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_calendar:Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;

    invoke-virtual {v0, p0, p1}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->addDays(Lcom/duoqin/calendar/hebrew/HDate;I)Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/duoqin/calendar/hebrew/HDate;)I
    .locals 5
    .param p1, "o"    # Lcom/duoqin/calendar/hebrew/HDate;

    .prologue
    .line 155
    invoke-interface {p1}, Lcom/duoqin/calendar/hebrew/HDate;->getCalendarType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getCalendarType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->absDay()J

    move-result-wide v1

    check-cast p1, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    .end local p1    # "o":Lcom/duoqin/calendar/hebrew/HDate;
    invoke-virtual {p1}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->absDay()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    .line 165
    :goto_0
    return v1

    .restart local p1    # "o":Lcom/duoqin/calendar/hebrew/HDate;
    :cond_0
    move-object v0, p1

    .line 159
    check-cast v0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;

    .line 160
    .local v0, "other":Lcom/duoqin/calendar/hebrew/impl/HDateImpl;
    iget v1, v0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_year:I

    iget v2, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_year:I

    if-eq v1, v2, :cond_1

    .line 161
    iget v1, v0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_year:I

    iget v2, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_year:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 163
    :cond_1
    iget v1, v0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_month:I

    iget v2, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_month:I

    if-eq v1, v2, :cond_2

    .line 164
    iget v1, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_month:I

    invoke-direct {p0, v1}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->chronologicalMonthOrder(I)I

    move-result v1

    iget v2, v0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_month:I

    invoke-direct {p0, v2}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->chronologicalMonthOrder(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    goto :goto_0

    .line 165
    :cond_2
    iget v1, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_day:I

    iget v2, v0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_day:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Lcom/duoqin/calendar/hebrew/HDate;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->compareTo(Lcom/duoqin/calendar/hebrew/HDate;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 143
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/duoqin/calendar/hebrew/HDate;

    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 145
    check-cast v0, Lcom/duoqin/calendar/hebrew/HDate;

    .line 146
    .local v0, "other":Lcom/duoqin/calendar/hebrew/HDate;
    invoke-interface {v0}, Lcom/duoqin/calendar/hebrew/HDate;->getCalendarType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getCalendarType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getYear()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Lcom/duoqin/calendar/hebrew/HDate;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Lcom/duoqin/calendar/hebrew/HDate;->getDay()I

    move-result v2

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getDay()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getCalendar()Lcom/duoqin/calendar/hebrew/HCalendar;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_calendar:Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;

    return-object v0
.end method

.method public final getCalendarType()Lcom/duoqin/calendar/hebrew/HCalendarType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_calendar:Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;

    invoke-virtual {v0}, Lcom/duoqin/calendar/hebrew/impl/AbstractCalendar;->getType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v0

    return-object v0
.end method

.method public final getDay()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_day:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_month:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->_year:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    sget-object v1, Lcom/duoqin/calendar/hebrew/HCalendarType;->HEBREW:Lcom/duoqin/calendar/hebrew/HCalendarType;

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getCalendarType()Lcom/duoqin/calendar/hebrew/HCalendarType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getMonth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "month":Ljava/lang/String;
    sget-object v1, Lcom/duoqin/calendar/hebrew/impl/HDateImpl$1;->$SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth:[I

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getMonth()I

    move-result v2

    invoke-static {v2}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->get(I)Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getDay()I

    move-result v1

    invoke-static {v1}, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->formatDay(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getYear()I

    move-result v2

    invoke-static {v2}, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->formatYear(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .end local v0    # "month":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 94
    .restart local v0    # "month":Ljava/lang/String;
    :pswitch_0
    const-string v0, "\u05e0\u05d9\u05e1\u05df"

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    const-string v0, "\u05d0\u05d9\u05d9\u05e8"

    .line 98
    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "\u05e1\u05d9\u05d5\u05df"

    .line 101
    goto :goto_0

    .line 103
    :pswitch_3
    const-string v0, "\u05ea\u05de\u05d5\u05d6"

    .line 104
    goto :goto_0

    .line 106
    :pswitch_4
    const-string v0, "\u05d0\u05d1"

    .line 107
    goto :goto_0

    .line 109
    :pswitch_5
    const-string v0, "\u05d0\u05dc\u05d5\u05dc"

    .line 110
    goto :goto_0

    .line 112
    :pswitch_6
    const-string v0, "\u05ea\u05e9\u05e8\u05d9"

    .line 113
    goto :goto_0

    .line 115
    :pswitch_7
    const-string v0, "\u05d7\u05e9\u05d5\u05df"

    .line 116
    goto :goto_0

    .line 118
    :pswitch_8
    const-string v0, "\u05db\u05e1\u05dc\u05d5"

    .line 119
    goto :goto_0

    .line 121
    :pswitch_9
    const-string v0, "\u05d8\u05d1\u05ea"

    .line 122
    goto :goto_0

    .line 124
    :pswitch_a
    const-string v0, "\u05e9\u05d1\u05d8"

    .line 125
    goto :goto_0

    .line 127
    :pswitch_b
    const-string v0, "\u05d0\u05d3\u05e8 \u05d0\'"

    .line 128
    goto :goto_0

    .line 130
    :pswitch_c
    const-string v0, "\u05d0\u05d3\u05e8 \u05d1\'"

    .line 131
    goto :goto_0

    .line 138
    .end local v0    # "month":Ljava/lang/String;
    :cond_0
    const-string v1, "%d %d %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/impl/HDateImpl;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    nop

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

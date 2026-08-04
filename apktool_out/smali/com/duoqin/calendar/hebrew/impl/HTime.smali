.class final Lcom/duoqin/calendar/hebrew/impl/HTime;
.super Ljava/lang/Object;
.source "HTime.java"


# instance fields
.field private _day:J

.field private _hour:I

.field private _part:I


# direct methods
.method constructor <init>(JII)V
    .locals 0
    .param p1, "day"    # J
    .param p3, "hour"    # I
    .param p4, "part"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_day:J

    .line 10
    iput p3, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_hour:I

    .line 11
    iput p4, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_part:I

    .line 12
    return-void
.end method

.method private normalize(JII)Lcom/duoqin/calendar/hebrew/impl/HTime;
    .locals 8
    .param p1, "day"    # J
    .param p3, "hour"    # I
    .param p4, "part"    # I

    .prologue
    .line 15
    move-wide v0, p1

    .line 16
    .local v0, "d":J
    move v2, p3

    .line 17
    .local v2, "h":I
    move v3, p4

    .line 18
    .local v3, "p":I
    const/16 v4, 0x437

    if-le v3, v4, :cond_2

    .line 19
    div-int/lit16 v4, v3, 0x438

    add-int/2addr v2, v4

    .line 20
    rem-int/lit16 v3, v3, 0x438

    .line 26
    :cond_0
    :goto_0
    const/16 v4, 0x17

    if-le v2, v4, :cond_3

    .line 27
    div-int/lit8 v4, v2, 0x18

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 28
    rem-int/lit8 v2, v2, 0x18

    .line 33
    :cond_1
    :goto_1
    new-instance v4, Lcom/duoqin/calendar/hebrew/impl/HTime;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;-><init>(JII)V

    return-object v4

    .line 21
    :cond_2
    if-gez v3, :cond_0

    .line 22
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit16 v4, v4, 0x438

    sub-int v4, v2, v4

    add-int/lit8 v2, v4, -0x1

    .line 23
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit16 v4, v4, 0x438

    rsub-int v3, v4, 0x438

    goto :goto_0

    .line 29
    :cond_3
    if-gez v2, :cond_1

    .line 30
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x18

    int-to-long v4, v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1

    sub-long v0, v4, v6

    .line 31
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x18

    rsub-int/lit8 v2, v4, 0x18

    goto :goto_1
.end method


# virtual methods
.method add(Lcom/duoqin/calendar/hebrew/impl/HTime;)Lcom/duoqin/calendar/hebrew/impl/HTime;
    .locals 5
    .param p1, "toAdd"    # Lcom/duoqin/calendar/hebrew/impl/HTime;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_day:J

    iget-wide v2, p1, Lcom/duoqin/calendar/hebrew/impl/HTime;->_day:J

    add-long/2addr v0, v2

    iget v2, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_hour:I

    iget v3, p1, Lcom/duoqin/calendar/hebrew/impl/HTime;->_hour:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_part:I

    iget v4, p1, Lcom/duoqin/calendar/hebrew/impl/HTime;->_part:I

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->normalize(JII)Lcom/duoqin/calendar/hebrew/impl/HTime;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 63
    instance-of v2, p1, Lcom/duoqin/calendar/hebrew/impl/HTime;

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/duoqin/calendar/hebrew/impl/HTime;

    .line 66
    .local v0, "htime":Lcom/duoqin/calendar/hebrew/impl/HTime;
    iget-wide v2, v0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_day:J

    iget-wide v4, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_day:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, v0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_hour:I

    iget v3, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_hour:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_part:I

    iget v3, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_part:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDay()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_day:J

    return-wide v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_hour:I

    return v0
.end method

.method public getPart()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_part:I

    return v0
.end method

.method times(I)Lcom/duoqin/calendar/hebrew/impl/HTime;
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_day:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_hour:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_part:I

    mul-int/2addr v3, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/duoqin/calendar/hebrew/impl/HTime;->normalize(JII)Lcom/duoqin/calendar/hebrew/impl/HTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTime[d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_day:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoqin/calendar/hebrew/impl/HTime;->_part:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

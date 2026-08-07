.class public Lcom/kosherjava/zmanim/util/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field private static final HOUR_MILLIS:I = 0x36ee80

.field private static final MINUTE_MILLIS:I = 0xea60

.field private static final SECOND_MILLIS:I = 0x3e8


# instance fields
.field private hours:I

.field private isNegative:Z

.field private milliseconds:I

.field private minutes:I

.field private seconds:I


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "millis"    # D

    .line 84
    double-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/kosherjava/zmanim/util/Time;-><init>(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "millis"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/kosherjava/zmanim/util/Time;->hours:I

    .line 45
    iput v0, p0, Lcom/kosherjava/zmanim/util/Time;->minutes:I

    .line 50
    iput v0, p0, Lcom/kosherjava/zmanim/util/Time;->seconds:I

    .line 55
    iput v0, p0, Lcom/kosherjava/zmanim/util/Time;->milliseconds:I

    .line 61
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/util/Time;->isNegative:Z

    .line 93
    move v0, p1

    .line 94
    .local v0, "adjustedMillis":I
    if-gez v0, :cond_0

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kosherjava/zmanim/util/Time;->isNegative:Z

    .line 96
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 98
    :cond_0
    const v1, 0x36ee80

    div-int v2, v0, v1

    iput v2, p0, Lcom/kosherjava/zmanim/util/Time;->hours:I

    .line 99
    iget v2, p0, Lcom/kosherjava/zmanim/util/Time;->hours:I

    mul-int v2, v2, v1

    sub-int/2addr v0, v2

    .line 101
    const v1, 0xea60

    div-int v2, v0, v1

    iput v2, p0, Lcom/kosherjava/zmanim/util/Time;->minutes:I

    .line 102
    iget v2, p0, Lcom/kosherjava/zmanim/util/Time;->minutes:I

    mul-int v2, v2, v1

    sub-int/2addr v0, v2

    .line 104
    div-int/lit16 v1, v0, 0x3e8

    iput v1, p0, Lcom/kosherjava/zmanim/util/Time;->seconds:I

    .line 105
    iget v1, p0, Lcom/kosherjava/zmanim/util/Time;->seconds:I

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 107
    iput v0, p0, Lcom/kosherjava/zmanim/util/Time;->milliseconds:I

    .line 108
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "milliseconds"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/kosherjava/zmanim/util/Time;->hours:I

    .line 45
    iput v0, p0, Lcom/kosherjava/zmanim/util/Time;->minutes:I

    .line 50
    iput v0, p0, Lcom/kosherjava/zmanim/util/Time;->seconds:I

    .line 55
    iput v0, p0, Lcom/kosherjava/zmanim/util/Time;->milliseconds:I

    .line 61
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/util/Time;->isNegative:Z

    .line 72
    iput p1, p0, Lcom/kosherjava/zmanim/util/Time;->hours:I

    .line 73
    iput p2, p0, Lcom/kosherjava/zmanim/util/Time;->minutes:I

    .line 74
    iput p3, p0, Lcom/kosherjava/zmanim/util/Time;->seconds:I

    .line 75
    iput p4, p0, Lcom/kosherjava/zmanim/util/Time;->milliseconds:I

    .line 76
    return-void
.end method


# virtual methods
.method public getHours()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/kosherjava/zmanim/util/Time;->hours:I

    return v0
.end method

.method public getMilliseconds()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/kosherjava/zmanim/util/Time;->milliseconds:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/kosherjava/zmanim/util/Time;->minutes:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/kosherjava/zmanim/util/Time;->seconds:I

    return v0
.end method

.method public getTime()D
    .locals 3

    .line 191
    iget v0, p0, Lcom/kosherjava/zmanim/util/Time;->hours:I

    const v1, 0x36ee80

    mul-int v0, v0, v1

    iget v1, p0, Lcom/kosherjava/zmanim/util/Time;->minutes:I

    const v2, 0xea60

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/kosherjava/zmanim/util/Time;->seconds:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget v1, p0, Lcom/kosherjava/zmanim/util/Time;->milliseconds:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0
.end method

.method public isNegative()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/util/Time;->isNegative:Z

    return v0
.end method

.method public setHours(I)V
    .locals 0
    .param p1, "hours"    # I

    .line 138
    iput p1, p0, Lcom/kosherjava/zmanim/util/Time;->hours:I

    .line 139
    return-void
.end method

.method public setIsNegative(Z)V
    .locals 0
    .param p1, "isNegative"    # Z

    .line 123
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/util/Time;->isNegative:Z

    .line 124
    return-void
.end method

.method public setMilliseconds(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .line 183
    iput p1, p0, Lcom/kosherjava/zmanim/util/Time;->milliseconds:I

    .line 184
    return-void
.end method

.method public setMinutes(I)V
    .locals 0
    .param p1, "minutes"    # I

    .line 153
    iput p1, p0, Lcom/kosherjava/zmanim/util/Time;->minutes:I

    .line 154
    return-void
.end method

.method public setSeconds(I)V
    .locals 0
    .param p1, "seconds"    # I

    .line 168
    iput p1, p0, Lcom/kosherjava/zmanim/util/Time;->seconds:I

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->format(Lcom/kosherjava/zmanim/util/Time;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

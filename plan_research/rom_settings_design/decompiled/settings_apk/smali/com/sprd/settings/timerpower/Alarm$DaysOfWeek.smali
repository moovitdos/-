.class final Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/timerpower/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAYS_ERROR:I

.field private static DAY_COUNT:I

.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_MAP:[I

    .line 270
    sget-object v0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_MAP:[I

    array-length v0, v0

    sput v0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    .line 271
    const/4 v0, -0x1

    sput v0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAYS_ERROR:I

    return-void

    .line 254
    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    .line 269
    return-void
.end method

.method private getDaysOfWeekFromCode(I)[I
    .locals 6
    .param p1, "code"    # I

    .prologue
    const/4 v5, 0x1

    .line 344
    const/4 v3, 0x7

    new-array v2, v3, [I

    const/4 v3, 0x0

    sget v4, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    aput v4, v2, v3

    sget v3, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    aput v3, v2, v5

    const/4 v3, 0x2

    sget v4, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    aput v4, v2, v3

    const/4 v3, 0x4

    sget v4, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    aput v4, v2, v3

    const/4 v3, 0x5

    sget v4, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    aput v4, v2, v3

    const/4 v3, 0x6

    sget v4, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    aput v4, v2, v3

    .line 347
    .local v2, "ret":[I
    const/4 v1, 0x0

    .line 348
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    if-ge v0, v3, :cond_1

    .line 349
    shl-int v3, v5, v0

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 350
    aput v0, v2, v1

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_1
    return-object v2
.end method

.method private isSet(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x1

    .line 310
    iget v1, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 331
    new-array v1, v3, [Z

    .line 332
    .local v1, "ret":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 333
    invoke-direct {p0, v0}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-object v1
.end method

.method public getCoded()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .locals 5
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x7

    .line 381
    iget v3, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    if-nez v3, :cond_1

    .line 382
    const/4 v1, -0x1

    .line 395
    :cond_0
    return v1

    .line 385
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .line 387
    .local v2, "today":I
    const/4 v0, 0x0

    .line 388
    .local v0, "day":I
    const/4 v1, 0x0

    .line 389
    .local v1, "dayCount":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 390
    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    .line 391
    invoke-direct {p0, v0}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasDuplicateDate(II)Z
    .locals 12
    .param p1, "days"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v10, 0x0

    .line 363
    sget v11, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAYS_ERROR:I

    if-eq v11, p1, :cond_0

    sget v11, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAYS_ERROR:I

    if-ne v11, p2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v10

    .line 366
    :cond_1
    invoke-direct {p0, p1}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->getDaysOfWeekFromCode(I)[I

    move-result-object v3

    .line 367
    .local v3, "daysArray":[I
    invoke-direct {p0, p2}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->getDaysOfWeekFromCode(I)[I

    move-result-object v2

    .line 368
    .local v2, "codeArray":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[I
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_0

    aget v9, v0, v5

    .line 369
    .local v9, "sDays":I
    move-object v1, v3

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_3

    aget v8, v1, v4

    .line 370
    .local v8, "sCode":I
    sget v11, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    if-eq v9, v11, :cond_2

    sget v11, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_COUNT:I

    if-eq v8, v11, :cond_2

    if-ne v9, v8, :cond_2

    .line 371
    const/4 v10, 0x1

    goto :goto_0

    .line 369
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 368
    .end local v8    # "sCode":I
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 2
    .param p1, "day"    # I
    .param p2, "set"    # Z

    .prologue
    const/4 v1, 0x1

    .line 314
    if-eqz p2, :cond_0

    .line 315
    iget v0, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    iget v0, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public set(Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V
    .locals 1
    .param p1, "dow"    # Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .prologue
    .line 322
    iget v0, p1, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    .line 323
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNever"    # Z

    .prologue
    const/4 v8, 0x1

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v5, "ret":Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    if-nez v6, :cond_1

    .line 278
    if-eqz p2, :cond_0

    const v6, 0x7f090823

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    :goto_0
    return-object v6

    .line 278
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 283
    :cond_1
    iget v6, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_2

    .line 284
    const v6, 0x7f090822

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 288
    :cond_2
    const/4 v0, 0x0

    .local v0, "dayCount":I
    iget v2, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    .line 289
    .local v2, "days":I
    :goto_1
    if-lez v2, :cond_4

    .line 290
    and-int/lit8 v6, v2, 0x1

    if-ne v6, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 291
    :cond_3
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    :cond_4
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 296
    .local v3, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "dayList":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v6, 0x7

    if-ge v4, v6, :cond_6

    .line 300
    iget v6, p0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->mDays:I

    shl-int v7, v8, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 301
    sget-object v6, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v6, v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v0, v0, -0x1

    .line 303
    if-lez v0, :cond_5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 306
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

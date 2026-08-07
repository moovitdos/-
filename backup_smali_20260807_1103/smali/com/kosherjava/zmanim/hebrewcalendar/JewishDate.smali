.class public Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
.super Ljava/lang/Object;
.source "JewishDate.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final ADAR:I = 0xc

.field public static final ADAR_II:I = 0xd

.field public static final AV:I = 0x5

.field private static final CHALAKIM_MOLAD_TOHU:I = 0x7b24

.field private static final CHALAKIM_PER_DAY:I = 0x6540

.field private static final CHALAKIM_PER_HOUR:I = 0x438

.field private static final CHALAKIM_PER_MINUTE:I = 0x12

.field private static final CHALAKIM_PER_MONTH:J = 0xbadf9L

.field public static final CHASERIM:I = 0x0

.field public static final CHESHVAN:I = 0x8

.field public static final ELUL:I = 0x6

.field public static final IYAR:I = 0x2

.field private static final JEWISH_EPOCH:I = -0x14f4f5

.field public static final KESIDRAN:I = 0x1

.field public static final KISLEV:I = 0x9

.field public static final NISSAN:I = 0x1

.field public static final SHELAIMIM:I = 0x2

.field public static final SHEVAT:I = 0xb

.field public static final SIVAN:I = 0x3

.field public static final TAMMUZ:I = 0x4

.field public static final TEVES:I = 0xa

.field public static final TISHREI:I = 0x7


# instance fields
.field private dayOfWeek:I

.field private gregorianAbsDate:I

.field private gregorianDayOfMonth:I

.field private gregorianMonth:I

.field private gregorianYear:I

.field private jewishDay:I

.field private jewishMonth:I

.field private jewishYear:I

.field private moladChalakim:I

.field private moladHours:I

.field private moladMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->resetDate()V

    .line 994
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "jewishYear"    # I
    .param p2, "jewishMonth"    # I
    .param p3, "jewishDayOfMonth"    # I

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    invoke-virtual {p0, p1, p2, p3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 987
    return-void
.end method

.method public constructor <init>(J)V
    .locals 6
    .param p1, "molad"    # J

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    invoke-static {p1, p2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladToAbsDate(J)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->absDateToDate(I)V

    .line 911
    const-wide/16 v0, 0x6540

    div-long v2, p1, v0

    long-to-int v3, v2

    .line 912
    .local v3, "conjunctionDay":I
    int-to-long v4, v3

    mul-long v4, v4, v0

    sub-long v0, p1, v4

    long-to-int v1, v0

    .line 913
    .local v1, "conjunctionParts":I
    invoke-direct {p0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setMoladTime(I)V

    .line 914
    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;)V
    .locals 0
    .param p1, "localDate"    # Ljava/time/LocalDate;

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/time/LocalDate;)V

    .line 1030
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/util/Calendar;)V

    .line 1018
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/util/Date;)V

    .line 1006
    return-void
.end method

.method private absDateToDate(I)V
    .locals 4
    .param p1, "absDate"    # I

    .line 367
    div-int/lit16 v0, p1, 0x16e

    .line 368
    .local v0, "year":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    const/4 v1, 0x1

    .line 373
    .local v1, "month":I
    :goto_1
    invoke-static {v1, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v3

    if-le p1, v3, :cond_1

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v3

    sub-int v3, p1, v3

    add-int/2addr v3, v2

    .line 378
    .local v3, "dayOfMonth":I
    invoke-direct {p0, v0, v1, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 379
    return-void
.end method

.method private absDateToJewishDate()V
    .locals 5

    .line 832
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    const v1, -0x14f4f5

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x16e

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    .line 834
    :goto_0
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x7

    invoke-static {v1, v3, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 835
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    goto :goto_0

    .line 838
    :cond_0
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    invoke-static {v1, v2, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 839
    iput v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    goto :goto_1

    .line 841
    :cond_1
    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 843
    :goto_1
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 844
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    goto :goto_1

    .line 847
    :cond_2
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    invoke-static {v1, v3, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    .line 848
    return-void
.end method

.method private static addDechiyos(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "moladDay"    # I
    .param p2, "moladParts"    # I

    .line 510
    move v0, p1

    .line 512
    .local v0, "roshHashanaDay":I
    const/16 v1, 0x4bf0

    if-ge p2, v1, :cond_1

    rem-int/lit8 v1, p1, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x26c4

    if-lt p2, v1, :cond_0

    .line 515
    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    rem-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x4195

    if-lt p2, v1, :cond_2

    add-int/lit8 v1, p0, -0x1

    .line 518
    invoke-static {v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 522
    :cond_2
    rem-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_3

    rem-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    rem-int/lit8 v1, v0, 0x7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 525
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 527
    :cond_4
    return v0
.end method

.method private forwardJewishMonth(I)V
    .locals 4
    .param p1, "amount"    # I

    .line 1323
    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    .line 1326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_4

    .line 1327
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishMonth()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1328
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishMonth(I)V

    .line 1329
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishYear(I)V

    goto :goto_1

    .line 1330
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishMonth()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    .line 1331
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishMonth()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 1332
    :cond_2
    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishMonth(I)V

    goto :goto_1

    .line 1334
    :cond_3
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishMonth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishMonth(I)V

    .line 1326
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1337
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 1324
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the amount of months to forward has to be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static getChalakimSinceMoladTohu(II)J
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 544
    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishMonthOfYear(II)I

    move-result v0

    .line 545
    .local v0, "monthOfYear":I
    add-int/lit8 v1, p0, -0x1

    div-int/lit8 v1, v1, 0x13

    mul-int/lit16 v1, v1, 0xeb

    add-int/lit8 v2, p0, -0x1

    rem-int/lit8 v2, v2, 0x13

    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    add-int/lit8 v2, p0, -0x1

    rem-int/lit8 v2, v2, 0x13

    mul-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x13

    add-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    add-int/2addr v1, v2

    .line 550
    .local v1, "monthsElapsed":I
    const-wide/32 v2, 0xbadf9

    int-to-long v4, v1

    mul-long v4, v4, v2

    const-wide/16 v2, 0x7b24

    add-long/2addr v4, v2

    return-wide v4
.end method

.method private static getDaysInJewishMonth(II)I
    .locals 1
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 809
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isCheshvanLong(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 810
    invoke-static {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isKislevShort(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    .line 811
    invoke-static {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0xd

    if-ne p0, v0, :cond_4

    :cond_3
    goto :goto_0

    .line 814
    :cond_4
    const/16 v0, 0x1e

    return v0

    .line 812
    :cond_5
    :goto_0
    const/16 v0, 0x1d

    return v0
.end method

.method public static getDaysInJewishYear(I)I
    .locals 2
    .param p0, "year"    # I

    .line 715
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishCalendarElapsedDays(I)I

    move-result v0

    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishCalendarElapsedDays(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getDaysSinceStartOfJewishYear(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 942
    move v0, p2

    .line 944
    .local v0, "elapsedDays":I
    const/4 v1, 0x7

    if-ge p1, v1, :cond_2

    .line 946
    const/4 v1, 0x7

    .local v1, "m":I
    :goto_0
    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastMonthOfJewishYear(I)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 947
    invoke-static {v1, p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 946
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    .end local v1    # "m":I
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "m":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 950
    invoke-static {v1, p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 949
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "m":I
    :cond_1
    goto :goto_3

    .line 953
    :cond_2
    const/4 v1, 0x7

    .restart local v1    # "m":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 954
    invoke-static {v1, p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 953
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 957
    .end local v1    # "m":I
    :cond_3
    :goto_3
    return v0
.end method

.method public static getJewishCalendarElapsedDays(I)I
    .locals 8
    .param p0, "year"    # I

    .line 462
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getChalakimSinceMoladTohu(II)J

    move-result-wide v0

    .line 463
    .local v0, "chalakimSince":J
    const-wide/16 v2, 0x6540

    div-long v4, v0, v2

    long-to-int v5, v4

    .line 464
    .local v5, "moladDay":I
    int-to-long v6, v5

    mul-long v6, v6, v2

    sub-long v2, v0, v6

    long-to-int v3, v2

    .line 466
    .local v3, "moladParts":I
    invoke-static {p0, v5, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->addDechiyos(III)I

    move-result v2

    return v2
.end method

.method private static getJewishMonthOfYear(II)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 574
    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    .line 575
    .local v0, "isLeapYear":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    add-int/2addr v1, p1

    if-eqz v0, :cond_1

    const/16 v2, 0xd

    goto :goto_1

    :cond_1
    const/16 v2, 0xc

    :goto_1
    rem-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static getLastDayOfGregorianMonth(II)I
    .locals 1
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 345
    sparse-switch p0, :sswitch_data_0

    .line 358
    const/16 v0, 0x1f

    return v0

    .line 356
    :sswitch_0
    const/16 v0, 0x1e

    return v0

    .line 347
    :sswitch_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_2

    .line 348
    :cond_1
    const/16 v0, 0x1d

    return v0

    .line 350
    :cond_2
    const/16 v0, 0x1c

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private static getLastMonthOfJewishYear(I)I
    .locals 1
    .param p0, "year"    # I

    .line 447
    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    return v0
.end method

.method private static gregorianDateToAbsDate(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 403
    move v0, p2

    .line 404
    .local v0, "absDate":I
    add-int/lit8 v1, p1, -0x1

    .local v1, "m":I
    :goto_0
    if-lez v1, :cond_0

    .line 405
    invoke-static {v1, p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 404
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 407
    .end local v1    # "m":I
    :cond_0
    add-int/lit8 v1, p0, -0x1

    mul-int/lit16 v1, v1, 0x16d

    add-int/2addr v1, v0

    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    add-int/lit8 v2, p0, -0x1

    div-int/lit16 v2, v2, 0x190

    add-int/2addr v1, v2

    return v1
.end method

.method private static isCheshvanLong(I)Z
    .locals 2
    .param p0, "year"    # I

    .line 741
    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishYear(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isJewishLeapYear(I)Z
    .locals 3
    .param p0, "year"    # I

    .line 423
    mul-int/lit8 v0, p0, 0x7

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x13

    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isKislevShort(I)Z
    .locals 2
    .param p0, "year"    # I

    .line 766
    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishYear(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static jewishDateToAbsDate(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 865
    invoke-static {p0, p1, p2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysSinceStartOfJewishYear(III)I

    move-result v0

    .line 867
    .local v0, "elapsed":I
    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishCalendarElapsedDays(I)I

    move-result v1

    add-int/2addr v1, v0

    const v2, -0x14f4f5

    add-int/2addr v1, v2

    return v1
.end method

.method private static moladToAbsDate(J)I
    .locals 2
    .param p0, "chalakim"    # J

    .line 897
    const-wide/16 v0, 0x6540

    div-long v0, p0, v0

    long-to-int v1, v0

    const v0, -0x14f4f5

    add-int/2addr v1, v0

    return v1
.end method

.method private setInternalGregorianDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 1113
    invoke-static {p2, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1114
    invoke-static {p2, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result p3

    .line 1117
    :cond_0
    iput p2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    .line 1118
    iput p3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    .line 1119
    iput p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    .line 1121
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v0

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 1122
    invoke-direct {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->absDateToJewishDate()V

    .line 1124
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    rem-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 1125
    return-void
.end method

.method private setMoladTime(I)V
    .locals 2
    .param p1, "chalakim"    # I

    .line 923
    move v0, p1

    .line 924
    .local v0, "adjustedChalakim":I
    div-int/lit16 v1, v0, 0x438

    invoke-virtual {p0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setMoladHours(I)V

    .line 925
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getMoladHours()I

    move-result v1

    mul-int/lit16 v1, v1, 0x438

    sub-int/2addr v0, v1

    .line 926
    div-int/lit8 v1, v0, 0x12

    invoke-virtual {p0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setMoladMinutes(I)V

    .line 927
    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladMinutes:I

    mul-int/lit8 v1, v1, 0x12

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setMoladChalakim(I)V

    .line 928
    return-void
.end method

.method private static validateGregorianDate(III)V
    .locals 0
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 660
    invoke-static {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->validateGregorianMonth(I)V

    .line 661
    invoke-static {p2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->validateGregorianDayOfMonth(I)V

    .line 662
    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->validateGregorianYear(I)V

    .line 663
    return-void
.end method

.method private static validateGregorianDayOfMonth(I)V
    .locals 3
    .param p0, "dayOfMonth"    # I

    .line 688
    if-lez p0, :cond_0

    .line 691
    return-void

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The day of month can\'t be less than 1. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateGregorianMonth(I)V
    .locals 3
    .param p0, "month"    # I

    .line 673
    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    if-ltz p0, :cond_0

    .line 677
    return-void

    .line 674
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Gregorian month has to be between 0 - 11. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateGregorianYear(I)V
    .locals 3
    .param p0, "year"    # I

    .line 700
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 703
    return-void

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Years < 1 can\'t be claculated. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateJewishDate(IIIIII)V
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hours"    # I
    .param p4, "minutes"    # I
    .param p5, "chalakim"    # I

    .line 608
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    invoke-static {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastMonthOfJewishYear(I)I

    move-result v1

    if-gt p1, v1, :cond_7

    .line 612
    const-string v1, " is invalid."

    if-lt p2, v0, :cond_6

    const/16 v0, 0x1e

    if-gt p2, v0, :cond_6

    .line 618
    const/16 v0, 0xeb1

    if-lt p0, v0, :cond_5

    const/16 v2, 0xa

    if-ne p0, v0, :cond_0

    const/4 v3, 0x7

    if-lt p1, v3, :cond_0

    if-lt p1, v2, :cond_5

    :cond_0
    if-ne p0, v0, :cond_1

    if-ne p1, v2, :cond_1

    const/16 v0, 0x12

    if-lt p2, v0, :cond_5

    .line 624
    :cond_1
    if-ltz p3, :cond_4

    const/16 v0, 0x17

    if-gt p3, v0, :cond_4

    .line 628
    if-ltz p4, :cond_3

    const/16 v0, 0x3b

    if-gt p4, v0, :cond_3

    .line 632
    if-ltz p5, :cond_2

    const/16 v0, 0x11

    if-gt p5, v0, :cond_2

    .line 638
    return-void

    .line 633
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chalakim/parts < 0 or > 17 can\'t be set. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid. For larger numbers such as 793 (TaShTzaG) break the chalakim into minutes (18 chalakim per minutes, so it would be 44 minutes and 1 chelek in the case of 793 (TaShTzaG)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Minutes < 0 or > 59 can\'t be set. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hours < 0 or > 23 can\'t be set. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A Jewish date earlier than 18 Teves, 3761 (1/1/1 Gregorian) can\'t be set. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Jewish day of month can\'t be < 1 or > 30.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Jewish month has to be between 1 and 12 (or 13 on a leap year). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid for the year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public back()V
    .locals 3

    .line 1359
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1360
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    if-ne v0, v1, :cond_0

    .line 1361
    const/16 v0, 0xc

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    .line 1362
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    goto :goto_0

    .line 1364
    :cond_0
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    .line 1367
    :goto_0
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    invoke-static {v0, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v0

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    goto :goto_1

    .line 1369
    :cond_1
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    .line 1372
    :goto_1
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    const/4 v2, 0x7

    if-ne v0, v1, :cond_4

    .line 1373
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    if-ne v0, v1, :cond_2

    .line 1374
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastMonthOfJewishYear(I)I

    move-result v0

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    goto :goto_2

    .line 1375
    :cond_2
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    if-ne v0, v2, :cond_3

    .line 1376
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    .line 1377
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    goto :goto_2

    .line 1379
    :cond_3
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1381
    :goto_2
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth()I

    move-result v0

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    goto :goto_3

    .line 1383
    :cond_4
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    .line 1386
    :goto_3
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    if-ne v0, v1, :cond_5

    .line 1387
    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    goto :goto_4

    .line 1389
    :cond_5
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 1391
    :goto_4
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 1392
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1567
    const/4 v0, 0x0

    .line 1569
    .local v0, "clone":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1572
    goto :goto_0

    .line 1570
    :catch_0
    move-exception v1

    .line 1573
    :goto_0
    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 1574
    return-object v0
.end method

.method public compareTo(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)I
    .locals 2
    .param p1, "jewishDate"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    .line 1415
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getAbsDate()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 57
    check-cast p1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->compareTo(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 1399
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1400
    return v0

    .line 1402
    :cond_0
    instance-of v1, p1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1403
    return v2

    .line 1405
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    .line 1406
    .local v1, "jewishDate":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    iget v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getAbsDate()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forward(II)V
    .locals 5
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 1258
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported field was passed to Forward. Only Calendar.DATE, Calendar.MONTH or Calendar.YEAR are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :cond_1
    :goto_0
    if-lt p2, v1, :cond_c

    .line 1264
    if-ne p1, v2, :cond_9

    .line 1266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_8

    .line 1267
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    iget v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v4, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    invoke-static {v3, v4}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1268
    iput v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    .line 1270
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 1271
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    .line 1272
    iput v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    goto :goto_2

    .line 1274
    :cond_2
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    goto :goto_2

    .line 1277
    :cond_3
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    .line 1281
    :goto_2
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 1283
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1284
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    .line 1285
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1286
    iput v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    goto :goto_3

    .line 1287
    :cond_4
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    iget v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    invoke-static {v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastMonthOfJewishYear(I)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1289
    iput v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1290
    iput v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    goto :goto_3

    .line 1292
    :cond_5
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1293
    iput v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    goto :goto_3

    .line 1296
    :cond_6
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    .line 1299
    :goto_3
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 1300
    iput v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    goto :goto_4

    .line 1302
    :cond_7
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 1305
    :goto_4
    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 1266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_8
    goto :goto_5

    .line 1307
    :cond_9
    if-ne p1, v0, :cond_a

    .line 1308
    invoke-direct {p0, p2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->forwardJewishMonth(I)V

    goto :goto_5

    .line 1309
    :cond_a
    if-ne p1, v1, :cond_b

    .line 1310
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishYear(I)V

    .line 1312
    :cond_b
    :goto_5
    return-void

    .line 1262
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JewishDate.forward() does not support amounts less than 1. See JewishDate.back()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public getAbsDate()I
    .locals 1

    .line 387
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    return v0
.end method

.method public getChalakimSinceMoladTohu()J
    .locals 2

    .line 560
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    invoke-static {v0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getChalakimSinceMoladTohu(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCheshvanKislevKviah()I
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isCheshvanLong()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isKislevShort()Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    const/4 v0, 0x2

    return v0

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isCheshvanLong()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isKislevShort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    const/4 v0, 0x0

    return v0

    .line 795
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .line 1480
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    return v0
.end method

.method public getDaysInJewishMonth()I
    .locals 2

    .line 824
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishMonth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v0

    return v0
.end method

.method public getDaysInJewishYear()I
    .locals 1

    .line 727
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishYear(I)I

    move-result v0

    return v0
.end method

.method public getDaysSinceStartOfJewishYear()I
    .locals 3

    .line 966
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishMonth()I

    move-result v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishDayOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysSinceStartOfJewishYear(III)I

    move-result v0

    return v0
.end method

.method public getGregorianCalendar()Ljava/util/Calendar;
    .locals 4

    .line 1202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1203
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 1204
    return-object v0
.end method

.method public getGregorianDayOfMonth()I
    .locals 1

    .line 1433
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    return v0
.end method

.method public getGregorianMonth()I
    .locals 1

    .line 1424
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getGregorianYear()I
    .locals 1

    .line 1442
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    return v0
.end method

.method public getJewishDayOfMonth()I
    .locals 1

    .line 1462
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    return v0
.end method

.method public getJewishMonth()I
    .locals 1

    .line 1453
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    return v0
.end method

.method public getJewishYear()I
    .locals 1

    .line 1471
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    return v0
.end method

.method getLastDayOfGregorianMonth(I)I
    .locals 1
    .param p1, "month"    # I

    .line 301
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    invoke-static {p1, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getLastDayOfGregorianMonth(II)I

    move-result v0

    return v0
.end method

.method public getLocalDate()Ljava/time/LocalDate;
    .locals 3

    .line 1213
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianDayOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public getMolad()Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    .locals 3

    .line 881
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getChalakimSinceMoladTohu()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(J)V

    .line 882
    .local v0, "moladDate":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getMoladHours()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 883
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->forward(II)V

    .line 885
    :cond_0
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getMoladHours()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    rem-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setMoladHours(I)V

    .line 886
    return-object v0
.end method

.method public getMoladChalakim()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladChalakim:I

    return v0
.end method

.method public getMoladHours()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladHours:I

    return v0
.end method

.method public getMoladMinutes()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladMinutes:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1582
    const/16 v0, 0x11

    .line 1583
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1584
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 1585
    return v1
.end method

.method public isCheshvanLong()Z
    .locals 1

    .line 752
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isCheshvanLong(I)Z

    move-result v0

    return v0
.end method

.method isGregorianLeapYear(I)Z
    .locals 1
    .param p1, "year"    # I

    .line 311
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJewishLeapYear()Z
    .locals 1

    .line 434
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public isKislevShort()Z
    .locals 1

    .line 776
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isKislevShort(I)Z

    move-result v0

    return v0
.end method

.method public resetDate()V
    .locals 1

    .line 1220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1221
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/util/Calendar;)V

    .line 1222
    return-void
.end method

.method public setDate(Ljava/time/LocalDate;)V
    .locals 4
    .param p1, "localDate"    # Ljava/time/LocalDate;

    .line 1077
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1078
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 1079
    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/util/Calendar;)V

    .line 1080
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1045
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    .line 1046
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    .line 1047
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    .line 1048
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-static {v0, v2, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDateToAbsDate(III)I

    move-result v0

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 1049
    invoke-direct {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->absDateToJewishDate()V

    .line 1051
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    rem-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 1052
    return-void

    .line 1042
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calendars with a BC era are not supported. The year "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1043
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BC is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .line 1063
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1064
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1065
    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setDate(Ljava/util/Calendar;)V

    .line 1066
    return-void
.end method

.method public setGregorianDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 1097
    invoke-static {p1, p2, p3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->validateGregorianDate(III)V

    .line 1098
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 1099
    return-void
.end method

.method public setGregorianDayOfMonth(I)V
    .locals 2
    .param p1, "dayOfMonth"    # I

    .line 1519
    invoke-static {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->validateGregorianDayOfMonth(I)V

    .line 1520
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    invoke-direct {p0, v0, v1, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 1521
    return-void
.end method

.method public setGregorianMonth(I)V
    .locals 3
    .param p1, "month"    # I

    .line 1493
    invoke-static {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->validateGregorianMonth(I)V

    .line 1494
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianYear:I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 1495
    return-void
.end method

.method public setGregorianYear(I)V
    .locals 2
    .param p1, "year"    # I

    .line 1506
    invoke-static {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->validateGregorianYear(I)V

    .line 1507
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianMonth:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianDayOfMonth:I

    invoke-direct {p0, p1, v0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setInternalGregorianDate(III)V

    .line 1508
    return-void
.end method

.method public setJewishDate(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 1144
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "year":I
    .end local p2    # "month":I
    .end local p3    # "dayOfMonth":I
    .local v1, "year":I
    .local v2, "month":I
    .local v3, "dayOfMonth":I
    invoke-virtual/range {v0 .. v6}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishDate(IIIIII)V

    .line 1145
    return-void
.end method

.method public setJewishDate(IIIIII)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hours"    # I
    .param p5, "minutes"    # I
    .param p6, "chalakim"    # I

    .line 1175
    invoke-static/range {p1 .. p6}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->validateJewishDate(IIIIII)V

    .line 1179
    invoke-static {p2, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1180
    invoke-static {p2, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDaysInJewishMonth(II)I

    move-result p3

    .line 1183
    :cond_0
    iput p2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    .line 1184
    iput p3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    .line 1185
    iput p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    .line 1186
    iput p4, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladHours:I

    .line 1187
    iput p5, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladMinutes:I

    .line 1188
    iput p6, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladChalakim:I

    .line 1190
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    iget v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDateToAbsDate(III)I

    move-result v0

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    .line 1191
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    invoke-direct {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->absDateToDate(I)V

    .line 1193
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->gregorianAbsDate:I

    rem-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->dayOfWeek:I

    .line 1194
    return-void
.end method

.method public setJewishDayOfMonth(I)V
    .locals 2
    .param p1, "dayOfMonth"    # I

    .line 1558
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 1559
    return-void
.end method

.method public setJewishMonth(I)V
    .locals 2
    .param p1, "month"    # I

    .line 1533
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishYear:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 1534
    return-void
.end method

.method public setJewishYear(I)V
    .locals 2
    .param p1, "year"    # I

    .line 1546
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishMonth:I

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->jewishDay:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 1547
    return-void
.end method

.method public setMoladChalakim(I)V
    .locals 0
    .param p1, "moladChalakim"    # I

    .line 276
    iput p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladChalakim:I

    .line 277
    return-void
.end method

.method public setMoladHours(I)V
    .locals 0
    .param p1, "moladHours"    # I

    .line 228
    iput p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladHours:I

    .line 229
    return-void
.end method

.method public setMoladMinutes(I)V
    .locals 0
    .param p1, "moladMinutes"    # I

    .line 259
    iput p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->moladMinutes:I

    .line 260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1232
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;-><init>()V

    invoke-virtual {v0, p0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->format(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

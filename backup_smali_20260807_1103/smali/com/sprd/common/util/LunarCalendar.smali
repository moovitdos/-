.class public Lcom/sprd/common/util/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;
    }
.end annotation


# static fields
.field private static mFestivalStr:[Ljava/lang/String;

.field private static mHasInitialedRes:Z

.field private static mLunarCalendarNumber:[Ljava/lang/String;

.field private static mLunarCalendarTen:[Ljava/lang/String;

.field private static mLunarLeapTag:Ljava/lang/String;

.field private static mLunarMonthTag:Ljava/lang/String;

.field private static mLunarTerm:[Ljava/lang/String;

.field private static mSpecialSolarTermDates:[Ljava/lang/String;

.field private static mTraditionalFestivalStr:[Ljava/lang/String;

.field private static mYearBranchStr:[Ljava/lang/String;

.field private static mYearOfBirth:[Ljava/lang/String;

.field private static mYearStemStr:[Ljava/lang/String;

.field private static sSpecialSolarTermDatesMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static zhengyueTag:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field public mIsFastival:Z

.field public mIsLeapMonth:Z

.field public mLunarDay:I

.field public mLunarMonth:I

.field public mLunarYear:I

.field public mSolarDay:I

.field public mSolarMonth:I

.field public mSolarYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    .line 14
    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    .line 16
    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarLeapTag:Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarMonthTag:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->zhengyueTag:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->sSpecialSolarTermDatesMap:Landroid/util/LongSparseArray;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprd/common/util/LunarCalendar;->mHasInitialedRes:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarYear:I

    .line 25
    iput v0, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarMonth:I

    .line 27
    iput v0, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarDay:I

    .line 29
    iput v0, p0, Lcom/sprd/common/util/LunarCalendar;->mSolarYear:I

    .line 31
    iput v0, p0, Lcom/sprd/common/util/LunarCalendar;->mSolarMonth:I

    .line 33
    iput v0, p0, Lcom/sprd/common/util/LunarCalendar;->mSolarDay:I

    .line 35
    iput-boolean v0, p0, Lcom/sprd/common/util/LunarCalendar;->mIsLeapMonth:Z

    .line 37
    iput-boolean v0, p0, Lcom/sprd/common/util/LunarCalendar;->mIsFastival:Z

    .line 59
    iput-object p1, p0, Lcom/sprd/common/util/LunarCalendar;->mContext:Landroid/content/Context;

    .line 60
    sget-boolean v0, Lcom/sprd/common/util/LunarCalendar;->mHasInitialedRes:Z

    if-nez v0, :cond_0

    .line 61
    invoke-static {p1}, Lcom/sprd/common/util/LunarCalendar;->reloadLanguageResources(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprd/common/util/LunarCalendar;->mHasInitialedRes:Z

    .line 64
    :cond_0
    return-void
.end method

.method public static clearLanguageResourcesRefs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    sput-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    .line 212
    sput-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    .line 213
    sput-object v1, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    .line 214
    sput-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    .line 215
    sput-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    .line 216
    sput-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    .line 217
    sput-object v1, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    .line 218
    sput-object v1, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprd/common/util/LunarCalendar;->mHasInitialedRes:Z

    .line 220
    sput-object v1, Lcom/sprd/common/util/LunarCalendar;->mSpecialSolarTermDates:[Ljava/lang/String;

    .line 221
    return-void
.end method

.method private static generateSpecialSolarTermInfo([Ljava/lang/String;)V
    .locals 11
    .param p0, "specialSolarTermDates"    # [Ljava/lang/String;

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x0

    .line 549
    if-eqz p0, :cond_0

    .line 551
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 552
    .local v1, "dateStr":Ljava/lang/String;
    sget-object v5, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12

    const/16 v8, 0x14

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v5, v6

    .line 555
    .local v4, "term":Ljava/lang/String;
    sget-object v5, Lcom/sprd/common/util/LunarCalendar;->sSpecialSolarTermDatesMap:Landroid/util/LongSparseArray;

    const/16 v6, 0x8

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;

    invoke-direct {v8, v1, v4, v9}, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 559
    sget-object v5, Lcom/sprd/common/util/LunarCalendar;->sSpecialSolarTermDatesMap:Landroid/util/LongSparseArray;

    const/16 v6, 0x11

    invoke-virtual {v1, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;

    invoke-direct {v8, v1, v4, v10}, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dateStr":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "term":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getChinaDayString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "notDisplayLunarMonthForFirstDay"    # Z

    .prologue
    .line 392
    iget v0, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarMonth:I

    iget v1, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarDay:I

    iget-boolean v2, p0, Lcom/sprd/common/util/LunarCalendar;->mIsLeapMonth:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sprd/common/util/LunarCalendar;->getChinaDayString(IIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChinaMonthString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarMonth:I

    iget-boolean v1, p0, Lcom/sprd/common/util/LunarCalendar;->mIsLeapMonth:Z

    invoke-direct {p0, v0, v1}, Lcom/sprd/common/util/LunarCalendar;->getChinaMonthString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChinaMonthString(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "lunarMonth"    # I
    .param p2, "isLeapMonth"    # Z

    .prologue
    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarLeapTag:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->zhengyueTag:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sprd/common/util/LunarCalendar;->mLunarMonthTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "chinaMonth":Ljava/lang/String;
    return-object v0

    .line 385
    .end local v0    # "chinaMonth":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aget-object v1, v1, v3

    goto :goto_1
.end method

.method private getChinaYearString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarYear:I

    invoke-direct {p0, v0}, Lcom/sprd/common/util/LunarCalendar;->getChinaYearString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChinaYearString(I)Ljava/lang/String;
    .locals 1
    .param p1, "lunarYear"    # I

    .prologue
    .line 420
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFestival(II)Ljava/lang/String;
    .locals 7
    .param p1, "solarMonth"    # I
    .param p2, "solarDay"    # I

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xa

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 290
    const-string v0, ""

    .line 292
    .local v0, "festivalStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 294
    :pswitch_1
    if-ne p2, v2, :cond_0

    .line 295
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_0

    .line 299
    :pswitch_2
    const/16 v1, 0xe

    if-ne p2, v1, :cond_0

    .line 300
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    aget-object v0, v1, v2

    goto :goto_0

    .line 304
    :pswitch_3
    if-ne p2, v4, :cond_1

    .line 305
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    goto :goto_0

    .line 306
    :cond_1
    if-ne p2, v6, :cond_0

    .line 307
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    goto :goto_0

    .line 311
    :pswitch_4
    if-ne p2, v2, :cond_0

    .line 312
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    aget-object v0, v1, v6

    goto :goto_0

    .line 316
    :pswitch_5
    if-ne p2, v2, :cond_2

    .line 317
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    .line 318
    :cond_2
    if-ne p2, v3, :cond_0

    .line 319
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v0, v1, v2

    goto :goto_0

    .line 323
    :pswitch_6
    if-ne p2, v2, :cond_0

    .line 324
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v1, v2

    goto :goto_0

    .line 328
    :pswitch_7
    if-ne p2, v2, :cond_0

    .line 329
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v1, v2

    goto :goto_0

    .line 333
    :pswitch_8
    if-ne p2, v2, :cond_0

    .line 334
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    aget-object v0, v1, v4

    goto :goto_0

    .line 338
    :pswitch_9
    if-ne p2, v5, :cond_0

    .line 339
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v0, v1, v2

    goto :goto_0

    .line 343
    :pswitch_a
    if-ne p2, v2, :cond_0

    .line 344
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    aget-object v0, v1, v5

    goto :goto_0

    .line 348
    :pswitch_b
    const/16 v1, 0x19

    if-ne p2, v1, :cond_0

    .line 349
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v0, v1, v2

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private getLunarYearString(I)Ljava/lang/String;
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    rem-int/lit8 v3, p1, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    rem-int/lit8 v3, p1, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method private getSolarTerm(III)Ljava/lang/String;
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .prologue
    .line 362
    const-string v1, ""

    .line 363
    .local v1, "termStr":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Lcom/sprd/common/util/LunarCalendar;->getSpecialSolarTermInfo(III)Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;

    move-result-object v0

    .line 364
    .local v0, "info":Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->mIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 365
    iget v2, v0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->mIndex:I

    if-eqz v2, :cond_0

    .line 366
    iget-object v1, v0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->mTermStr:Ljava/lang/String;

    .line 377
    :cond_0
    :goto_0
    return-object v1

    .line 369
    :cond_1
    mul-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->getSolarTermDayOfMonth(II)I

    move-result v2

    if-ne p3, v2, :cond_2

    .line 371
    sget-object v2, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    mul-int/lit8 v3, p2, 0x2

    aget-object v1, v2, v3

    goto :goto_0

    .line 372
    :cond_2
    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->getSolarTermDayOfMonth(II)I

    move-result v2

    if-ne p3, v2, :cond_0

    .line 374
    sget-object v2, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v2, v3

    goto :goto_0
.end method

.method private static getSpecialSolarTermInfo(III)Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;
    .locals 5
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 537
    mul-int/lit16 v3, p0, 0x2710

    add-int/lit8 v4, p1, 0x1

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    int-to-long v1, v3

    .line 539
    .local v1, "key":J
    sget-object v3, Lcom/sprd/common/util/LunarCalendar;->sSpecialSolarTermDatesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;

    .line 541
    .local v0, "info":Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->copySelf()Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;

    move-result-object v3

    .line 544
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reloadLanguageResources(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    .line 70
    :cond_0
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const v1, 0x7f080028

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 71
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const v1, 0x7f080029

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 72
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const v1, 0x7f08002a

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 73
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const v1, 0x7f08002b

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 74
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const v1, 0x7f08002c

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 75
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f08002d

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 76
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const/4 v1, 0x6

    const v2, 0x7f08002e

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 77
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const/4 v1, 0x7

    const v2, 0x7f08002f

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 78
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const/16 v1, 0x8

    const v2, 0x7f080030

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const/16 v1, 0x9

    const v2, 0x7f080031

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 80
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const/16 v1, 0xa

    const v2, 0x7f080032

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 81
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    const/16 v1, 0xb

    const v2, 0x7f080033

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 83
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    .line 86
    :cond_1
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    const v1, 0x7f080034

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 87
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    const v1, 0x7f080035

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 88
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    const v1, 0x7f080036

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 89
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    const v1, 0x7f080037

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 90
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    const v1, 0x7f080038

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 92
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 93
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    .line 95
    :cond_2
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const v1, 0x7f080039

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 96
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const v1, 0x7f08003a

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 97
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const v1, 0x7f08003b

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 98
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const v1, 0x7f08003c

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 99
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const v1, 0x7f08003d

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 100
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f08003e

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 101
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const/4 v1, 0x6

    const v2, 0x7f08003f

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const/4 v1, 0x7

    const v2, 0x7f080040

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 103
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const/16 v1, 0x8

    const v2, 0x7f080041

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 104
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const/16 v1, 0x9

    const v2, 0x7f080042

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const/16 v1, 0xa

    const v2, 0x7f080043

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 106
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    const/16 v1, 0xb

    const v2, 0x7f080044

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    const v0, 0x7f08005b

    invoke-static {p0, v0}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarLeapTag:Ljava/lang/String;

    .line 109
    const v0, 0x7f08005c

    invoke-static {p0, v0}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarMonthTag:Ljava/lang/String;

    .line 110
    const v0, 0x7f08005d

    invoke-static {p0, v0}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->zhengyueTag:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 113
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    .line 115
    :cond_3
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const v1, 0x7f08005e

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 116
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const v1, 0x7f08005f

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 117
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const v1, 0x7f080060

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 118
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const v1, 0x7f080061

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 119
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const v1, 0x7f080062

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 120
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f080063

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 121
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/4 v1, 0x6

    const v2, 0x7f080064

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 122
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/4 v1, 0x7

    const v2, 0x7f080065

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 123
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x8

    const v2, 0x7f080066

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 124
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x9

    const v2, 0x7f080067

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0xa

    const v2, 0x7f080068

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 126
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0xb

    const v2, 0x7f080069

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 127
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0xc

    const v2, 0x7f08006a

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 128
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0xd

    const v2, 0x7f08006b

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 129
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0xe

    const v2, 0x7f08006c

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 130
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0xf

    const v2, 0x7f08006d

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 131
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x10

    const v2, 0x7f08006e

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 132
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x11

    const v2, 0x7f08006f

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 133
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x12

    const v2, 0x7f080070

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 134
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x13

    const v2, 0x7f080071

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 135
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x14

    const v2, 0x7f080072

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 136
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x15

    const v2, 0x7f080073

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 137
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x16

    const v2, 0x7f080074

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 138
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mLunarTerm:[Ljava/lang/String;

    const/16 v1, 0x17

    const v2, 0x7f080075

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 140
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    if-nez v0, :cond_4

    .line 141
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    .line 143
    :cond_4
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const v1, 0x7f080076

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 144
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const v1, 0x7f080077

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 145
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const v1, 0x7f080078

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 146
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const v1, 0x7f08007e

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 147
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const v1, 0x7f080079

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 148
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f08007a

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 149
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const/4 v1, 0x6

    const v2, 0x7f08007b

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 150
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const/4 v1, 0x7

    const v2, 0x7f08007c

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 151
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const/16 v1, 0x8

    const v2, 0x7f08007d

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 153
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    if-nez v0, :cond_5

    .line 154
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    .line 156
    :cond_5
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const v1, 0x7f08007f

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 157
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const v1, 0x7f080080

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 158
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const v1, 0x7f080081

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 159
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const v1, 0x7f080082

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 160
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const v1, 0x7f080084

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 161
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f080085

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 162
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/4 v1, 0x6

    const v2, 0x7f080086

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 163
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/4 v1, 0x7

    const v2, 0x7f080087

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 164
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/16 v1, 0x8

    const v2, 0x7f080088

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 165
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/16 v1, 0x9

    const v2, 0x7f080089

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 166
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/16 v1, 0xa

    const v2, 0x7f08008a

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 167
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/16 v1, 0xb

    const v2, 0x7f08008b

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mFestivalStr:[Ljava/lang/String;

    const/16 v1, 0xc

    const v2, 0x7f080083

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 170
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    if-nez v0, :cond_6

    .line 171
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    .line 173
    :cond_6
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const v1, 0x7f080045

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 174
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const v1, 0x7f080046

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 175
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const v1, 0x7f080047

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 176
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const v1, 0x7f080048

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 177
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const v1, 0x7f080049

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 178
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f08004a

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 179
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const/4 v1, 0x6

    const v2, 0x7f08004b

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 180
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const/4 v1, 0x7

    const v2, 0x7f08004c

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 181
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const/16 v1, 0x8

    const v2, 0x7f08004d

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearStemStr:[Ljava/lang/String;

    const/16 v1, 0x9

    const v2, 0x7f08004e

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 184
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    if-nez v0, :cond_7

    .line 185
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    .line 187
    :cond_7
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const v1, 0x7f08004f

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 188
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const v1, 0x7f080050

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 189
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const v1, 0x7f080051

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 190
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const v1, 0x7f080052

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 191
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const v1, 0x7f080053

    invoke-static {p0, v1}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 192
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f080054

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 193
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const/4 v1, 0x6

    const v2, 0x7f080055

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 194
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const/4 v1, 0x7

    const v2, 0x7f080056

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 195
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const/16 v1, 0x8

    const v2, 0x7f080057

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 196
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const/16 v1, 0x9

    const v2, 0x7f080058

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 197
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const/16 v1, 0xa

    const v2, 0x7f080059

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 198
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearBranchStr:[Ljava/lang/String;

    const/16 v1, 0xb

    const v2, 0x7f08005a

    invoke-static {p0, v2}, Lcom/sprd/common/util/LunarCalendar;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 200
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mSpecialSolarTermDates:[Ljava/lang/String;

    if-nez v0, :cond_8

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/LunarCalendar;->mSpecialSolarTermDates:[Ljava/lang/String;

    .line 204
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mSpecialSolarTermDates:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 205
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mSpecialSolarTermDates:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sprd/common/util/LunarCalendar;->generateSpecialSolarTermInfo([Ljava/lang/String;)V

    .line 208
    :cond_8
    return-void
.end method


# virtual methods
.method public animalsYear(I)Ljava/lang/String;
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 434
    sget-object v0, Lcom/sprd/common/util/LunarCalendar;->mYearOfBirth:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getChinaDayString(IIZZ)Ljava/lang/String;
    .locals 4
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "isLeapMonth"    # Z
    .param p4, "notDisplayLunarMonthForFirstDay"    # Z

    .prologue
    const/4 v3, 0x1

    .line 398
    const/16 v0, 0x1e

    if-le p2, v0, :cond_0

    .line 399
    const-string v0, ""

    .line 411
    :goto_0
    return-object v0

    .line 401
    :cond_0
    if-ne p2, v3, :cond_1

    if-eqz p4, :cond_1

    .line 402
    invoke-direct {p0, p1, p3}, Lcom/sprd/common/util/LunarCalendar;->getChinaMonthString(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_1
    const/16 v0, 0xa

    if-ne p2, v0, :cond_2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_2
    const/16 v0, 0x14

    if-ne p2, v0, :cond_3

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarTen:[Ljava/lang/String;

    div-int/lit8 v2, p2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mLunarCalendarNumber:[Ljava/lang/String;

    add-int/lit8 v2, p2, 0x9

    rem-int/lit8 v2, v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFestival()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/sprd/common/util/LunarCalendar;->mSolarMonth:I

    iget v1, p0, Lcom/sprd/common/util/LunarCalendar;->mSolarDay:I

    invoke-direct {p0, v0, v1}, Lcom/sprd/common/util/LunarCalendar;->getFestival(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLunarCalendarInfo(Z)[Ljava/lang/String;
    .locals 9
    .param p1, "notDisplayLunarMonthForFirstDay"    # Z

    .prologue
    .line 438
    iget v6, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarYear:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarMonth:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarDay:I

    if-nez v6, :cond_1

    .line 439
    :cond_0
    const/4 v6, 0x0

    .line 450
    :goto_0
    return-object v6

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/sprd/common/util/LunarCalendar;->getChinaYearString()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "lunarYearStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sprd/common/util/LunarCalendar;->getChinaMonthString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "lunarMonthStr":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sprd/common/util/LunarCalendar;->getChinaDayString(Z)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "lunarDayStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprd/common/util/LunarCalendar;->getTraditionalFestival()Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, "traditionFestivalStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprd/common/util/LunarCalendar;->getFestival()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "festivalStr":Ljava/lang/String;
    iget v6, p0, Lcom/sprd/common/util/LunarCalendar;->mSolarYear:I

    iget v7, p0, Lcom/sprd/common/util/LunarCalendar;->mSolarMonth:I

    iget v8, p0, Lcom/sprd/common/util/LunarCalendar;->mSolarDay:I

    invoke-direct {p0, v6, v7, v8}, Lcom/sprd/common/util/LunarCalendar;->getSolarTerm(III)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "solarTermStr":Ljava/lang/String;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    const/4 v7, 0x4

    aput-object v0, v6, v7

    const/4 v7, 0x5

    aput-object v4, v6, v7

    goto :goto_0
.end method

.method public getLunarYear(I)Ljava/lang/String;
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 429
    add-int/lit16 v1, p1, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 430
    .local v0, "num":I
    invoke-direct {p0, v0}, Lcom/sprd/common/util/LunarCalendar;->getLunarYearString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTraditionalFestival()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    iget v0, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarYear:I

    iget v1, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarMonth:I

    iget v2, p0, Lcom/sprd/common/util/LunarCalendar;->mLunarDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sprd/common/util/LunarCalendar;->getTraditionalFestival(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraditionalFestival(III)Ljava/lang/String;
    .locals 7
    .param p1, "lunarYear"    # I
    .param p2, "lunarMonth"    # I
    .param p3, "lunarDay"    # I

    .prologue
    const/16 v6, 0xf

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 234
    iget-boolean v1, p0, Lcom/sprd/common/util/LunarCalendar;->mIsLeapMonth:Z

    if-eqz v1, :cond_1

    .line 235
    const-string v0, ""

    .line 282
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    const-string v0, ""

    .line 240
    .local v0, "festivalStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 242
    :pswitch_1
    if-ne p3, v2, :cond_2

    .line 243
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_0

    .line 244
    :cond_2
    if-ne p3, v6, :cond_0

    .line 245
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    aget-object v0, v1, v2

    goto :goto_0

    .line 249
    :pswitch_2
    if-ne p3, v3, :cond_0

    .line 250
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    goto :goto_0

    .line 254
    :pswitch_3
    if-ne p3, v4, :cond_0

    .line 255
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    goto :goto_0

    .line 259
    :pswitch_4
    if-ne p3, v6, :cond_0

    .line 260
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    goto :goto_0

    .line 264
    :pswitch_5
    const/16 v1, 0x9

    if-ne p3, v1, :cond_0

    .line 265
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    .line 269
    :pswitch_6
    if-ne p3, v5, :cond_3

    .line 270
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v1, v2

    goto :goto_0

    .line 271
    :cond_3
    const/16 v1, 0x17

    if-ne p3, v1, :cond_4

    .line 272
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    aget-object v0, v1, v4

    goto :goto_0

    .line 273
    :cond_4
    invoke-static {p1, p2}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->getLunarMonthDays(II)I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 275
    sget-object v1, Lcom/sprd/common/util/LunarCalendar;->mTraditionalFestivalStr:[Ljava/lang/String;

    aget-object v0, v1, v5

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.class public Lcom/sprd/common/util/LunarCalendarConvertUtil;
.super Ljava/lang/Object;
.source "LunarCalendarConvertUtil.java"


# static fields
.field private static final mAllLunarDays:[I

.field private static mBaseDayTime:J

.field private static mBeginYear:I

.field private static final mLunarCalendarBaseInfo:[S

.field private static final mLunarCalendarSpecialInfo:[B

.field private static final mLunarDays:[I

.field private static final mMilliSecondsForSolarTerm:J

.field private static final mOffDateCalendar:Ljava/util/Calendar;

.field private static final mSolarTermInfo:[J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v1, 0x96

    const/4 v2, 0x0

    .line 13
    new-array v0, v1, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mLunarCalendarBaseInfo:[S

    .line 31
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mLunarCalendarSpecialInfo:[B

    .line 46
    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mSolarTermInfo:[J

    .line 50
    const/16 v0, 0x47

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mAllLunarDays:[I

    .line 58
    const/16 v0, 0x51

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mLunarDays:[I

    .line 71
    const/16 v0, 0x7b1

    sput v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    .line 73
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBaseDayTime:J

    .line 81
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x1f

    invoke-direct {v0, v2, v2, v1}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBaseDayTime:J

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mOffDateCalendar:Ljava/util/Calendar;

    .line 84
    sget-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mOffDateCalendar:Ljava/util/Calendar;

    const/16 v1, 0x76c

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x5

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 85
    sget-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mOffDateCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mMilliSecondsForSolarTerm:J

    .line 86
    return-void

    .line 13
    nop

    :array_0
    .array-data 2
        0x4bds
        0x4aes
        0xa57s
        0x54ds
        0xd26s
        0xd95s
        0x655s
        0x56as
        0x9ads
        0x55ds
        0x4aes
        0xa5bs
        0xa4ds
        0xd25s
        0xd25s
        0xb54s
        0xd6as
        0xadas
        0x95bs
        0x497s
        0x497s
        0xa4bs
        0xb4bs
        0x6a5s
        0x6d4s
        0xab5s
        0x2b6s
        0x957s
        0x52fs
        0x497s
        0x656s
        0xd4as
        0xea5s
        0x6e9s
        0x5ads
        0x2b6s
        0x86es
        0x92es
        0xc8ds
        0xc95s
        0xd4as
        0xd8as
        0xb55s
        0x56as
        0xa5bs
        0x25ds
        0x92ds
        0xd2bs
        0xa95s
        0xb55s
        0x6cas
        0xb55s
        0x535s
        0x4das
        0xa5ds
        0x457s
        0x52ds
        0xa9as
        0xe95s
        0x6aas
        0xaeas
        0xab5s
        0x4b6s
        0xaaes
        0xa57s
        0x526s
        0xf26s
        0xd95s
        0x5b5s
        0x56as
        0x96ds
        0x4dds
        0x4ads
        0xa4ds
        0xd4ds
        0xd25s
        0xd55s
        0xb54s
        0xb5as
        0x95as
        0x95bs
        0x49bs
        0xa97s
        0xa4bs
        0xb27s
        0x6a5s
        0x6d4s
        0xaf4s
        0xab6s
        0x957s
        0x4afs
        0x497s
        0x64bs
        0x74as
        0xea5s
        0x6b5s
        0x55cs
        0xab6s
        0x96ds
        0x92es
        0xc96s
        0xd95s
        0xd4as
        0xda5s
        0x755s
        0x56as
        0xabbs
        0x25ds
        0x92ds
        0xcabs
        0xa95s
        0xb4as
        0xbaas
        0xad5s
        0x55ds
        0x4bas
        0xa5bs
        0x517s
        0x52bs
        0xa93s
        0x795s
        0x6aas
        0xad5s
        0x5b5s
        0x4b6s
        0xa6es
        0xa4es
        0xd26s
        0xea6s
        0xd53s
        0x5aas
        0x76as
        0x96ds
        0x4bds
        0x4ads
        0xa4ds
        0xd0bs
        0xd25s
        0xd52s
        0xdd4s
        0xb5as
        0x56ds
        0x55bs
        0x49bs
        0xa57s
        0xa4bs
        0xaa5s
        0xb25s
        0x6d2s
        0xadas
    .end array-data

    .line 31
    :array_1
    .array-data 1
        0x8t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x2t
        0x0t
        0x6t
        0x0t
        0x0t
        0x15t
        0x0t
        0x0t
        0x2t
        0x0t
        0x17t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x2t
        0x0t
        0x6t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x13t
        0x0t
        0x17t
        0x0t
        0x0t
        0x16t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x15t
        0x0t
        0x0t
        0x13t
        0x0t
        0x8t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x3t
        0x0t
        0x7t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x4t
        0x0t
        0x8t
        0x0t
        0x0t
        0x16t
        0x0t
        0x0t
        0x4t
        0x0t
        0xat
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x3t
        0x0t
        0x8t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x4t
        0x0t
        0x9t
        0x0t
        0x0t
        0x16t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x2t
        0x0t
        0x6t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x3t
        0x0t
        0x7t
        0x0t
        0x0t
        0x16t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x15t
        0x0t
        0x0t
    .end array-data

    .line 46
    nop

    :array_2
    .array-data 8
        0x0
        0x52d8
        0xa5e3
        0xf95c
        0x14d59
        0x1a206
        0x1f763
        0x24d89
        0x2a45d
        0x2fbdf
        0x353d8
        0x3ac35
        0x404af
        0x45d25
        0x4b553
        0x50d19
        0x56446
        0x5bac6
        0x61087
        0x6658a
        0x6b9db
        0x70d90
        0x760cc
        0x7b3b6
    .end array-data

    .line 50
    :array_3
    .array-data 4
        0x6283
        0x63e5
        0x6548
        0x66c8
        0x682a
        0x698c
        0x6b0c
        0x6c6e
        0x6dee
        0x6f50
        0x70b3
        0x7233
        0x7396
        0x74f8
        0x7678
        0x77da
        0x795a
        0x7abc
        0x7c1e
        0x7d9e
        0x7f01
        0x8064
        0x81e4
        0x8346
        0x84a8
        0x8627
        0x878a
        0x890a
        0x8a6c
        0x8bcf
        0x8d4f
        0x8eb1
        0x9013
        0x9193
        0x92f5
        0x9458
        0x95d8
        0x973a
        0x98bb
        0x9a1d
        0x9b7f
        0x9cff
        0x9e61
        0x9fc3
        0xa143
        0xa2a6
        0xa426
        0xa588
        0xa6eb
        0xa86b
        0xa9cd
        0xab2f
        0xacaf
        0xae11
        0xaf74
        0xb0f4
        0xb256
        0xb3d6
        0xb538
        0xb69a
        0xb81a
        0xb97d
        0xbadf
        0xbc5f
        0xbdc2
        0xbf42
        0xc0a4
        0xc206
        0xc386
        0xc4e8
        0xc64a
    .end array-data

    .line 58
    :array_4
    .array-data 4
        0x162
        0x163
        0x180
        0x162
        0x162
        0x180
        0x162
        0x180
        0x162
        0x163
        0x180
        0x163
        0x162
        0x180
        0x162
        0x180
        0x162
        0x162
        0x180
        0x163
        0x163
        0x180
        0x162
        0x162
        0x17f
        0x163
        0x180
        0x162
        0x163
        0x180
        0x162
        0x162
        0x180
        0x162
        0x163
        0x180
        0x162
        0x181
        0x162
        0x162
        0x180
        0x162
        0x162
        0x180
        0x163
        0x180
        0x162
        0x163
        0x180
        0x162
        0x162
        0x180
        0x162
        0x163
        0x180
        0x162
        0x180
        0x162
        0x162
        0x180
        0x163
        0x162
        0x180
        0x163
        0x180
        0x162
        0x162
        0x180
        0x162
        0x162
        0x180
        0x163
        0x163
        0x180
        0x162
        0x180
        0x162
        0x162
        0x180
        0x162
        0x163
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildLunarMonthDay(Landroid/text/format/Time;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 289
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v0, "dayString":Ljava/lang/StringBuffer;
    new-instance v2, Lcom/sprd/common/util/LunarCalendar;

    invoke-direct {v2, p1}, Lcom/sprd/common/util/LunarCalendar;-><init>(Landroid/content/Context;)V

    .line 291
    .local v2, "lunarInfo":Lcom/sprd/common/util/LunarCalendar;
    iget v3, p0, Landroid/text/format/Time;->year:I

    iget v4, p0, Landroid/text/format/Time;->month:I

    iget v5, p0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3, v4, v5, v2}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->parseLunarCalendar(IIILcom/sprd/common/util/LunarCalendar;)V

    .line 294
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sprd/common/util/LunarCalendar;->getLunarCalendarInfo(Z)[Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "detailInfo":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    :cond_0
    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static bulidLunarYear(Landroid/text/format/Time;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    new-instance v0, Lcom/sprd/common/util/LunarCalendar;

    invoke-direct {v0, p1}, Lcom/sprd/common/util/LunarCalendar;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "lunarInfo":Lcom/sprd/common/util/LunarCalendar;
    iget v2, p0, Landroid/text/format/Time;->year:I

    const/16 v3, 0x7b2

    if-lt v2, v3, :cond_0

    iget v2, p0, Landroid/text/format/Time;->year:I

    const/16 v3, 0x7f5

    if-le v2, v3, :cond_1

    .line 280
    :cond_0
    const/4 v2, 0x0

    .line 285
    :goto_0
    return-object v2

    .line 283
    :cond_1
    iget v2, p0, Landroid/text/format/Time;->year:I

    iget v3, p0, Landroid/text/format/Time;->month:I

    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2, v3, v4, v0}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->parseLunarCalendarYear(IIILcom/sprd/common/util/LunarCalendar;)V

    .line 284
    iget v2, v0, Lcom/sprd/common/util/LunarCalendar;->mLunarYear:I

    invoke-virtual {v0, v2}, Lcom/sprd/common/util/LunarCalendar;->getLunarYear(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "lunaryearString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/sprd/common/util/LunarCalendar;->mLunarYear:I

    invoke-virtual {v0, v3}, Lcom/sprd/common/util/LunarCalendar;->animalsYear(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getLanguageEnv()Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 259
    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "country":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    const-string v3, "cn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    const-string v2, "zh-CN"

    .line 274
    :cond_0
    :goto_0
    return-object v2

    .line 264
    :cond_1
    const-string v3, "tw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const-string v2, "zh-TW"

    goto :goto_0

    .line 267
    :cond_2
    const-string v3, "pt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    const-string v3, "br"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    const-string v2, "pt-BR"

    goto :goto_0

    .line 270
    :cond_3
    const-string v3, "pt"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    const-string v2, "pt-PT"

    goto :goto_0
.end method

.method public static final getLeapMonth(I)I
    .locals 2
    .param p0, "lunarYear"    # I

    .prologue
    .line 123
    sget-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mLunarCalendarSpecialInfo:[B

    add-int/lit16 v1, p0, -0x76c

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static final getLeapMonthDays(I)I
    .locals 2
    .param p0, "lunarYear"    # I

    .prologue
    .line 127
    invoke-static {p0}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->getLeapMonth(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_0
    sget-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mLunarCalendarSpecialInfo:[B

    add-int/lit16 v1, p0, -0x76c

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 130
    const/16 v0, 0x1e

    goto :goto_0

    .line 132
    :cond_1
    const/16 v0, 0x1d

    goto :goto_0
.end method

.method public static getLunarMonthDays(II)I
    .locals 1
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->isLunarBigMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/16 v0, 0x1e

    .line 101
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0
.end method

.method public static getSolarTermDayOfMonth(II)I
    .locals 8
    .param p0, "year"    # I
    .param p1, "n"    # I

    .prologue
    .line 92
    sget-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mOffDateCalendar:Ljava/util/Calendar;

    new-instance v1, Ljava/util/Date;

    const-wide v2, 0x421d63c1e85acccdL    # 3.15569259747E10

    add-int/lit16 v4, p0, -0x76c

    int-to-double v4, v4

    mul-double/2addr v2, v4

    sget-object v4, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mSolarTermInfo:[J

    aget-wide v4, v4, p1

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    long-to-double v4, v4

    add-double/2addr v2, v4

    sget-wide v4, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mMilliSecondsForSolarTerm:J

    long-to-double v4, v4

    add-double/2addr v2, v4

    double-to-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 94
    sget-object v0, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mOffDateCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static isLunarBigMonth(II)Z
    .locals 3
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I

    .prologue
    .line 106
    sget-object v1, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mLunarCalendarBaseInfo:[S

    add-int/lit16 v2, p0, -0x76c

    aget-short v0, v1, v2

    .line 107
    .local v0, "lunarYearBaseInfo":S
    const/16 v1, 0x1000

    ushr-int/2addr v1, p1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x1

    .line 110
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLunarSetting()Z
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->getLanguageEnv()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh-CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh-TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    :cond_0
    const/4 v1, 0x1

    .line 253
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseLunarCalendar(IIILcom/sprd/common/util/LunarCalendar;)V
    .locals 15
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "lunarCalendar"    # Lcom/sprd/common/util/LunarCalendar;

    .prologue
    .line 138
    if-nez p3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v5, 0x0

    .line 143
    .local v5, "leapLunarMonth":I
    const/4 v10, 0x0

    .line 144
    .local v10, "presentDate":Ljava/util/Date;
    const/4 v4, 0x0

    .line 145
    .local v4, "isLeapMonth":Z
    new-instance v10, Ljava/util/Date;

    .end local v10    # "presentDate":Ljava/util/Date;
    add-int/lit16 v11, p0, -0x76c

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v10, v11, v0, v1}, Ljava/util/Date;-><init>(III)V

    .line 148
    .restart local v10    # "presentDate":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sget-wide v13, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBaseDayTime:J

    sub-long/2addr v11, v13

    long-to-double v11, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v11, v13

    const-wide v13, 0x4194997000000000L    # 8.64E7

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v9, v11

    .line 151
    .local v9, "offsetDayNum":I
    add-int/lit8 v11, p0, -0x1

    sput v11, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    .line 152
    sget v11, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    const/16 v12, 0x7b1

    if-ge v11, v12, :cond_2

    .line 153
    const/16 v11, 0x7b1

    sput v11, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    .line 155
    :cond_2
    sget-object v11, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mAllLunarDays:[I

    sget v12, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    add-int/lit16 v12, v12, -0x7b1

    aget v11, v11, v12

    sub-int/2addr v9, v11

    .line 157
    const/4 v8, 0x0

    .line 158
    .local v8, "lunarYear":I
    const/4 v7, 0x0

    .line 159
    .local v7, "lunarMonth":I
    const/4 v6, 0x0

    .line 161
    .local v6, "lunarDay":I
    sget v8, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    :goto_1
    const/16 v11, 0x802

    if-ge v8, v11, :cond_3

    .line 162
    sget-object v11, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mLunarDays:[I

    add-int/lit16 v12, v8, -0x7b1

    aget v3, v11, v12

    .line 163
    .local v3, "daysOfLunarYear":I
    if-ge v9, v3, :cond_5

    .line 168
    .end local v3    # "daysOfLunarYear":I
    :cond_3
    if-ltz v9, :cond_0

    const/16 v11, 0x802

    if-eq v8, v11, :cond_0

    .line 172
    invoke-static {v8}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->getLeapMonth(I)I

    move-result v5

    .line 174
    const/4 v7, 0x1

    :goto_2
    const/16 v11, 0xc

    if-gt v7, v11, :cond_4

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "daysOfLunarMonth":I
    if-eqz v4, :cond_6

    .line 177
    invoke-static {v8}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->getLeapMonthDays(I)I

    move-result v2

    .line 182
    :goto_3
    if-ge v9, v2, :cond_7

    .line 197
    .end local v2    # "daysOfLunarMonth":I
    :cond_4
    add-int/lit8 v6, v9, 0x1

    .line 199
    move-object/from16 v0, p3

    iput v8, v0, Lcom/sprd/common/util/LunarCalendar;->mLunarYear:I

    .line 200
    move-object/from16 v0, p3

    iput v7, v0, Lcom/sprd/common/util/LunarCalendar;->mLunarMonth:I

    .line 201
    move-object/from16 v0, p3

    iput v6, v0, Lcom/sprd/common/util/LunarCalendar;->mLunarDay:I

    .line 202
    move-object/from16 v0, p3

    iput-boolean v4, v0, Lcom/sprd/common/util/LunarCalendar;->mIsLeapMonth:Z

    .line 204
    move-object/from16 v0, p3

    iput p0, v0, Lcom/sprd/common/util/LunarCalendar;->mSolarYear:I

    .line 205
    move/from16 v0, p1

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sprd/common/util/LunarCalendar;->mSolarMonth:I

    .line 206
    move/from16 v0, p2

    move-object/from16 v1, p3

    iput v0, v1, Lcom/sprd/common/util/LunarCalendar;->mSolarDay:I

    goto/16 :goto_0

    .line 166
    .restart local v3    # "daysOfLunarYear":I
    :cond_5
    sub-int/2addr v9, v3

    .line 161
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 179
    .end local v3    # "daysOfLunarYear":I
    .restart local v2    # "daysOfLunarMonth":I
    :cond_6
    invoke-static {v8, v7}, Lcom/sprd/common/util/LunarCalendarConvertUtil;->getLunarMonthDays(II)I

    move-result v2

    goto :goto_3

    .line 185
    :cond_7
    sub-int/2addr v9, v2

    .line 186
    if-ne v7, v5, :cond_8

    .line 187
    if-nez v4, :cond_9

    .line 188
    add-int/lit8 v7, v7, -0x1

    .line 189
    const/4 v4, 0x1

    .line 174
    :cond_8
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 191
    :cond_9
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public static parseLunarCalendarYear(IIILcom/sprd/common/util/LunarCalendar;)V
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "lunarCalendar"    # Lcom/sprd/common/util/LunarCalendar;

    .prologue
    const/16 v9, 0x802

    const/16 v8, 0x7b1

    .line 212
    if-nez p3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v3, 0x0

    .line 217
    .local v3, "presentDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    .end local v3    # "presentDate":Ljava/util/Date;
    add-int/lit16 v4, p0, -0x76c

    invoke-direct {v3, v4, p1, p2}, Ljava/util/Date;-><init>(III)V

    .line 220
    .restart local v3    # "presentDate":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBaseDayTime:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 223
    .local v2, "offsetDayNum":I
    add-int/lit8 v4, p0, -0x1

    sput v4, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    .line 224
    sget v4, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    if-ge v4, v8, :cond_2

    .line 225
    sput v8, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    .line 227
    :cond_2
    sget-object v4, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mAllLunarDays:[I

    sget v5, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    add-int/lit16 v5, v5, -0x7b1

    aget v4, v4, v5

    sub-int/2addr v2, v4

    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, "lunarYear":I
    sget v1, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mBeginYear:I

    :goto_1
    if-ge v1, v9, :cond_3

    .line 232
    sget-object v4, Lcom/sprd/common/util/LunarCalendarConvertUtil;->mLunarDays:[I

    add-int/lit16 v5, v1, -0x7b1

    aget v0, v4, v5

    .line 233
    .local v0, "daysOfLunarYear":I
    if-ge v2, v0, :cond_4

    .line 238
    .end local v0    # "daysOfLunarYear":I
    :cond_3
    if-ltz v2, :cond_0

    if-eq v1, v9, :cond_0

    .line 242
    iput v1, p3, Lcom/sprd/common/util/LunarCalendar;->mLunarYear:I

    goto :goto_0

    .line 236
    .restart local v0    # "daysOfLunarYear":I
    :cond_4
    sub-int/2addr v2, v0

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

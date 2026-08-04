.class public Lcom/kosherjava/zmanim/ComplexZmanimCalendar;
.super Lcom/kosherjava/zmanim/ZmanimCalendar;
.source "ComplexZmanimCalendar.java"


# static fields
.field protected static final ZENITH_10_POINT_2:D = 100.2

.field protected static final ZENITH_11_DEGREES:D = 101.0

.field protected static final ZENITH_11_POINT_5:D = 101.5

.field protected static final ZENITH_13_POINT_24:D = 103.24

.field protected static final ZENITH_16_POINT_9:D = 106.9

.field protected static final ZENITH_19_DEGREES:D = 109.0

.field protected static final ZENITH_19_POINT_8:D = 109.8

.field protected static final ZENITH_1_POINT_583:D = 91.583

.field protected static final ZENITH_26_DEGREES:D = 116.0

.field protected static final ZENITH_3_POINT_65:D = 93.65

.field protected static final ZENITH_3_POINT_676:D = 93.676

.field protected static final ZENITH_3_POINT_7:D = 93.7

.field protected static final ZENITH_3_POINT_8:D = 93.8

.field protected static final ZENITH_4_POINT_37:D = 94.37

.field protected static final ZENITH_4_POINT_61:D = 94.61

.field protected static final ZENITH_4_POINT_8:D = 94.8

.field protected static final ZENITH_5_POINT_88:D = 95.88

.field protected static final ZENITH_5_POINT_95:D = 95.95

.field protected static final ZENITH_6_DEGREES:D = 96.0

.field protected static final ZENITH_6_POINT_45:D = 96.45

.field protected static final ZENITH_7_POINT_083:D = 97.08333333333333

.field protected static final ZENITH_7_POINT_65:D = 97.65

.field protected static final ZENITH_7_POINT_67:D = 97.67

.field protected static final ZENITH_9_POINT_3:D = 99.3

.field protected static final ZENITH_9_POINT_5:D = 99.5

.field protected static final ZENITH_9_POINT_75:D = 99.75

.field protected static final ZENITH_MINUS_2_POINT_1:D = 87.9

.field protected static final ZENITH_MINUS_2_POINT_8:D = 87.2

.field protected static final ZENITH_MINUS_3_POINT_05:D = 86.95


# instance fields
.field private ateretTorahSunsetOffset:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 451
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;-><init>()V

    .line 430
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    .line 452
    return-void
.end method

.method public constructor <init>(Lcom/kosherjava/zmanim/util/GeoLocation;)V
    .locals 2
    .param p1, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 441
    invoke-direct {p0, p1}, Lcom/kosherjava/zmanim/ZmanimCalendar;-><init>(Lcom/kosherjava/zmanim/util/GeoLocation;)V

    .line 430
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    .line 442
    return-void
.end method

.method private getMidnightLastNight()Ljava/util/Date;
    .locals 3

    .line 3591
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3593
    .local v0, "midnight":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3594
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3595
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3596
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3597
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private getMidnightTonight()Ljava/util/Date;
    .locals 3

    .line 3606
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3607
    .local v0, "midnight":Ljava/util/Calendar;
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 3608
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3609
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3610
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3611
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3612
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private getMoladBasedTime(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/Date;
    .locals 3
    .param p1, "moladBasedTime"    # Ljava/util/Date;
    .param p2, "alos"    # Ljava/util/Date;
    .param p3, "tzais"    # Ljava/util/Date;
    .param p4, "techila"    # Z

    .line 3393
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMidnightLastNight()Ljava/util/Date;

    move-result-object v0

    .line 3394
    .local v0, "lastMidnight":Ljava/util/Date;
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMidnightTonight()Ljava/util/Date;

    move-result-object v1

    .line 3395
    .local v1, "midnightTonigh":Ljava/util/Date;
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3396
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3403
    :cond_0
    return-object p1

    .line 3397
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p1, p3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3398
    return-object p3

    .line 3400
    :cond_2
    return-object p2

    .line 3405
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private getSunriseBaalHatanya()Ljava/util/Date;
    .locals 2

    .line 3838
    const-wide v0, 0x4056e54fdf3b645aL    # 91.583

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private getSunsetBaalHatanya()Ljava/util/Date;
    .locals 2

    .line 3869
    const-wide v0, 0x4056e54fdf3b645aL    # 91.583

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private getZmanisBasedOffset(D)Ljava/util/Date;
    .locals 5
    .param p1, "hours"    # D

    .line 3057
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v0

    .line 3058
    .local v0, "shaahZmanis":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 3062
    :cond_0
    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    .line 3063
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p1

    double-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 3065
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v2

    long-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p1

    double-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 3059
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getAlos120()Ljava/util/Date;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 972
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x6ddd00

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos120Zmanis()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1001
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-direct {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getZmanisBasedOffset(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos16Point1Degrees()Ljava/util/Date;
    .locals 2

    .line 1101
    const-wide v0, 0x405a866666666666L    # 106.1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos18Degrees()Ljava/util/Date;
    .locals 2

    .line 1044
    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos19Degrees()Ljava/util/Date;
    .locals 2

    .line 1063
    const-wide v0, 0x405b400000000000L    # 109.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos19Point8Degrees()Ljava/util/Date;
    .locals 2

    .line 1082
    const-wide v0, 0x405b733333333333L    # 109.8

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos26Degrees()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1030
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos60()Ljava/util/Date;
    .locals 3

    .line 852
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x36ee80

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos72Zmanis()Ljava/util/Date;
    .locals 2

    .line 872
    const-wide v0, -0x400ccccccccccccdL    # -1.2

    invoke-direct {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getZmanisBasedOffset(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos90()Ljava/util/Date;
    .locals 3

    .line 944
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x5265c0

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos90Zmanis()Ljava/util/Date;
    .locals 2

    .line 908
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    invoke-direct {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getZmanisBasedOffset(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos96()Ljava/util/Date;
    .locals 3

    .line 889
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x57e400

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlos96Zmanis()Ljava/util/Date;
    .locals 2

    .line 927
    const-wide v0, -0x4006666666666666L    # -1.6

    invoke-direct {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getZmanisBasedOffset(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlosBaalHatanya()Ljava/util/Date;
    .locals 2

    .line 3914
    const-wide v0, 0x405ab9999999999aL    # 106.9

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAteretTorahSunsetOffset()D
    .locals 2

    .line 2860
    iget-wide v0, p0, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    return-wide v0
.end method

.method public getBainHashmashosRT13Point24Degrees()Ljava/util/Date;
    .locals 2

    .line 2266
    const-wide v0, 0x4059cf5c28f5c28fL    # 103.24

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHashmashosRT13Point5MinutesBefore7Point083Degrees()Ljava/util/Date;
    .locals 3

    .line 2315
    const-wide v0, 0x4058455555555555L    # 97.08333333333333

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    const-wide v1, -0x3ed747e000000000L    # -810000.0

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHashmashosRT2Stars()Ljava/util/Date;
    .locals 7

    .line 2340
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    .line 2341
    .local v0, "alos19Point8":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v1

    .line 2342
    .local v1, "sunrise":Ljava/util/Date;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2345
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v2, v3, v4}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 2343
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getBainHashmashosRT58Point5Minutes()Ljava/util/Date;
    .locals 3

    .line 2291
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide v1, 0x414ac77800000000L    # 3510000.0

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHashmashosYereim13Point5Minutes()Ljava/util/Date;
    .locals 3

    .line 2499
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide v1, -0x3ed747e000000000L    # -810000.0

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHashmashosYereim16Point875Minutes()Ljava/util/Date;
    .locals 3

    .line 2439
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide v1, -0x3ed119d800000000L    # -1012500.0

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHashmashosYereim18Minutes()Ljava/util/Date;
    .locals 3

    .line 2370
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x107ac0

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHashmashosYereim2Point1Degrees()Ljava/util/Date;
    .locals 2

    .line 2532
    const-wide v0, 0x4055f9999999999aL    # 87.9

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHashmashosYereim2Point8Degrees()Ljava/util/Date;
    .locals 2

    .line 2472
    const-wide v0, 0x4055cccccccccccdL    # 87.2

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHashmashosYereim3Point05Degrees()Ljava/util/Date;
    .locals 2

    .line 2412
    const-wide v0, 0x4055bccccccccccdL    # 86.95

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosRT13Point24Degrees()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2276
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosRT13Point24Degrees()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosRT13Point5MinutesBefore7Point083Degrees()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2324
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosRT13Point5MinutesBefore7Point083Degrees()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosRT2Stars()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2354
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosRT2Stars()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosRT58Point5Minutes()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2300
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosRT58Point5Minutes()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosYereim13Point5Minutes()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2508
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosYereim13Point5Minutes()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosYereim16Point875Minutes()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2448
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosYereim16Point875Minutes()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosYereim18Minutes()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2379
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosYereim18Minutes()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosYereim2Point1Degrees()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2541
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosYereim2Point1Degrees()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosYereim2Point8Degrees()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2481
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosYereim2Point8Degrees()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBainHasmashosYereim3Point05Degrees()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2421
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getBainHashmashosYereim3Point05Degrees()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFixedLocalChatzos()Ljava/util/Date;
    .locals 4

    .line 3273
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    sub-double/2addr v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v3, v0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getDateFromTime(DZ)Ljava/util/Date;

    move-result-object v0

    .line 3274
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLocalMeanTimeOffset()J

    move-result-wide v1

    neg-long v1, v1

    .line 3273
    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFixedLocalChatzosBasedZmanim(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;
    .locals 7
    .param p1, "startOfHalfDay"    # Ljava/util/Date;
    .param p2, "endOfHalfDay"    # Ljava/util/Date;
    .param p3, "hours"    # D

    .line 4107
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4110
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x6

    div-long/2addr v0, v2

    .line 4111
    .local v0, "shaahZmanis":J
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    long-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, p3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 4108
    .end local v0    # "shaahZmanis":J
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinchaGedola16Point1Degrees()Ljava/util/Date;
    .locals 2

    .line 1811
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais16Point1Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola30Minutes()Ljava/util/Date;
    .locals 3

    .line 1772
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x1b7740

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola72Minutes()Ljava/util/Date;
    .locals 2

    .line 1792
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedolaAhavatShalom()Ljava/util/Date;
    .locals 6

    .line 1837
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1840
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanisAlos16Point1ToTzais3Point7()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1841
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanisAlos16Point1ToTzais3Point7()J

    move-result-wide v1

    div-long/2addr v1, v4

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    .line 1840
    :goto_0
    return-object v0

    .line 1838
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinchaGedolaAteretTorah()Ljava/util/Date;
    .locals 2

    .line 2950
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisAteretTorah()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedolaBaalHatanya()Ljava/util/Date;
    .locals 2

    .line 4007
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseBaalHatanya()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetBaalHatanya()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedolaBaalHatanyaGreaterThan30()Ljava/util/Date;
    .locals 2

    .line 4022
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedolaBaalHatanya()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4025
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedolaBaalHatanya()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 4026
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedolaBaalHatanya()Ljava/util/Date;

    move-result-object v0

    .line 4025
    :goto_0
    return-object v0

    .line 4023
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinchaGedolaGRAFixedLocalChatzos30Minutes()Ljava/util/Date;
    .locals 3

    .line 4252
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x1b7740

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedolaGreaterThan30()Ljava/util/Date;
    .locals 2

    .line 1857
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1860
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola30Minutes()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 1861
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaGedola()Ljava/util/Date;

    move-result-object v0

    .line 1860
    :goto_0
    return-object v0

    .line 1858
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinchaKetana16Point1Degrees()Ljava/util/Date;
    .locals 2

    .line 1882
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais16Point1Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetana72Minutes()Ljava/util/Date;
    .locals 2

    .line 1925
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetanaAhavatShalom()Ljava/util/Date;
    .locals 5

    .line 1905
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisGeonim3Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanisAlos16Point1ToTzais3Point8()J

    move-result-wide v1

    neg-long v1, v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetanaAteretTorah()Ljava/util/Date;
    .locals 2

    .line 2977
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisAteretTorah()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetanaBaalHatanya()Ljava/util/Date;
    .locals 2

    .line 4048
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseBaalHatanya()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetBaalHatanya()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetanaGRAFixedLocalChatzosToSunset()Ljava/util/Date;
    .locals 4

    .line 4272
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunset()Ljava/util/Date;

    move-result-object v1

    const-wide/high16 v2, 0x400c000000000000L    # 3.5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzosBasedZmanim(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir10Point2Degrees()Ljava/util/Date;
    .locals 2

    .line 1156
    const-wide v0, 0x40590ccccccccccdL    # 100.2

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir11Degrees()Ljava/util/Date;
    .locals 2

    .line 1138
    const-wide v0, 0x4059400000000000L    # 101.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir11Point5Degrees()Ljava/util/Date;
    .locals 2

    .line 1120
    const-wide v0, 0x4059600000000000L    # 101.5

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir7Point65Degrees()Ljava/util/Date;
    .locals 2

    .line 1189
    const-wide v0, 0x405869999999999aL    # 97.65

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMisheyakir9Point5Degrees()Ljava/util/Date;
    .locals 2

    .line 1216
    const-wide v0, 0x4058e00000000000L    # 99.5

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagAhavatShalom()Ljava/util/Date;
    .locals 5

    .line 2238
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisGeonim3Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanisAlos16Point1ToTzais3Point8()J

    move-result-wide v1

    neg-long v1, v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagAlos16Point1ToTzaisGeonim7Point083Degrees()Ljava/util/Date;
    .locals 2

    .line 2217
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisGeonim7Point083Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagAlosToSunset()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2195
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha120Minutes()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 818
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais120()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha120MinutesZmanis()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 794
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos120Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais120Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha16Point1Degrees()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2095
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais16Point1Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha18Degrees()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2168
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos18Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais18Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha19Point8Degrees()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2119
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais19Point8Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha26Degrees()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2144
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos26Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais26Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha60Minutes()Ljava/util/Date;
    .locals 2

    .line 1943
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos60()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais60()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha72Minutes()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1966
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha72MinutesZmanis()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2071
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais72Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha90Minutes()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1989
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais90()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha90MinutesZmanis()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2051
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais90Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha96Minutes()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2011
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais96()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha96MinutesZmanis()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2031
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais96Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHaminchaAteretTorah()Ljava/util/Date;
    .locals 2

    .line 2999
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisAteretTorah()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHaminchaBaalHatanya()Ljava/util/Date;
    .locals 2

    .line 4064
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseBaalHatanya()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetBaalHatanya()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHaminchaGRAFixedLocalChatzosToSunset()Ljava/util/Date;
    .locals 4

    .line 4292
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunset()Ljava/util/Date;

    move-result-object v1

    const-wide/high16 v2, 0x4013000000000000L    # 4.75

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzosBasedZmanim(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSamuchLeMinchaKetana16Point1Degrees()Ljava/util/Date;
    .locals 2

    .line 4345
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais16Point1Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSamuchLeMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSamuchLeMinchaKetana72Minutes()Ljava/util/Date;
    .locals 2

    .line 4363
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSamuchLeMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSamuchLeMinchaKetanaGRA()Ljava/util/Date;
    .locals 2

    .line 4327
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSamuchLeMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getShaahZmanis120Minutes()J
    .locals 2

    .line 744
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais120()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis120MinutesZmanis()J
    .locals 2

    .line 767
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos120Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais120Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis16Point1Degrees()J
    .locals 2

    .line 529
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais16Point1Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis18Degrees()J
    .locals 2

    .line 483
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos18Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais18Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis19Point8Degrees()J
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais19Point8Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis26Degrees()J
    .locals 2

    .line 504
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos26Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais26Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis60Minutes()J
    .locals 2

    .line 550
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos60()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais60()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis72Minutes()J
    .locals 2

    .line 567
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanisMGA()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis72MinutesZmanis()J
    .locals 2

    .line 587
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais72Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis90Minutes()J
    .locals 2

    .line 602
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais90()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis90MinutesZmanis()J
    .locals 2

    .line 622
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais90Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis96Minutes()J
    .locals 2

    .line 725
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais96()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanis96MinutesZmanis()J
    .locals 2

    .line 642
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais96Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanisAlos16Point1ToTzais3Point7()J
    .locals 2

    .line 709
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisGeonim3Point7Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanisAlos16Point1ToTzais3Point8()J
    .locals 2

    .line 688
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisGeonim3Point8Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanisAteretTorah()J
    .locals 2

    .line 665
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisAteretTorah()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanisBaalHatanya()J
    .locals 2

    .line 3899
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseBaalHatanya()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetBaalHatanya()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSofZmanAchilasChametzBaalHatanya()Ljava/util/Date;
    .locals 1

    .line 3967
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaBaalHatanya()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanAchilasChametzGRA()Ljava/util/Date;
    .locals 1

    .line 3683
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaGRA()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanAchilasChametzMGA16Point1Degrees()Ljava/util/Date;
    .locals 1

    .line 3726
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaMGA16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanAchilasChametzMGA72Minutes()Ljava/util/Date;
    .locals 1

    .line 3704
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaMGA72Minutes()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanBiurChametzBaalHatanya()Ljava/util/Date;
    .locals 5

    .line 3983
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseBaalHatanya()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanisBaalHatanya()J

    move-result-wide v1

    const-wide/16 v3, 0x5

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanBiurChametzGRA()Ljava/util/Date;
    .locals 5

    .line 3743
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanisGra()J

    move-result-wide v1

    const-wide/16 v3, 0x5

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanBiurChametzMGA16Point1Degrees()Ljava/util/Date;
    .locals 5

    .line 3784
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanis16Point1Degrees()J

    move-result-wide v1

    const-wide/16 v3, 0x5

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanBiurChametzMGA72Minutes()Ljava/util/Date;
    .locals 5

    .line 3763
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getShaahZmanisMGA()J

    move-result-wide v1

    const-wide/16 v3, 0x5

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanKidushLevana15Days()Ljava/util/Date;
    .locals 1

    .line 3487
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanKidushLevana15Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanKidushLevana15Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p1, "alos"    # Ljava/util/Date;
    .param p2, "tzais"    # Ljava/util/Date;

    .line 3454
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>()V

    .line 3455
    .local v0, "jewishCalendar":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 3456
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 3455
    invoke-virtual {v0, v1, v2, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setGregorianDate(III)V

    .line 3461
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 3464
    :cond_0
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getSofZmanKidushLevana15Days()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMoladBasedTime(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 3462
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSofZmanKidushLevanaBetweenMoldos()Ljava/util/Date;
    .locals 1

    .line 3423
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanKidushLevanaBetweenMoldos(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanKidushLevanaBetweenMoldos(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p1, "alos"    # Ljava/util/Date;
    .param p2, "tzais"    # Ljava/util/Date;

    .line 3359
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>()V

    .line 3360
    .local v0, "jewishCalendar":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 3361
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 3360
    invoke-virtual {v0, v1, v2, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setGregorianDate(III)V

    .line 3367
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 3370
    :cond_0
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getSofZmanKidushLevanaBetweenMoldos()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMoladBasedTime(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 3368
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSofZmanShma3HoursBeforeChatzos()Ljava/util/Date;
    .locals 3

    .line 1432
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0xa4cb80

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaAlos16Point1ToSunset()Ljava/util/Date;
    .locals 2

    .line 1478
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaAlos16Point1ToTzaisGeonim7Point083Degrees()Ljava/util/Date;
    .locals 2

    .line 1500
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisGeonim7Point083Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaAteretTorah()Ljava/util/Date;
    .locals 2

    .line 2899
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisAteretTorah()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaBaalHatanya()Ljava/util/Date;
    .locals 2

    .line 3932
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseBaalHatanya()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetBaalHatanya()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaFixedLocal()Ljava/util/Date;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3305
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0xa4cb80

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaGRASunriseToFixedLocalChatzos()Ljava/util/Date;
    .locals 4

    .line 4213
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzosBasedZmanim(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaKolEliyahu()Ljava/util/Date;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1521
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    .line 1522
    .local v0, "chatzos":Ljava/util/Date;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1525
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 1526
    .local v1, "diff":J
    neg-long v3, v1

    invoke-static {v0, v3, v4}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v3

    return-object v3

    .line 1523
    .end local v1    # "diff":J
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSofZmanShmaMGA120Minutes()Ljava/util/Date;
    .locals 2

    .line 1453
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais120()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA16Point1Degrees()Ljava/util/Date;
    .locals 2

    .line 1256
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais16Point1Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA16Point1DegreesToFixedLocalChatzos()Ljava/util/Date;
    .locals 4

    .line 4151
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzosBasedZmanim(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA18Degrees()Ljava/util/Date;
    .locals 2

    .line 1276
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos18Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais18Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA18DegreesToFixedLocalChatzos()Ljava/util/Date;
    .locals 4

    .line 4131
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos18Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzosBasedZmanim(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA19Point8Degrees()Ljava/util/Date;
    .locals 2

    .line 1236
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais19Point8Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA72Minutes()Ljava/util/Date;
    .locals 1

    .line 1298
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShmaMGA()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA72MinutesToFixedLocalChatzos()Ljava/util/Date;
    .locals 4

    .line 4193
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzosBasedZmanim(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA72MinutesZmanis()Ljava/util/Date;
    .locals 2

    .line 1320
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais72Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA90Minutes()Ljava/util/Date;
    .locals 2

    .line 1340
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais90()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA90MinutesToFixedLocalChatzos()Ljava/util/Date;
    .locals 4

    .line 4172
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzosBasedZmanim(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA90MinutesZmanis()Ljava/util/Date;
    .locals 2

    .line 1361
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais90Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA96Minutes()Ljava/util/Date;
    .locals 2

    .line 1381
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais96()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA96MinutesZmanis()Ljava/util/Date;
    .locals 2

    .line 1402
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais96Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfila2HoursBeforeChatzos()Ljava/util/Date;
    .locals 3

    .line 1751
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x6ddd00

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaBaalHatanya()Ljava/util/Date;
    .locals 2

    .line 3949
    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunriseBaalHatanya()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetBaalHatanya()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaFixedLocal()Ljava/util/Date;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3332
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x6ddd00

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaGRASunriseToFixedLocalChatzos()Ljava/util/Date;
    .locals 4

    .line 4233
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzos()Ljava/util/Date;

    move-result-object v1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getFixedLocalChatzosBasedZmanim(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA120Minutes()Ljava/util/Date;
    .locals 2

    .line 1734
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos120()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais120()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA16Point1Degrees()Ljava/util/Date;
    .locals 2

    .line 1568
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos16Point1Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais16Point1Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA18Degrees()Ljava/util/Date;
    .locals 2

    .line 1589
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos18Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais18Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA19Point8Degrees()Ljava/util/Date;
    .locals 2

    .line 1547
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos19Point8Degrees()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais19Point8Degrees()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA72Minutes()Ljava/util/Date;
    .locals 1

    .line 1611
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfilaMGA()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA72MinutesZmanis()Ljava/util/Date;
    .locals 2

    .line 1631
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais72Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA90Minutes()Ljava/util/Date;
    .locals 2

    .line 1651
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos90()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais90()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA90MinutesZmanis()Ljava/util/Date;
    .locals 2

    .line 1672
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos90Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais90Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA96Minutes()Ljava/util/Date;
    .locals 2

    .line 1692
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos96()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais96()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA96MinutesZmanis()Ljava/util/Date;
    .locals 2

    .line 1713
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos96Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzais96Zmanis()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilahAteretTorah()Ljava/util/Date;
    .locals 2

    .line 2922
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAlos72Zmanis()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTzaisAteretTorah()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSolarMidnight()Ljava/util/Date;
    .locals 6

    .line 3798
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosherjava/zmanim/ZmanimCalendar;

    .line 3799
    .local v0, "clonedCal":Lcom/kosherjava/zmanim/ZmanimCalendar;
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 3800
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getTchilasZmanKidushLevana3Days()Ljava/util/Date;
    .locals 1

    .line 3502
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTchilasZmanKidushLevana3Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTchilasZmanKidushLevana3Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 7
    .param p1, "alos"    # Ljava/util/Date;
    .param p2, "tzais"    # Ljava/util/Date;

    .line 3528
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>()V

    .line 3529
    .local v0, "jewishCalendar":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 3530
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 3529
    invoke-virtual {v0, v1, v3, v5}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setGregorianDate(III)V

    .line 3537
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v3, 0x1e

    const/4 v5, 0x0

    if-le v1, v6, :cond_0

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 3538
    return-object v5

    .line 3541
    :cond_0
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTchilasZmanKidushLevana3Days()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMoladBasedTime(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/Date;

    move-result-object v1

    .line 3545
    .local v1, "zman":Ljava/util/Date;
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 3546
    invoke-virtual {v0, v4, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->forward(II)V

    .line 3547
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTchilasZmanKidushLevana3Days()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v3, v5, v5, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMoladBasedTime(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/Date;

    move-result-object v1

    .line 3550
    :cond_1
    return-object v1
.end method

.method public getTchilasZmanKidushLevana7Days()Ljava/util/Date;
    .locals 1

    .line 3664
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTchilasZmanKidushLevana7Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTchilasZmanKidushLevana7Days(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "alos"    # Ljava/util/Date;
    .param p2, "tzais"    # Ljava/util/Date;

    .line 3637
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>()V

    .line 3638
    .local v0, "jewishCalendar":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 3639
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 3638
    invoke-virtual {v0, v1, v3, v4}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setGregorianDate(III)V

    .line 3646
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v3, 0x9

    if-le v1, v3, :cond_0

    goto :goto_0

    .line 3650
    :cond_0
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTchilasZmanKidushLevana7Days()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMoladBasedTime(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 3647
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTzais120()Ljava/util/Date;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3140
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x6ddd00

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais120Zmanis()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3163
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getZmanisBasedOffset(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais16Point1Degrees()Ljava/util/Date;
    .locals 2

    .line 3187
    const-wide v0, 0x405a866666666666L    # 106.1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais18Degrees()Ljava/util/Date;
    .locals 2

    .line 3223
    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais19Point8Degrees()Ljava/util/Date;
    .locals 2

    .line 3237
    const-wide v0, 0x405b733333333333L    # 109.8

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais26Degrees()Ljava/util/Date;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3210
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais50()Ljava/util/Date;
    .locals 3

    .line 4306
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x2dc6c0

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais60()Ljava/util/Date;
    .locals 3

    .line 2828
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais72Zmanis()Ljava/util/Date;
    .locals 2

    .line 3041
    const-wide v0, 0x3ff3333333333333L    # 1.2

    invoke-direct {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getZmanisBasedOffset(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais90()Ljava/util/Date;
    .locals 3

    .line 3114
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x5265c0

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais90Zmanis()Ljava/util/Date;
    .locals 2

    .line 3081
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    invoke-direct {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getZmanisBasedOffset(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais96()Ljava/util/Date;
    .locals 3

    .line 3251
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x57e400

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais96Zmanis()Ljava/util/Date;
    .locals 2

    .line 3095
    const-wide v0, 0x3ff999999999999aL    # 1.6

    invoke-direct {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getZmanisBasedOffset(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisAteretTorah()Ljava/util/Date;
    .locals 5

    .line 2848
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getAteretTorahSunsetOffset()D

    move-result-wide v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    mul-double v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisBaalHatanya()Ljava/util/Date;
    .locals 2

    .line 4079
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim3Point65Degrees()Ljava/util/Date;
    .locals 2

    .line 2593
    const-wide v0, 0x405769999999999aL    # 93.65

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim3Point676Degrees()Ljava/util/Date;
    .locals 2

    .line 2611
    const-wide v0, 0x40576b4395810625L    # 93.676

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim3Point7Degrees()Ljava/util/Date;
    .locals 2

    .line 2552
    const-wide v0, 0x40576ccccccccccdL    # 93.7

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim3Point8Degrees()Ljava/util/Date;
    .locals 2

    .line 2563
    const-wide v0, 0x4057733333333333L    # 93.8

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim4Point37Degrees()Ljava/util/Date;
    .locals 2

    .line 2643
    const-wide v0, 0x405797ae147ae148L    # 94.37

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim4Point61Degrees()Ljava/util/Date;
    .locals 2

    .line 2627
    const-wide v0, 0x4057a70a3d70a3d7L    # 94.61

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim4Point8Degrees()Ljava/util/Date;
    .locals 2

    .line 2678
    const-wide v0, 0x4057b33333333333L    # 94.8

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim5Point88Degrees()Ljava/util/Date;
    .locals 2

    .line 2661
    const-wide v0, 0x4057f851eb851eb8L    # 95.88

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim5Point95Degrees()Ljava/util/Date;
    .locals 2

    .line 2577
    const-wide v0, 0x4057fccccccccccdL    # 95.95

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim6Point45Degrees()Ljava/util/Date;
    .locals 2

    .line 2699
    const-wide v0, 0x40581ccccccccccdL    # 96.45

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim7Point083Degrees()Ljava/util/Date;
    .locals 2

    .line 2728
    const-wide v0, 0x4058455555555555L    # 97.08333333333333

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim7Point67Degrees()Ljava/util/Date;
    .locals 2

    .line 2757
    const-wide v0, 0x40586ae147ae147bL    # 97.67

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim8Point5Degrees()Ljava/util/Date;
    .locals 2

    .line 2771
    const-wide v0, 0x4058a00000000000L    # 98.5

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim9Point3Degrees()Ljava/util/Date;
    .locals 2

    .line 2785
    const-wide v0, 0x4058d33333333333L    # 99.3

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaisGeonim9Point75Degrees()Ljava/util/Date;
    .locals 2

    .line 2807
    const-wide v0, 0x4058f00000000000L    # 99.75

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getZmanMolad()Ljava/util/Date;
    .locals 7

    .line 3565
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>()V

    .line 3566
    .local v0, "jewishCalendar":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 3567
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 3566
    invoke-virtual {v0, v1, v3, v5}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setGregorianDate(III)V

    .line 3572
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/4 v3, 0x0

    if-le v1, v4, :cond_0

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v5, 0x1b

    if-ge v1, v5, :cond_0

    .line 3573
    return-object v3

    .line 3575
    :cond_0
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMoladBasedTime(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/Date;

    move-result-object v1

    .line 3578
    .local v1, "molad":Ljava/util/Date;
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v5

    const/16 v6, 0x1a

    if-le v5, v6, :cond_1

    .line 3579
    invoke-virtual {v0, v4, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->forward(II)V

    .line 3580
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate()Ljava/util/Date;

    move-result-object v4

    invoke-direct {p0, v4, v3, v3, v2}, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->getMoladBasedTime(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/Date;

    move-result-object v1

    .line 3582
    :cond_1
    return-object v1
.end method

.method public setAteretTorahSunsetOffset(D)V
    .locals 0
    .param p1, "ateretTorahSunsetOffset"    # D

    .line 2874
    iput-wide p1, p0, Lcom/kosherjava/zmanim/ComplexZmanimCalendar;->ateretTorahSunsetOffset:D

    .line 2875
    return-void
.end method

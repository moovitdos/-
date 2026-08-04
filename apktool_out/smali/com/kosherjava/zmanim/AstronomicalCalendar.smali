.class public Lcom/kosherjava/zmanim/AstronomicalCalendar;
.super Ljava/lang/Object;
.source "AstronomicalCalendar.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ASTRONOMICAL_ZENITH:D = 108.0

.field public static final CIVIL_ZENITH:D = 96.0

.field public static final GEOMETRIC_ZENITH:D = 90.0

.field static final HOUR_MILLIS:J = 0x36ee80L

.field static final MINUTE_MILLIS:J = 0xea60L

.field public static final NAUTICAL_ZENITH:D = 102.0


# instance fields
.field private astronomicalCalculator:Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

.field private calendar:Ljava/util/Calendar;

.field private geoLocation:Lcom/kosherjava/zmanim/util/GeoLocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 365
    new-instance v0, Lcom/kosherjava/zmanim/util/GeoLocation;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/util/GeoLocation;-><init>()V

    invoke-direct {p0, v0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;-><init>(Lcom/kosherjava/zmanim/util/GeoLocation;)V

    .line 366
    return-void
.end method

.method public constructor <init>(Lcom/kosherjava/zmanim/util/GeoLocation;)V
    .locals 1
    .param p1, "geoLocation"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->setCalendar(Ljava/util/Calendar;)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->setGeoLocation(Lcom/kosherjava/zmanim/util/GeoLocation;)V

    .line 381
    invoke-static {}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getDefault()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->setAstronomicalCalculator(Lcom/kosherjava/zmanim/util/AstronomicalCalculator;)V

    .line 382
    return-void
.end method

.method private getAdjustedCalendar()Ljava/util/Calendar;
    .locals 3

    .line 648
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getAntimeridianAdjustment()I

    move-result v0

    .line 649
    .local v0, "offset":I
    if-nez v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    return-object v1

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 653
    .local v1, "adjustedCalendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 654
    return-object v1
.end method

.method public static getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;
    .locals 2
    .param p0, "time"    # Ljava/util/Date;
    .param p1, "offset"    # D

    .line 291
    double-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
    .locals 3
    .param p0, "time"    # Ljava/util/Date;
    .param p1, "offset"    # J

    .line 307
    if-eqz p0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 308
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 783
    const/4 v0, 0x0

    .line 785
    .local v0, "clone":Lcom/kosherjava/zmanim/AstronomicalCalendar;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosherjava/zmanim/AstronomicalCalendar;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 788
    goto :goto_0

    .line 786
    :catch_0
    move-exception v1

    .line 789
    :goto_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/util/GeoLocation;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosherjava/zmanim/util/GeoLocation;

    invoke-virtual {v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->setGeoLocation(Lcom/kosherjava/zmanim/util/GeoLocation;)V

    .line 790
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->setCalendar(Ljava/util/Calendar;)V

    .line 791
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    invoke-virtual {v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->setAstronomicalCalculator(Lcom/kosherjava/zmanim/util/AstronomicalCalculator;)V

    .line 792
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 681
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 682
    return v0

    .line 684
    :cond_0
    instance-of v1, p1, Lcom/kosherjava/zmanim/AstronomicalCalendar;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 685
    return v2

    .line 687
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/kosherjava/zmanim/AstronomicalCalendar;

    .line 688
    .local v1, "aCal":Lcom/kosherjava/zmanim/AstronomicalCalendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kosherjava/zmanim/util/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 689
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0
.end method

.method public getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/kosherjava/zmanim/AstronomicalCalendar;->astronomicalCalculator:Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    return-object v0
.end method

.method public getBeginAstronomicalTwilight()Ljava/util/Date;
    .locals 2

    .line 192
    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBeginCivilTwilight()Ljava/util/Date;
    .locals 2

    .line 166
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getBeginNauticalTwilight()Ljava/util/Date;
    .locals 2

    .line 179
    const-wide v0, 0x4059800000000000L    # 102.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/kosherjava/zmanim/AstronomicalCalendar;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method protected getDateFromTime(DZ)Ljava/util/Date;
    .locals 12
    .param p1, "time"    # D
    .param p3, "isSunrise"    # Z

    .line 548
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const/4 v0, 0x0

    return-object v0

    .line 551
    :cond_0
    move-wide v0, p1

    .line 553
    .local v0, "calculatedTime":D
    invoke-direct {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAdjustedCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 554
    .local v2, "adjustedCalendar":Ljava/util/Calendar;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 555
    .local v3, "cal":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 556
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 557
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 558
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 560
    double-to-int v6, v0

    .line 561
    .local v6, "hours":I
    int-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v7

    .line 562
    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    mul-double v9, v0, v7

    move-wide v0, v9

    double-to-int v9, v9

    .line 563
    .local v9, "minutes":I
    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v10

    .line 564
    mul-double v7, v7, v0

    move-wide v0, v7

    double-to-int v7, v7

    .line 565
    .local v7, "seconds":I
    int-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v10

    .line 569
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v10

    double-to-int v8, v10

    div-int/lit8 v8, v8, 0xf

    .line 570
    .local v8, "localTimeHours":I
    if-eqz p3, :cond_1

    add-int v10, v8, v6

    const/16 v11, 0x12

    if-le v10, v11, :cond_1

    .line 571
    const/4 v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 572
    :cond_1
    if-nez p3, :cond_2

    add-int v10, v8, v6

    const/4 v11, 0x6

    if-ge v10, v11, :cond_2

    .line 573
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 576
    :cond_2
    :goto_0
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 577
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 578
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 579
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v0

    double-to-int v4, v4

    const/16 v5, 0xe

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 580
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    return-object v4
.end method

.method public getEndAstronomicalTwilight()Ljava/util/Date;
    .locals 2

    .line 277
    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEndCivilTwilight()Ljava/util/Date;
    .locals 2

    .line 253
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEndNauticalTwilight()Ljava/util/Date;
    .locals 2

    .line 265
    const-wide v0, 0x4059800000000000L    # 102.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/kosherjava/zmanim/AstronomicalCalendar;->geoLocation:Lcom/kosherjava/zmanim/util/GeoLocation;

    return-object v0
.end method

.method public getSeaLevelSunrise()Ljava/util/Date;
    .locals 3

    .line 149
    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getUTCSeaLevelSunrise(D)D

    move-result-wide v0

    .line 150
    .local v0, "sunrise":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const/4 v2, 0x0

    return-object v2

    .line 153
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getDateFromTime(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSeaLevelSunset()Ljava/util/Date;
    .locals 3

    .line 236
    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getUTCSeaLevelSunset(D)D

    move-result-wide v0

    .line 237
    .local v0, "sunset":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/4 v2, 0x0

    return-object v2

    .line 240
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getDateFromTime(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSunTransit()Ljava/util/Date;
    .locals 3

    .line 511
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAdjustedCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getUTCNoon(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;)D

    move-result-wide v0

    .line 512
    .local v0, "noon":D
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getDateFromTime(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSunTransit(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 4
    .param p1, "startOfDay"    # Ljava/util/Date;
    .param p2, "endOfDay"    # Ljava/util/Date;

    .line 534
    invoke-virtual {p0, p1, p2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    .line 535
    .local v0, "temporalHour":J
    const-wide/16 v2, 0x6

    mul-long v2, v2, v0

    invoke-static {p1, v2, v3}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSunrise()Ljava/util/Date;
    .locals 3

    .line 127
    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getUTCSunrise(D)D

    move-result-wide v0

    .line 128
    .local v0, "sunrise":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v2, 0x0

    return-object v2

    .line 131
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getDateFromTime(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSunriseOffsetByDegrees(D)Ljava/util/Date;
    .locals 3
    .param p1, "offsetZenith"    # D

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getUTCSunrise(D)D

    move-result-wide v0

    .line 330
    .local v0, "dawn":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    const/4 v2, 0x0

    return-object v2

    .line 333
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getDateFromTime(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSunriseSolarDipFromOffset(D)D
    .locals 11
    .param p1, "minutes"    # D

    .line 595
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    .line 596
    .local v0, "offsetByDegrees":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v1

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double v2, v2, p1

    neg-double v2, v2

    invoke-static {v1, v2, v3}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v1

    .line 598
    .local v1, "offsetByTime":Ljava/util/Date;
    new-instance v2, Ljava/math/BigDecimal;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    .line 599
    .local v2, "degrees":Ljava/math/BigDecimal;
    new-instance v3, Ljava/math/BigDecimal;

    const-string v4, "0.0001"

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 601
    .local v3, "incrementor":Ljava/math/BigDecimal;
    :goto_0
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    cmpg-double v6, p1, v4

    if-gez v6, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    :cond_0
    cmpl-double v6, p1, v4

    if-lez v6, :cond_1

    .line 602
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    goto :goto_1

    .line 610
    :cond_1
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    return-wide v4

    .line 603
    :cond_2
    :goto_1
    cmpl-double v6, p1, v4

    if-lez v6, :cond_3

    .line 604
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_2

    .line 606
    :cond_3
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 608
    :goto_2
    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    add-double/2addr v6, v4

    invoke-virtual {p0, v6, v7}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getSunset()Ljava/util/Date;
    .locals 3

    .line 215
    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getUTCSunset(D)D

    move-result-wide v0

    .line 216
    .local v0, "sunset":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const/4 v2, 0x0

    return-object v2

    .line 219
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getDateFromTime(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSunsetOffsetByDegrees(D)Ljava/util/Date;
    .locals 3
    .param p1, "offsetZenith"    # D

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getUTCSunset(D)D

    move-result-wide v0

    .line 353
    .local v0, "sunset":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const/4 v2, 0x0

    return-object v2

    .line 356
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getDateFromTime(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSunsetSolarDipFromOffset(D)D
    .locals 11
    .param p1, "minutes"    # D

    .line 625
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    .line 626
    .local v0, "offsetByDegrees":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v1

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double v2, v2, p1

    invoke-static {v1, v2, v3}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v1

    .line 627
    .local v1, "offsetByTime":Ljava/util/Date;
    new-instance v2, Ljava/math/BigDecimal;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    .line 628
    .local v2, "degrees":Ljava/math/BigDecimal;
    new-instance v3, Ljava/math/BigDecimal;

    const-string v4, "0.001"

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 629
    .local v3, "incrementor":Ljava/math/BigDecimal;
    :goto_0
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    cmpl-double v6, p1, v4

    if-lez v6, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    :cond_0
    cmpg-double v6, p1, v4

    if-gez v6, :cond_1

    .line 630
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    goto :goto_1

    .line 638
    :cond_1
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    return-wide v4

    .line 631
    :cond_2
    :goto_1
    cmpl-double v6, p1, v4

    if-lez v6, :cond_3

    .line 632
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_2

    .line 634
    :cond_3
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 636
    :goto_2
    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    add-double/2addr v6, v4

    invoke-virtual {p0, v6, v7}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getTemporalHour()J
    .locals 2

    .line 465
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J
    .locals 4
    .param p1, "startOfday"    # Ljava/util/Date;
    .param p2, "endOfDay"    # Ljava/util/Date;

    .line 485
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc

    div-long/2addr v0, v2

    return-wide v0

    .line 486
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getUTCSeaLevelSunrise(D)D
    .locals 6
    .param p1, "zenith"    # D

    .line 413
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAdjustedCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v2

    const/4 v5, 0x0

    move-wide v3, p1

    .end local p1    # "zenith":D
    .local v3, "zenith":D
    invoke-virtual/range {v0 .. v5}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getUTCSunrise(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public getUTCSeaLevelSunset(D)D
    .locals 6
    .param p1, "zenith"    # D

    .line 447
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAdjustedCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v2

    const/4 v5, 0x0

    move-wide v3, p1

    .end local p1    # "zenith":D
    .local v3, "zenith":D
    invoke-virtual/range {v0 .. v5}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getUTCSunset(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public getUTCSunrise(D)D
    .locals 6
    .param p1, "zenith"    # D

    .line 395
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAdjustedCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v2

    const/4 v5, 0x1

    move-wide v3, p1

    .end local p1    # "zenith":D
    .local v3, "zenith":D
    invoke-virtual/range {v0 .. v5}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getUTCSunrise(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public getUTCSunset(D)D
    .locals 6
    .param p1, "zenith"    # D

    .line 428
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v0

    invoke-direct {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAdjustedCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v2

    const/4 v5, 0x1

    move-wide v3, p1

    .end local p1    # "zenith":D
    .local v3, "zenith":D
    invoke-virtual/range {v0 .. v5}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getUTCSunset(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public hashCode()I
    .locals 3

    .line 696
    const/16 v0, 0x11

    .line 697
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 698
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 699
    mul-int/lit8 v0, v1, 0x25

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kosherjava/zmanim/util/GeoLocation;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 700
    mul-int/lit8 v0, v1, 0x25

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 701
    return v1
.end method

.method public setAstronomicalCalculator(Lcom/kosherjava/zmanim/util/AstronomicalCalculator;)V
    .locals 0
    .param p1, "astronomicalCalculator"    # Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    .line 749
    iput-object p1, p0, Lcom/kosherjava/zmanim/AstronomicalCalendar;->astronomicalCalculator:Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    .line 750
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 766
    iput-object p1, p0, Lcom/kosherjava/zmanim/AstronomicalCalendar;->calendar:Ljava/util/Calendar;

    .line 767
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 770
    :cond_0
    return-void
.end method

.method public setGeoLocation(Lcom/kosherjava/zmanim/util/GeoLocation;)V
    .locals 2
    .param p1, "geoLocation"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 723
    iput-object p1, p0, Lcom/kosherjava/zmanim/AstronomicalCalendar;->geoLocation:Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 724
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 725
    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .locals 1

    .line 674
    invoke-static {p0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->toJSON(Lcom/kosherjava/zmanim/AstronomicalCalendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 664
    invoke-static {p0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->toXML(Lcom/kosherjava/zmanim/AstronomicalCalendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

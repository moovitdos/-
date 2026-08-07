.class public Lcom/kosherjava/zmanim/util/SunTimesCalculator;
.super Lcom/kosherjava/zmanim/util/AstronomicalCalculator;
.source "SunTimesCalculator.java"


# static fields
.field private static final DEG_PER_HOUR:D = 15.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;-><init>()V

    return-void
.end method

.method private static acosDeg(D)D
    .locals 4
    .param p0, "x"    # D

    .line 81
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v0, v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static asinDeg(D)D
    .locals 4
    .param p0, "x"    # D

    .line 89
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v0, v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static cosDeg(D)D
    .locals 4
    .param p0, "deg"    # D

    .line 107
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getApproxTimeDays(IDZ)D
    .locals 6
    .param p0, "dayOfYear"    # I
    .param p1, "hoursFromMeridian"    # D
    .param p3, "isSunrise"    # Z

    .line 132
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    if-eqz p3, :cond_0

    .line 133
    int-to-double v2, p0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    sub-double/2addr v4, p1

    div-double/2addr v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    return-wide v2

    .line 135
    :cond_0
    int-to-double v2, p0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    sub-double/2addr v4, p1

    div-double/2addr v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private static getCosLocalHourAngle(DDD)D
    .locals 8
    .param p0, "sunTrueLongitude"    # D
    .param p2, "latitude"    # D
    .param p4, "zenith"    # D

    .line 193
    const-wide v0, 0x3fd975e2046c764bL    # 0.39782

    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->sinDeg(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    .line 194
    .local v2, "sinDec":D
    invoke-static {v2, v3}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->asinDeg(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->cosDeg(D)D

    move-result-wide v0

    .line 195
    .local v0, "cosDec":D
    invoke-static {p4, p5}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->cosDeg(D)D

    move-result-wide v4

    invoke-static {p2, p3}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->sinDeg(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    sub-double/2addr v4, v6

    invoke-static {p2, p3}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->cosDeg(D)D

    move-result-wide v6

    mul-double v6, v6, v0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private static getHoursFromMeridian(D)D
    .locals 2
    .param p0, "longitude"    # D

    .line 117
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method private static getLocalMeanTime(DDD)D
    .locals 4
    .param p0, "localHour"    # D
    .param p2, "sunRightAscensionHours"    # D
    .param p4, "approxTimeDays"    # D

    .line 210
    add-double v0, p0, p2

    const-wide v2, 0x3fb0d25edd052935L    # 0.06571

    mul-double v2, v2, p4

    sub-double/2addr v0, v2

    const-wide v2, 0x401a7ced916872b0L    # 6.622

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static getMeanAnomaly(IDZ)D
    .locals 4
    .param p0, "dayOfYear"    # I
    .param p1, "longitude"    # D
    .param p3, "isSunrise"    # Z

    .line 148
    invoke-static {p1, p2}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getHoursFromMeridian(D)D

    move-result-wide v0

    invoke-static {p0, v0, v1, p3}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getApproxTimeDays(IDZ)D

    move-result-wide v0

    const-wide v2, 0x3fef8a0902de00d2L    # 0.9856

    mul-double v0, v0, v2

    const-wide v2, 0x400a4fdf3b645a1dL    # 3.289

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static getSunRightAscensionHours(D)D
    .locals 10
    .param p0, "sunTrueLongitude"    # D

    .line 174
    const-wide v0, 0x3fed5d4e8fb00bccL    # 0.91764

    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->tanDeg(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    .line 175
    .local v2, "a":D
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v4, v4, v0

    .line 177
    .local v4, "ra":D
    const-wide v0, 0x4056800000000000L    # 90.0

    div-double v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    mul-double v6, v6, v0

    .line 178
    .local v6, "lQuadrant":D
    div-double v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    mul-double v8, v8, v0

    .line 179
    .local v8, "raQuadrant":D
    sub-double v0, v6, v8

    add-double/2addr v4, v0

    .line 181
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    div-double v0, v4, v0

    return-wide v0
.end method

.method private static getSunTrueLongitude(D)D
    .locals 7
    .param p0, "sunMeanAnomaly"    # D

    .line 156
    const-wide v0, 0x3ffea7ef9db22d0eL    # 1.916

    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->sinDeg(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    add-double/2addr v2, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->sinDeg(D)D

    move-result-wide v0

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    const-wide v0, 0x4071aa24dd2f1aa0L    # 282.634

    add-double/2addr v2, v0

    .line 159
    .local v2, "l":D
    const-wide v0, 0x4076800000000000L    # 360.0

    cmpl-double v4, v2, v0

    if-ltz v4, :cond_0

    .line 160
    sub-double/2addr v2, v0

    .line 162
    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    .line 163
    add-double/2addr v2, v0

    .line 165
    :cond_1
    return-wide v2
.end method

.method private static getTimeUTC(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D
    .locals 26
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "geoLocation"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p2, "zenith"    # D
    .param p4, "isSunrise"    # Z

    .line 230
    move/from16 v0, p4

    const/4 v1, 0x6

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 231
    .local v1, "dayOfYear":I
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v3, v4, v0}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getMeanAnomaly(IDZ)D

    move-result-wide v3

    .line 232
    .local v3, "sunMeanAnomaly":D
    invoke-static {v3, v4}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getSunTrueLongitude(D)D

    move-result-wide v5

    .line 233
    .local v5, "sunTrueLong":D
    invoke-static {v5, v6}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getSunRightAscensionHours(D)D

    move-result-wide v11

    .line 234
    .local v11, "sunRightAscensionHours":D
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v7

    move-wide/from16 v9, p2

    invoke-static/range {v5 .. v10}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getCosLocalHourAngle(DDD)D

    move-result-wide v13

    .line 236
    .local v13, "cosLocalHourAngle":D
    const-wide/16 v7, 0x0

    .line 237
    .local v7, "localHourAngle":D
    if-eqz v0, :cond_0

    .line 238
    const-wide v9, 0x4076800000000000L    # 360.0

    invoke-static {v13, v14}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->acosDeg(D)D

    move-result-wide v15

    sub-double/2addr v9, v15

    move-wide v15, v9

    .end local v7    # "localHourAngle":D
    .local v9, "localHourAngle":D
    goto :goto_0

    .line 240
    .end local v9    # "localHourAngle":D
    .restart local v7    # "localHourAngle":D
    :cond_0
    invoke-static {v13, v14}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->acosDeg(D)D

    move-result-wide v9

    move-wide v15, v9

    .line 242
    .end local v7    # "localHourAngle":D
    .local v15, "localHourAngle":D
    :goto_0
    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    div-double v7, v15, v7

    .line 244
    .local v7, "localHour":D
    nop

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getHoursFromMeridian(D)D

    move-result-wide v9

    invoke-static {v1, v9, v10, v0}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getApproxTimeDays(IDZ)D

    move-result-wide v9

    .line 244
    move-wide/from16 v24, v11

    move-wide v11, v9

    move-wide/from16 v9, v24

    .end local v11    # "sunRightAscensionHours":D
    .local v9, "sunRightAscensionHours":D
    invoke-static/range {v7 .. v12}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getLocalMeanTime(DDD)D

    move-result-wide v11

    .line 246
    .local v11, "localMeanTime":D
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getHoursFromMeridian(D)D

    move-result-wide v17

    sub-double v17, v11, v17

    .line 247
    .local v17, "pocessedTime":D
    :goto_1
    const-wide/16 v19, 0x0

    const-wide/high16 v21, 0x4038000000000000L    # 24.0

    cmpg-double v23, v17, v19

    if-gez v23, :cond_1

    .line 248
    add-double v17, v17, v21

    goto :goto_1

    .line 250
    :cond_1
    :goto_2
    cmpl-double v19, v17, v21

    if-ltz v19, :cond_2

    .line 251
    sub-double v17, v17, v21

    goto :goto_2

    .line 253
    :cond_2
    return-wide v17
.end method

.method private static sinDeg(D)D
    .locals 4
    .param p0, "deg"    # D

    .line 73
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static tanDeg(D)D
    .locals 4
    .param p0, "deg"    # D

    .line 97
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCalculatorName()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "US Naval Almanac Algorithm"

    return-object v0
.end method

.method public getUTCNoon(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 9
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 273
    const-wide v3, 0x4056800000000000L    # 90.0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "calendar":Ljava/util/Calendar;
    .end local p2    # "geoLocation":Lcom/kosherjava/zmanim/util/GeoLocation;
    .local v1, "calendar":Ljava/util/Calendar;
    .local v2, "geoLocation":Lcom/kosherjava/zmanim/util/GeoLocation;
    invoke-virtual/range {v0 .. v5}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getUTCSunrise(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D

    move-result-wide p1

    .line 274
    .local p1, "sunrise":D
    invoke-virtual/range {v0 .. v5}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getUTCSunset(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D

    move-result-wide v3

    .line 275
    .local v3, "sunset":D
    sub-double v5, v3, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    add-double/2addr v5, p1

    return-wide v5
.end method

.method public getUTCSunrise(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D
    .locals 7
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .line 45
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 46
    .local v0, "doubleTime":D
    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 47
    .local v2, "elevation":D
    :goto_0
    invoke-virtual {p0, p3, p4, v2, v3}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->adjustZenith(DD)D

    move-result-wide v4

    .line 48
    .local v4, "adjustedZenith":D
    const/4 v6, 0x1

    invoke-static {p1, p2, v4, v5, v6}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getTimeUTC(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D

    move-result-wide v0

    .line 49
    return-wide v0
.end method

.method public getUTCSunset(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D
    .locals 7
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .line 56
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 57
    .local v0, "doubleTime":D
    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 58
    .local v2, "elevation":D
    :goto_0
    invoke-virtual {p0, p3, p4, v2, v3}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->adjustZenith(DD)D

    move-result-wide v4

    .line 59
    .local v4, "adjustedZenith":D
    const/4 v6, 0x0

    invoke-static {p1, p2, v4, v5, v6}, Lcom/kosherjava/zmanim/util/SunTimesCalculator;->getTimeUTC(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D

    move-result-wide v0

    .line 60
    return-wide v0
.end method

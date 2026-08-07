.class public Lcom/kosherjava/zmanim/util/NOAACalculator;
.super Lcom/kosherjava/zmanim/util/AstronomicalCalculator;
.source "NOAACalculator.java"


# static fields
.field private static final JULIAN_DAYS_PER_CENTURY:D = 36525.0

.field private static final JULIAN_DAY_JAN_1_2000:D = 2451545.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;-><init>()V

    return-void
.end method

.method private static getEarthOrbitEccentricity(D)D
    .locals 4
    .param p0, "julianCenturies"    # D

    .line 182
    const-wide v0, 0x3e810160fc64d800L    # 1.267E-7

    mul-double v0, v0, p0

    const-wide v2, 0x3f060a1c525fe303L    # 4.2037E-5

    add-double/2addr v0, v2

    mul-double v0, v0, p0

    const-wide v2, 0x3f911c11725d0380L    # 0.016708634

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method private static getEquationOfTime(D)D
    .locals 26
    .param p0, "julianCenturies"    # D

    .line 308
    invoke-static/range {p0 .. p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getObliquityCorrection(D)D

    move-result-wide v0

    .line 309
    .local v0, "epsilon":D
    invoke-static/range {p0 .. p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunGeometricMeanLongitude(D)D

    move-result-wide v2

    .line 310
    .local v2, "geomMeanLongSun":D
    invoke-static/range {p0 .. p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getEarthOrbitEccentricity(D)D

    move-result-wide v4

    .line 311
    .local v4, "eccentricityEarthOrbit":D
    invoke-static/range {p0 .. p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunGeometricMeanAnomaly(D)D

    move-result-wide v6

    .line 313
    .local v6, "geomMeanAnomalySun":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    .line 314
    .local v8, "y":D
    mul-double v8, v8, v8

    .line 316
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    mul-double v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 317
    .local v12, "sin2l0":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 318
    .local v14, "sinm":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 319
    .local v16, "cos2l0":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 320
    .local v18, "sin4l0":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    mul-double v22, v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 322
    .local v22, "sin2m":D
    mul-double v24, v8, v12

    mul-double v10, v10, v4

    mul-double v10, v10, v14

    sub-double v24, v24, v10

    mul-double v10, v4, v20

    mul-double v10, v10, v8

    mul-double v10, v10, v14

    mul-double v10, v10, v16

    add-double v24, v24, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v8

    mul-double v10, v10, v8

    mul-double v10, v10, v18

    sub-double v24, v24, v10

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    mul-double v10, v10, v4

    mul-double v10, v10, v4

    mul-double v10, v10, v22

    sub-double v24, v24, v10

    .line 324
    .local v24, "equationOfTime":D
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    mul-double v10, v10, v20

    return-wide v10
.end method

.method private static getJulianCenturiesFromJulianDay(D)D
    .locals 4
    .param p0, "julianDay"    # D

    .line 125
    const-wide v0, 0x4142b42c80000000L    # 2451545.0

    sub-double v0, p0, v0

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static getJulianDay(Ljava/util/Calendar;)D
    .locals 11
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 104
    .local v1, "year":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 105
    .local v3, "month":I
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 106
    .local v0, "day":I
    if-gt v3, v2, :cond_0

    .line 107
    add-int/lit8 v1, v1, -0x1

    .line 108
    add-int/lit8 v3, v3, 0xc

    .line 110
    :cond_0
    div-int/lit8 v2, v1, 0x64

    .line 111
    .local v2, "a":I
    rsub-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v2, 0x4

    add-int/2addr v4, v5

    .line 113
    .local v4, "b":I
    add-int/lit16 v5, v1, 0x126c

    int-to-double v5, v5

    const-wide v7, 0x4076d40000000000L    # 365.25

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    add-int/lit8 v7, v3, 0x1

    int-to-double v7, v7

    const-wide v9, 0x403e99a027525461L    # 30.6001

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    const-wide v7, 0x4097d20000000000L    # 1524.5

    sub-double/2addr v5, v7

    return-wide v5
.end method

.method private static getJulianDayFromJulianCenturies(D)D
    .locals 4
    .param p0, "julianCenturies"    # D

    .line 138
    const-wide v0, 0x40e1d5a000000000L    # 36525.0

    mul-double v0, v0, p0

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static getMeanObliquityOfEcliptic(D)D
    .locals 8
    .param p0, "julianCenturies"    # D

    .line 259
    const-wide v0, 0x3f5db445ed4a1ad6L    # 0.001813

    mul-double v0, v0, p0

    const-wide v2, 0x3f4355475a31a4beL    # 5.9E-4

    sub-double/2addr v2, v0

    mul-double v2, v2, p0

    const-wide v0, 0x40476851eb851eb8L    # 46.815

    add-double/2addr v2, v0

    mul-double v2, v2, p0

    const-wide v0, 0x403572b020c49ba6L    # 21.448

    sub-double/2addr v0, v2

    .line 261
    .local v0, "seconds":D
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double v4, v0, v2

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4037000000000000L    # 23.0

    add-double/2addr v4, v2

    return-wide v4
.end method

.method private static getObliquityCorrection(D)D
    .locals 8
    .param p0, "julianCenturies"    # D

    .line 274
    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getMeanObliquityOfEcliptic(D)D

    move-result-wide v0

    .line 276
    .local v0, "obliquityOfEcliptic":D
    const-wide v2, 0x409e388b43958106L    # 1934.136

    mul-double v2, v2, p0

    const-wide v4, 0x405f428f5c28f5c3L    # 125.04

    sub-double/2addr v4, v2

    .line 277
    .local v4, "omega":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x3f64f8b588e368f1L    # 0.00256

    mul-double v2, v2, v6

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public static getSolarAzimuth(Ljava/util/Calendar;DD)D
    .locals 24
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 418
    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianDay(Ljava/util/Calendar;)D

    move-result-wide v1

    .line 419
    .local v1, "julianDay":D
    invoke-static {v1, v2}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v3

    .line 421
    .local v3, "julianCenturies":D
    invoke-static {v3, v4}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 423
    .local v5, "eot":Ljava/lang/Double;
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    .line 424
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    div-double/2addr v8, v12

    add-double/2addr v6, v8

    .line 426
    .local v6, "longitude":D
    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double v10, v6, v8

    const-wide/high16 v12, 0x4038000000000000L    # 24.0

    div-double/2addr v10, v12

    neg-double v10, v10

    rem-double/2addr v10, v8

    .line 427
    .end local v6    # "longitude":D
    .local v10, "longitude":D
    sub-double v6, p3, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 428
    .local v6, "hourAngle_rad":D
    invoke-static {v3, v4}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v8

    .line 429
    .local v8, "declination":D
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 430
    .local v12, "dec_rad":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 432
    .local v14, "lat_rad":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 433
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    div-double v16, v16, v18

    .line 432
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    const-wide v18, 0x4066800000000000L    # 180.0

    add-double v16, v16, v18

    return-wide v16
.end method

.method public static getSolarElevation(Ljava/util/Calendar;DD)D
    .locals 22
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 385
    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianDay(Ljava/util/Calendar;)D

    move-result-wide v1

    .line 386
    .local v1, "julianDay":D
    invoke-static {v1, v2}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v3

    .line 388
    .local v3, "julianCenturies":D
    invoke-static {v3, v4}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 390
    .local v5, "eot":Ljava/lang/Double;
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    .line 391
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    div-double/2addr v8, v12

    add-double/2addr v6, v8

    .line 393
    .local v6, "longitude":D
    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double v10, v6, v8

    const-wide/high16 v12, 0x4038000000000000L    # 24.0

    div-double/2addr v10, v12

    neg-double v10, v10

    rem-double/2addr v10, v8

    .line 394
    .end local v6    # "longitude":D
    .local v10, "longitude":D
    sub-double v6, p3, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 395
    .local v6, "hourAngle_rad":D
    invoke-static {v3, v4}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v8

    .line 396
    .local v8, "declination":D
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 397
    .local v12, "dec_rad":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 398
    .local v14, "lat_rad":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    .line 399
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    .line 398
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    return-wide v16
.end method

.method private static getSolarNoonUTC(DD)D
    .locals 14
    .param p0, "julianCenturies"    # D
    .param p2, "longitude"    # D

    .line 535
    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianDayFromJulianCenturies(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double v2, p2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v0

    .line 537
    .local v0, "tnoon":D
    invoke-static {v0, v1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v2

    .line 538
    .local v2, "eqTime":D
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double v6, p2, v4

    const-wide v8, 0x4086800000000000L    # 720.0

    add-double/2addr v6, v8

    sub-double/2addr v6, v2

    .line 540
    .local v6, "solNoonUTC":D
    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianDayFromJulianCenturies(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v12

    const-wide v12, 0x4096800000000000L    # 1440.0

    div-double v12, v6, v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v10

    .line 543
    .local v10, "newt":D
    invoke-static {v10, v11}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v2

    .line 544
    mul-double v4, v4, p2

    add-double/2addr v4, v8

    sub-double/2addr v4, v2

    return-wide v4
.end method

.method private static getSunApparentLongitude(D)D
    .locals 10
    .param p0, "julianCenturies"    # D

    .line 243
    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunTrueLongitude(D)D

    move-result-wide v0

    .line 245
    .local v0, "sunTrueLongitude":D
    const-wide v2, 0x409e388b43958106L    # 1934.136

    mul-double v2, v2, p0

    const-wide v4, 0x405f428f5c28f5c3L    # 125.04

    sub-double/2addr v4, v2

    .line 246
    .local v4, "omega":D
    const-wide v2, 0x3f774e65bea0ba1fL    # 0.00569

    sub-double v2, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, 0x3f7394317acc4ef9L    # 0.00478

    mul-double v6, v6, v8

    sub-double/2addr v2, v6

    .line 247
    .local v2, "lambda":D
    return-wide v2
.end method

.method private static getSunDeclination(D)D
    .locals 8
    .param p0, "julianCenturies"    # D

    .line 290
    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getObliquityCorrection(D)D

    move-result-wide v0

    .line 291
    .local v0, "obliquityCorrection":D
    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunApparentLongitude(D)D

    move-result-wide v2

    .line 293
    .local v2, "lambda":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    .line 294
    .local v4, "sint":D
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 295
    .local v6, "theta":D
    return-wide v6
.end method

.method private static getSunEquationOfCenter(D)D
    .locals 16
    .param p0, "julianCenturies"    # D

    .line 194
    invoke-static/range {p0 .. p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunGeometricMeanAnomaly(D)D

    move-result-wide v0

    .line 196
    .local v0, "m":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 197
    .local v2, "mrad":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 198
    .local v4, "sinm":D
    add-double v6, v2, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 199
    .local v6, "sin2m":D
    add-double v8, v2, v2

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 201
    .local v8, "sin3m":D
    const-wide v10, 0x3eed5c31593e5fb7L    # 1.4E-5

    mul-double v10, v10, p0

    const-wide v12, 0x3f73bafd976ff3aeL    # 0.004817

    add-double/2addr v10, v12

    mul-double v10, v10, p0

    const-wide v12, 0x3ffea235b4edb2f6L    # 1.914602

    sub-double/2addr v12, v10

    mul-double v12, v12, v4

    const-wide v10, 0x3f1a79fec99f1ae3L    # 1.01E-4

    mul-double v10, v10, p0

    const-wide v14, 0x3f94790b84988095L    # 0.019993

    sub-double/2addr v14, v10

    mul-double v14, v14, v6

    add-double/2addr v12, v14

    const-wide v10, 0x3f32f09d8c6d612cL    # 2.89E-4

    mul-double v10, v10, v8

    add-double/2addr v12, v10

    return-wide v12
.end method

.method private static getSunGeometricMeanAnomaly(D)D
    .locals 4
    .param p0, "julianCenturies"    # D

    .line 170
    const-wide v0, 0x3f242550f260db0cL    # 1.537E-4

    mul-double v0, v0, p0

    const-wide v2, 0x40e193e19bf9c62aL    # 35999.05029

    sub-double/2addr v2, v0

    mul-double v2, v2, p0

    const-wide v0, 0x407658773c0c1fc9L    # 357.52911

    add-double/2addr v2, v0

    return-wide v2
.end method

.method private static getSunGeometricMeanLongitude(D)D
    .locals 7
    .param p0, "julianCenturies"    # D

    .line 150
    const-wide v0, 0x3f33deda158aabc0L    # 3.032E-4

    mul-double v0, v0, p0

    const-wide v2, 0x40e19418a272862fL    # 36000.76983

    add-double/2addr v0, v2

    mul-double v0, v0, p0

    const-wide v2, 0x407187769ec2ce46L    # 280.46646

    add-double/2addr v0, v2

    .line 151
    .local v0, "longitude":D
    :goto_0
    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 152
    sub-double/2addr v0, v2

    goto :goto_0

    .line 154
    :cond_0
    :goto_1
    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_1

    .line 155
    add-double/2addr v0, v2

    goto :goto_1

    .line 158
    :cond_1
    return-wide v0
.end method

.method private static getSunHourAngleAtSunrise(DDD)D
    .locals 10
    .param p0, "lat"    # D
    .param p2, "solarDec"    # D
    .param p4, "zenith"    # D

    .line 340
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 341
    .local v0, "latRad":D
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 343
    .local v2, "sdRad":D
    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    div-double/2addr v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 344
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    sub-double/2addr v4, v6

    .line 343
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private static getSunHourAngleAtSunset(DDD)D
    .locals 10
    .param p0, "lat"    # D
    .param p2, "solarDec"    # D
    .param p4, "zenith"    # D

    .line 362
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 363
    .local v0, "latRad":D
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 365
    .local v2, "sdRad":D
    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    div-double/2addr v4, v6

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    sub-double/2addr v4, v6

    .line 365
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    .line 367
    .local v4, "hourAngle":D
    neg-double v6, v4

    return-wide v6
.end method

.method private static getSunTrueLongitude(D)D
    .locals 6
    .param p0, "julianCenturies"    # D

    .line 214
    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunGeometricMeanLongitude(D)D

    move-result-wide v0

    .line 215
    .local v0, "sunLongitude":D
    invoke-static {p0, p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunEquationOfCenter(D)D

    move-result-wide v2

    .line 217
    .local v2, "center":D
    add-double v4, v0, v2

    return-wide v4
.end method

.method private static getSunriseUTC(DDDD)D
    .locals 32
    .param p0, "julianDay"    # D
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "zenith"    # D

    .line 452
    move-wide/from16 v0, p4

    invoke-static/range {p0 .. p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v2

    .line 457
    .local v2, "julianCenturies":D
    invoke-static {v2, v3, v0, v1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSolarNoonUTC(DD)D

    move-result-wide v4

    .line 458
    .local v4, "noonmin":D
    const-wide v6, 0x4096800000000000L    # 1440.0

    div-double v8, v4, v6

    add-double v8, p0, v8

    invoke-static {v8, v9}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v8

    .line 462
    .local v8, "tnoon":D
    invoke-static {v8, v9}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v10

    .line 463
    .local v10, "eqTime":D
    invoke-static {v8, v9}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v14

    .line 464
    .local v14, "solarDec":D
    move-wide/from16 v12, p2

    move-wide/from16 v16, p6

    invoke-static/range {v12 .. v17}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunHourAngleAtSunrise(DDD)D

    move-result-wide v18

    .line 466
    .local v18, "hourAngle":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    sub-double v12, v0, v12

    .line 467
    .local v12, "delta":D
    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v26, v12, v16

    .line 468
    .local v26, "timeDiff":D
    const-wide v28, 0x4086800000000000L    # 720.0

    add-double v20, v26, v28

    sub-double v30, v20, v10

    .line 472
    .local v30, "timeUTC":D
    invoke-static {v2, v3}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianDayFromJulianCenturies(D)D

    move-result-wide v20

    div-double v6, v30, v6

    add-double v20, v20, v6

    invoke-static/range {v20 .. v21}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v6

    .line 474
    .local v6, "newt":D
    invoke-static {v6, v7}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v10

    .line 475
    invoke-static {v6, v7}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v22

    .line 476
    .end local v14    # "solarDec":D
    .local v22, "solarDec":D
    move-wide/from16 v20, p2

    move-wide/from16 v24, p6

    invoke-static/range {v20 .. v25}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunHourAngleAtSunrise(DDD)D

    move-result-wide v14

    .line 477
    .end local v18    # "hourAngle":D
    .local v14, "hourAngle":D
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    sub-double v12, v0, v18

    .line 478
    mul-double v16, v16, v12

    .line 479
    .end local v26    # "timeDiff":D
    .local v16, "timeDiff":D
    add-double v28, v16, v28

    sub-double v28, v28, v10

    .line 480
    .end local v30    # "timeUTC":D
    .local v28, "timeUTC":D
    return-wide v28
.end method

.method private static getSunsetUTC(DDDD)D
    .locals 32
    .param p0, "julianDay"    # D
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "zenith"    # D

    .line 562
    move-wide/from16 v0, p4

    invoke-static/range {p0 .. p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v2

    .line 567
    .local v2, "julianCenturies":D
    invoke-static {v2, v3, v0, v1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSolarNoonUTC(DD)D

    move-result-wide v4

    .line 568
    .local v4, "noonmin":D
    const-wide v6, 0x4096800000000000L    # 1440.0

    div-double v8, v4, v6

    add-double v8, p0, v8

    invoke-static {v8, v9}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v8

    .line 572
    .local v8, "tnoon":D
    invoke-static {v8, v9}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v10

    .line 573
    .local v10, "eqTime":D
    invoke-static {v8, v9}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v14

    .line 574
    .local v14, "solarDec":D
    move-wide/from16 v12, p2

    move-wide/from16 v16, p6

    invoke-static/range {v12 .. v17}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunHourAngleAtSunset(DDD)D

    move-result-wide v18

    .line 576
    .local v18, "hourAngle":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    sub-double v12, v0, v12

    .line 577
    .local v12, "delta":D
    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v26, v12, v16

    .line 578
    .local v26, "timeDiff":D
    const-wide v28, 0x4086800000000000L    # 720.0

    add-double v20, v26, v28

    sub-double v30, v20, v10

    .line 582
    .local v30, "timeUTC":D
    invoke-static {v2, v3}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianDayFromJulianCenturies(D)D

    move-result-wide v20

    div-double v6, v30, v6

    add-double v20, v20, v6

    invoke-static/range {v20 .. v21}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v6

    .line 584
    .local v6, "newt":D
    invoke-static {v6, v7}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getEquationOfTime(D)D

    move-result-wide v10

    .line 585
    invoke-static {v6, v7}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunDeclination(D)D

    move-result-wide v22

    .line 586
    .end local v14    # "solarDec":D
    .local v22, "solarDec":D
    move-wide/from16 v20, p2

    move-wide/from16 v24, p6

    invoke-static/range {v20 .. v25}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunHourAngleAtSunset(DDD)D

    move-result-wide v14

    .line 588
    .end local v18    # "hourAngle":D
    .local v14, "hourAngle":D
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    sub-double v12, v0, v18

    .line 589
    mul-double v16, v16, v12

    .line 590
    .end local v26    # "timeDiff":D
    .local v16, "timeDiff":D
    add-double v28, v16, v28

    sub-double v28, v28, v10

    .line 591
    .end local v30    # "timeUTC":D
    .local v28, "timeUTC":D
    return-wide v28
.end method


# virtual methods
.method public getCalculatorName()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "US National Oceanic and Atmospheric Administration Algorithm"

    return-object v0
.end method

.method public getUTCNoon(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 11
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 501
    invoke-static {p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianDay(Ljava/util/Calendar;)D

    move-result-wide v0

    .line 502
    .local v0, "julianDay":D
    invoke-static {v0, v1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianCenturiesFromJulianDay(D)D

    move-result-wide v2

    .line 504
    .local v2, "julianCenturies":D
    invoke-virtual {p2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSolarNoonUTC(DD)D

    move-result-wide v4

    .line 505
    .local v4, "noon":D
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    .line 508
    :goto_0
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    cmpg-double v10, v4, v6

    if-gez v10, :cond_0

    .line 509
    add-double/2addr v4, v8

    goto :goto_0

    .line 511
    :cond_0
    :goto_1
    cmpl-double v6, v4, v8

    if-ltz v6, :cond_1

    .line 512
    sub-double/2addr v4, v8

    goto :goto_1

    .line 514
    :cond_1
    return-wide v4
.end method

.method public getUTCSunrise(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D
    .locals 14
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .line 56
    const-wide/16 v0, 0x0

    if-eqz p5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 57
    .local v2, "elevation":D
    :goto_0
    move-wide/from16 v4, p3

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/kosherjava/zmanim/util/NOAACalculator;->adjustZenith(DD)D

    move-result-wide v12

    .line 59
    .local v12, "adjustedZenith":D
    invoke-static {p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianDay(Ljava/util/Calendar;)D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v10

    neg-double v10, v10

    invoke-static/range {v6 .. v13}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunriseUTC(DDDD)D

    move-result-wide v6

    .line 61
    .local v6, "sunrise":D
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    .line 64
    :goto_1
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    cmpg-double v10, v6, v0

    if-gez v10, :cond_1

    .line 65
    add-double/2addr v6, v8

    goto :goto_1

    .line 67
    :cond_1
    :goto_2
    cmpl-double v0, v6, v8

    if-ltz v0, :cond_2

    .line 68
    sub-double/2addr v6, v8

    goto :goto_2

    .line 70
    :cond_2
    return-wide v6
.end method

.method public getUTCSunset(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D
    .locals 14
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "geoLocation"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p3, "zenith"    # D
    .param p5, "adjustForElevation"    # Z

    .line 77
    const-wide/16 v0, 0x0

    if-eqz p5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 78
    .local v2, "elevation":D
    :goto_0
    move-wide/from16 v4, p3

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/kosherjava/zmanim/util/NOAACalculator;->adjustZenith(DD)D

    move-result-wide v12

    .line 80
    .local v12, "adjustedZenith":D
    invoke-static {p1}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getJulianDay(Ljava/util/Calendar;)D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v10

    neg-double v10, v10

    invoke-static/range {v6 .. v13}, Lcom/kosherjava/zmanim/util/NOAACalculator;->getSunsetUTC(DDDD)D

    move-result-wide v6

    .line 82
    .local v6, "sunset":D
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    .line 85
    :goto_1
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    cmpg-double v10, v6, v0

    if-gez v10, :cond_1

    .line 86
    add-double/2addr v6, v8

    goto :goto_1

    .line 88
    :cond_1
    :goto_2
    cmpl-double v0, v6, v8

    if-ltz v0, :cond_2

    .line 89
    sub-double/2addr v6, v8

    goto :goto_2

    .line 91
    :cond_2
    return-wide v6
.end method

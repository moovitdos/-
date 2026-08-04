.class public Lcom/kosherjava/zmanim/util/GeoLocation;
.super Ljava/lang/Object;
.source "GeoLocation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DISTANCE:I = 0x0

.field private static final FINAL_BEARING:I = 0x2

.field private static final HOUR_MILLIS:J = 0x36ee80L

.field private static final INITIAL_BEARING:I = 0x1

.field private static final MINUTE_MILLIS:J = 0xea60L


# instance fields
.field private elevation:D

.field private latitude:D

.field private locationName:Ljava/lang/String;

.field private longitude:D

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-string v0, "Greenwich, England"

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->setLocationName(Ljava/lang/String;)V

    .line 162
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/util/GeoLocation;->setLongitude(D)V

    .line 163
    const-wide v0, 0x4049bd14e3bcd35bL    # 51.4772

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/util/GeoLocation;->setLatitude(D)V

    .line 164
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->setTimeZone(Ljava/util/TimeZone;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDLjava/util/TimeZone;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "elevation"    # D
    .param p8, "timeZone"    # Ljava/util/TimeZone;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->setLocationName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p2, p3}, Lcom/kosherjava/zmanim/util/GeoLocation;->setLatitude(D)V

    .line 150
    invoke-virtual {p0, p4, p5}, Lcom/kosherjava/zmanim/util/GeoLocation;->setLongitude(D)V

    .line 151
    invoke-virtual {p0, p6, p7}, Lcom/kosherjava/zmanim/util/GeoLocation;->setElevation(D)V

    .line 152
    invoke-virtual {p0, p8}, Lcom/kosherjava/zmanim/util/GeoLocation;->setTimeZone(Ljava/util/TimeZone;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDLjava/util/TimeZone;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "timeZone"    # Ljava/util/TimeZone;

    .line 126
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v8, p6

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "latitude":D
    .end local p4    # "longitude":D
    .end local p6    # "timeZone":Ljava/util/TimeZone;
    .local v1, "name":Ljava/lang/String;
    .local v2, "latitude":D
    .local v4, "longitude":D
    .local v8, "timeZone":Ljava/util/TimeZone;
    invoke-direct/range {v0 .. v8}, Lcom/kosherjava/zmanim/util/GeoLocation;-><init>(Ljava/lang/String;DDDLjava/util/TimeZone;)V

    .line 127
    return-void
.end method

.method private vincentyFormula(Lcom/kosherjava/zmanim/util/GeoLocation;I)D
    .locals 65
    .param p1, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p2, "formula"    # I

    .line 418
    move/from16 v0, p2

    const-wide v1, 0x415854a640000000L    # 6378137.0

    .line 419
    .local v1, "a":D
    const-wide v3, 0x41583fc4141bda51L    # 6356752.3142

    .line 420
    .local v3, "b":D
    const-wide v5, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    .line 421
    .local v5, "f":D
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 422
    .local v7, "L":D
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v11, v9, v5

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    .line 423
    .local v11, "U1":D
    sub-double v13, v9, v5

    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    .line 424
    .local v13, "U2":D
    move-wide v15, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .local v9, "sinU1":D
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    .line 425
    .local v17, "cosU1":D
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    .local v19, "sinU2":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    .line 427
    .local v21, "cosU2":D
    move-wide/from16 v23, v7

    .line 428
    .local v23, "lambda":D
    const-wide v25, 0x401921fb54442d18L    # 6.283185307179586

    .line 429
    .local v25, "lambdaP":D
    const-wide/high16 v27, 0x4034000000000000L    # 20.0

    .line 430
    .local v27, "iterLimit":D
    const-wide/16 v29, 0x0

    .line 431
    .local v29, "sinLambda":D
    const-wide/16 v31, 0x0

    .line 432
    .local v31, "cosLambda":D
    const-wide/16 v33, 0x0

    .line 433
    .local v33, "sinSigma":D
    const-wide/16 v35, 0x0

    .line 434
    .local v35, "cosSigma":D
    const-wide/16 v37, 0x0

    .line 435
    .local v37, "sigma":D
    const-wide/16 v39, 0x0

    .line 436
    .local v39, "sinAlpha":D
    const-wide/16 v41, 0x0

    .line 437
    .local v41, "cosSqAlpha":D
    const-wide/16 v43, 0x0

    .line 439
    .local v43, "cos2SigmaM":D
    :goto_0
    sub-double v45, v23, v25

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->abs(D)D

    move-result-wide v45

    const-wide v47, 0x3d719799812dea11L    # 1.0E-12

    const-wide/high16 v49, -0x4010000000000000L    # -1.0

    const-wide/high16 v51, 0x4000000000000000L    # 2.0

    const-wide/16 v53, 0x0

    const-wide/high16 v55, 0x4010000000000000L    # 4.0

    cmpl-double v57, v45, v47

    if-lez v57, :cond_2

    sub-double v45, v27, v15

    move-wide/from16 v27, v45

    cmpl-double v47, v45, v53

    if-lez v47, :cond_2

    .line 440
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    .line 441
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 442
    mul-double v45, v21, v29

    mul-double v47, v21, v29

    mul-double v45, v45, v47

    mul-double v47, v17, v19

    mul-double v57, v9, v21

    mul-double v57, v57, v31

    sub-double v47, v47, v57

    mul-double v57, v17, v19

    mul-double v59, v9, v21

    mul-double v59, v59, v31

    sub-double v57, v57, v59

    mul-double v47, v47, v57

    add-double v45, v45, v47

    move-wide/from16 v47, v1

    .end local v1    # "a":D
    .local v47, "a":D
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 444
    .end local v33    # "sinSigma":D
    .local v1, "sinSigma":D
    cmpl-double v33, v1, v53

    if-nez v33, :cond_0

    .line 445
    return-wide v53

    .line 446
    :cond_0
    mul-double v33, v9, v19

    mul-double v45, v17, v21

    mul-double v45, v45, v31

    move-wide/from16 v57, v3

    .end local v3    # "b":D
    .local v57, "b":D
    add-double v3, v33, v45

    .line 447
    .end local v35    # "cosSigma":D
    .local v3, "cosSigma":D
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v37

    .line 448
    mul-double v33, v17, v21

    mul-double v33, v33, v29

    div-double v39, v33, v1

    .line 449
    mul-double v33, v39, v39

    sub-double v41, v15, v33

    .line 450
    mul-double v33, v9, v51

    mul-double v33, v33, v19

    div-double v33, v33, v41

    sub-double v33, v3, v33

    .line 451
    .end local v43    # "cos2SigmaM":D
    .local v33, "cos2SigmaM":D
    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->isNaN(D)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 452
    const-wide/16 v33, 0x0

    move-wide/from16 v43, v33

    goto :goto_1

    .line 451
    :cond_1
    move-wide/from16 v43, v33

    .line 453
    .end local v33    # "cos2SigmaM":D
    .restart local v43    # "cos2SigmaM":D
    :goto_1
    const-wide/high16 v33, 0x4030000000000000L    # 16.0

    div-double v33, v5, v33

    mul-double v33, v33, v41

    const-wide/high16 v35, 0x4008000000000000L    # 3.0

    mul-double v35, v35, v41

    sub-double v35, v55, v35

    mul-double v35, v35, v5

    add-double v35, v35, v55

    mul-double v33, v33, v35

    .line 454
    .local v33, "C":D
    move-wide/from16 v25, v23

    .line 455
    sub-double v35, v15, v33

    mul-double v35, v35, v5

    mul-double v35, v35, v39

    mul-double v45, v33, v1

    mul-double v53, v33, v3

    mul-double v51, v51, v43

    mul-double v51, v51, v43

    add-double v51, v51, v49

    mul-double v53, v53, v51

    add-double v53, v43, v53

    mul-double v45, v45, v53

    add-double v45, v37, v45

    mul-double v35, v35, v45

    add-double v23, v7, v35

    move-wide/from16 v33, v1

    move-wide/from16 v35, v3

    move-wide/from16 v1, v47

    move-wide/from16 v3, v57

    goto/16 :goto_0

    .line 439
    .end local v47    # "a":D
    .end local v57    # "b":D
    .local v1, "a":D
    .local v3, "b":D
    .local v33, "sinSigma":D
    .restart local v35    # "cosSigma":D
    :cond_2
    move-wide/from16 v47, v1

    move-wide/from16 v57, v3

    .line 458
    .end local v1    # "a":D
    .end local v3    # "b":D
    .restart local v47    # "a":D
    .restart local v57    # "b":D
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v3, v27, v53

    if-nez v3, :cond_3

    .line 459
    return-wide v1

    .line 461
    :cond_3
    mul-double v3, v47, v47

    mul-double v45, v57, v57

    sub-double v3, v3, v45

    mul-double v3, v3, v41

    mul-double v45, v57, v57

    div-double v3, v3, v45

    .line 462
    .local v3, "uSq":D
    const-wide/high16 v45, 0x40d0000000000000L    # 16384.0

    div-double v45, v3, v45

    const-wide v53, 0x4065e00000000000L    # 175.0

    mul-double v53, v53, v3

    const-wide/high16 v59, 0x4074000000000000L    # 320.0

    sub-double v59, v59, v53

    mul-double v59, v59, v3

    const-wide/high16 v53, -0x3f78000000000000L    # -768.0

    add-double v59, v59, v53

    mul-double v59, v59, v3

    const-wide/high16 v53, 0x40b0000000000000L    # 4096.0

    add-double v59, v59, v53

    mul-double v45, v45, v59

    add-double v45, v45, v15

    .line 463
    .local v45, "A":D
    const-wide/high16 v15, 0x4090000000000000L    # 1024.0

    div-double v15, v3, v15

    const-wide v53, 0x4047800000000000L    # 47.0

    mul-double v53, v53, v3

    const-wide v59, 0x4052800000000000L    # 74.0

    sub-double v59, v59, v53

    mul-double v59, v59, v3

    const-wide/high16 v53, -0x3fa0000000000000L    # -128.0

    add-double v59, v59, v53

    mul-double v59, v59, v3

    const-wide/high16 v53, 0x4070000000000000L    # 256.0

    add-double v59, v59, v53

    mul-double v15, v15, v59

    .line 464
    .local v15, "B":D
    mul-double v53, v15, v33

    div-double v59, v15, v55

    mul-double v51, v51, v43

    mul-double v51, v51, v43

    add-double v51, v51, v49

    mul-double v51, v51, v35

    const-wide/high16 v49, 0x4018000000000000L    # 6.0

    div-double v49, v15, v49

    mul-double v49, v49, v43

    mul-double v61, v33, v55

    mul-double v61, v61, v33

    const-wide/high16 v63, -0x3ff8000000000000L    # -3.0

    add-double v61, v61, v63

    mul-double v49, v49, v61

    mul-double v55, v55, v43

    mul-double v55, v55, v43

    add-double v55, v55, v63

    mul-double v49, v49, v55

    sub-double v51, v51, v49

    mul-double v59, v59, v51

    add-double v59, v43, v59

    mul-double v53, v53, v59

    .line 470
    .local v53, "deltaSigma":D
    mul-double v49, v57, v45

    sub-double v51, v37, v53

    mul-double v49, v49, v51

    .line 473
    .local v49, "distance":D
    move-wide/from16 v51, v1

    mul-double v1, v21, v29

    mul-double v55, v17, v19

    mul-double v59, v9, v21

    mul-double v59, v59, v31

    move-wide/from16 v61, v3

    .end local v3    # "uSq":D
    .local v61, "uSq":D
    sub-double v3, v55, v59

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    .line 475
    .local v1, "fwdAz":D
    mul-double v3, v17, v29

    move-wide/from16 v55, v1

    .end local v1    # "fwdAz":D
    .local v55, "fwdAz":D
    neg-double v1, v9

    mul-double v1, v1, v21

    mul-double v59, v17, v19

    mul-double v59, v59, v31

    add-double v1, v1, v59

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    .line 476
    .local v1, "revAz":D
    if-nez v0, :cond_4

    .line 477
    return-wide v49

    .line 478
    :cond_4
    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 479
    return-wide v55

    .line 480
    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 481
    return-wide v1

    .line 483
    :cond_6
    return-wide v51
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 634
    const/4 v0, 0x0

    .line 636
    .local v0, "clone":Lcom/kosherjava/zmanim/util/GeoLocation;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosherjava/zmanim/util/GeoLocation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 639
    goto :goto_0

    .line 637
    :catch_0
    move-exception v1

    .line 640
    :goto_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Lcom/kosherjava/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    .line 641
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kosherjava/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    .line 642
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 572
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 573
    return v0

    .line 574
    :cond_0
    instance-of v1, p1, Lcom/kosherjava/zmanim/util/GeoLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 575
    return v2

    .line 576
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 577
    .local v1, "geo":Lcom/kosherjava/zmanim/util/GeoLocation;
    iget-wide v3, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lcom/kosherjava/zmanim/util/GeoLocation;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-wide v3, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->longitude:D

    .line 578
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v1, Lcom/kosherjava/zmanim/util/GeoLocation;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-wide v3, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->elevation:D

    iget-wide v5, v1, Lcom/kosherjava/zmanim/util/GeoLocation;->elevation:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_4

    iget-object v3, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/kosherjava/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    iget-object v4, v1, Lcom/kosherjava/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    .line 580
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/kosherjava/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    iget-object v4, v1, Lcom/kosherjava/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    .line 581
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 577
    :goto_2
    return v0
.end method

.method public getAntimeridianAdjustment()I
    .locals 5

    .line 345
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLocalMeanTimeOffset()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 347
    .local v0, "localHoursOffset":D
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 349
    const/4 v2, 0x1

    return v2

    .line 350
    :cond_0
    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    .line 352
    const/4 v2, -0x1

    return v2

    .line 354
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getElevation()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->elevation:D

    return-wide v0
.end method

.method public getGeodesicDistance(Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 2
    .param p1, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->vincentyFormula(Lcom/kosherjava/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeodesicFinalBearing(Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 2
    .param p1, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 384
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->vincentyFormula(Lcom/kosherjava/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeodesicInitialBearing(Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 2
    .param p1, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 369
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->vincentyFormula(Lcom/kosherjava/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->latitude:D

    return-wide v0
.end method

.method public getLocalMeanTimeOffset()J
    .locals 4

    .line 324
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v0, v0, v2

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double v0, v0, v2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->longitude:D

    return-wide v0
.end method

.method public getRhumbLineBearing(Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 10
    .param p1, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 496
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 497
    .local v0, "dLon":D
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 498
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    div-double/2addr v8, v4

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 497
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 499
    .local v2, "dPhi":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 500
    const-wide/16 v4, 0x0

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v8, v0, v4

    if-lez v8, :cond_0

    sub-double/2addr v6, v0

    neg-double v4, v6

    goto :goto_0

    :cond_0
    add-double v4, v0, v6

    :goto_0
    move-wide v0, v4

    .line 501
    :cond_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public getRhumbLineDistance(Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 15
    .param p1, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 513
    const-wide v0, 0x415854a640000000L    # 6378137.0

    .line 514
    .local v0, "earthRadius":D
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 515
    .local v2, "dLat":D
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 516
    .local v4, "dLon":D
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide v10, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 517
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    div-double/2addr v12, v8

    add-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 516
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 518
    .local v6, "dPhi":D
    div-double v8, v2, v6

    .line 520
    .local v8, "q":D
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v14, v10, v12

    if-lez v14, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 524
    :cond_0
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    cmpl-double v12, v4, v10

    if-lez v12, :cond_1

    .line 525
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v4, v10, v4

    .line 527
    :cond_1
    mul-double v10, v2, v2

    mul-double v12, v8, v8

    mul-double v12, v12, v4

    mul-double v12, v12, v4

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 528
    .local v10, "d":D
    mul-double v12, v10, v0

    return-wide v12
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 13

    .line 589
    const/16 v0, 0x11

    .line 590
    .local v0, "result":I
    iget-wide v1, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 591
    .local v1, "latLong":J
    iget-wide v3, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 592
    .local v3, "lonLong":J
    iget-wide v5, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->elevation:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 593
    .local v5, "elevLong":J
    const/16 v7, 0x20

    ushr-long v8, v1, v7

    xor-long/2addr v8, v1

    long-to-int v9, v8

    .line 594
    .local v9, "latInt":I
    ushr-long v10, v3, v7

    xor-long/2addr v10, v3

    long-to-int v8, v10

    .line 595
    .local v8, "lonInt":I
    ushr-long v10, v5, v7

    xor-long/2addr v10, v5

    long-to-int v7, v10

    .line 596
    .local v7, "elevInt":I
    mul-int/lit8 v10, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    add-int/2addr v10, v11

    .line 597
    .end local v0    # "result":I
    .local v10, "result":I
    mul-int/lit8 v0, v10, 0x25

    add-int/2addr v0, v9

    add-int/2addr v10, v0

    .line 598
    mul-int/lit8 v0, v10, 0x25

    add-int/2addr v0, v8

    add-int/2addr v10, v0

    .line 599
    mul-int/lit8 v0, v10, 0x25

    add-int/2addr v0, v7

    add-int/2addr v10, v0

    .line 600
    mul-int/lit8 v0, v10, 0x25

    iget-object v11, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    const/4 v12, 0x0

    if-nez v11, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    iget-object v11, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    :goto_0
    add-int/2addr v0, v11

    add-int/2addr v10, v0

    .line 601
    mul-int/lit8 v0, v10, 0x25

    iget-object v11, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    iget-object v11, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v12

    :goto_1
    add-int/2addr v0, v12

    add-int/2addr v10, v0

    .line 602
    return v10
.end method

.method public setElevation(D)V
    .locals 3
    .param p1, "elevation"    # D

    .line 101
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iput-wide p1, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->elevation:D

    .line 108
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Elevation must not be NaN or infinite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Elevation cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLatitude(D)V
    .locals 3
    .param p1, "latitude"    # D

    .line 177
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    .line 180
    iput-wide p1, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->latitude:D

    .line 181
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Latitude must be between -90 and  90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLatitude(IIDLjava/lang/String;)V
    .locals 8
    .param p1, "degrees"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # D
    .param p5, "direction"    # Ljava/lang/String;

    .line 197
    int-to-double v0, p1

    int-to-double v2, p2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double v6, p3, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    .line 198
    .local v0, "tempLat":D
    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_2

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_2

    .line 202
    const-string v2, "S"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v0, v0, v2

    goto :goto_0

    .line 204
    :cond_0
    const-string v2, "N"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :goto_0
    iput-wide v0, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->latitude:D

    .line 208
    return-void

    .line 205
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Latitude direction must be N or S"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Latitude must be between 0 and  90. Use direction of S instead of negative."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->locationName:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setLongitude(D)V
    .locals 3
    .param p1, "longitude"    # D

    .line 228
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    .line 231
    iput-wide p1, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->longitude:D

    .line 232
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Longitude must be between -180 and  180"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLongitude(IIDLjava/lang/String;)V
    .locals 8
    .param p1, "degrees"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # D
    .param p5, "direction"    # Ljava/lang/String;

    .line 250
    int-to-double v0, p1

    int-to-double v2, p2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double v6, p3, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    .line 251
    .local v0, "longTemp":D
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_2

    iget-wide v2, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->longitude:D

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_2

    .line 254
    const-string v2, "W"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v0, v0, v2

    goto :goto_0

    .line 256
    :cond_0
    const-string v2, "E"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    :goto_0
    iput-wide v0, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->longitude:D

    .line 260
    return-void

    .line 257
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Longitude direction must be E or W"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Longitude must be between 0 and  180.  Use a direction of W instead of negative."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 303
    iput-object p1, p0, Lcom/kosherjava/zmanim/util/GeoLocation;->timeZone:Ljava/util/TimeZone;

    .line 304
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\nLocation Name:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, "\nLatitude:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, "\nLongitude:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v1, "\nElevation:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Meters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v1, "\nTimezone ID:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, "\nTimezone Display Name:\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const-string v1, "\nTimezone GMT Offset:\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 618
    const-string v1, "\nTimezone DST Offset:\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 6

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<GeoLocation>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v1, "\t<LocationName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</LocationName>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, "\t<Latitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</Latitude>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v1, "\t<Longitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</Longitude>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, "\t<Elevation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Meters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</Elevation>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, "\t<TimezoneName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</TimezoneName>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, "\t<TimeZoneDisplayName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</TimeZoneDisplayName>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v1, "\t<TimezoneGMTOffset>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 561
    const-string v2, "</TimezoneGMTOffset>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v1, "\t<TimezoneDSTOffset>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 563
    const-string v2, "</TimezoneDSTOffset>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v1, "</GeoLocation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

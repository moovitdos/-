.class public Lcom/kosherjava/zmanim/util/GeoLocationUtils;
.super Ljava/lang/Object;
.source "GeoLocationUtils.java"


# static fields
.field private static DISTANCE:I

.field private static FINAL_BEARING:I

.field private static INITIAL_BEARING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->DISTANCE:I

    .line 38
    const/4 v0, 0x1

    sput v0, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->INITIAL_BEARING:I

    .line 44
    const/4 v0, 0x2

    sput v0, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->FINAL_BEARING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGeodesicDistance(Lcom/kosherjava/zmanim/util/GeoLocation;Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 2
    .param p0, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 94
    sget v0, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->DISTANCE:I

    invoke-static {p0, p1, v0}, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->vincentyFormula(Lcom/kosherjava/zmanim/util/GeoLocation;Lcom/kosherjava/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getGeodesicFinalBearing(Lcom/kosherjava/zmanim/util/GeoLocation;Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 2
    .param p0, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 76
    sget v0, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->FINAL_BEARING:I

    invoke-static {p0, p1, v0}, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->vincentyFormula(Lcom/kosherjava/zmanim/util/GeoLocation;Lcom/kosherjava/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getGeodesicInitialBearing(Lcom/kosherjava/zmanim/util/GeoLocation;Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 2
    .param p0, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 60
    sget v0, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->INITIAL_BEARING:I

    invoke-static {p0, p1, v0}, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->vincentyFormula(Lcom/kosherjava/zmanim/util/GeoLocation;Lcom/kosherjava/zmanim/util/GeoLocation;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getRhumbLineBearing(Lcom/kosherjava/zmanim/util/GeoLocation;Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 10
    .param p0, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 212
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 213
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

    .line 215
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    div-double/2addr v8, v4

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 213
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 216
    .local v2, "dPhi":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 217
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

    .line 218
    :cond_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public static getRhumbLineDistance(Lcom/kosherjava/zmanim/util/GeoLocation;Lcom/kosherjava/zmanim/util/GeoLocation;)D
    .locals 15
    .param p0, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 232
    const-wide v0, 0x415854a640000000L    # 6378137.0

    .line 233
    .local v0, "earthRadius":D
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 234
    .local v2, "dLat":D
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 235
    .local v4, "dLon":D
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide v10, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    div-double/2addr v12, v8

    add-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 235
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 237
    .local v6, "dPhi":D
    div-double v8, v2, v6

    .line 239
    .local v8, "q":D
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v14, v10, v12

    if-lez v14, :cond_0

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 243
    :cond_0
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    cmpl-double v12, v4, v10

    if-lez v12, :cond_1

    .line 244
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v4, v10, v4

    .line 246
    :cond_1
    mul-double v10, v2, v2

    mul-double v12, v8, v8

    mul-double v12, v12, v4

    mul-double v12, v12, v4

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 247
    .local v10, "d":D
    mul-double v12, v10, v0

    return-wide v12
.end method

.method private static vincentyFormula(Lcom/kosherjava/zmanim/util/GeoLocation;Lcom/kosherjava/zmanim/util/GeoLocation;I)D
    .locals 65
    .param p0, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p1, "destination"    # Lcom/kosherjava/zmanim/util/GeoLocation;
    .param p2, "formula"    # I

    .line 119
    move/from16 v0, p2

    const-wide v1, 0x415854a640000000L    # 6378137.0

    .line 120
    .local v1, "a":D
    const-wide v3, 0x41583fc4141bda51L    # 6356752.3142

    .line 121
    .local v3, "b":D
    const-wide v5, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    .line 122
    .local v5, "f":D
    invoke-virtual/range {p1 .. p1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 123
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

    .line 124
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

    .line 126
    .local v13, "U2":D
    move-wide v15, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .local v9, "sinU1":D
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    .line 127
    .local v17, "cosU1":D
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    .local v19, "sinU2":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    .line 129
    .local v21, "cosU2":D
    move-wide/from16 v23, v7

    .line 130
    .local v23, "lambda":D
    const-wide v25, 0x401921fb54442d18L    # 6.283185307179586

    .line 131
    .local v25, "lambdaP":D
    const-wide/high16 v27, 0x4034000000000000L    # 20.0

    .line 132
    .local v27, "iterLimit":D
    const-wide/16 v29, 0x0

    .line 133
    .local v29, "sinLambda":D
    const-wide/16 v31, 0x0

    .line 134
    .local v31, "cosLambda":D
    const-wide/16 v33, 0x0

    .line 135
    .local v33, "sinSigma":D
    const-wide/16 v35, 0x0

    .line 136
    .local v35, "cosSigma":D
    const-wide/16 v37, 0x0

    .line 137
    .local v37, "sigma":D
    const-wide/16 v39, 0x0

    .line 138
    .local v39, "sinAlpha":D
    const-wide/16 v41, 0x0

    .line 139
    .local v41, "cosSqAlpha":D
    const-wide/16 v43, 0x0

    .line 141
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

    .line 142
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    .line 143
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 144
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

    .line 147
    .end local v33    # "sinSigma":D
    .local v1, "sinSigma":D
    cmpl-double v33, v1, v53

    if-nez v33, :cond_0

    .line 148
    return-wide v53

    .line 149
    :cond_0
    mul-double v33, v9, v19

    mul-double v45, v17, v21

    mul-double v45, v45, v31

    move-wide/from16 v57, v3

    .end local v3    # "b":D
    .local v57, "b":D
    add-double v3, v33, v45

    .line 150
    .end local v35    # "cosSigma":D
    .local v3, "cosSigma":D
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v37

    .line 151
    mul-double v33, v17, v21

    mul-double v33, v33, v29

    div-double v39, v33, v1

    .line 152
    mul-double v33, v39, v39

    sub-double v41, v15, v33

    .line 153
    mul-double v33, v9, v51

    mul-double v33, v33, v19

    div-double v33, v33, v41

    sub-double v33, v3, v33

    .line 154
    .end local v43    # "cos2SigmaM":D
    .local v33, "cos2SigmaM":D
    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->isNaN(D)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 155
    const-wide/16 v33, 0x0

    move-wide/from16 v43, v33

    goto :goto_1

    .line 154
    :cond_1
    move-wide/from16 v43, v33

    .line 156
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

    .line 157
    .local v33, "C":D
    move-wide/from16 v25, v23

    .line 158
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

    .line 141
    .end local v47    # "a":D
    .end local v57    # "b":D
    .local v1, "a":D
    .local v3, "b":D
    .local v33, "sinSigma":D
    .restart local v35    # "cosSigma":D
    :cond_2
    move-wide/from16 v47, v1

    move-wide/from16 v57, v3

    .line 167
    .end local v1    # "a":D
    .end local v3    # "b":D
    .restart local v47    # "a":D
    .restart local v57    # "b":D
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v3, v27, v53

    if-nez v3, :cond_3

    .line 168
    return-wide v1

    .line 170
    :cond_3
    mul-double v3, v47, v47

    mul-double v45, v57, v57

    sub-double v3, v3, v45

    mul-double v3, v3, v41

    mul-double v45, v57, v57

    div-double v3, v3, v45

    .line 171
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

    .line 173
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

    .line 174
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

    .line 182
    .local v53, "deltaSigma":D
    mul-double v49, v57, v45

    sub-double v51, v37, v53

    mul-double v49, v49, v51

    .line 185
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

    .line 188
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

    .line 190
    .local v1, "revAz":D
    sget v3, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->DISTANCE:I

    if-ne v0, v3, :cond_4

    .line 191
    return-wide v49

    .line 192
    :cond_4
    sget v3, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->INITIAL_BEARING:I

    if-ne v0, v3, :cond_5

    .line 193
    return-wide v55

    .line 194
    :cond_5
    sget v3, Lcom/kosherjava/zmanim/util/GeoLocationUtils;->FINAL_BEARING:I

    if-ne v0, v3, :cond_6

    .line 195
    return-wide v1

    .line 197
    :cond_6
    return-wide v51
.end method

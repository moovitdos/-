.class public abstract Lcom/kosherjava/zmanim/util/AstronomicalCalculator;
.super Ljava/lang/Object;
.source "AstronomicalCalculator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final GEOMETRIC_ZENITH:D = 90.0


# instance fields
.field private earthRadius:D

.field private refraction:D

.field private solarRadius:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide v0, 0x3fe2222222222222L    # 0.5666666666666667

    iput-wide v0, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->refraction:D

    .line 42
    const-wide v0, 0x3fd1111111111111L    # 0.26666666666666666

    iput-wide v0, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->solarRadius:D

    .line 51
    const-wide v0, 0x40b8d4e666666666L    # 6356.9

    iput-wide v0, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->earthRadius:D

    return-void
.end method

.method public static getDefault()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;
    .locals 1

    .line 85
    new-instance v0, Lcom/kosherjava/zmanim/util/NOAACalculator;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/util/NOAACalculator;-><init>()V

    return-object v0
.end method


# virtual methods
.method adjustZenith(DD)D
    .locals 6
    .param p1, "zenith"    # D
    .param p3, "elevation"    # D

    .line 230
    move-wide v0, p1

    .line 231
    .local v0, "adjustedZenith":D
    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v4, p1, v2

    if-nez v4, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getSolarRadius()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getRefraction()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p0, p3, p4}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getElevationAdjustment(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-double v0, p1, v2

    .line 234
    :cond_0
    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "clone":Lcom/kosherjava/zmanim/util/AstronomicalCalculator;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 306
    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Required by the compiler. Should never be reached since we implement clone()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 307
    .end local v1    # "cnse":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-object v0
.end method

.method public abstract getCalculatorName()Ljava/lang/String;
.end method

.method public getEarthRadius()D
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->earthRadius:D

    return-wide v0
.end method

.method getElevationAdjustment(D)D
    .locals 6
    .param p1, "elevation"    # D

    .line 192
    iget-wide v0, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->earthRadius:D

    iget-wide v2, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->earthRadius:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, p1, v4

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 193
    .local v0, "elevationAdjustment":D
    return-wide v0
.end method

.method public getRefraction()D
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->refraction:D

    return-wide v0
.end method

.method public getSolarRadius()D
    .locals 2

    .line 282
    iget-wide v0, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->solarRadius:D

    return-wide v0
.end method

.method public abstract getUTCNoon(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;)D
.end method

.method public abstract getUTCSunrise(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D
.end method

.method public abstract getUTCSunset(Ljava/util/Calendar;Lcom/kosherjava/zmanim/util/GeoLocation;DZ)D
.end method

.method public setEarthRadius(D)V
    .locals 0
    .param p1, "earthRadius"    # D

    .line 69
    iput-wide p1, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->earthRadius:D

    .line 70
    return-void
.end method

.method public setRefraction(D)V
    .locals 0
    .param p1, "refraction"    # D

    .line 261
    iput-wide p1, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->refraction:D

    .line 262
    return-void
.end method

.method public setSolarRadius(D)V
    .locals 0
    .param p1, "solarRadius"    # D

    .line 293
    iput-wide p1, p0, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->solarRadius:D

    .line 294
    return-void
.end method

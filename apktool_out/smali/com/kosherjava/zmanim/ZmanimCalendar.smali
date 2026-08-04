.class public Lcom/kosherjava/zmanim/ZmanimCalendar;
.super Lcom/kosherjava/zmanim/AstronomicalCalendar;
.source "ZmanimCalendar.java"


# static fields
.field protected static final ZENITH_16_POINT_1:D = 106.1

.field protected static final ZENITH_8_POINT_5:D = 98.5


# instance fields
.field private candleLightingOffset:D

.field private useElevation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 663
    invoke-direct {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;-><init>()V

    .line 158
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    iput-wide v0, p0, Lcom/kosherjava/zmanim/ZmanimCalendar;->candleLightingOffset:D

    .line 664
    return-void
.end method

.method public constructor <init>(Lcom/kosherjava/zmanim/util/GeoLocation;)V
    .locals 2
    .param p1, "location"    # Lcom/kosherjava/zmanim/util/GeoLocation;

    .line 673
    invoke-direct {p0, p1}, Lcom/kosherjava/zmanim/AstronomicalCalendar;-><init>(Lcom/kosherjava/zmanim/util/GeoLocation;)V

    .line 158
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    iput-wide v0, p0, Lcom/kosherjava/zmanim/ZmanimCalendar;->candleLightingOffset:D

    .line 674
    return-void
.end method


# virtual methods
.method public getAlos72()Ljava/util/Date;
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, -0x41eb00

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAlosHashachar()Ljava/util/Date;
    .locals 2

    .line 229
    const-wide v0, 0x405a866666666666L    # 106.1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCandleLighting()Ljava/util/Date;
    .locals 5

    .line 369
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getCandleLightingOffset()D

    move-result-wide v1

    neg-double v1, v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    mul-double v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCandleLightingOffset()D
    .locals 2

    .line 687
    iget-wide v0, p0, Lcom/kosherjava/zmanim/ZmanimCalendar;->candleLightingOffset:D

    return-wide v0
.end method

.method public getChatzos()Ljava/util/Date;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSunTransit()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getElevationAdjustedSunrise()Ljava/util/Date;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->isUseElevation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-super {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getElevationAdjustedSunset()Ljava/util/Date;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->isUseElevation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-super {p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getSunset()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola()Ljava/util/Date;
    .locals 2

    .line 487
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getMinchaGedola(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaGedola(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "startOfDay"    # Ljava/util/Date;
    .param p2, "endOfDay"    # Ljava/util/Date;

    .line 462
    const-wide/high16 v0, 0x401a000000000000L    # 6.5

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getShaahZmanisBasedZman(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetana()Ljava/util/Date;
    .locals 2

    .line 569
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "startOfDay"    # Ljava/util/Date;
    .param p2, "endOfDay"    # Ljava/util/Date;

    .line 545
    const-wide/high16 v0, 0x4023000000000000L    # 9.5

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getShaahZmanisBasedZman(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha()Ljava/util/Date;
    .locals 2

    .line 612
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPlagHamincha(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "startOfDay"    # Ljava/util/Date;
    .param p2, "endOfDay"    # Ljava/util/Date;

    .line 593
    const-wide v0, 0x4025800000000000L    # 10.75

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getShaahZmanisBasedZman(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSamuchLeMinchaKetana(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "startOfDay"    # Ljava/util/Date;
    .param p2, "endOfDay"    # Ljava/util/Date;

    .line 517
    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getShaahZmanisBasedZman(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getShaahZmanisBasedZman(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;
    .locals 4
    .param p1, "startOfDay"    # Ljava/util/Date;
    .param p2, "endOfDay"    # Ljava/util/Date;
    .param p3, "hours"    # D

    .line 761
    invoke-virtual {p0, p1, p2}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    .line 762
    .local v0, "shaahZmanis":J
    long-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p3

    invoke-static {p1, v2, v3}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getShaahZmanisGra()J
    .locals 2

    .line 634
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShaahZmanisMGA()J
    .locals 2

    .line 653
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "startOfDay"    # Ljava/util/Date;
    .param p2, "endOfDay"    # Ljava/util/Date;

    .line 288
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getShaahZmanisBasedZman(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaGRA()Ljava/util/Date;
    .locals 2

    .line 310
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanShmaMGA()Ljava/util/Date;
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSofZmanShma(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "startOfDay"    # Ljava/util/Date;
    .param p2, "endOfDay"    # Ljava/util/Date;

    .line 395
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getShaahZmanisBasedZman(Ljava/util/Date;Ljava/util/Date;D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaGRA()Ljava/util/Date;
    .locals 2

    .line 416
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunrise()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSofZmanTfilaMGA()Ljava/util/Date;
    .locals 2

    .line 436
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTzais72()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSofZmanTfila(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais()Ljava/util/Date;
    .locals 2

    .line 208
    const-wide v0, 0x4058a00000000000L    # 98.5

    invoke-virtual {p0, v0, v1}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzais72()Ljava/util/Date;
    .locals 3

    .line 350
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x41eb00

    invoke-static {v0, v1, v2}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isAssurBemlacha(Ljava/util/Date;Ljava/util/Date;Z)Z
    .locals 6
    .param p1, "currentTime"    # Ljava/util/Date;
    .param p2, "tzais"    # Ljava/util/Date;
    .param p3, "inIsrael"    # Z

    .line 721
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>()V

    .line 722
    .local v0, "jewishCalendar":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 723
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 722
    invoke-virtual {v0, v1, v3, v4}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setGregorianDate(III)V

    .line 724
    invoke-virtual {v0, p3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setInIsrael(Z)V

    .line 726
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->hasCandleLighting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/ZmanimCalendar;->getElevationAdjustedSunset()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 727
    return v2

    .line 730
    :cond_0
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isAssurBemelacha()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 731
    return v2

    .line 734
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isUseElevation()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/ZmanimCalendar;->useElevation:Z

    return v0
.end method

.method public setCandleLightingOffset(D)V
    .locals 0
    .param p1, "candleLightingOffset"    # D

    .line 701
    iput-wide p1, p0, Lcom/kosherjava/zmanim/ZmanimCalendar;->candleLightingOffset:D

    .line 702
    return-void
.end method

.method public setUseElevation(Z)V
    .locals 0
    .param p1, "useElevation"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/ZmanimCalendar;->useElevation:Z

    .line 116
    return-void
.end method

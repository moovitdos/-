.class public Lcom/kosherjava/zmanim/util/ZmanimFormatter;
.super Ljava/lang/Object;
.source "ZmanimFormatter.java"


# static fields
.field public static final DECIMAL_FORMAT:I = 0x1

.field public static final HOUR_MILLIS:J = 0x36ee80L

.field static final MINUTE_MILLIS:J = 0xea60L

.field public static final SEXAGESIMAL_FORMAT:I = 0x2

.field public static final SEXAGESIMAL_MILLIS_FORMAT:I = 0x4

.field public static final SEXAGESIMAL_SECONDS_FORMAT:I = 0x3

.field public static final SEXAGESIMAL_XSD_FORMAT:I = 0x0

.field public static final XSD_DURATION_FORMAT:I = 0x5

.field private static milliNF:Ljava/text/DecimalFormat;

.field private static minuteSecondNF:Ljava/text/DecimalFormat;


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private hourNF:Ljava/text/DecimalFormat;

.field private prependZeroHours:Z

.field private timeFormat:I

.field private timeZone:Ljava/util/TimeZone;

.field private useMillis:Z

.field private useSeconds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->minuteSecondNF:Ljava/text/DecimalFormat;

    .line 67
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->milliNF:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(ILjava/text/SimpleDateFormat;Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "format"    # I
    .param p2, "dateFormat"    # Ljava/text/SimpleDateFormat;
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->prependZeroHours:Z

    .line 47
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->useSeconds:Z

    .line 52
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->useMillis:Z

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->timeZone:Ljava/util/TimeZone;

    .line 106
    iput v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->timeFormat:I

    .line 156
    invoke-virtual {p0, p3}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->setTimeZone(Ljava/util/TimeZone;)V

    .line 157
    const-string v0, "0"

    .line 158
    .local v0, "hourFormat":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->prependZeroHours:Z

    if-eqz v1, :cond_0

    .line 159
    const-string v0, "00"

    .line 161
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->hourNF:Ljava/text/DecimalFormat;

    .line 162
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->setTimeFormat(I)V

    .line 163
    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 164
    invoke-virtual {p0, p2}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->setDateFormat(Ljava/text/SimpleDateFormat;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;-><init>(ILjava/text/SimpleDateFormat;Ljava/util/TimeZone;)V

    .line 140
    return-void
.end method

.method private static formatDigits(I)Ljava/lang/String;
    .locals 3
    .param p0, "digits"    # I

    .line 336
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "dd":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v0, "methodWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v1, "methodBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 675
    return v3

    .line 676
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 677
    return v4

    .line 679
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_2

    .line 680
    return v4

    .line 681
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "get"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 682
    return v4

    .line 684
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Date"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "long"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 687
    :cond_4
    return v4

    .line 685
    :cond_5
    :goto_0
    return v3
.end method

.method private setSettings(ZZZ)V
    .locals 0
    .param p1, "prependZeroHours"    # Z
    .param p2, "useSeconds"    # Z
    .param p3, "useMillis"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->prependZeroHours:Z

    .line 217
    iput-boolean p2, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->useSeconds:Z

    .line 218
    iput-boolean p3, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->useMillis:Z

    .line 219
    return-void
.end method

.method public static toJSON(Lcom/kosherjava/zmanim/AstronomicalCalendar;)Ljava/lang/String;
    .locals 22
    .param p0, "astronomicalCalendar"    # Lcom/kosherjava/zmanim/AstronomicalCalendar;

    .line 575
    new-instance v0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, v2}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;-><init>(ILjava/text/SimpleDateFormat;Ljava/util/TimeZone;)V

    move-object v1, v0

    .line 577
    .local v1, "formatter":Lcom/kosherjava/zmanim/util/ZmanimFormatter;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 578
    .local v2, "df":Ljava/text/DateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 581
    .local v3, "date":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 582
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 584
    .local v6, "daylight":Z
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "{\n\"metadata\":{\n"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 585
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v0, "\t\"date\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\",\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v0, "\t\"type\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v0, "\t\"algorithm\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getCalculatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v0, "\t\"location\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v0, "\t\"latitude\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v0, "\t\"longitude\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string v0, "\t\"elevation\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kosherjava/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v0, "\t\"timeZoneName\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v6, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v0, "\t\"timeZoneID\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v0, "\t\"timeZoneOffset\":\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    int-to-double v9, v5

    const-wide v11, 0x414b774000000000L    # 3600000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 596
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v0, "},\n\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "com.kosherjava.zmanim.AstronomicalCalendar"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    const-string v0, "AstronomicalTimes"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 602
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "com.kosherjava.zmanim.ComplexZmanimCalendar"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    const-string v0, "Zmanim"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 604
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "com.kosherjava.zmanim.ZmanimCalendar"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    const-string v0, "BasicZmanim"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_3
    :goto_1
    const-string v0, "\":{\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 609
    .local v9, "theMethods":[Ljava/lang/reflect/Method;
    const-string v0, ""

    .line 610
    .local v0, "tagName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 611
    .local v10, "value":Ljava/lang/Object;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v11, "dateList":Ljava/util/List;, "Ljava/util/List<Lcom/kosherjava/zmanim/util/Zman;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v12, "durationList":Ljava/util/List;, "Ljava/util/List<Lcom/kosherjava/zmanim/util/Zman;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v13, "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v15, v9

    move-object/from16 v16, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .local v16, "tagName":Ljava/lang/String;
    const-string v0, "\":\""

    if-ge v14, v15, :cond_a

    .line 615
    aget-object v15, v9, v14

    invoke-static {v15}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->includeMethod(Ljava/lang/reflect/Method;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 616
    aget-object v15, v9, v14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v2

    .end local v2    # "df":Ljava/text/DateFormat;
    .local v17, "df":Ljava/text/DateFormat;
    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 619
    .end local v16    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    :try_start_0
    aget-object v15, v9, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v18, v3

    .end local v3    # "date":Ljava/util/Date;
    .local v18, "date":Ljava/util/Date;
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v16, v3

    check-cast v16, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v4

    move-object/from16 v4, p0

    .end local v4    # "tz":Ljava/util/TimeZone;
    .local v19, "tz":Ljava/util/TimeZone;
    :try_start_2
    invoke-virtual {v15, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    .line 620
    if-nez v10, :cond_4

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\":\"N/A\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 622
    :cond_4
    instance-of v3, v10, Ljava/util/Date;

    if-eqz v3, :cond_5

    .line 623
    new-instance v0, Lcom/kosherjava/zmanim/util/Zman;

    move-object v3, v10

    check-cast v3, Ljava/util/Date;

    invoke-direct {v0, v3, v2}, Lcom/kosherjava/zmanim/util/Zman;-><init>(Ljava/util/Date;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 624
    :cond_5
    instance-of v3, v10, Ljava/lang/Long;

    if-nez v3, :cond_7

    instance-of v3, v10, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    goto :goto_3

    .line 631
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 625
    :cond_7
    :goto_3
    move-object v0, v10

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v0, v15, v20

    if-nez v0, :cond_8

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\":\"N/A\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 628
    :cond_8
    new-instance v0, Lcom/kosherjava/zmanim/util/Zman;

    move-object v3, v10

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v4, v3

    int-to-long v3, v4

    invoke-direct {v0, v3, v4, v2}, Lcom/kosherjava/zmanim/util/Zman;-><init>(JLjava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 635
    :goto_4
    move-object v0, v2

    goto :goto_6

    .line 633
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v19    # "tz":Ljava/util/TimeZone;
    .restart local v4    # "tz":Ljava/util/TimeZone;
    :catch_1
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "tz":Ljava/util/TimeZone;
    .restart local v19    # "tz":Ljava/util/TimeZone;
    goto :goto_5

    .end local v18    # "date":Ljava/util/Date;
    .end local v19    # "tz":Ljava/util/TimeZone;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "tz":Ljava/util/TimeZone;
    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 634
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "tz":Ljava/util/TimeZone;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "date":Ljava/util/Date;
    .restart local v19    # "tz":Ljava/util/TimeZone;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_6

    .line 615
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "df":Ljava/text/DateFormat;
    .end local v18    # "date":Ljava/util/Date;
    .end local v19    # "tz":Ljava/util/TimeZone;
    .local v2, "df":Ljava/text/DateFormat;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "tz":Ljava/util/TimeZone;
    .restart local v16    # "tagName":Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v2    # "df":Ljava/text/DateFormat;
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "tz":Ljava/util/TimeZone;
    .restart local v17    # "df":Ljava/text/DateFormat;
    .restart local v18    # "date":Ljava/util/Date;
    .restart local v19    # "tz":Ljava/util/TimeZone;
    move-object/from16 v0, v16

    .line 614
    .end local v16    # "tagName":Ljava/lang/String;
    .local v0, "tagName":Ljava/lang/String;
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_2

    .end local v0    # "tagName":Ljava/lang/String;
    .end local v17    # "df":Ljava/text/DateFormat;
    .end local v18    # "date":Ljava/util/Date;
    .end local v19    # "tz":Ljava/util/TimeZone;
    .restart local v2    # "df":Ljava/text/DateFormat;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "tz":Ljava/util/TimeZone;
    .restart local v16    # "tagName":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 639
    .end local v2    # "df":Ljava/text/DateFormat;
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "tz":Ljava/util/TimeZone;
    .end local v14    # "i":I
    .restart local v17    # "df":Ljava/text/DateFormat;
    .restart local v18    # "date":Ljava/util/Date;
    .restart local v19    # "tz":Ljava/util/TimeZone;
    sget-object v2, Lcom/kosherjava/zmanim/util/Zman;->DATE_ORDER:Ljava/util/Comparator;

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 640
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "\t\""

    if-ge v2, v3, :cond_b

    .line 641
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosherjava/zmanim/util/Zman;

    .line 642
    .local v3, "zman":Lcom/kosherjava/zmanim/util/Zman;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v3}, Lcom/kosherjava/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->formatDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 646
    .end local v2    # "i":I
    .end local v3    # "zman":Lcom/kosherjava/zmanim/util/Zman;
    :cond_b
    sget-object v2, Lcom/kosherjava/zmanim/util/Zman;->DURATION_ORDER:Ljava/util/Comparator;

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 647
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 648
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosherjava/zmanim/util/Zman;

    .line 649
    .restart local v3    # "zman":Lcom/kosherjava/zmanim/util/Zman;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v3}, Lcom/kosherjava/zmanim/util/Zman;->getDuration()J

    move-result-wide v14

    long-to-int v5, v14

    invoke-virtual {v1, v5}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->format(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 653
    .end local v2    # "i":I
    .end local v3    # "zman":Lcom/kosherjava/zmanim/util/Zman;
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 654
    const-string v2, "\t"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 656
    .end local v0    # "i":I
    :cond_d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 657
    const-string v0, "}\n}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toXML(Lcom/kosherjava/zmanim/AstronomicalCalendar;)Ljava/lang/String;
    .locals 27
    .param p0, "astronomicalCalendar"    # Lcom/kosherjava/zmanim/AstronomicalCalendar;

    .line 415
    new-instance v0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, v2}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;-><init>(ILjava/text/SimpleDateFormat;Ljava/util/TimeZone;)V

    move-object v1, v0

    .line 417
    .local v1, "formatter":Lcom/kosherjava/zmanim/util/ZmanimFormatter;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 418
    .local v2, "df":Ljava/text/DateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 421
    .local v3, "date":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 422
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 424
    .local v6, "daylight":Z
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "<"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 425
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "com.kosherjava.zmanim.AstronomicalCalendar"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, "com.kosherjava.zmanim.ZmanimCalendar"

    const-string v11, "com.kosherjava.zmanim.ComplexZmanimCalendar"

    if-eqz v0, :cond_1

    .line 426
    const-string v0, "AstronomicalTimes"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 430
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    const-string v0, "Zmanim"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    const-string v0, "BasicZmanim"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_3
    :goto_1
    const-string v0, " date=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "\""

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v0, " type=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v0, " algorithm=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lcom/kosherjava/zmanim/util/AstronomicalCalculator;

    move-result-object v13

    invoke-virtual {v13}, Lcom/kosherjava/zmanim/util/AstronomicalCalculator;->getCalculatorName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v0, " location=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v0, " latitude=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v0, " longitude=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLongitude()D

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v0, " elevation=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getGeoLocation()Lcom/kosherjava/zmanim/util/GeoLocation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/kosherjava/zmanim/util/GeoLocation;->getElevation()D

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v0, " timeZoneName=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v6, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v0, " timeZoneID=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v0, " timeZoneOffset=\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    int-to-double v13, v5

    const-wide v15, 0x414b774000000000L    # 3600000.0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v15

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 452
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v5, ">\n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    .line 457
    .local v12, "theMethods":[Ljava/lang/reflect/Method;
    const-string v0, ""

    .line 458
    .local v0, "tagName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 459
    .local v13, "value":Ljava/lang/Object;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v14, "dateList":Ljava/util/List;, "Ljava/util/List<Lcom/kosherjava/zmanim/util/Zman;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v15, "durationList":Ljava/util/List;, "Ljava/util/List<Lcom/kosherjava/zmanim/util/Zman;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 462
    .local v17, "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    move/from16 v26, v16

    move-object/from16 v16, v2

    move/from16 v2, v26

    .local v2, "i":I
    .local v16, "df":Ljava/text/DateFormat;
    :goto_2
    move-object/from16 v18, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .local v18, "tagName":Ljava/lang/String;
    array-length v0, v12

    move-object/from16 v19, v3

    .end local v3    # "date":Ljava/util/Date;
    .local v19, "date":Ljava/util/Date;
    const-string v3, "</"

    move-object/from16 v20, v4

    .end local v4    # "tz":Ljava/util/TimeZone;
    .local v20, "tz":Ljava/util/TimeZone;
    const-string v4, ">"

    if-ge v2, v0, :cond_a

    .line 463
    aget-object v0, v12, v2

    invoke-static {v0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->includeMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 464
    aget-object v0, v12, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v2

    .end local v2    # "i":I
    .local v21, "i":I
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    .end local v18    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    :try_start_0
    aget-object v0, v12, v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v22, v6

    .end local v6    # "daylight":Z
    .local v22, "daylight":Z
    const/4 v6, 0x0

    :try_start_1
    move-object/from16 v18, v6

    check-cast v18, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v23, v12

    move-object/from16 v12, p0

    .end local v12    # "theMethods":[Ljava/lang/reflect/Method;
    .local v23, "theMethods":[Ljava/lang/reflect/Method;
    :try_start_2
    invoke-virtual {v0, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v13, v0

    .line 468
    const-string v0, ">N/A</"

    if-nez v13, :cond_4

    .line 469
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v6, v17

    .end local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_4
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 472
    .end local v6    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v6, v17

    .end local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v12, v13, Ljava/util/Date;

    if-eqz v12, :cond_5

    .line 473
    new-instance v0, Lcom/kosherjava/zmanim/util/Zman;

    move-object v3, v13

    check-cast v3, Ljava/util/Date;

    invoke-direct {v0, v3, v2}, Lcom/kosherjava/zmanim/util/Zman;-><init>(Ljava/util/Date;Ljava/lang/String;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 474
    :cond_5
    instance-of v12, v13, Ljava/lang/Long;

    if-nez v12, :cond_7

    instance-of v12, v13, Ljava/lang/Integer;

    if-eqz v12, :cond_6

    goto :goto_3

    .line 483
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 475
    :cond_7
    :goto_3
    move-object v3, v13

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/high16 v24, -0x8000000000000000L

    cmp-long v3, v17, v24

    if-nez v3, :cond_8

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 480
    :cond_8
    new-instance v0, Lcom/kosherjava/zmanim/util/Zman;

    move-object v3, v13

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v4, v3

    int-to-long v3, v4

    invoke-direct {v0, v3, v4, v2}, Lcom/kosherjava/zmanim/util/Zman;-><init>(JLjava/lang/String;)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 487
    :goto_4
    move-object v0, v2

    goto :goto_6

    .line 485
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v6    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move-object/from16 v6, v17

    .end local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5

    .end local v6    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "theMethods":[Ljava/lang/reflect/Method;
    .restart local v12    # "theMethods":[Ljava/lang/reflect/Method;
    .restart local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    move-object/from16 v23, v12

    move-object/from16 v6, v17

    .end local v12    # "theMethods":[Ljava/lang/reflect/Method;
    .end local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "theMethods":[Ljava/lang/reflect/Method;
    goto :goto_5

    .end local v22    # "daylight":Z
    .end local v23    # "theMethods":[Ljava/lang/reflect/Method;
    .local v6, "daylight":Z
    .restart local v12    # "theMethods":[Ljava/lang/reflect/Method;
    .restart local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v23, v12

    move-object/from16 v6, v17

    .line 486
    .end local v12    # "theMethods":[Ljava/lang/reflect/Method;
    .end local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .local v6, "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "daylight":Z
    .restart local v23    # "theMethods":[Ljava/lang/reflect/Method;
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_6

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v21    # "i":I
    .end local v22    # "daylight":Z
    .end local v23    # "theMethods":[Ljava/lang/reflect/Method;
    .local v2, "i":I
    .local v6, "daylight":Z
    .restart local v12    # "theMethods":[Ljava/lang/reflect/Method;
    .restart local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "tagName":Ljava/lang/String;
    :cond_9
    move/from16 v21, v2

    move/from16 v22, v6

    move-object/from16 v23, v12

    move-object/from16 v6, v17

    .end local v2    # "i":I
    .end local v12    # "theMethods":[Ljava/lang/reflect/Method;
    .end local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "i":I
    .restart local v22    # "daylight":Z
    .restart local v23    # "theMethods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v18

    .line 462
    .end local v18    # "tagName":Ljava/lang/String;
    .local v0, "tagName":Ljava/lang/String;
    :goto_6
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v17, v6

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v6, v22

    move-object/from16 v12, v23

    .end local v21    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_2

    .end local v0    # "tagName":Ljava/lang/String;
    .end local v22    # "daylight":Z
    .end local v23    # "theMethods":[Ljava/lang/reflect/Method;
    .local v6, "daylight":Z
    .restart local v12    # "theMethods":[Ljava/lang/reflect/Method;
    .restart local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "tagName":Ljava/lang/String;
    :cond_a
    move/from16 v21, v2

    move/from16 v22, v6

    move-object/from16 v23, v12

    move-object/from16 v6, v17

    .line 491
    .end local v2    # "i":I
    .end local v12    # "theMethods":[Ljava/lang/reflect/Method;
    .end local v17    # "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "otherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "daylight":Z
    .restart local v23    # "theMethods":[Ljava/lang/reflect/Method;
    sget-object v0, Lcom/kosherjava/zmanim/util/Zman;->DATE_ORDER:Ljava/util/Comparator;

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const-string v7, "\t<"

    if-ge v0, v2, :cond_b

    .line 494
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kosherjava/zmanim/util/Zman;

    .line 495
    .local v2, "zman":Lcom/kosherjava/zmanim/util/Zman;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v2}, Lcom/kosherjava/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->formatDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 499
    .end local v0    # "i":I
    .end local v2    # "zman":Lcom/kosherjava/zmanim/util/Zman;
    :cond_b
    sget-object v0, Lcom/kosherjava/zmanim/util/Zman;->DURATION_ORDER:Ljava/util/Comparator;

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 500
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 501
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kosherjava/zmanim/util/Zman;

    .line 502
    .restart local v2    # "zman":Lcom/kosherjava/zmanim/util/Zman;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    invoke-virtual {v2}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    move-object/from16 v21, v13

    .end local v13    # "value":Ljava/lang/Object;
    .local v21, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/kosherjava/zmanim/util/Zman;->getDuration()J

    move-result-wide v12

    long-to-int v0, v12

    invoke-virtual {v1, v0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v13, v21

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_8

    .end local v2    # "zman":Lcom/kosherjava/zmanim/util/Zman;
    .end local v21    # "value":Ljava/lang/Object;
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_c
    move/from16 v17, v0

    move-object/from16 v21, v13

    .line 507
    .end local v0    # "i":I
    .end local v13    # "value":Ljava/lang/Object;
    .restart local v21    # "value":Ljava/lang/Object;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 508
    const-string v2, "\t"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 511
    .end local v0    # "i":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 512
    const-string v0, "</AstronomicalTimes>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 513
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 514
    const-string v0, "</Zmanim>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 515
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 516
    const-string v0, "</BasicZmanim>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_10
    :goto_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(D)Ljava/lang/String;
    .locals 1
    .param p1, "milliseconds"    # D

    .line 229
    double-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(I)Ljava/lang/String;
    .locals 1
    .param p1, "millis"    # I

    .line 240
    new-instance v0, Lcom/kosherjava/zmanim/util/Time;

    invoke-direct {v0, p1}, Lcom/kosherjava/zmanim/util/Time;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->format(Lcom/kosherjava/zmanim/util/Time;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/kosherjava/zmanim/util/Time;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Lcom/kosherjava/zmanim/util/Time;

    .line 251
    iget v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->timeFormat:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->formatXSDDurationTime(Lcom/kosherjava/zmanim/util/Time;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->hourNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getHours()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    sget-object v2, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->minuteSecondNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getMinutes()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-boolean v2, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->useSeconds:Z

    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    sget-object v1, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->minuteSecondNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    iget-boolean v1, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->useMillis:Z

    if-eqz v1, :cond_2

    .line 263
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    sget-object v1, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->milliNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "dateTime"    # Ljava/util/Date;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .line 280
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 281
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->getXSDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatXSDDurationTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "millis"    # J

    .line 348
    new-instance v0, Lcom/kosherjava/zmanim/util/Time;

    long-to-double v1, p1

    invoke-direct {v0, v1, v2}, Lcom/kosherjava/zmanim/util/Time;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->formatXSDDurationTime(Lcom/kosherjava/zmanim/util/Time;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatXSDDurationTime(Lcom/kosherjava/zmanim/util/Time;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Lcom/kosherjava/zmanim/util/Time;

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "duration":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getHours()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getMinutes()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getSeconds()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getMilliseconds()I

    move-result v1

    if-eqz v1, :cond_6

    .line 361
    :cond_0
    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getHours()I

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getHours()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "H"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_1
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getMinutes()I

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_2
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getSeconds()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getMilliseconds()I

    move-result v1

    if-eqz v1, :cond_4

    .line 371
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getSeconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->milliNF:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->getMilliseconds()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 375
    const-string v1, "T0S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_5
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Time;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 377
    const/4 v1, 0x0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getXSDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 9
    .param p1, "dateTime"    # Ljava/util/Date;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .line 304
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 308
    .local v0, "xsdDateTimeFormat":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 315
    .local v3, "offset":I
    if-nez v3, :cond_0

    .line 316
    const-string v4, "Z"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 319
    :cond_0
    const v4, 0x36ee80

    div-int v5, v3, v4

    .line 321
    .local v5, "hrs":I
    rem-int v4, v3, v4

    .line 322
    .local v4, "min":I
    if-gez v5, :cond_1

    const/16 v6, 0x2d

    goto :goto_0

    :cond_1
    const/16 v6, 0x2b

    .line 323
    .local v6, "posneg":C
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->formatDigits(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->formatDigits(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .end local v4    # "min":I
    .end local v5    # "hrs":I
    .end local v6    # "posneg":C
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public setDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0
    .param p1, "simpleDateFormat"    # Ljava/text/SimpleDateFormat;

    .line 198
    iput-object p1, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 199
    return-void
.end method

.method public setTimeFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .line 174
    iput p1, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->timeFormat:I

    .line 175
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 186
    :pswitch_1
    invoke-direct {p0, v0, v1, v1}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V

    goto :goto_0

    .line 183
    :pswitch_2
    invoke-direct {p0, v0, v1, v0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V

    .line 184
    goto :goto_0

    .line 180
    :pswitch_3
    invoke-direct {p0, v0, v0, v0}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V

    .line 181
    goto :goto_0

    .line 177
    :pswitch_4
    invoke-direct {p0, v1, v1, v1}, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V

    .line 178
    nop

    .line 191
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 93
    iput-object p1, p0, Lcom/kosherjava/zmanim/util/ZmanimFormatter;->timeZone:Ljava/util/TimeZone;

    .line 94
    return-void
.end method

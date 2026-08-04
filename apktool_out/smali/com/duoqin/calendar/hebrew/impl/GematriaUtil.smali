.class public Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;
.super Ljava/lang/Object;
.source "GematriaUtil.java"


# static fields
.field private static final HUNDREDS:[Ljava/lang/String;

.field private static final TENS:[Ljava/lang/String;

.field private static final UNITS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u05d0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u05d1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u05d2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u05d3"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u05d4"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u05d5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u05d6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u05d7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u05d8"

    aput-object v3, v1, v2

    sput-object v1, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->UNITS:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u05d9"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u05db"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u05dc"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u05de"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u05e0"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u05e1"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u05e2"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u05e4"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u05e6"

    aput-object v3, v1, v2

    sput-object v1, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->TENS:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u05e7"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u05e8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u05e9"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u05ea"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u05ea\u05e7"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u05ea\u05e8"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u05ea\u05e9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u05ea\u05ea"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u05ea\u05ea\u05e7"

    aput-object v2, v0, v1

    sput-object v0, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->HUNDREDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDay(I)Ljava/lang/String;
    .locals 2
    .param p0, "day"    # I

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const-string v0, "\u05d8\"\u05d6"

    return-object v0

    :cond_0
    const/16 v0, 0xf

    if-ne p0, v0, :cond_1

    const-string v0, "\u05d8\"\u05d5"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->formatNumber(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatNumber(IZ)Ljava/lang/String;
    .locals 5
    .param p0, "n"    # I
    .param p1, "isYear"    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x3e8

    if-lt p0, v2, :cond_0

    const-string v2, "\u05d0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 p0, p0, -0x3e8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, 0x64

    if-lt p0, v2, :cond_1

    sget-object v3, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->HUNDREDS:[Ljava/lang/String;

    div-int/lit8 v4, p0, 0x64

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0x64

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v2, 0xa

    if-lt p0, v2, :cond_2

    sget-object v3, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->TENS:[Ljava/lang/String;

    div-int/lit8 v4, p0, 0xa

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p0, p0, 0xa

    goto :goto_2

    :cond_2
    if-lez p0, :cond_3

    sget-object v2, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->UNITS:[Ljava/lang/String;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatYear(I)Ljava/lang/String;
    .locals 4
    .param p0, "year"    # I

    const/16 v0, 0x3e8

    rem-int v1, p0, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->formatNumber(IZ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int v0, p0, v0

    add-int/lit8 v0, v0, -0x1

    sget-object v3, Lcom/duoqin/calendar/hebrew/impl/GematriaUtil;->UNITS:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

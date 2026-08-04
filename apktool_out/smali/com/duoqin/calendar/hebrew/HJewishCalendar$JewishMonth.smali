.class public final enum Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;
.super Ljava/lang/Enum;
.source "HJewishCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoqin/calendar/hebrew/HJewishCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JewishMonth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum ADAR:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum ADAR_2:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum AV:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum ELUL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum HESHVAN:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum IYAR:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum KISLEV:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum NISAN:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum SHEVAT:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum SIVAN:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum TAMUZ:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum TEVET:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field public static final enum TISHRI:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

.field private static final _cache:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;


# instance fields
.field private final _num:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 15
    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "NISAN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v8}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->NISAN:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "IYAR"

    invoke-direct {v4, v5, v8, v9}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->IYAR:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "SIVAN"

    invoke-direct {v4, v5, v9, v10}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->SIVAN:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "TAMUZ"

    invoke-direct {v4, v5, v10, v11}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->TAMUZ:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "AV"

    invoke-direct {v4, v5, v11, v12}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->AV:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "ELUL"

    const/4 v6, 0x6

    invoke-direct {v4, v5, v12, v6}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->ELUL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "TISHRI"

    const/4 v6, 0x6

    const/4 v7, 0x7

    invoke-direct {v4, v5, v6, v7}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->TISHRI:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "HESHVAN"

    const/4 v6, 0x7

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->HESHVAN:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    .line 16
    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "KISLEV"

    const/16 v6, 0x8

    const/16 v7, 0x9

    invoke-direct {v4, v5, v6, v7}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->KISLEV:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "TEVET"

    const/16 v6, 0x9

    const/16 v7, 0xa

    invoke-direct {v4, v5, v6, v7}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->TEVET:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "SHEVAT"

    const/16 v6, 0xa

    const/16 v7, 0xb

    invoke-direct {v4, v5, v6, v7}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->SHEVAT:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "ADAR"

    const/16 v6, 0xb

    const/16 v7, 0xc

    invoke-direct {v4, v5, v6, v7}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->ADAR:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    new-instance v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const-string v5, "ADAR_2"

    const/16 v6, 0xc

    const/16 v7, 0xd

    invoke-direct {v4, v5, v6, v7}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->ADAR_2:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    .line 14
    const/16 v4, 0xd

    new-array v4, v4, [Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    const/4 v5, 0x0

    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->NISAN:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v6, v4, v5

    sget-object v5, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->IYAR:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v5, v4, v8

    sget-object v5, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->SIVAN:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v5, v4, v9

    sget-object v5, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->TAMUZ:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v5, v4, v10

    sget-object v5, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->AV:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v5, v4, v11

    sget-object v5, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->ELUL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v5, v4, v12

    const/4 v5, 0x6

    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->TISHRI:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->HESHVAN:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->KISLEV:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->TEVET:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->SHEVAT:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->ADAR:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->ADAR_2:Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    aput-object v6, v4, v5

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->$VALUES:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    .line 20
    const/16 v4, 0xd

    new-array v4, v4, [Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    sput-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->_cache:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    .line 23
    invoke-static {}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->values()[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    move-result-object v0

    .local v0, "arr$":[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 24
    .local v2, "jm":Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;
    sget-object v4, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->_cache:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    invoke-virtual {v2}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->getOrdinalNumber()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aput-object v2, v4, v5

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v2    # "jm":Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->_num:I

    .line 29
    return-void
.end method

.method public static get(I)Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 47
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-le p0, v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Month ordinal can only be between 1 and 13: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    sget-object v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->_cache:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    return-object v0
.end method

.method public static values()[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->$VALUES:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;

    return-object v0
.end method


# virtual methods
.method public getOrdinalNumber()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$JewishMonth;->_num:I

    return v0
.end method

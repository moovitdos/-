.class public final enum Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;
.super Ljava/lang/Enum;
.source "HJewishCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoqin/calendar/hebrew/HJewishCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "YearType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

.field public static final enum FULL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

.field public static final enum NORMAL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

.field public static final enum SHORT:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v2}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->SHORT:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    new-instance v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->NORMAL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    new-instance v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v4}, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->FULL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    sget-object v1, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->SHORT:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->NORMAL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->FULL:Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->$VALUES:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    return-object v0
.end method

.method public static values()[Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;->$VALUES:[Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duoqin/calendar/hebrew/HJewishCalendar$YearType;

    return-object v0
.end method

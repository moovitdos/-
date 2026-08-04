.class public final enum Lcom/duoqin/calendar/hebrew/HCalendarType;
.super Ljava/lang/Enum;
.source "HCalendarType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoqin/calendar/hebrew/HCalendarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duoqin/calendar/hebrew/HCalendarType;

.field public static final enum GREGORIAN:Lcom/duoqin/calendar/hebrew/HCalendarType;

.field public static final enum HEBREW:Lcom/duoqin/calendar/hebrew/HCalendarType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/duoqin/calendar/hebrew/HCalendarType;

    const-string v1, "GREGORIAN"

    invoke-direct {v0, v1, v2}, Lcom/duoqin/calendar/hebrew/HCalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoqin/calendar/hebrew/HCalendarType;->GREGORIAN:Lcom/duoqin/calendar/hebrew/HCalendarType;

    new-instance v0, Lcom/duoqin/calendar/hebrew/HCalendarType;

    const-string v1, "HEBREW"

    invoke-direct {v0, v1, v3}, Lcom/duoqin/calendar/hebrew/HCalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoqin/calendar/hebrew/HCalendarType;->HEBREW:Lcom/duoqin/calendar/hebrew/HCalendarType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/duoqin/calendar/hebrew/HCalendarType;

    sget-object v1, Lcom/duoqin/calendar/hebrew/HCalendarType;->GREGORIAN:Lcom/duoqin/calendar/hebrew/HCalendarType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duoqin/calendar/hebrew/HCalendarType;->HEBREW:Lcom/duoqin/calendar/hebrew/HCalendarType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/duoqin/calendar/hebrew/HCalendarType;->$VALUES:[Lcom/duoqin/calendar/hebrew/HCalendarType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoqin/calendar/hebrew/HCalendarType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/duoqin/calendar/hebrew/HCalendarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoqin/calendar/hebrew/HCalendarType;

    return-object v0
.end method

.method public static values()[Lcom/duoqin/calendar/hebrew/HCalendarType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/duoqin/calendar/hebrew/HCalendarType;->$VALUES:[Lcom/duoqin/calendar/hebrew/HCalendarType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duoqin/calendar/hebrew/HCalendarType;

    return-object v0
.end method

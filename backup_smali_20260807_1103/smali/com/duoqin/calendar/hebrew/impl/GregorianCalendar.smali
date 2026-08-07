.class public final Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;
.super Lcom/duoqin/calendar/hebrew/impl/CommonCalendar;
.source "GregorianCalendar.java"


# static fields
.field public static final INSTANCE:Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;

    invoke-direct {v0}, Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/impl/CommonCalendar;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method getStart()J
    .locals 2

    .prologue
    .line 22
    const-wide/32 v0, 0x14f4f5

    return-wide v0
.end method

.method public getType()Lcom/duoqin/calendar/hebrew/HCalendarType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/duoqin/calendar/hebrew/HCalendarType;->GREGORIAN:Lcom/duoqin/calendar/hebrew/HCalendarType;

    return-object v0
.end method

.method public isLeap(I)Z
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 13
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    rem-int/lit16 v0, p1, 0x190

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

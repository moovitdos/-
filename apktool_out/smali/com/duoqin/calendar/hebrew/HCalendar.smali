.class public interface abstract Lcom/duoqin/calendar/hebrew/HCalendar;
.super Ljava/lang/Object;
.source "HCalendar.java"


# static fields
.field public static final GREGORIAN:Lcom/duoqin/calendar/hebrew/HCalendar;

.field public static final HEBREW:Lcom/duoqin/calendar/hebrew/HJewishCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/GregorianCalendar;

    sput-object v0, Lcom/duoqin/calendar/hebrew/HCalendar;->GREGORIAN:Lcom/duoqin/calendar/hebrew/HCalendar;

    .line 8
    sget-object v0, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

    sput-object v0, Lcom/duoqin/calendar/hebrew/HCalendar;->HEBREW:Lcom/duoqin/calendar/hebrew/HJewishCalendar;

    return-void
.end method


# virtual methods
.method public abstract getType()Lcom/duoqin/calendar/hebrew/HCalendarType;
.end method

.method public abstract isLeap(I)Z
.end method

.method public abstract monthLength(II)I
.end method

.method public abstract monthsInYear(I)I
.end method

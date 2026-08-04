.class public interface abstract Lcom/duoqin/calendar/hebrew/HDate;
.super Ljava/lang/Object;
.source "HDate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/duoqin/calendar/hebrew/HDate;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addDays(I)Lcom/duoqin/calendar/hebrew/HDate;
.end method

.method public abstract getCalendar()Lcom/duoqin/calendar/hebrew/HCalendar;
.end method

.method public abstract getCalendarType()Lcom/duoqin/calendar/hebrew/HCalendarType;
.end method

.method public abstract getDay()I
.end method

.method public abstract getMonth()I
.end method

.method public abstract getYear()I
.end method

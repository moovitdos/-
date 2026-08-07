.class final Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState$1;
.super Ljava/lang/Object;
.source "HebrewDatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 832
    new-instance v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;-><init>(Landroid/os/Parcel;Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 836
    new-array v0, p1, [Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState$1;->newArray(I)[Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

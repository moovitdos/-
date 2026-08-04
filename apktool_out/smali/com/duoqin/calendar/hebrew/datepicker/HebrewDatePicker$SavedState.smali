.class Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HebrewDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 829
    new-instance v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 813
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mYear:I

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mMonth:I

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mDay:I

    .line 817
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 803
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 804
    iput p2, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mYear:I

    .line 805
    iput p3, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mMonth:I

    .line 806
    iput p4, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mDay:I

    .line 807
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;

    .prologue
    .line 791
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;

    .prologue
    .line 791
    iget v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1300(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;

    .prologue
    .line 791
    iget v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;

    .prologue
    .line 791
    iget v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 821
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 822
    iget v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    return-void
.end method

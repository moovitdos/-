.class final Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/common/util/LunarCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SpecialSolarTermInfo"
.end annotation


# instance fields
.field mIndex:I

.field mSpecialStr:Ljava/lang/String;

.field mTermStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "specialStr"    # Ljava/lang/String;
    .param p2, "termStr"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->mSpecialStr:Ljava/lang/String;

    .line 526
    iput-object p2, p0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->mTermStr:Ljava/lang/String;

    .line 527
    iput p3, p0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->mIndex:I

    .line 528
    return-void
.end method


# virtual methods
.method copySelf()Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;
    .locals 4

    .prologue
    .line 531
    new-instance v0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;

    iget-object v1, p0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->mSpecialStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->mTermStr:Ljava/lang/String;

    iget v3, p0, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;->mIndex:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sprd/common/util/LunarCalendar$SpecialSolarTermInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

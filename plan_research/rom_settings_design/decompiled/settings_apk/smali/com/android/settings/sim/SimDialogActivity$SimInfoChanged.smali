.class Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/sim/SimManager$OnSimsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimInfoChanged"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimUpdated([Landroid/sim/Sim;)V
    .locals 2
    .param p1, "sims"    # [Landroid/sim/Sim;

    .prologue
    .line 552
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 555
    :cond_1
    return-void
.end method

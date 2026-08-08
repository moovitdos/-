.class Lcom/android/settings/sim/SimDialogActivity$8;
.super Landroid/database/ContentObserver;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$8;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$8;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v0}, Lcom/android/settings/sim/SimDialogActivity;->access$400(Lcom/android/settings/sim/SimDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->isRadioBusy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$8;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v0}, Lcom/android/settings/sim/SimDialogActivity;->access$500(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$8;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v0}, Lcom/android/settings/sim/SimDialogActivity;->access$600(Lcom/android/settings/sim/SimDialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$8;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v0}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$8;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

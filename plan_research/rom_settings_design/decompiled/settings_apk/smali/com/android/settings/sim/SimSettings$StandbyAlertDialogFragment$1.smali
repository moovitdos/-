.class Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

.field final synthetic val$sft:Lcom/android/settings/sim/SimSettings;

.field final synthetic val$telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;Landroid/telephony/TelephonyManager;Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;->this$0:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;->val$sft:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;->this$0:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->access$2500(Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;->this$0:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->access$2600(Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimStandby(IZ)V

    .line 1144
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;->val$sft:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$2700(Lcom/android/settings/sim/SimSettings;)V

    .line 1145
    return-void
.end method

.class Lcom/android/settings/sim/SimDialogActivity$9;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 807
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 809
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, "stateExtra":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 811
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v3}, Lcom/android/settings/sim/SimDialogActivity;->access$1300(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 812
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 827
    .end local v2    # "stateExtra":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v3}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 818
    const-string v3, "phone_id"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 819
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v3}, Lcom/android/settings/sim/SimDialogActivity;->access$200(Lcom/android/settings/sim/SimDialogActivity;)[Landroid/telephony/TelephonyManager;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->setPrimaryCard(I)V

    .line 820
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v3}, Lcom/android/settings/sim/SimDialogActivity;->access$1400(Lcom/android/settings/sim/SimDialogActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 821
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v3}, Lcom/android/settings/sim/SimDialogActivity;->access$1400(Lcom/android/settings/sim/SimDialogActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 823
    :cond_2
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$9;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

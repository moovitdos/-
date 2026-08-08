.class Lcom/android/settings/sim/SimSettings$7;
.super Landroid/content/BroadcastReceiver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$7;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "action":Ljava/lang/String;
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1181
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1182
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1183
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$7;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$2900(Lcom/android/settings/sim/SimSettings;)Landroid/app/DialogFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1184
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$7;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$2900(Lcom/android/settings/sim/SimSettings;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 1188
    .end local v1    # "stateExtra":Ljava/lang/String;
    :cond_0
    return-void
.end method

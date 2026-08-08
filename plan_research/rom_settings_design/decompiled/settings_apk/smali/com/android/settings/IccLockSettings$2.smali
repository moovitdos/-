.class Lcom/android/settings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    const-string v4, "phone_id"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 176
    .local v2, "phoneId":I
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "state":Ljava/lang/String;
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "lockedReason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v4}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)I

    move-result v4

    if-ne v2, v4, :cond_0

    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "PUK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v4}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v5}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    .end local v1    # "lockedReason":Ljava/lang/String;
    .end local v2    # "phoneId":I
    .end local v3    # "state":Ljava/lang/String;
    :cond_1
    return-void
.end method

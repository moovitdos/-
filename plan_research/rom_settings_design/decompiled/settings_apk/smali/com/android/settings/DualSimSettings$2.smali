.class Lcom/android/settings/DualSimSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "DualSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DualSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DualSimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DualSimSettings;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/DualSimSettings$2;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.DEFAULT_PHONE_CHANGE_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/settings/DualSimSettings$2;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v1}, Lcom/android/settings/DualSimSettings;->access$000(Lcom/android/settings/DualSimSettings;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/android/settings/DualSimSettings$2;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v1}, Lcom/android/settings/DualSimSettings;->access$000(Lcom/android/settings/DualSimSettings;)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/DualSimSettings$2;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/settings/DualSimSettings$2;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v1}, Lcom/android/settings/DualSimSettings;->access$100(Lcom/android/settings/DualSimSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 210
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/android/settings/DualSimSettings$2;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v1}, Lcom/android/settings/DualSimSettings;->access$000(Lcom/android/settings/DualSimSettings;)V

    goto :goto_0

    .line 213
    :cond_3
    const-string v1, "android.intent.action.MMS_REQUEST_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string v1, "DualSimSettings"

    const-string v2, "receive action :ACTION_MMS_REQUEST_DATA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/settings/DualSimSettings$2;->this$0:Lcom/android/settings/DualSimSettings;

    const-string v2, "networkUnvailable"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/DualSimSettings;->access$202(Lcom/android/settings/DualSimSettings;Z)Z

    .line 216
    iget-object v1, p0, Lcom/android/settings/DualSimSettings$2;->this$0:Lcom/android/settings/DualSimSettings;

    const-string v2, "phone_id"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/DualSimSettings;->access$302(Lcom/android/settings/DualSimSettings;I)I

    .line 217
    iget-object v1, p0, Lcom/android/settings/DualSimSettings$2;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v1}, Lcom/android/settings/DualSimSettings;->access$400(Lcom/android/settings/DualSimSettings;)V

    goto :goto_0
.end method

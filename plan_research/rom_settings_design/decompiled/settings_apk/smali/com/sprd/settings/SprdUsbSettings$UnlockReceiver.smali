.class Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SprdUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/SprdUsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/SprdUsbSettings;


# direct methods
.method private constructor <init>(Lcom/sprd/settings/SprdUsbSettings;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/settings/SprdUsbSettings;Lcom/sprd/settings/SprdUsbSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p2, "x1"    # Lcom/sprd/settings/SprdUsbSettings$1;

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;-><init>(Lcom/sprd/settings/SprdUsbSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 939
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    const-string v2, "SprdUsbSettings"

    const-string v3, "ACTION_USER_PRESENT is received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remember_usb_choice"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 944
    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_function"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sprd/settings/SprdUsbSettings;->access$2502(Lcom/sprd/settings/SprdUsbSettings;I)I

    .line 947
    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v2}, Lcom/sprd/settings/SprdUsbSettings;->access$2500(Lcom/sprd/settings/SprdUsbSettings;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v2}, Lcom/sprd/settings/SprdUsbSettings;->access$1900(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v2}, Lcom/sprd/settings/SprdUsbSettings;->access$2000(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 949
    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_function"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v2}, Lcom/sprd/settings/SprdUsbSettings;->access$1800(Lcom/sprd/settings/SprdUsbSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$2500(Lcom/sprd/settings/SprdUsbSettings;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 955
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 956
    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v2}, Lcom/sprd/settings/SprdUsbSettings;->access$1800(Lcom/sprd/settings/SprdUsbSettings;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

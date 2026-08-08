.class Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SprdUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/SprdUsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/SprdUsbSettings;


# direct methods
.method private constructor <init>(Lcom/sprd/settings/SprdUsbSettings;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/settings/SprdUsbSettings;Lcom/sprd/settings/SprdUsbSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p2, "x1"    # Lcom/sprd/settings/SprdUsbSettings$1;

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;-><init>(Lcom/sprd/settings/SprdUsbSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 843
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SprdUsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ums action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 847
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$1000(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$1700(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_function"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remember_usb_choice"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 857
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_function"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 874
    :cond_2
    invoke-static {}, Lcom/sprd/settings/SprdUsbSettings;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 875
    const-string v1, "SprdUsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_3
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 877
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 878
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sprd/settings/SprdUsbSettings;->access$702(Lcom/sprd/settings/SprdUsbSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 880
    :cond_4
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$1900(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$2000(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_function"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 884
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_function"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 887
    :cond_5
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$500(Lcom/sprd/settings/SprdUsbSettings;)V

    goto/16 :goto_0

    .line 862
    :cond_6
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$1000(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 863
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$1800(Lcom/sprd/settings/SprdUsbSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1, v4}, Lcom/sprd/settings/SprdUsbSettings;->access$1002(Lcom/sprd/settings/SprdUsbSettings;Z)Z

    .line 866
    :cond_7
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 868
    :cond_8
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$400(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0
.end method

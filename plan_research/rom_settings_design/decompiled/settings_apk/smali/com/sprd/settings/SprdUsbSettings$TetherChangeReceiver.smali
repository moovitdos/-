.class Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SprdUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/SprdUsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/SprdUsbSettings;


# direct methods
.method private constructor <init>(Lcom/sprd/settings/SprdUsbSettings;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/settings/SprdUsbSettings;Lcom/sprd/settings/SprdUsbSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p2, "x1"    # Lcom/sprd/settings/SprdUsbSettings$1;

    .prologue
    .line 891
    invoke-direct {p0, p1}, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;-><init>(Lcom/sprd/settings/SprdUsbSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 893
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "action":Ljava/lang/String;
    const-string v4, "SprdUsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 897
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 899
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 901
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 903
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/sprd/settings/SprdUsbSettings;->access$2100(Lcom/sprd/settings/SprdUsbSettings;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 923
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 907
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    const-string v5, "connected"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/sprd/settings/SprdUsbSettings;->access$2202(Lcom/sprd/settings/SprdUsbSettings;Z)Z

    .line 908
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    const-string v5, "accessory"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/sprd/settings/SprdUsbSettings;->access$2302(Lcom/sprd/settings/SprdUsbSettings;Z)Z

    .line 909
    invoke-static {}, Lcom/sprd/settings/SprdUsbSettings;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 910
    const-string v4, "SprdUsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUsbConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v6}, Lcom/sprd/settings/SprdUsbSettings;->access$2200(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUsbAccessoryMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v6}, Lcom/sprd/settings/SprdUsbSettings;->access$2300(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_2
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v4}, Lcom/sprd/settings/SprdUsbSettings;->access$2200(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 914
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v4}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v4}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v4}, Lcom/sprd/settings/SprdUsbSettings;->access$1000(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 915
    invoke-static {}, Lcom/sprd/settings/SprdUsbSettings;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 916
    const-string v4, "SprdUsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDialog = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v6}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_3
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v4}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 918
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sprd/settings/SprdUsbSettings;->access$702(Lcom/sprd/settings/SprdUsbSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 921
    :cond_4
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v4}, Lcom/sprd/settings/SprdUsbSettings;->access$500(Lcom/sprd/settings/SprdUsbSettings;)V

    goto/16 :goto_0
.end method

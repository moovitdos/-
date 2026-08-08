.class Lcom/sprd/settings/SprdUsbSettings$PowerDisconnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SprdUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/SprdUsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerDisconnectReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/SprdUsbSettings;


# direct methods
.method private constructor <init>(Lcom/sprd/settings/SprdUsbSettings;)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/sprd/settings/SprdUsbSettings$PowerDisconnectReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/settings/SprdUsbSettings;Lcom/sprd/settings/SprdUsbSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p2, "x1"    # Lcom/sprd/settings/SprdUsbSettings$1;

    .prologue
    .line 926
    invoke-direct {p0, p1}, Lcom/sprd/settings/SprdUsbSettings$PowerDisconnectReceiver;-><init>(Lcom/sprd/settings/SprdUsbSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 928
    const-string v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 929
    .local v0, "plugType":I
    invoke-static {}, Lcom/sprd/settings/SprdUsbSettings;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SprdUsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    if-nez v0, :cond_1

    .line 931
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$PowerDisconnectReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v1}, Lcom/sprd/settings/SprdUsbSettings;->access$2400(Lcom/sprd/settings/SprdUsbSettings;)V

    .line 932
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings$PowerDisconnectReceiver;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 934
    :cond_1
    return-void
.end method

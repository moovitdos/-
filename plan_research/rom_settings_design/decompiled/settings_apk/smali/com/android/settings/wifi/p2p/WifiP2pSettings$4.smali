.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 257
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_2

    .line 264
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiP2pSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelConnect dev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 292
    .end local v0    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    :goto_0
    return-void

    .line 280
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WifiP2pSettings"

    const-string v2, "cancelConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

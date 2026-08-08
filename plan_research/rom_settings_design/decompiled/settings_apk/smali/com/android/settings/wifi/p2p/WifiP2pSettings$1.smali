.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;
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
    .line 115
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "WifiP2pSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive action ..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 123
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v8, "wifi_p2p_state"

    invoke-virtual {p2, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_2

    :goto_0
    invoke-static {v7, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 125
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 170
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v6

    .line 123
    goto :goto_0

    .line 126
    :cond_3
    const-string v7, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 127
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v5, "wifiP2pDeviceList"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-static {v6, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 129
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_1

    .line 130
    :cond_4
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 131
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 132
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 134
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    const-string v6, "wifiP2pInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 136
    .local v4, "wifip2pinfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 137
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 139
    :cond_5
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "WifiP2pSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifip2pinfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " networkInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_6
    iget-boolean v1, v4, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 143
    .local v1, "currentGroupFormed":Z
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 144
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "WifiP2pSettings"

    const-string v6, "Connected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-boolean v6, v4, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-static {v5, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$702(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    goto/16 :goto_1

    .line 145
    :cond_8
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-ne v6, v5, :cond_9

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-ne v6, v5, :cond_7

    if-eq v1, v5, :cond_7

    .line 148
    :cond_9
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_2

    .line 151
    .end local v1    # "currentGroupFormed":Z
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "wifip2pinfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_a
    const-string v7, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 152
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v5, "wifiP2pDevice"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v6, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 154
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "WifiP2pSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update device info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_b
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_1

    .line 156
    :cond_c
    const-string v7, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 157
    const-string v7, "discoveryState"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 159
    .local v2, "discoveryState":I
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "WifiP2pSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discovery state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_d
    if-ne v2, v10, :cond_e

    .line 161
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v6, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    .line 163
    :cond_e
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v5, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    .line 165
    .end local v2    # "discoveryState":I
    :cond_f
    const-string v5, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 167
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    goto/16 :goto_1
.end method

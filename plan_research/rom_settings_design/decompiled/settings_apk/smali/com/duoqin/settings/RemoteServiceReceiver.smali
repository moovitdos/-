.class public Lcom/duoqin/settings/RemoteServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteServiceReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private enableRemoteLocating(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 61
    iget-object v1, p0, Lcom/duoqin/settings/RemoteServiceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_locating"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoqin.remoteLocating"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "restart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string v1, "com.duoqin.remoteservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/duoqin/settings/RemoteServiceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    const-string v1, "Duoqin.RSR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteServiceReceiver enableRemoteLocating enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 61
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLocationMode(Z)V
    .locals 5
    .param p1, "turnOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v3, p0, Lcom/duoqin/settings/RemoteServiceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, "currentMode":I
    if-eqz p1, :cond_0

    const/4 v2, 0x3

    .line 38
    .local v2, "mode":I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "CURRENT_MODE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    const-string v3, "NEW_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    iget-object v3, p0, Lcom/duoqin/settings/RemoteServiceReceiver;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/duoqin/settings/RemoteServiceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    return-void
.end method

.method private turnOnWifiIfNeed()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 46
    iget-object v6, p0, Lcom/duoqin/settings/RemoteServiceReceiver;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 47
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 48
    .local v3, "wifiState":I
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    move v0, v4

    .line 49
    .local v0, "isEnabled":Z
    :goto_0
    if-nez v0, :cond_2

    .line 51
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 52
    .local v2, "wifiApState":I
    const/16 v6, 0xc

    if-eq v2, v6, :cond_0

    const/16 v6, 0xd

    if-ne v2, v6, :cond_1

    .line 54
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 56
    :cond_1
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 58
    .end local v2    # "wifiApState":I
    :cond_2
    return-void

    .end local v0    # "isEnabled":Z
    :cond_3
    move v0, v5

    .line 48
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    const-string v0, "Duoqin.RSR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteServiceReceiver onReceive action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-object p1, p0, Lcom/duoqin/settings/RemoteServiceReceiver;->mContext:Landroid/content/Context;

    .line 22
    const-string v0, "com.duoqin.RemoteLocating.Start"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-direct {p0, v4}, Lcom/duoqin/settings/RemoteServiceReceiver;->setLocationMode(Z)V

    .line 24
    invoke-direct {p0}, Lcom/duoqin/settings/RemoteServiceReceiver;->turnOnWifiIfNeed()V

    .line 25
    invoke-direct {p0, v4}, Lcom/duoqin/settings/RemoteServiceReceiver;->enableRemoteLocating(Z)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v0, "com.duoqin.RemoteLocating.Stop"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0, v3}, Lcom/duoqin/settings/RemoteServiceReceiver;->setLocationMode(Z)V

    .line 28
    invoke-direct {p0, v3}, Lcom/duoqin/settings/RemoteServiceReceiver;->enableRemoteLocating(Z)V

    goto :goto_0
.end method

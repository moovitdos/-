.class public Lcom/android/settings/wifi/WifiConnectionPolicy;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionPolicy.java"


# static fields
.field private static final DBG:Z

.field private static isWpsRunning:Z

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mDialogIsShowing:Z

.field private static mLastWifiInfo:Landroid/net/wifi/WifiInfo;

.field public static mManualDialogCancleFlag:Z

.field private static mScanTimes:I

.field private static mTimer:J

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field public static mWlanToWlanDialogCancleFlag:Z

.field private static manulConnect:Z

.field private static supportCMCC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->DBG:Z

    .line 92
    const-string v0, "ro.operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->supportCMCC:Z

    .line 93
    sput-object v3, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 94
    sput-object v3, Lcom/android/settings/wifi/WifiConnectionPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 97
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mTimer:J

    .line 98
    sput-boolean v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mDialogIsShowing:Z

    .line 99
    sput-boolean v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWpsRunning:Z

    .line 100
    sput-boolean v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->manulConnect:Z

    .line 104
    sput-object v3, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 105
    sput v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mScanTimes:I

    .line 108
    sput-boolean v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mManualDialogCancleFlag:Z

    .line 111
    sput-boolean v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWlanToWlanDialogCancleFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static applyWifiPolicy(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceDisconnect"    # Z

    .prologue
    .line 405
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMobileToWlanPolicy(Landroid/content/Context;)I

    move-result v0

    .line 406
    .local v0, "mobileToWlan":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyWifiPolicy() mobileToWlan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 407
    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->enableAutoConnect()V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->disableAutoConnect(Z)V

    goto :goto_0
.end method

.method private static autoConnectOtherAp(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 543
    const-string v4, "autoConnectOtherAp"

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 544
    sget-object v4, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 545
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 546
    :cond_0
    const-string v4, "autoConnectOtherAp wlan is not connected, return."

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 559
    :cond_1
    :goto_0
    return-void

    .line 549
    :cond_2
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMatchedAccessPoints(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 550
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 551
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v5, :cond_3

    .line 553
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 554
    const-string v4, "Disable the current network, wifi will connect to other enabled network."

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 555
    sget-object v4, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_0
.end method

.method private static disableAutoConnect(Z)V
    .locals 1
    .param p0, "forceDisconnect"    # Z

    .prologue
    .line 375
    const-string v0, "disableAutoConnect"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 376
    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "do not disconnect when connection is under processing or etablished"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0
.end method

.method private disableWifi()V
    .locals 2

    .prologue
    .line 754
    const-string v0, "disableWifi"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 755
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 756
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 758
    :cond_0
    return-void
.end method

.method private static enableAutoConnect()V
    .locals 1

    .prologue
    .line 368
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mDialogIsShowing:Z

    if-nez v0, :cond_0

    .line 369
    const-string v0, "enableAutoConnect() mWifiManager.reconnect()"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 372
    :cond_0
    return-void
.end method

.method private enableWifi()V
    .locals 3

    .prologue
    .line 761
    const-string v0, "enableWifi"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 762
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 763
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 765
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 766
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 768
    :cond_1
    return-void
.end method

.method private getCalendar(II)Ljava/util/Calendar;
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 707
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 708
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 709
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 710
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 711
    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 712
    return-object v0
.end method

.method private static getMatchedAccessPoints(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getMatchedAccessPoints mLastWifiInfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 579
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v4, "configuredAPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v11, "scannedAPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v7, "matchedAPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    sget-object v12, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 584
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_0

    .line 585
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 586
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 587
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_0
    sget-object v12, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 591
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_1

    .line 592
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 593
    .local v8, "result":Landroid/net/wifi/ScanResult;
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v8}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 594
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 597
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/AccessPoint;

    .line 600
    .local v3, "configuredAP":Lcom/android/settings/wifi/AccessPoint;
    sget-object v12, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v12, :cond_3

    sget-object v12, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v12

    iget v13, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v12, v13, :cond_2

    .line 603
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/wifi/AccessPoint;

    .line 604
    .local v10, "scannedAP":Lcom/android/settings/wifi/AccessPoint;
    iget-object v12, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v12, :cond_4

    iget-object v12, v10, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 605
    iget-object v12, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v13, v10, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget v12, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v13, v10, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v12, v13, :cond_4

    .line 606
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 612
    .end local v3    # "configuredAP":Lcom/android/settings/wifi/AccessPoint;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "scannedAP":Lcom/android/settings/wifi/AccessPoint;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getMatchedAccessPoints matchedAPs.size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 613
    return-object v7
.end method

.method public static getMobileToWlanPolicy(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_mobile_to_wlan_policy"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 339
    .local v0, "value":I
    return v0
.end method

.method private static getRecommendAccessPoint(Landroid/content/Context;)Lcom/android/settings/wifi/AccessPoint;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 562
    const-string v5, "getRecommendAccessPoint"

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 563
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMatchedAccessPoints(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 564
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    const/4 v4, 0x0

    .line 565
    .local v4, "recommendAccessPoint":Lcom/android/settings/wifi/AccessPoint;
    const/4 v3, -0x1

    .line 566
    .local v3, "priority":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 567
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v3, v5, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget v3, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 569
    move-object v4, v0

    goto :goto_0

    .line 572
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRecommendAccessPoint "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 573
    :cond_2
    return-object v4
.end method

.method static getRememberedFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static handledRememberedFlag(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialogType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "rememberedFlag":I
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v2

    .line 675
    :goto_0
    return v1

    .line 625
    :pswitch_1
    const-string v3, "dialog_wlan_to_wlan"

    invoke-static {p0, v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getRememberedFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 626
    if-ne v0, v1, :cond_1

    .line 627
    const-string v2, "WLAN_TO_WLAN YES_AND_REMEMBERED, reconnect and return ture"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 629
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->autoConnectOtherAp(Landroid/content/Context;)V

    goto :goto_0

    .line 631
    :cond_1
    if-ne v0, v4, :cond_0

    .line 632
    const-string v2, "WLAN_TO_WLAN NO_AND_REMEMBERED, disconnect and return ture"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :pswitch_2
    const-string v3, "dialog_wlan_to_mobile"

    invoke-static {p0, v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getRememberedFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 638
    if-ne v0, v1, :cond_2

    .line 639
    const-string v2, "WLAN_TO_MOBILE YES_AND_REMEMBERED, enable mobile data and return true"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 640
    sget-object v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 642
    :cond_2
    if-ne v0, v4, :cond_0

    .line 643
    const-string v3, "WLAN_TO_MOBILE NO_AND_REMEMBERED, disable mobile data and return ture"

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 644
    sget-object v3, Lcom/android/settings/wifi/WifiConnectionPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 649
    :pswitch_3
    const-string v3, "dialog_mobile_to_wlan_manual"

    invoke-static {p0, v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getRememberedFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 650
    if-ne v0, v1, :cond_3

    .line 651
    const-string v2, "MOBILE_TO_WLAN_MANUAL YES_AND_REMEMBERED, reconnect and return ture"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->enableAutoConnect()V

    goto :goto_0

    .line 654
    :cond_3
    if-ne v0, v4, :cond_0

    .line 655
    const-string v2, "MOBILE_TO_WLAN_MANUAL NO_AND_REMEMBERED, disconnect and return ture"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 656
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->disableAutoConnect(Z)V

    goto :goto_0

    .line 661
    :pswitch_4
    const-string v3, "dialog_mobile_to_wlan_always_ask"

    invoke-static {p0, v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getRememberedFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 662
    if-ne v0, v1, :cond_4

    .line 663
    const-string v2, "MOBILE_TO_WLAN_ALWAYS_ASK YES_AND_REMEMBERED, reconnect and return ture"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 664
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->enableAutoConnect()V

    goto :goto_0

    .line 666
    :cond_4
    if-ne v0, v4, :cond_0

    .line 667
    const-string v2, "MOBILE_TO_WLAN_ALWAYS_ASK NO_AND_REMEMBERED, disconnect and return ture"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 668
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->disableAutoConnect(Z)V

    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private hasIccCard(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 312
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 313
    const-string v3, "phone"

    invoke-static {v3, v0}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 315
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    const/4 v3, 0x1

    .line 319
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :goto_1
    return v3

    .line 312
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 115
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 116
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 117
    return-void
.end method

.method private isDismissCalendar(II)I
    .locals 7
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 771
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 772
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 773
    .local v1, "calendarH":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 774
    .local v2, "calendarM":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calendarH = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", calendarM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hourOfDay = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", minute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 777
    if-ne v1, p1, :cond_2

    .line 778
    if-ne v2, p2, :cond_1

    .line 779
    const/4 v3, 0x0

    .line 789
    :cond_0
    :goto_0
    return v3

    .line 781
    :cond_1
    if-gt v2, p2, :cond_0

    move v3, v4

    .line 784
    goto :goto_0

    .line 786
    :cond_2
    if-gt v1, p1, :cond_0

    move v3, v4

    .line 789
    goto :goto_0
.end method

.method private static isTimerRunning()Z
    .locals 5

    .prologue
    .line 395
    sget-wide v1, Lcom/android/settings/wifi/WifiConnectionPolicy;->mTimer:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 400
    .local v0, "isTimerRunning":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTimerRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 401
    return v0

    .line 398
    .end local v0    # "isTimerRunning":Z
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/settings/wifi/WifiConnectionPolicy;->mTimer:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .restart local v0    # "isTimerRunning":Z
    :goto_1
    goto :goto_0

    .end local v0    # "isTimerRunning":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isWifiConnectingOrConnected()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 347
    sget-object v4, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_0

    .line 348
    sget-object v4, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 349
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifiInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 350
    if-nez v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v2

    .line 351
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 356
    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 357
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    sget-object v4, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v4, :cond_3

    move v2, v3

    goto :goto_0

    .line 358
    :cond_3
    sget-object v4, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v4, :cond_4

    move v2, v3

    goto :goto_0

    .line 359
    :cond_4
    sget-object v4, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v4, :cond_5

    move v2, v3

    goto :goto_0

    .line 360
    :cond_5
    sget-object v4, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v4, :cond_6

    move v2, v3

    goto :goto_0

    .line 361
    :cond_6
    sget-object v4, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v4, :cond_7

    move v2, v3

    goto :goto_0

    .line 362
    :cond_7
    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "logString"    # Ljava/lang/String;

    .prologue
    .line 793
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 794
    const-string v0, "WifiConnectionPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    return-void
.end method

.method static resetTimer()V
    .locals 2

    .prologue
    .line 389
    const-string v0, "resetTimer"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 390
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mTimer:J

    .line 391
    return-void
.end method

.method private setAlarmAndConnectWifi(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v10, 0x5265c00

    const/4 v9, 0x0

    .line 716
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_connect_alarm_hour"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 717
    .local v1, "hourOfDay":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_connect_alarm_minute"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 718
    .local v5, "minute":I
    invoke-direct {p0, v1, v5}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getCalendar(II)Ljava/util/Calendar;

    move-result-object v0

    .line 719
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 720
    .local v2, "inMillis":J
    invoke-direct {p0, v1, v5}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isDismissCalendar(II)I

    move-result v4

    .line 721
    .local v4, "isDismiss":I
    if-nez v4, :cond_1

    .line 722
    add-long/2addr v2, v10

    .line 723
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->enableWifi()V

    .line 727
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAlarmAndConnectWifi inMillis = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isDismiss = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 728
    new-instance v7, Landroid/content/Intent;

    const-string v8, "sprd.wifi.alarm.CONNECT_WIFI"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 730
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v7, Lcom/android/settings/wifi/WifiConnectionPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 731
    sget-object v7, Lcom/android/settings/wifi/WifiConnectionPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v9, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 732
    return-void

    .line 724
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 725
    add-long/2addr v2, v10

    goto :goto_0
.end method

.method private setAlarmAndDisconnectWifi(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v10, 0x5265c00

    const/4 v9, 0x0

    .line 735
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_disconnect_alarm_hour"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 736
    .local v1, "hourOfDay":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_disconnect_alarm_minute"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 737
    .local v5, "minute":I
    invoke-direct {p0, v1, v5}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getCalendar(II)Ljava/util/Calendar;

    move-result-object v0

    .line 738
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 739
    .local v2, "inMillis":J
    invoke-direct {p0, v1, v5}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isDismissCalendar(II)I

    move-result v4

    .line 740
    .local v4, "isDismiss":I
    if-nez v4, :cond_1

    .line 741
    add-long/2addr v2, v10

    .line 742
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->disableWifi()V

    .line 746
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAlarmAndDisconnectWifi inMillis = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isDismiss = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 747
    new-instance v7, Landroid/content/Intent;

    const-string v8, "sprd.wifi.alarm.DISCONNECT_WIFI"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 749
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v7, Lcom/android/settings/wifi/WifiConnectionPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 750
    sget-object v7, Lcom/android/settings/wifi/WifiConnectionPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v9, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 751
    return-void

    .line 743
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 744
    add-long/2addr v2, v10

    goto :goto_0
.end method

.method private setConnectWifiAlarm(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 695
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connect_alarm_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 696
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setAlarmAndConnectWifi(Landroid/content/Context;)V

    .line 698
    :cond_0
    return-void
.end method

.method static setDialogShowing(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 323
    sput-boolean p0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mDialogIsShowing:Z

    .line 324
    return-void
.end method

.method private setDisonnectWifiAlarm(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 701
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_disconnect_alarm_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 702
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setAlarmAndDisconnectWifi(Landroid/content/Context;)V

    .line 704
    :cond_0
    return-void
.end method

.method public static setManulConnectFlags(Z)V
    .locals 2
    .param p0, "flag"    # Z

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setManulConnectFlags flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 334
    sput-boolean p0, Lcom/android/settings/wifi/WifiConnectionPolicy;->manulConnect:Z

    .line 335
    return-void
.end method

.method public static setMobileToWlanPolicy(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_mobile_to_wlan_policy"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->applyWifiPolicy(Landroid/content/Context;Z)V

    .line 329
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->resetTimer()V

    .line 330
    return-void
.end method

.method static setTimer(J)V
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 385
    sput-wide p0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mTimer:J

    .line 386
    return-void
.end method

.method static setWlanToWLanDialogCancleFlag(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 691
    sput-boolean p0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWlanToWlanDialogCancleFlag:Z

    .line 692
    return-void
.end method

.method private static showMatchedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)V
    .locals 6

    .prologue
    .line 477
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mManualDialogCancleFlag:Z

    if-eqz v0, :cond_1

    .line 478
    const-string v0, "mManualDialogCancleFlag = true, return"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 482
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 483
    :cond_2
    const-string v0, "showMatchedAccessPoints in connecting state, then return"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_3
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMatchedAccessPoints(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 488
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 489
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 490
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 491
    const/4 v0, 0x0

    .line 492
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 493
    iget-object v2, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v2, v3, v1

    .line 494
    add-int/lit8 v2, v1, 0x1

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    aput v0, v4, v1

    move v1, v2

    goto :goto_1

    .line 496
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 498
    const-string v1, "dialogType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    const-string v1, "ssids_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v1, "ssids_id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 502
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mDialogIsShowing:Z

    goto :goto_0
.end method

.method private static showMobileToWlanDialog(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 415
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMobileToWlanPolicy(Landroid/content/Context;)I

    move-result v0

    .line 416
    .local v0, "mobileToWlan":I
    sget-object v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 418
    .local v1, "wifiState":I
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne v1, v5, :cond_0

    sget-boolean v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mDialogIsShowing:Z

    if-ne v2, v3, :cond_2

    .line 420
    :cond_0
    const-string v2, "showMobileToWlanDialog() returned because of connecting or connected"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 454
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    if-nez v0, :cond_3

    .line 427
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->enableAutoConnect()V

    goto :goto_0

    .line 429
    :cond_3
    sget-boolean v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->manulConnect:Z

    if-eq v2, v3, :cond_1

    .line 432
    if-ne v0, v3, :cond_4

    .line 433
    invoke-static {p0, v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->handledRememberedFlag(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 438
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->disableAutoConnect(Z)V

    .line 439
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isTimerRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 440
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->showMatchedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)V

    goto :goto_0

    .line 442
    :cond_4
    if-ne v0, v4, :cond_1

    .line 443
    invoke-static {p0, v5}, Lcom/android/settings/wifi/WifiConnectionPolicy;->handledRememberedFlag(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->disableAutoConnect(Z)V

    .line 449
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isTimerRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 450
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->showRecommendAccessPoint(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static showRecommendAccessPoint(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 457
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 458
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v1

    if-nez v1, :cond_0

    if-eq v0, v3, :cond_2

    .line 459
    :cond_0
    const-string v0, "showRecommendAccessPoint in connecting state, then return"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 473
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getRecommendAccessPoint(Landroid/content/Context;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_1

    .line 464
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 466
    const-string v2, "dialogType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    const-string v2, "ssid_name"

    iget-object v3, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v2, "ssid_id"

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 470
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mDialogIsShowing:Z

    .line 471
    const-string v0, "mobile2wlan recommend dialog is displayed."

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showWlanToWlanDialog(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 509
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWlanToWlanDialogCancleFlag:Z

    if-eqz v0, :cond_1

    .line 510
    const-string v0, "mWlanToWlanDialogCancleFlag = true, return"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 515
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 516
    :cond_2
    const-string v0, "showWlanToWlanDialog wlan is not connected, return."

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_3
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMatchedAccessPoints(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 520
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v9, :cond_0

    .line 521
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 522
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v6, v1, [I

    .line 524
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 525
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    iget v8, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v8, :cond_4

    .line 528
    iget-object v3, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v3, v5, v1

    .line 529
    add-int/lit8 v3, v1, 0x1

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    aput v0, v6, v1

    move v1, v3

    goto :goto_1

    .line 531
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 533
    const-string v1, "dialogType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    const-string v1, "ssids_name"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v1, "ssids_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 537
    sput-boolean v9, Lcom/android/settings/wifi/WifiConnectionPolicy;->mDialogIsShowing:Z

    goto :goto_0
.end method


# virtual methods
.method handleDisconnectEvent(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 240
    sget-boolean v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mDialogIsShowing:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->manulConnect:Z

    if-eqz v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMatchedAccessPoints(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 246
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->handledRememberedFlag(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->disableAutoConnect(Z)V

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->popUpWlanToMobileDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 253
    :cond_2
    sget-object v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 254
    .local v1, "wifiState":I
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v2

    if-nez v2, :cond_3

    if-eq v1, v5, :cond_4

    .line 256
    :cond_3
    const-string v2, "returned because of connecting or connected"

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_4
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMobileToWlanPolicy(Landroid/content/Context;)I

    move-result v0

    .line 262
    .local v0, "mobileToWlan":I
    if-ne v0, v3, :cond_5

    .line 263
    invoke-static {p1, v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->handledRememberedFlag(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->disableAutoConnect(Z)V

    .line 269
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isTimerRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->showMatchedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)V

    goto :goto_0

    .line 272
    :cond_5
    if-ne v0, v4, :cond_0

    .line 273
    invoke-static {p1, v5}, Lcom/android/settings/wifi/WifiConnectionPolicy;->handledRememberedFlag(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->disableAutoConnect(Z)V

    .line 279
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isTimerRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->showRecommendAccessPoint(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->supportCMCC:Z

    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    :cond_2
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_3

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 127
    :cond_3
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_4

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 130
    :cond_4
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWpsRunning:Z

    if-eqz v0, :cond_5

    .line 131
    const-string v0, "WPS is running"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 138
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 139
    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    if-ne v0, v6, :cond_6

    .line 141
    sput-boolean v1, Lcom/android/settings/wifi/WifiConnectionPolicy;->manulConnect:Z

    .line 142
    sput v1, Lcom/android/settings/wifi/WifiConnectionPolicy;->mScanTimes:I

    .line 143
    sput-object v5, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 144
    sput-boolean v1, Lcom/android/settings/wifi/WifiConnectionPolicy;->mManualDialogCancleFlag:Z

    .line 145
    sput-boolean v1, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWlanToWlanDialogCancleFlag:Z

    .line 146
    invoke-static {p1, v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->applyWifiPolicy(Landroid/content/Context;Z)V

    goto :goto_0

    .line 147
    :cond_6
    if-ne v0, v2, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_wifi_notification_flag"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    const-string v0, " start AirplaneModeWifiAlertActivity"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_7
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 157
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->manulConnect:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sput-boolean v1, Lcom/android/settings/wifi/WifiConnectionPolicy;->manulConnect:Z

    goto/16 :goto_0

    .line 160
    :cond_8
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 162
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_9

    sget v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mScanTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mScanTimes:I

    if-le v0, v6, :cond_9

    .line 163
    sput v1, Lcom/android/settings/wifi/WifiConnectionPolicy;->mScanTimes:I

    .line 164
    sput-object v5, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 166
    :cond_9
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->showMobileToWlanDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 167
    :cond_a
    const-string v3, "sprd.net.wifi.WIFI_CONNECTED_AP_ABSENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 168
    sput-boolean v1, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWlanToWlanDialogCancleFlag:Z

    .line 170
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->handleDisconnectEvent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 172
    :cond_b
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 173
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 175
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_c

    move v1, v2

    .line 176
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 177
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_connect_to_cmcc"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 179
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 180
    if-nez v0, :cond_d

    .line 181
    sget-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 183
    :cond_d
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\"CMCC\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    const-string v1, "dialogType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    const-string v0, "connectedToCmccDialog is displayed!"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :cond_e
    const-string v2, "sprd.net.wifi.WIFI_DISABLED_WHEN_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 197
    invoke-static {p1, v7}, Lcom/android/settings/wifi/WifiConnectionPolicy;->handledRememberedFlag(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    sput-object v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->popUpWlanToMobileDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 202
    :cond_f
    const-string v2, "sprd.net.wifi.BSS_REMOVED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 204
    const-string v0, "bssid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removedBss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 206
    sget-object v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sput v1, Lcom/android/settings/wifi/WifiConnectionPolicy;->mScanTimes:I

    .line 208
    sput-object v5, Lcom/android/settings/wifi/WifiConnectionPolicy;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    goto/16 :goto_0

    .line 213
    :cond_10
    const-string v2, "sprd.wifi.alarm.CONNECT_WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setConnectWifiAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 215
    :cond_11
    const-string v2, "sprd.wifi.alarm.DISCONNECT_WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 216
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDisonnectWifiAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 217
    :cond_12
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 218
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setConnectWifiAlarm(Landroid/content/Context;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDisonnectWifiAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 224
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "newRssi"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 226
    const/16 v2, -0x55

    if-ge v0, v2, :cond_0

    .line 227
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMobileToWlanPolicy(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_14

    .line 228
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->autoConnectOtherAp(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 230
    :cond_14
    invoke-static {p1, v1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->handledRememberedFlag(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->showWlanToWlanDialog(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method popUpWlanToMobileDialog(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "Data-connection can not be opened on airplane mode, return"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->hasIccCard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    const-string v0, "popUpWlanToMobileDialog, has no sim card and return"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    const-string v0, "popUpWlanToMobileDialog, ap is connecting then return"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    const-string v1, "dialogType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 306
    const-string v0, "wlan2MobileDialog is displayed"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->logd(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicy;->mDialogIsShowing:Z

    goto :goto_0
.end method

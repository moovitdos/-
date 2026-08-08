.class public Lcom/android/settings/bluetooth/BluetoothHeadsetConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHeadsetConnectReceiver.java"


# static fields
.field private static final IS_SUPPORT_AUTO_TEST:Z

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothHeadsetConnectReceiver;->IS_SUPPORT_AUTO_TEST:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v7, "BluetoothHeadsetConnectReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v7, "android.intent.action.connectheadset"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/settings/bluetooth/BluetoothHeadsetConnectReceiver;->IS_SUPPORT_AUTO_TEST:Z

    if-eqz v7, :cond_0

    .line 24
    const-string v7, "deviceAddress"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "address":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    sput-object v7, Lcom/android/settings/bluetooth/BluetoothHeadsetConnectReceiver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 26
    sget-object v7, Lcom/android/settings/bluetooth/BluetoothHeadsetConnectReceiver;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 27
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 28
    .local v3, "btMgr":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    .line 29
    .local v6, "mCachedDeviceManager":Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v6, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    .line 30
    .local v5, "mCachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v5, :cond_1

    .line 31
    const-string v7, "BluetoothHeadsetConnectReceiver"

    const-string v8, "mCachedDevice is null, return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v1    # "address":Ljava/lang/String;
    .end local v3    # "btMgr":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "mCachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v6    # "mCachedDeviceManager":Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v3    # "btMgr":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "mCachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .restart local v6    # "mCachedDeviceManager":Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    .line 35
    .local v2, "bondState":I
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 36
    const-string v7, "BluetoothHeadsetConnectReceiver"

    const-string v8, "This device is already connected!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_2
    const/16 v7, 0xc

    if-ne v2, v7, :cond_3

    .line 38
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 39
    :cond_3
    const/16 v7, 0xa

    if-ne v2, v7, :cond_0

    .line 40
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    goto :goto_0
.end method

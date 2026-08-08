.class public Lcom/android/settings/wifi/HotspotEnabler;
.super Ljava/lang/Object;
.source "HotspotEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirplaneMode:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private supportBtWifiSoftApCoexist:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mAirplaneMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->supportBtWifiSoftApCoexist:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 46
    new-instance v0, Lcom/android/settings/wifi/HotspotEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/HotspotEnabler$1;-><init>(Lcom/android/settings/wifi/HotspotEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/android/settings/wifi/HotspotEnabler;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 98
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v0, "ro.btwifisoftap.coexist"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 108
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/HotspotEnabler;->supportBtWifiSoftApCoexist:Z

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 113
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 117
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/HotspotEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/HotspotEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/HotspotEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/HotspotEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/HotspotEnabler;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/wifi/HotspotEnabler;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/HotspotEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/HotspotEnabler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mAirplaneMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/HotspotEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/HotspotEnabler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 306
    packed-switch p1, :pswitch_data_0

    .line 324
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/HotspotEnabler;->setSwitchChecked(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 311
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/HotspotEnabler;->setSwitchChecked(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 318
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/HotspotEnabler;->setSwitchChecked(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mAirplaneMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mStateMachineEvent:Z

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mStateMachineEvent:Z

    .line 336
    :cond_0
    return-void
.end method

.method private showAlertForMobileDataNeedEnabled()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0908b2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 241
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 246
    iget-boolean v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mStateMachineEvent:Z

    if-eqz v7, :cond_0

    .line 300
    :goto_0
    return v5

    .line 249
    :cond_0
    iget-object v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 250
    .local v2, "isChecked":Z
    iget-boolean v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->supportBtWifiSoftApCoexist:Z

    if-nez v7, :cond_2

    .line 251
    iget-object v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 252
    .local v0, "btState":I
    if-eqz v2, :cond_2

    const/16 v7, 0xc

    if-eq v0, v7, :cond_1

    const/16 v7, 0xb

    if-ne v0, v7, :cond_2

    .line 253
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f090899

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 254
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 260
    .end local v0    # "btState":I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v2, :cond_3

    .line 261
    invoke-direct {p0}, Lcom/android/settings/wifi/HotspotEnabler;->showAlertForMobileDataNeedEnabled()V

    .line 265
    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 266
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v2, :cond_4

    .line 267
    const-string v7, "softap_enabling_or_enabled"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 273
    .local v4, "wifiState":I
    if-eqz v2, :cond_6

    const/4 v7, 0x2

    if-eq v4, v7, :cond_5

    const/4 v7, 0x3

    if-ne v4, v7, :cond_6

    .line 275
    :cond_5
    iget-object v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 276
    const-string v7, "wifi_saved_state"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 281
    iget-object v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    :cond_7
    if-nez v2, :cond_8

    .line 288
    const/4 v3, 0x0

    .line 290
    .local v3, "wifiSavedState":I
    :try_start_0
    const-string v7, "wifi_saved_state"

    invoke-static {v1, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 295
    :goto_1
    if-ne v3, v6, :cond_8

    .line 296
    iget-object v7, p0, Lcom/android/settings/wifi/HotspotEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 297
    const-string v7, "wifi_saved_state"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v3    # "wifiSavedState":I
    :cond_8
    move v5, v6

    .line 300
    goto/16 :goto_0

    .line 292
    .restart local v3    # "wifiSavedState":I
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/HotspotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/HotspotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/HotspotEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mAirplaneMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/android/settings/wifi/HotspotEnabler;->isAirplaneModeOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mAirplaneMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/HotspotEnabler;->handleWifiApStateChanged(I)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

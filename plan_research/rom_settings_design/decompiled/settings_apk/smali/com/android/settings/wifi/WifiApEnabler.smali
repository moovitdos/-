.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private supportBtWifiSoftApCoexit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkBox"    # Landroid/preference/CheckBoxPreference;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->supportBtWifiSoftApCoexit:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 60
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 85
    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 88
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v0, "ro.btwifisoftap.coexist"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 101
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->supportBtWifiSoftApCoexit:Z

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 105
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 109
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 123
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 129
    :goto_1
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v2

    .line 121
    goto :goto_0

    .line 126
    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0901f1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 249
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090289

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09028a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showAlertForMobileDataNeedEnabled()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0908b2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 196
    const/4 v11, 0x0

    .line 197
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 199
    .local v10, "wifiErrored":Z
    move-object/from16 v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 200
    check-cast v8, Ljava/lang/String;

    .line 201
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 202
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 201
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 205
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6    # "o":Ljava/lang/Object;
    move-object v8, v6

    .line 206
    check-cast v8, Ljava/lang/String;

    .line 207
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 208
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 207
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 205
    .end local v7    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_2

    .line 212
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 213
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 214
    .local v9, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 218
    .end local v9    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 215
    :cond_7
    if-eqz v10, :cond_6

    .line 216
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0901f1

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 114
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 136
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->supportBtWifiSoftApCoexit:Z

    if-nez v4, :cond_2

    .line 137
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 138
    .local v0, "btState":I
    if-eqz p1, :cond_2

    const/16 v4, 0xc

    if-eq v0, v4, :cond_0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_2

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f090899

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 185
    .end local v0    # "btState":I
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    .line 148
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->showAlertForMobileDataNeedEnabled()V

    .line 152
    :cond_3
    if-eqz p1, :cond_4

    .line 153
    const-string v4, "softap_enabling_or_enabled"

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 157
    .local v3, "wifiState":I
    if-eqz p1, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 159
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 160
    const-string v4, "wifi_saved_state"

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    :goto_1
    if-nez p1, :cond_1

    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, "wifiSavedState":I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 180
    :goto_2
    if-ne v2, v7, :cond_1

    .line 181
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 182
    const-string v4, "wifi_saved_state"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 167
    .end local v2    # "wifiSavedState":I
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0901f1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 177
    .restart local v2    # "wifiSavedState":I
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x1040481

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f09028b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    return-void

    .line 190
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

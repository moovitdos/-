.class public Lcom/android/settings/deviceinfo/StatusOther;
.super Landroid/preference/PreferenceActivity;
.source "StatusOther.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StatusOther$MyHandler;
    }
.end annotation


# instance fields
.field private isVolteEnable:Z

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mHandler:Landroid/os/Handler;

.field private mImsRegisteredStatus:Landroid/preference/Preference;

.field private mLtePhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneNumber:I

.field private mRes:Landroid/content/res/Resources;

.field private mSerialPref:Landroid/preference/Preference;

.field private mSimStatus:Landroid/preference/PreferenceScreen;

.field private mUptime:Landroid/preference/Preference;

.field private myReceiver:Landroid/content/BroadcastReceiver;

.field private sUnknown:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 104
    const-string v0, "persist.sys.volte.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->isVolteEnable:Z

    .line 133
    new-instance v0, Lcom/android/settings/deviceinfo/StatusOther$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusOther$1;-><init>(Lcom/android/settings/deviceinfo/StatusOther;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    new-instance v0, Lcom/android/settings/deviceinfo/StatusOther$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusOther$5;-><init>(Lcom/android/settings/deviceinfo/StatusOther;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->myReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StatusOther;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusOther;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StatusOther;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusOther;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StatusOther;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusOther;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->setBtStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StatusOther;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusOther;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StatusOther;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusOther;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mImsRegisteredStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/StatusOther;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusOther;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->refreshSimList()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .param p1, "t"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 398
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 399
    .local v2, "s":I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 400
    .local v1, "m":I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 402
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StatusOther;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/StatusOther;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 390
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 391
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private refreshSimList()V
    .locals 5

    .prologue
    .line 423
    invoke-static {p0}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v1

    .line 424
    .local v1, "sm":Landroid/sim/SimManager;
    invoke-virtual {v1}, Landroid/sim/SimManager;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v0

    .line 425
    .local v0, "sims":[Landroid/sim/Sim;
    const-string v2, "StatusOther"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sims.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    array-length v2, v0

    if-nez v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusOther;->mSimStatus:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusOther;->mSimStatus:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 312
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 365
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 366
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 368
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 370
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 373
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f090335

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 355
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 356
    .local v1, "ipAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const v2, 0x7f090335

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StatusOther;->sUnknown:Ljava/lang/String;

    .line 322
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 343
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 344
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 346
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 348
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 349
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    return-void

    .line 348
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f090335

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 328
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 329
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 331
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 332
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 333
    .local v4, "root":Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 334
    .local v3, "ps":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    .end local v3    # "ps":Landroid/preference/Preference;
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 337
    .local v5, "wimaxMacAddressPref":Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f090335

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "macAddress":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showImsRegistedInStatus()Z
    .locals 7

    .prologue
    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, "isShowRegistered":Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v3

    .line 408
    .local v3, "phoneId":I
    const-string v4, "carrier_config"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 410
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForPhoneId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 412
    .local v0, "config":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 413
    const-string v4, "show_ims_registration_in_status"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 417
    .end local v0    # "config":Landroid/os/PersistableBundle;
    :cond_0
    const-string v4, "StatusOther"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isShowRegistered = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v2
.end method


# virtual methods
.method public createPhoneStateListener()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/android/settings/deviceinfo/StatusOther$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusOther$2;-><init>(Lcom/android/settings/deviceinfo/StatusOther;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mLtePhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f090010

    .line 184
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    new-instance v3, Lcom/android/settings/deviceinfo/StatusOther$MyHandler;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/StatusOther$MyHandler;-><init>(Lcom/android/settings/deviceinfo/StatusOther;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mHandler:Landroid/os/Handler;

    .line 189
    new-instance v3, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v3, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 190
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 197
    const v3, 0x7f05000f

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 198
    const-string v3, "battery_level"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mBatteryLevel:Landroid/preference/Preference;

    .line 199
    const-string v3, "battery_status"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mBatteryStatus:Landroid/preference/Preference;

    .line 200
    const-string v3, "ims_registration"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mImsRegisteredStatus:Landroid/preference/Preference;

    .line 201
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->showImsRegistedInStatus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const-string v3, "ims_registration"

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/StatusOther;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 205
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v3, "serial_number"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mSerialPref:Landroid/preference/Preference;

    .line 206
    const-string v3, "sim_status"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mSimStatus:Landroid/preference/PreferenceScreen;

    .line 208
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mRes:Landroid/content/res/Resources;

    .line 209
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->sUnknown:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->sUnknown:Ljava/lang/String;

    .line 213
    :cond_1
    const-string v3, "up_time"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mUptime:Landroid/preference/Preference;

    .line 215
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->setWimaxStatus()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->setWifiStatus()V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->setBtStatus()V

    .line 218
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->setIpAddressStatus()V

    .line 227
    const-string v3, "serial_number"

    const-string v4, "ro.serialno"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/StatusOther;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mSerialPref:Landroid/preference/Preference;

    new-instance v4, Lcom/android/settings/deviceinfo/StatusOther$3;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/StatusOther$3;-><init>(Lcom/android/settings/deviceinfo/StatusOther;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mPhoneNumber:I

    .line 247
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mPhoneNumber:I

    if-ge v0, v3, :cond_2

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->refreshSimList()V

    .line 253
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther;->mSimStatus:Landroid/preference/PreferenceScreen;

    new-instance v4, Lcom/android/settings/deviceinfo/StatusOther$4;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/StatusOther$4;-><init>(Lcom/android/settings/deviceinfo/StatusOther;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 269
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 303
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 291
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->showImsRegistedInStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusOther;->stopMonitor()V

    .line 298
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 275
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusOther;->showImsRegistedInStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusOther;->createPhoneStateListener()V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusOther;->startMonitor()V

    .line 285
    :cond_0
    return-void
.end method

.method public startMonitor()V
    .locals 3

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->isVolteEnable:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusOther;->mLtePhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x4001

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 171
    :cond_0
    return-void
.end method

.method public stopMonitor()V
    .locals 3

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->isVolteEnable:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusOther;->mLtePhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 178
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther;->mLtePhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 179
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 380
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 382
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 383
    const-wide/16 v2, 0x1

    .line 386
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusOther;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/StatusOther;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method

.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothSettings$BluetoothSwitchPreference;
    }
.end annotation


# static fields
.field private static UNIVERSEUI_SUPPORT:Z

.field private static mIsSupportBtFtp:Z


# instance fields
.field private ftpSwitchStatus:Z

.field private isFtpSetSwitchOngoing:Z

.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mDevicePrefChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyPreference:Landroid/preference/Preference;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mObject:Ljava/lang/Object;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mUiHandler:Landroid/os/Handler;

.field public final mUpdateScanButton:Ljava/lang/Runnable;

.field private shouldScanDisabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsSupportBtFtp:Z

    .line 118
    const-string v0, "universe_ui_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->UNIVERSEUI_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->shouldScanDisabled:Ljava/lang/Boolean;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mObject:Ljava/lang/Object;

    .line 114
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ftpSwitchStatus:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isFtpSetSwitchOngoing:Z

    .line 125
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 556
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 597
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUpdateScanButton:Ljava/lang/Runnable;

    .line 631
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$4;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePrefChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.btftp.intent.action.FTP_SWITCH_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsSupportBtFtp:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ftpSwitchStatus:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ftpSwitchStatus:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isFtpSetSwitchOngoing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->shouldScanDisabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 394
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 395
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 396
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 400
    return-void
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 377
    const-string v0, "BluetoothSettings"

    const-string v1, "startScanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 381
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method private updateContent(IZ)V
    .locals 11
    .param p1, "bluetoothState"    # I
    .param p2, "scanState"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 403
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 404
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 406
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 514
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 517
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 518
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 519
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 521
    sget-boolean v5, Lcom/android/settings/bluetooth/BluetoothSettings;->UNIVERSEUI_SUPPORT:Z

    if-eqz v5, :cond_0

    .line 522
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 523
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v6, 0x7f0d001b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 527
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 528
    :cond_1
    :goto_1
    return-void

    .line 408
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 409
    invoke-virtual {v3, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 410
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    .line 411
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 413
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v5, :cond_2

    .line 414
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 416
    :cond_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 422
    :cond_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 423
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 424
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 425
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 428
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v5, :cond_4

    .line 429
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 431
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 432
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 438
    :cond_4
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v5, :cond_a

    .line 439
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 443
    :goto_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 444
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v6, 0x7f090198

    sget-object v7, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 447
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 449
    .local v2, "numberOfPairedDevices":I
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v5, :cond_5

    .line 450
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v5, v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 454
    :cond_5
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v5, :cond_b

    .line 455
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 459
    :goto_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v5

    if-nez v5, :cond_6

    .line 461
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v6, 0x7f090199

    sget-object v7, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 465
    :cond_6
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 466
    .local v1, "numberOfAvailableDevices":I
    iput-boolean v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 468
    if-nez v1, :cond_7

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v5

    if-nez v5, :cond_7

    .line 469
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 473
    :cond_7
    if-nez v2, :cond_8

    .line 474
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    if-ne p2, v10, :cond_c

    .line 476
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 477
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 484
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 489
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v5, :cond_1

    .line 491
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v5, :cond_9

    .line 492
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled()V

    .line 494
    :cond_9
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    goto/16 :goto_1

    .line 441
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_a
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_2

    .line 457
    .restart local v2    # "numberOfPairedDevices":I
    :cond_b
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 479
    .restart local v1    # "numberOfAvailableDevices":I
    :cond_c
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v5, :cond_8

    .line 480
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 500
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f090091

    .line 501
    goto/16 :goto_0

    .line 504
    :pswitch_2
    const v0, 0x7f0901a2

    .line 505
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 506
    invoke-virtual {p0, v9}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    goto/16 :goto_0

    .line 510
    :pswitch_3
    const v0, 0x7f090090

    goto/16 :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 582
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 583
    .local v0, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePrefChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 584
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 185
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 186
    if-nez p1, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 187
    const-string v3, "BluetoothSettings"

    const-string v6, "onActivityCreated()"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const v3, 0x7f050006

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x1020004

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 191
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 193
    .local v1, "activity":Landroid/app/Activity;
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothSettings$BluetoothSwitchPreference;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings$BluetoothSwitchPreference;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 194
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 195
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 196
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const v6, 0x7f09055c

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 199
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const v6, 0x7f09055d

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    .line 200
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v1, v6}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 201
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 202
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyPreference:Landroid/preference/Preference;

    .line 203
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 205
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 206
    sget-boolean v3, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsSupportBtFtp:Z

    if-eqz v3, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.btftp.intent.action.FTP_GET_SWITCH_STATUS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "I":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    .end local v0    # "I":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "BluetoothSettings"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, "mThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 213
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUiHandler:Landroid/os/Handler;

    .line 214
    return-void

    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "mThread":Landroid/os/HandlerThread;
    :cond_1
    move v3, v5

    .line 186
    goto/16 :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v1, 0x1

    .line 532
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 536
    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 537
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 540
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 541
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 300
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v6, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 304
    iget-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ftpSwitchStatus:Z

    if-eqz v6, :cond_3

    const v1, 0x7f090086

    .line 305
    .local v1, "ftpTestId":I
    :goto_1
    const-string v6, "BluetoothSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BluetoothFtp onCreateOptionsMenu: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ftpSwitchStatus:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_4

    move v0, v4

    .line 307
    .local v0, "bluetoothIsEnabled":Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    .line 308
    .local v2, "isDiscovering":Z
    if-eqz v2, :cond_5

    const v3, 0x7f090196

    .line 311
    .local v3, "textId":I
    :goto_3
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mObject:Ljava/lang/Object;

    monitor-enter v7

    .line 312
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-interface {p1, v6, v8, v9, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->shouldScanDisabled:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v4

    :goto_4
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 315
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    const/4 v6, 0x2

    const v7, 0x7f09006e

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 320
    const/4 v6, 0x3

    const v7, 0x7f090065

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 323
    sget-boolean v6, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsSupportBtFtp:Z

    if-eqz v6, :cond_2

    .line 324
    const/4 v6, 0x5

    invoke-interface {p1, v5, v6, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_7

    iget-boolean v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isFtpSetSwitchOngoing:Z

    if-nez v7, :cond_7

    :goto_5
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 328
    :cond_2
    const/4 v4, 0x4

    const v6, 0x7f090084

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 330
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto/16 :goto_0

    .line 304
    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "ftpTestId":I
    .end local v2    # "isDiscovering":Z
    .end local v3    # "textId":I
    :cond_3
    const v1, 0x7f090085

    goto/16 :goto_1

    .restart local v1    # "ftpTestId":I
    :cond_4
    move v0, v5

    .line 306
    goto :goto_2

    .line 308
    .restart local v0    # "bluetoothIsEnabled":Z
    .restart local v2    # "isDiscovering":Z
    :cond_5
    const v3, 0x7f090195

    goto :goto_3

    .restart local v3    # "textId":I
    :cond_6
    move v6, v5

    .line 312
    goto :goto_4

    .line 315
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_7
    move v4, v5

    .line 324
    goto :goto_5
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 219
    const-string v1, "BluetoothSettings"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 223
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 226
    :cond_0
    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUiHandler:Landroid/os/Handler;

    .line 228
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 553
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 554
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 389
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 390
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 373
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 337
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mObject:Ljava/lang/Object;

    monitor-enter v4

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->shouldScanDisabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 342
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 347
    :pswitch_1
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "rename device"

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :pswitch_2
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "visibility timeout"

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 363
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btftp.intent.action.FTP_SET_SWITCH_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "I":Landroid/content/Intent;
    const-string v5, "ftp_switch_status"

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ftpSwitchStatus:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->isFtpSetSwitchOngoing:Z

    .line 369
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v2, v4

    .line 364
    goto :goto_1

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUpdateScanButton:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 270
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mUpdateScanButton:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btftp.intent.action.FTP_GET_SWITCH_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "I":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 283
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 547
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 548
    return-void
.end method

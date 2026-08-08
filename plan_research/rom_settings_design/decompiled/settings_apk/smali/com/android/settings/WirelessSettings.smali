.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static PIKEL_UI_SUPPORT:Z

.field private static final WCN_DISABLED:Z


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mButtonWfc:Landroid/preference/PreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mLteService:Landroid/preference/PreferenceScreen;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mMobileNetworkPreference:Landroid/preference/PreferenceScreen;

.field private mNsdEnabler:Lcom/android/settings/NsdEnabler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mVPNSettingPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "ro.wcn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/WirelessSettings;->WCN_DISABLED:Z

    .line 97
    const-string v0, "pikel_ui_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/WirelessSettings;->PIKEL_UI_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/android/settings/WirelessSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/WirelessSettings$2;-><init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 576
    new-instance v0, Lcom/android/settings/WirelessSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/WirelessSettings$3;-><init>(Lcom/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/WirelessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateMobileSettingsState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/WirelessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateVPNSettingState()V

    return-void
.end method

.method private initSmsApplicationSetting()V
    .locals 11

    .prologue
    .line 208
    const-string v10, "initSmsApplicationSetting:"

    invoke-direct {p0, v10}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v9

    .line 213
    .local v9, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    .line 214
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 215
    .local v2, "entries":[Ljava/lang/CharSequence;
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 216
    .local v4, "entryValues":[Ljava/lang/CharSequence;
    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    .line 218
    .local v3, "entryImages":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 219
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 220
    .local v5, "i":I
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 221
    .local v8, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v5

    .line 222
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v5

    .line 224
    :try_start_0
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5

    goto :goto_1

    .line 230
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 231
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 232
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v3}, Lcom/android/settings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V

    .line 234
    return-void
.end method

.method private isAirplaneOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 262
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 266
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStandby(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_standby"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "tmpStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method private updateMobileSettingsState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 526
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 527
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, "isSimReady":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 530
    .local v3, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 531
    const-string v5, "phone"

    invoke-static {v5, v1}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 533
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMobileSettingsState:phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isStandby = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/settings/WirelessSettings;->isStandby(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",hasIccCard = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",getSimState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v1}, Lcom/android/settings/WirelessSettings;->isStandby(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 538
    const/4 v2, 0x1

    .line 542
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mMobileNetworkPreference:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMobileSettingsState:isSimReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isAirplaneOff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->isAirplaneOff()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 544
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->isAirplaneOff()Z

    move-result v5

    if-nez v5, :cond_4

    .line 545
    :cond_1
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mMobileNetworkPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 546
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mLteService:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 553
    .end local v1    # "i":I
    .end local v2    # "isSimReady":Z
    .end local v3    # "phoneCount":I
    :cond_2
    :goto_1
    return-void

    .line 530
    .restart local v1    # "i":I
    .restart local v2    # "isSimReady":Z
    .restart local v3    # "phoneCount":I
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 548
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mMobileNetworkPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 549
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mLteService:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    .prologue
    .line 191
    const-string v4, "updateSmsApplicationSetting:"

    invoke-direct {p0, v4}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 193
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 197
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 198
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 200
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 197
    .restart local v1    # "i":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateVPNSettingState()V
    .locals 3

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mVPNSettingPreference:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mVPNSettingPreference:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->isAirplaneOff()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 563
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 510
    const v0, 0x7f0907be

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 499
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 500
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 502
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 505
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 506
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 278
    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 279
    if-eqz p1, :cond_0

    .line 280
    const-string v21, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 282
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 284
    const-string v21, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 285
    const-string v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 287
    const v21, 0x7f05004a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 289
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    if-eqz v21, :cond_11

    const/4 v9, 0x1

    .line 291
    .local v9, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 292
    .local v2, "activity":Landroid/app/Activity;
    const-string v21, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 293
    const-string v21, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    .line 295
    .local v13, "nsd":Landroid/preference/CheckBoxPreference;
    new-instance v21, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 297
    const-string v21, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings/SmsListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    sget-boolean v21, Lcom/android/settings/WirelessSettings;->PIKEL_UI_SUPPORT:Z

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    :cond_1
    const-string v21, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mMobileNetworkPreference:Landroid/preference/PreferenceScreen;

    .line 303
    const-string v21, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mVPNSettingPreference:Landroid/preference/PreferenceScreen;

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->initSmsApplicationSetting()V

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "airplane_mode_toggleable_radios"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 313
    .local v20, "toggleable":Ljava/lang/String;
    if-nez v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1110049

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_12

    const/4 v10, 0x1

    .line 315
    .local v10, "isWimaxEnabled":Z
    :goto_1
    if-nez v10, :cond_13

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 317
    .local v19, "root":Landroid/preference/PreferenceScreen;
    const-string v21, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 318
    .local v18, "ps":Landroid/preference/Preference;
    if-eqz v18, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    .end local v18    # "ps":Landroid/preference/Preference;
    .end local v19    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    :goto_2
    const-string v21, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Ljava/lang/String;)V

    .line 328
    if-nez v9, :cond_3

    sget-boolean v21, Lcom/android/settings/WirelessSettings;->PIKEL_UI_SUPPORT:Z

    if-eqz v21, :cond_4

    .line 329
    :cond_3
    const-string v21, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 331
    :cond_4
    const-string v21, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Ljava/lang/String;)V

    .line 333
    if-eqz v20, :cond_5

    const-string v21, "bluetooth"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 338
    :cond_5
    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 339
    :cond_6
    const-string v21, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 340
    const-string v21, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 342
    :cond_7
    const-string v21, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0006

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 347
    .local v8, "isMobilePlanEnabled":Z
    if-eqz v8, :cond_8

    sget-boolean v21, Lcom/android/settings/WirelessSettings;->PIKEL_UI_SUPPORT:Z

    if-eqz v21, :cond_9

    .line 348
    :cond_8
    const-string v21, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 349
    .local v17, "pref":Landroid/preference/Preference;
    if-eqz v17, :cond_9

    .line 350
    const-string v21, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 353
    .end local v17    # "pref":Landroid/preference/Preference;
    :cond_9
    const-string v21, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Ljava/lang/String;)V

    .line 354
    const-string v21, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Ljava/lang/String;)V

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->isSmsSupported()Z

    move-result v21

    if-nez v21, :cond_a

    .line 358
    const-string v21, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 362
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "android.hardware.type.television"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 363
    const-string v21, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 366
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "airplane_mode_on"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 370
    const-string v21, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 371
    .local v12, "mGlobalProxy":Landroid/preference/Preference;
    const-string v21, "device_policy"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 374
    .local v11, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v21

    if-nez v21, :cond_15

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 378
    const-string v21, "connectivity"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 381
    .local v3, "cm":Landroid/net/ConnectivityManager;
    if-nez v9, :cond_c

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v21

    if-eqz v21, :cond_c

    sget-boolean v21, Lcom/android/settings/WirelessSettings;->WCN_DISABLED:Z

    if-nez v21, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "android.hardware.wifi"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_16

    .line 384
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 389
    :goto_4
    const-string v21, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x111004e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 395
    .local v6, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v6, :cond_d

    .line 396
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 397
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const-string v21, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 399
    const/4 v6, 0x0

    .line 405
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    :goto_5
    if-nez v9, :cond_e

    if-nez v6, :cond_f

    .line 406
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 407
    .restart local v19    # "root":Landroid/preference/PreferenceScreen;
    const-string v21, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 408
    .restart local v18    # "ps":Landroid/preference/Preference;
    if-eqz v18, :cond_f

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    .end local v18    # "ps":Landroid/preference/Preference;
    .end local v19    # "root":Landroid/preference/PreferenceScreen;
    :cond_f
    const-string v21, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Ljava/lang/String;)V

    .line 412
    const-string v21, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 414
    const-string v21, "lte_service_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mLteService:Landroid/preference/PreferenceScreen;

    .line 415
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v15

    .line 416
    .local v15, "phoneCount":I
    const/4 v7, 0x0

    .line 417
    .local v7, "isLtePhone":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v15, :cond_17

    .line 418
    invoke-static {v4}, Lcom/sprd/internal/telephony/CpSupportUtils;->isLtePhone(I)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 419
    const/4 v7, 0x1

    .line 417
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 289
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "i":I
    .end local v6    # "isCellBroadcastAppLinkEnabled":Z
    .end local v7    # "isLtePhone":Z
    .end local v8    # "isMobilePlanEnabled":Z
    .end local v9    # "isSecondaryUser":Z
    .end local v10    # "isWimaxEnabled":Z
    .end local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v13    # "nsd":Landroid/preference/CheckBoxPreference;
    .end local v15    # "phoneCount":I
    .end local v20    # "toggleable":Ljava/lang/String;
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 313
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v9    # "isSecondaryUser":Z
    .restart local v13    # "nsd":Landroid/preference/CheckBoxPreference;
    .restart local v20    # "toggleable":Ljava/lang/String;
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 320
    .restart local v10    # "isWimaxEnabled":Z
    :cond_13
    if-eqz v20, :cond_14

    const-string v21, "wimax"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    if-eqz v10, :cond_2

    .line 322
    :cond_14
    const-string v21, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 323
    .restart local v18    # "ps":Landroid/preference/Preference;
    const-string v21, "toggle_airplane"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 375
    .end local v18    # "ps":Landroid/preference/Preference;
    .restart local v8    # "isMobilePlanEnabled":Z
    .restart local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v12    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_15
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 386
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    :cond_16
    const-string v21, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 387
    .local v14, "p":Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_4

    .line 402
    .end local v14    # "p":Landroid/preference/Preference;
    .restart local v6    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v5

    .line 403
    .local v5, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 422
    .end local v5    # "ignored":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "i":I
    .restart local v7    # "isLtePhone":Z
    .restart local v15    # "phoneCount":I
    :cond_17
    if-eqz v7, :cond_18

    sget-boolean v21, Lcom/android/settings/WirelessSettings;->PIKEL_UI_SUPPORT:Z

    if-eqz v21, :cond_19

    .line 423
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mLteService:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 426
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v23

    invoke-static/range {v22 .. v23}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setSummary(I)V

    .line 431
    :goto_7
    return-void

    .line 429
    :cond_1a
    const-string v21, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 254
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 241
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 572
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 574
    return-void
.end method

.method public onManageMobilePlanClick()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0903c2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 144
    const-string v6, "onManageMobilePlanClick:"

    invoke-direct {p0, v6}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 145
    iput-object v10, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 148
    .local v4, "resources":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 149
    .local v2, "ni":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 151
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "EXTRA_URL"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    iput-object v10, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 184
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onManageMobilePlanClick: message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 188
    :cond_0
    return-void

    .line 160
    .restart local v5    # "url":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "operatorName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 164
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    const v6, 0x7f0903c1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_2
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_3
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 177
    .end local v3    # "operatorName":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-nez v6, :cond_5

    .line 179
    const v6, 0x7f0903c3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_5
    const v6, 0x7f0903c4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 489
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 492
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->pause()V

    .line 495
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 516
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 517
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V

    .line 518
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    :goto_0
    return v2

    .line 113
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick: preference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "targetComponent":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 124
    :cond_1
    const-string v3, "manage_mobile_plan"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->onManageMobilePlanClick()V

    .line 137
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 128
    :cond_3
    const-string v3, "mobile_network_settings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 454
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 456
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 457
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/settings/NsdEnabler;->resume()V

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateMobileSettingsState()V

    .line 464
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateVPNSettingState()V

    .line 465
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 467
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 469
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_1
    const-string v1, "wifi_calling_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 478
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 447
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 449
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->initSmsApplicationSetting()V

    .line 450
    return-void
.end method

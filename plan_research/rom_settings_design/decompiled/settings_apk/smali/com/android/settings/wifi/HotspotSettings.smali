.class public Lcom/android/settings/wifi/HotspotSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HotspotSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/HotspotSettings$1;,
        Lcom/android/settings/wifi/HotspotSettings$WifiApEnablerSwitchPreference;,
        Lcom/android/settings/wifi/HotspotSettings$StateReceiver;
    }
.end annotation


# static fields
.field private static final mSoftapSleepSupport:Z


# instance fields
.field private mBlockedStationsCategory:Landroid/preference/PreferenceCategory;

.field private mConnectedStationsCategory:Landroid/preference/PreferenceCategory;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEmptyPreference:Landroid/preference/Preference;

.field private mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

.field private mHotspotEnabler:Lcom/android/settings/wifi/HotspotEnabler;

.field private mHotspotKeepOn:Landroid/preference/ListPreference;

.field private mHotspotNoBlockedStations:Landroid/preference/Preference;

.field private mHotspotNoConnectedStation:Landroid/preference/Preference;

.field private mSecurityType:[Ljava/lang/String;

.field private mStateReceiver:Lcom/android/settings/wifi/HotspotSettings$StateReceiver;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private supportBtWifiSoftApCoexit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "ro.softap.sleep.policy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/HotspotSettings;->mSoftapSleepSupport:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/HotspotSettings;->supportBtWifiSoftApCoexit:Z

    .line 359
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/HotspotSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/HotspotSettings;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/wifi/HotspotSettings;->updateStations()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/HotspotSettings;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotSettings;->mConnectedStationsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/settings/wifi/HotspotSettings;->mSoftapSleepSupport:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/HotspotSettings;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotNoConnectedStation:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/HotspotSettings;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotSettings;->mBlockedStationsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/HotspotSettings;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotNoBlockedStations:Landroid/preference/Preference;

    return-object v0
.end method

.method private addBlockedStations()V
    .locals 10

    .prologue
    .line 272
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->softApGetBlockedStations()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "mBlockedStationsStr":Ljava/lang/String;
    const-string v6, "HotspotSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBlockedStationsStr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mBlockedStationsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 275
    sget-boolean v6, Lcom/android/settings/wifi/HotspotSettings;->mSoftapSleepSupport:Z

    if-eqz v6, :cond_2

    .line 276
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mBlockedStationsCategory:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 280
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 281
    :cond_0
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mBlockedStationsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotNoBlockedStations:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 289
    :cond_1
    return-void

    .line 278
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mBlockedStationsCategory:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 285
    :cond_3
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "mBlockedStations":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 287
    .local v5, "station":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mBlockedStationsCategory:Landroid/preference/PreferenceCategory;

    new-instance v7, Lcom/android/settings/wifi/Station;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v5, v9}, Lcom/android/settings/wifi/Station;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private addConnectedStations()V
    .locals 10

    .prologue
    .line 252
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->softApGetConnectedStations()Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "mConnectedStationsStr":Ljava/lang/String;
    const-string v6, "HotspotSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mConnectedStationsStr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mConnectedStationsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 255
    sget-boolean v6, Lcom/android/settings/wifi/HotspotSettings;->mSoftapSleepSupport:Z

    if-eqz v6, :cond_2

    .line 256
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mConnectedStationsCategory:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 260
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 261
    :cond_0
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mConnectedStationsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotNoConnectedStation:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_1
    return-void

    .line 258
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mConnectedStationsCategory:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 265
    :cond_3
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "mConnectedStations":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 267
    .local v5, "station":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mConnectedStationsCategory:Landroid/preference/PreferenceCategory;

    new-instance v7, Lcom/android/settings/wifi/Station;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v5, v9}, Lcom/android/settings/wifi/Station;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f09028e

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 184
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 185
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mSecurityType:[Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/HotspotSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 189
    sget-boolean v3, Lcom/android/settings/wifi/HotspotSettings;->mSoftapSleepSupport:Z

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotKeepOn:Landroid/preference/ListPreference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 193
    :cond_0
    const-string v3, "hotspot_ssid_and_security"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 194
    sget-boolean v3, Lcom/android/settings/wifi/HotspotSettings;->mSoftapSleepSupport:Z

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 199
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_2

    .line 200
    const v3, 0x1040481

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    .end local v2    # "s":Ljava/lang/String;
    :goto_1
    return-void

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 207
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings/wifi/HotspotSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateHotspotKeepOnSummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 6
    .param p1, "modePref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 342
    if-eqz p2, :cond_1

    .line 343
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 346
    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 348
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :goto_1
    return-void

    .line 345
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "values":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :cond_1
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    const-string v3, "HotspotSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid  value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateStations()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/settings/wifi/HotspotSettings;->addConnectedStations()V

    .line 248
    invoke-direct {p0}, Lcom/android/settings/wifi/HotspotSettings;->addBlockedStations()V

    .line 249
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 214
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 216
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 223
    iget-boolean v1, p0, Lcom/android/settings/wifi/HotspotSettings;->supportBtWifiSoftApCoexit:Z

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "softap_reenabling"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 229
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 234
    .local v0, "index":I
    sget-boolean v1, Lcom/android/settings/wifi/HotspotSettings;->mSoftapSleepSupport:Z

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 239
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09028e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/settings/wifi/HotspotSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    .end local v0    # "index":I
    :cond_1
    return-void

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 237
    .restart local v0    # "index":I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v3, 0x7f050017

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 80
    const-string v3, "hotspot_connected_stations"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mConnectedStationsCategory:Landroid/preference/PreferenceCategory;

    .line 81
    const-string v3, "hotspot_blocked_stations"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mBlockedStationsCategory:Landroid/preference/PreferenceCategory;

    .line 82
    const-string v3, "hotspot_no_connected_station"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotNoConnectedStation:Landroid/preference/Preference;

    .line 83
    const-string v3, "hotspot_no_blocked_station"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotNoBlockedStations:Landroid/preference/Preference;

    .line 84
    const-string v3, "soft_ap_sleep_policy"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotKeepOn:Landroid/preference/ListPreference;

    .line 85
    sget-boolean v3, Lcom/android/settings/wifi/HotspotSettings;->mSoftapSleepSupport:Z

    if-nez v3, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotKeepOn:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lcom/android/settings/wifi/HotspotSettings$WifiApEnablerSwitchPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/wifi/HotspotSettings$WifiApEnablerSwitchPreference;-><init>(Lcom/android/settings/wifi/HotspotSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    .line 111
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 112
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const v4, 0x7f09055c

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 115
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const v4, 0x7f09055d

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    .line 116
    new-instance v3, Lcom/android/settings/wifi/HotspotEnabler;

    iget-object v4, p0, Lcom/android/settings/wifi/HotspotSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/HotspotEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotEnabler:Lcom/android/settings/wifi/HotspotEnabler;

    .line 118
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEmptyPreference:Landroid/preference/Preference;

    .line 119
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 121
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 123
    const-string v3, "ro.btwifisoftap.coexist"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iput-boolean v5, p0, Lcom/android/settings/wifi/HotspotSettings;->supportBtWifiSoftApCoexit:Z

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/HotspotSettings;->initWifiTethering()V

    .line 129
    sget-boolean v3, Lcom/android/settings/wifi/HotspotSettings;->mSoftapSleepSupport:Z

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotKeepOn:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_soft_ap_sleep_policy_key"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 133
    .local v2, "value":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "stringValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotKeepOn:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotKeepOn:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/HotspotSettings;->updateHotspotKeepOnSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 137
    .end local v1    # "stringValue":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 172
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 175
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 178
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotEnabler:Lcom/android/settings/wifi/HotspotEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/HotspotEnabler;->pause()V

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mStateReceiver:Lcom/android/settings/wifi/HotspotSettings$StateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 328
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "key":Ljava/lang/String;
    const-string v5, "soft_ap_sleep_policy"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 332
    .local v4, "value":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_soft_ap_sleep_policy_key"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/HotspotSettings;->updateHotspotKeepOnSummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v4    # "value":I
    :cond_0
    const/4 v5, 0x1

    :goto_0
    return v5

    .line 334
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 167
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 142
    iget-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mHotspotEnabler:Lcom/android/settings/wifi/HotspotEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/HotspotEnabler;->resume()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/wifi/HotspotSettings;->updateStations()V

    .line 145
    new-instance v1, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;-><init>(Lcom/android/settings/wifi/HotspotSettings;Lcom/android/settings/wifi/HotspotSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/wifi/HotspotSettings;->mStateReceiver:Lcom/android/settings/wifi/HotspotSettings$StateReceiver;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.net.wifi.WIFI_AP_CONNECTION_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.net.wifi.SOFTAP_BLOCKLIST_AVAILABLE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "com.sprd.settings.STATIONS_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings;->mStateReceiver:Lcom/android/settings/wifi/HotspotSettings$StateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

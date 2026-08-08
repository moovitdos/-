.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$WifiEnablerSwitchPreference;,
        Lcom/android/settings/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static UNIVERSEUI_SUPPORT:Z

.field private static supportWAPI:Z


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAutoFinishOnConnection:Z

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDefinedApsCategory:Landroid/preference/PreferenceGroup;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyPreference:Landroid/preference/Preference;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mOtherApsCategory:Landroid/preference/PreferenceGroup;

.field private mP2pSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mShouldShowWAPICertLostError:Z

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private supportCMCC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    const-string v0, "universe_ui_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->UNIVERSEUI_SUPPORT:Z

    .line 204
    const-string v0, "ro.wifi.sup_sprd.wapi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->supportWAPI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mShouldShowWAPICertLostError:Z

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    const-string v0, "ro.operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->supportWAPI:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private addAccessPointCategory(Landroid/preference/PreferenceGroup;I)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I

    .prologue
    .line 887
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 888
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 889
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 890
    return-void
.end method

.method private addAccessPointForOrignalVersion()V
    .locals 3

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 840
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 841
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 842
    const v1, 0x7f090211

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 847
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 848
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 844
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 845
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 850
    :cond_1
    return-void
.end method

.method private addAccessPointsForCMCCVersion()V
    .locals 5

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 853
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 854
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 855
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 856
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 858
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDefinedApsCategory:Landroid/preference/PreferenceGroup;

    if-nez v2, :cond_0

    .line 859
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDefinedApsCategory:Landroid/preference/PreferenceGroup;

    .line 863
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDefinedApsCategory:Landroid/preference/PreferenceGroup;

    const v3, 0x7f0907f0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->addAccessPointCategory(Landroid/preference/PreferenceGroup;I)V

    .line 865
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOtherApsCategory:Landroid/preference/PreferenceGroup;

    if-nez v2, :cond_1

    .line 866
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOtherApsCategory:Landroid/preference/PreferenceGroup;

    .line 870
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOtherApsCategory:Landroid/preference/PreferenceGroup;

    const v3, 0x7f0907f1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->addAccessPointCategory(Landroid/preference/PreferenceGroup;I)V

    .line 872
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 873
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 874
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDefinedApsCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 861
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDefinedApsCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_0

    .line 868
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOtherApsCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_1

    .line 876
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mOtherApsCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 880
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDefinedApsCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 881
    if-nez v0, :cond_4

    .line 882
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDefinedApsCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 884
    :cond_4
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 921
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 923
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 928
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 929
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 931
    :cond_1
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 1209
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1212
    :cond_0
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 938
    new-instance v4, Lcom/android/settings/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 940
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 941
    if-eqz v0, :cond_1

    .line 942
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 944
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 947
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 948
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 949
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 955
    if-eqz v0, :cond_4

    .line 956
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 958
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 963
    const/4 v1, 0x0

    .line 964
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 965
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 966
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    .line 968
    :cond_3
    if-nez v2, :cond_2

    .line 969
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 970
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 977
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 978
    return-object v3

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1001
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1003
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->supportWAPI:Z

    if-eqz v1, :cond_1

    const-string v1, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1004
    const-string v0, "wapi_string"

    .line 1006
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1007
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPPLICANT_WAPI_EVENT received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    packed-switch v0, :pswitch_data_0

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1010
    :pswitch_0
    const v0, 0x7f0901f4

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1014
    :pswitch_1
    const v0, 0x7f0901f5

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1018
    :pswitch_2
    const-string v0, "WifiSettings"

    const-string v1, "WAPI_EVENT_CERT_LOST_CODE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mShouldShowWAPICertLostError:Z

    if-ne v0, v4, :cond_0

    .line 1021
    const v0, 0x7f0901f6

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1023
    const-string v0, "WifiSettings"

    const-string v1, "cert lost"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mShouldShowWAPICertLostError:Z

    goto :goto_0

    .line 1030
    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1032
    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1034
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 1036
    :cond_2
    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 1038
    :cond_3
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1041
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 1042
    :cond_5
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1049
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 1051
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1052
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1057
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1059
    :cond_7
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1060
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1062
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1063
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1064
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1065
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1066
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1068
    if-eqz v0, :cond_0

    .line 1069
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1070
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1074
    :cond_8
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setOffMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 893
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f090210

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 895
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 899
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 901
    const v0, 0x7f0901fe

    .line 905
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 909
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 910
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 911
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 912
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 914
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 915
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 917
    :cond_1
    return-void

    .line 903
    :cond_2
    const v0, 0x7f0901ff

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 719
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 725
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 726
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 728
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 729
    return-void
.end method

.method private updateAccessPoints()V
    .locals 2

    .prologue
    .line 802
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 835
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    const v0, 0x7f090212

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 810
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 827
    :pswitch_0
    const v0, 0x7f0901f0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 828
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 813
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    if-eqz v0, :cond_2

    .line 814
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addAccessPointsForCMCCVersion()V

    goto :goto_0

    .line 816
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addAccessPointForOrignalVersion()V

    goto :goto_0

    .line 822
    :pswitch_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 823
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 832
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1139
    :cond_0
    return-void

    .line 1086
    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_6

    .line 1087
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1092
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1093
    if-eqz p1, :cond_3

    .line 1096
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_8

    .line 1097
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 1098
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1101
    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_7

    .line 1102
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1110
    :cond_3
    :goto_1
    invoke-static {}, Landroid/util/Log;->isIloggable()Z

    move-result v0

    .line 1111
    if-eqz v0, :cond_4

    .line 1112
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_9

    .line 1113
    const-string v0, "WLAN: connected."

    invoke-static {v0}, Landroid/util/Log;->stopPerfTracking(Ljava/lang/String;)V

    .line 1118
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_0

    .line 1119
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 1120
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    if-eqz v0, :cond_a

    .line 1121
    instance-of v0, v1, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 1123
    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_4
    if-ltz v2, :cond_b

    move-object v0, v1

    .line 1124
    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 1125
    instance-of v4, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_5

    .line 1126
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1127
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1123
    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_4

    .line 1089
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0

    .line 1104
    :cond_7
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_1

    .line 1107
    :cond_8
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_1

    .line 1114
    :cond_9
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 1115
    const-string v0, "WLAN: disconnected."

    invoke-static {v0}, Landroid/util/Log;->stopPerfTracking(Ljava/lang/String;)V

    goto :goto_2

    .line 1133
    :cond_a
    instance-of v0, v1, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_b

    .line 1134
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 1135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1118
    :cond_b
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3
.end method

.method private updateWifiState(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1142
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1147
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1161
    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1162
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1164
    :goto_1
    return-void

    .line 1149
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 1153
    :pswitch_1
    const v0, 0x7f0901ef

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1157
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 1147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method forget()V
    .locals 3

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1293
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :goto_0
    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1299
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1302
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1357
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_0

    .line 1358
    const/4 v0, 0x0

    .line 1360
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0907bb

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 325
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.wifi.direct"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    .line 328
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 330
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 345
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 360
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 375
    if-eqz p1, :cond_0

    const-string v5, "wifi_ap_state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    const-string v5, "edit_mode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 378
    const-string v5, "wifi_ap_state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 382
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 385
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "wifi_auto_finish_on_connect"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 387
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v5, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 393
    :cond_1
    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 395
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 397
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 398
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 481
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 405
    :cond_2
    const-string v5, "wifi_enable_next_on_connect"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 407
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v5, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 411
    .restart local v1    # "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 412
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 414
    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 419
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_3
    const v5, 0x7f050049

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 421
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v5, :cond_4

    .line 422
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x1a40000

    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 454
    :cond_4
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$WifiEnablerSwitchPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/settings/wifi/WifiSettings$WifiEnablerSwitchPreference;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    .line 455
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 456
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const v6, 0x7f09055c

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 459
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    const v6, 0x7f09055d

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    .line 460
    new-instance v5, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mEnablerSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-direct {v5, v0, v6}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 462
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyPreference:Landroid/preference/Preference;

    .line 463
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 465
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 467
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 469
    sget-boolean v5, Lcom/android/settings/wifi/WifiSettings;->UNIVERSEUI_SUPPORT:Z

    if-eqz v5, :cond_5

    .line 470
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 471
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v6, 0x7f0d001b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 475
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 477
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v5, :cond_6

    .line 478
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 480
    :cond_6
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    goto/16 :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1324
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1325
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 1326
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1216
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1217
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    sget v0, Lcom/android/settings/wifi/WifiDialog;->BUTTON_SUBMIT:I

    if-ne p2, v0, :cond_2

    .line 1219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 1221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mShouldShowWAPICertLostError:Z

    goto :goto_0

    .line 1225
    :cond_2
    sget v0, Lcom/android/settings/wifi/WifiDialog;->BUTTON_DISCONNECT:I

    if-ne p2, v0, :cond_0

    .line 1226
    invoke-static {}, Landroid/util/Log;->isIloggable()Z

    move-result v0

    .line 1227
    if-eqz v0, :cond_3

    .line 1228
    const-string v0, "WLAN: disconnect to ap."

    invoke-static {v0}, Landroid/util/Log;->startPerfTracking(Ljava/lang/String;)V

    .line 1230
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 652
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 653
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 693
    :goto_0
    return v0

    .line 655
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 693
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 657
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_2

    .line 659
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 660
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setManulConnectFlags(Z)V

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 676
    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mShouldShowWAPICertLostError:Z

    goto :goto_0

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_4

    .line 666
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 668
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    if-ne v1, v0, :cond_3

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 669
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setManulConnectFlags(Z)V

    .line 671
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 674
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_1

    .line 680
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v1, v2, :cond_5

    .line 682
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to forget invalid network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 689
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 241
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 242
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 631
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 635
    .local v0, "preference":Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 636
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0    # "preference":Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 637
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 638
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 640
    const/4 v1, 0x7

    const v2, 0x7f09020d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_1

    .line 643
    const/16 v1, 0x8

    const v2, 0x7f09020e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 644
    const/16 v1, 0x9

    const v2, 0x7f09020f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 648
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    const v5, 0x7f09025f

    const v4, 0x7f09025e

    const/4 v3, 0x0

    .line 733
    packed-switch p1, :pswitch_data_0

    .line 793
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 735
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 736
    .local v0, "ap":Lcom/android/settings/wifi/AccessPoint;
    if-nez v0, :cond_0

    .line 737
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 738
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0    # "ap":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 740
    .restart local v0    # "ap":Lcom/android/settings/wifi/AccessPoint;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 742
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 746
    :cond_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 747
    new-instance v1, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 748
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 750
    .end local v0    # "ap":Lcom/android/settings/wifi/AccessPoint;
    :pswitch_1
    new-instance v1, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 752
    :pswitch_2
    new-instance v1, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 754
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090260

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 773
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090261

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 510
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 512
    .local v0, "ta":Landroid/content/res/TypedArray;
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v2, :cond_1

    .line 513
    const v2, 0x7f090207

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 517
    const v2, 0x7f090205

    invoke-interface {p1, v4, v8, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 553
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 554
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 521
    :cond_1
    const v2, 0x7f090207

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 526
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    if-eqz v2, :cond_2

    .line 527
    const/16 v2, 0xa

    const v3, 0x7f0907f6

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 533
    :cond_2
    const v2, 0x7f090205

    invoke-interface {p1, v4, v8, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 537
    const/4 v2, 0x6

    const v3, 0x7f09020b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 541
    const v2, 0x7f090209

    invoke-interface {p1, v4, v6, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 544
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v2, :cond_3

    .line 545
    const v2, 0x7f09020a

    invoke-interface {p1, v4, v7, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 549
    :cond_3
    const/4 v2, 0x5

    const v3, 0x7f09020c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 510
    :array_0
    .array-data 4
        0x7f010017
        0x7f010019
        0x7f01001c
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 247
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v5, :cond_3

    .line 248
    const v5, 0x7f04008d

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 249
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0b017e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 250
    .local v3, "other":Landroid/view/View;
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v5, 0x7f0b017c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 259
    .local v0, "b":Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 260
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 283
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "wifi_show_custom_button"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    const v5, 0x7f0b0181

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 285
    const v5, 0x7f0b0182

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 286
    const v5, 0x7f0b0184

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 287
    const v5, 0x7f0b003f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 289
    const v5, 0x7f0b0183

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 290
    .local v1, "customButton":Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 291
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    .end local v1    # "customButton":Landroid/widget/Button;
    :cond_1
    const-string v5, "wifi_show_wifi_required_info"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 314
    const v5, 0x7f0b017d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .end local v0    # "b":Landroid/widget/ImageButton;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "other":Landroid/view/View;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    return-object v4

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    :goto_0
    return v6

    .line 577
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 626
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 579
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 580
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    move v6, v7

    .line 581
    goto :goto_0

    .line 583
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090278

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v7

    .line 592
    goto :goto_0

    .line 590
    :cond_1
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 594
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    move v6, v7

    .line 595
    goto :goto_0

    .line 597
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_2
    move v6, v7

    .line 600
    goto :goto_0

    .line 602
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_3
    move v6, v7

    .line 605
    goto :goto_0

    .line 607
    :pswitch_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_4

    .line 608
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090263

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v7

    .line 616
    goto :goto_0

    .line 614
    :cond_4
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 619
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 620
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_5
    move v6, v7

    .line 623
    goto/16 :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 496
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 500
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 502
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 698
    instance-of v1, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 699
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 701
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 703
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 705
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 706
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setManulConnectFlags(Z)V

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 715
    :goto_0
    return v0

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 713
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 485
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 486
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 490
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 492
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 559
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 566
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 567
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 570
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1316
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1317
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1353
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1239
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1240
    invoke-static {}, Landroid/util/Log;->isIloggable()Z

    move-result v1

    .line 1241
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1242
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->supportWAPI:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1244
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09016b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1288
    :goto_0
    return-void

    .line 1251
    :cond_0
    if-nez v0, :cond_5

    .line 1252
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_3

    .line 1254
    if-eqz v1, :cond_1

    .line 1255
    const-string v0, "WLAN: connect to ap."

    invoke-static {v0}, Landroid/util/Log;->startPerfTracking(Ljava/lang/String;)V

    .line 1259
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1260
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setManulConnectFlags(Z)V

    .line 1262
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1284
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1285
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1287
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 1265
    :cond_5
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v5, :cond_6

    .line 1266
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    .line 1267
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 1270
    :cond_6
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1271
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 1273
    :cond_7
    if-eqz v1, :cond_8

    .line 1274
    const-string v1, "WLAN: connect to ap."

    invoke-static {v1}, Landroid/util/Log;->startPerfTracking(Ljava/lang/String;)V

    .line 1277
    :cond_8
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->supportCMCC:Z

    if-ne v1, v4, :cond_9

    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->isWifiConnectingOrConnected()Z

    move-result v1

    if-ne v1, v4, :cond_9

    .line 1278
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setManulConnectFlags(Z)V

    .line 1280
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1
.end method

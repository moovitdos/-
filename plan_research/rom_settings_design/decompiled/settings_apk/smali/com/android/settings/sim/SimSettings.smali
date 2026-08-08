.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;,
        Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;,
        Lcom/android/settings/sim/SimSettings$DataPreference;,
        Lcom/android/settings/sim/SimSettings$SimPreference;,
        Lcom/android/settings/sim/SimSettings$SimInfoChanged;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mAlertDialogFragment:Landroid/app/DialogFragment;

.field private mAvailableSubInfoArray:[Landroid/sim/Sim;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataPreference:Lcom/android/settings/sim/SimSettings$DataPreference;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mIsVTModem:Z

.field mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNumSlots:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

.field private mRadioBusyObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

.field private mSimCards:Landroid/preference/PreferenceScreen;

.field mSimInfoChanged:Lcom/android/settings/sim/SimSettings$SimInfoChanged;

.field private mSimManager:Landroid/sim/SimManager;

.field private mSimSettingList:Landroid/widget/ListView;

.field mSimlistListener:Landroid/view/View$OnKeyListener;

.field private mSubInfoArray:[Landroid/sim/Sim;

.field private mTelephonyManager:[Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/sim/SimSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 116
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoArray:[Landroid/sim/Sim;

    .line 118
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfoArray:[Landroid/sim/Sim;

    .line 119
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    .line 130
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    .line 131
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAlertDialogFragment:Landroid/app/DialogFragment;

    .line 433
    new-instance v0, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 488
    new-instance v0, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$3;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimlistListener:Landroid/view/View$OnKeyListener;

    .line 636
    new-instance v0, Lcom/android/settings/sim/SimSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$4;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 699
    new-instance v0, Lcom/android/settings/sim/SimSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/SimSettings$5;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mRadioBusyObserver:Landroid/database/ContentObserver;

    .line 1024
    new-instance v0, Lcom/android/settings/sim/SimSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/SimSettings$6;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 1175
    new-instance v0, Lcom/android/settings/sim/SimSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$7;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimSettingList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/sim/SimSettings;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSettings;->showStandbyAlertDialog(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/sim/SimSettings;)[Landroid/sim/Sim;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfoArray:[Landroid/sim/Sim;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/sim/SimSettings;[Landroid/sim/Sim;)[Landroid/sim/Sim;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # [Landroid/sim/Sim;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfoArray:[Landroid/sim/Sim;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/sim/SimSettings;)[Landroid/sim/Sim;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->getActiveSubInfoList()[Landroid/sim/Sim;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updatePreferencesState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/sim/SimSettings;)[Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/sim/SimSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/sim/SimSettings$DataPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Lcom/android/settings/sim/SimSettings$DataPreference;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->updateFeatureBarForData(Lcom/android/settings/sim/SimSettings$DataPreference;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/sim/SimSettings;)Landroid/sim/SimManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/sim/SimSettings;)[Landroid/sim/Sim;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoArray:[Landroid/sim/Sim;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->resetProgressDialogFragment(Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/sim/SimSettings;Landroid/app/DialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Landroid/app/DialogFragment;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->resetAlertDialogFragment(Landroid/app/DialogFragment;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/sim/SimSettings;)Landroid/app/DialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAlertDialogFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/sim/SimSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->isStandby(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/sim/SimSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/sim/SimSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->isMobileDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/sim/SimSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getActiveSubInfoList()[Landroid/sim/Sim;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 1040
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    if-nez v10, :cond_1

    .line 1041
    new-array v6, v9, [Landroid/sim/Sim;

    .line 1063
    :cond_0
    :goto_0
    return-object v6

    .line 1044
    :cond_1
    const/4 v0, 0x0

    .line 1045
    .local v0, "activeCount":I
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v10}, Landroid/sim/SimManager;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v2

    .line 1047
    .local v2, "availableSubInfoList":[Landroid/sim/Sim;
    if-nez v2, :cond_2

    .line 1048
    new-array v6, v9, [Landroid/sim/Sim;

    goto :goto_0

    .line 1050
    :cond_2
    array-length v10, v2

    new-array v7, v10, [Landroid/sim/Sim;

    .line 1051
    .local v7, "sims":[Landroid/sim/Sim;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v2

    if-ge v3, v10, :cond_5

    .line 1052
    aget-object v8, v2, v3

    .line 1053
    .local v8, "subInfo":Landroid/sim/Sim;
    invoke-virtual {v8}, Landroid/sim/Sim;->getPhoneId()I

    move-result v5

    .line 1054
    .local v5, "phoneId":I
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_4

    const/4 v4, 0x1

    .line 1055
    .local v4, "isSimReady":Z
    :goto_2
    if-eqz v4, :cond_3

    .line 1056
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "activeCount":I
    .local v1, "activeCount":I
    aput-object v8, v7, v0

    move v0, v1

    .line 1051
    .end local v1    # "activeCount":I
    .restart local v0    # "activeCount":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v4    # "isSimReady":Z
    :cond_4
    move v4, v9

    .line 1054
    goto :goto_2

    .line 1059
    .end local v5    # "phoneId":I
    .end local v8    # "subInfo":Landroid/sim/Sim;
    :cond_5
    new-array v6, v0, [Landroid/sim/Sim;

    .line 1060
    .local v6, "retSims":[Landroid/sim/Sim;
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_0

    .line 1061
    aget-object v9, v7, v3

    aput-object v9, v6, v3

    .line 1060
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private initSimManagerSharedPreferences()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 752
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Landroid/telephony/TelephonyManager;->getSubscriberDesiredSim(Landroid/content/Context;I)I

    move-result v4

    int-to-long v0, v4

    .line 753
    .local v0, "smsPhoneId":J
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/telephony/TelephonyManager;->getSubscriberDesiredSim(Landroid/content/Context;I)I

    move-result v4

    int-to-long v2, v4

    .line 754
    .local v2, "voicePhoneId":J
    const-string v4, "SimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSimManagerSharedPreferences, smsPhoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  voicePhoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    cmp-long v4, v0, v9

    if-nez v4, :cond_0

    .line 757
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v4, v8, v5}, Landroid/telephony/TelephonyManager;->setSubscriberDesiredSim(Landroid/content/Context;II)V

    .line 760
    :cond_0
    cmp-long v4, v2, v9

    if-nez v4, :cond_1

    .line 761
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v4, v7, v5}, Landroid/telephony/TelephonyManager;->setSubscriberDesiredSim(Landroid/content/Context;II)V

    .line 764
    :cond_1
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1002
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1013
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMobileDataEnabled()--isMultiSim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1016
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    .line 1017
    .local v0, "dataPhoneId":I
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabledByPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    .line 1021
    .end local v0    # "dataPhoneId":I
    .local v1, "isDataEnable":Z
    :goto_0
    return v1

    .line 1017
    .end local v1    # "isDataEnable":Z
    .restart local v0    # "dataPhoneId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1019
    .end local v0    # "dataPhoneId":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .restart local v1    # "isDataEnable":Z
    goto :goto_0
.end method

.method private isSingleCmcc()Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "cmccCard":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v9, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v9, :cond_1

    .line 389
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9, v1}, Landroid/telephony/TelephonyManager;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "numeric":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 392
    invoke-virtual {v4, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "mnc":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "tmpMccMnc":Ljava/lang/String;
    const-string v9, "numeric_to_operator"

    invoke-static {v6, v9}, Lcom/sprd/internal/telephony/TeleUtils;->updateOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, "operatorName":Ljava/lang/String;
    const-string v9, "China Mobile"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 397
    add-int/lit8 v0, v0, 0x1

    .line 388
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v5    # "operatorName":Ljava/lang/String;
    .end local v6    # "tmpMccMnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v4    # "numeric":Ljava/lang/String;
    :cond_1
    if-ne v0, v7, :cond_2

    :goto_1
    return v7

    :cond_2
    move v7, v8

    goto :goto_1
.end method

.method private isStandby(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_standby"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
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
    .line 1034
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-void
.end method

.method private resetAlertDialogFragment(Landroid/app/DialogFragment;)V
    .locals 0
    .param p1, "dialogFragment"    # Landroid/app/DialogFragment;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mAlertDialogFragment:Landroid/app/DialogFragment;

    .line 611
    return-void
.end method

.method private resetProgressDialogFragment(Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;)V
    .locals 0
    .param p1, "dialogFragment"    # Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    .line 606
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1007
    const-string v0, "SimSettings"

    const-string v1, "setMobileDataEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1009
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 1010
    return-void
.end method

.method private declared-synchronized showProgressDialog()V
    .locals 4

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 601
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 587
    :cond_1
    :try_start_1
    const-string v1, "SimSettings"

    const-string v2, "show progressing dialog..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 591
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 592
    new-instance v1, Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    .line 593
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 594
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 596
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 598
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    const-string v2, "progress_dialog"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 584
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private showStandbyAlertDialog(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "onOff"    # Z

    .prologue
    .line 580
    invoke-static {p0, p1, p2}, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->show(Lcom/android/settings/sim/SimSettings;IZ)V

    .line 581
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 301
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 302
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    .line 303
    invoke-static {}, Landroid/telephony/TelephonyManager;->isDualLteModem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updatePrimaryCardValues()V

    .line 306
    :cond_0
    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 286
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 287
    return-void
.end method

.method private updateCallValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 341
    const-string v3, "sim_calls"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 342
    .local v1, "simPref":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v0

    .line 343
    .local v0, "dualVoiceSettingValue":I
    const v3, 0x7f090956

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 344
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v3, v0}, Landroid/sim/SimManager;->getSimById(I)Landroid/sim/Sim;

    move-result-object v2

    .line 345
    .local v2, "sir":Landroid/sim/Sim;
    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {v2}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfoArray:[Landroid/sim/Sim;

    array-length v3, v3

    if-le v3, v4, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 357
    return-void

    .line 346
    :cond_1
    invoke-virtual {v2}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 348
    :cond_2
    if-nez v2, :cond_0

    .line 349
    const v3, 0x7f090991

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_3
    move v3, v5

    .line 355
    goto :goto_2
.end method

.method private updateCellularDataValues()V
    .locals 2

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/SimSettings$DataPreference;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$DataPreference;->update()V

    .line 332
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimSettingList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, "selectedItem":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/settings/sim/SimSettings$DataPreference;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 335
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/SimSettings$DataPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->updateFeatureBarForData(Lcom/android/settings/sim/SimSettings$DataPreference;)V

    .line 337
    :cond_0
    return-void
.end method

.method private updateFeatureBarForData(Lcom/android/settings/sim/SimSettings$DataPreference;)V
    .locals 4
    .param p1, "dataPreference"    # Lcom/android/settings/sim/SimSettings$DataPreference;

    .prologue
    const v3, 0x7f020058

    .line 539
    iget-object v0, p1, Lcom/android/settings/sim/SimSettings$DataPreference;->mDataSwitch:Landroid/widget/Switch;

    .line 540
    .local v0, "dataSwitch":Landroid/widget/Switch;
    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v1}, Landroid/sim/SimManager;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 543
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1, v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(I)V

    .line 544
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v2, 0x7f0909a0

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(I)V

    .line 554
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 555
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1, v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 556
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v2, 0x7f09099e

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    goto :goto_1

    .line 561
    :cond_2
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v2, 0x7f09099f

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    goto :goto_0

    .line 564
    :cond_3
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    goto :goto_0
.end method

.method private updatePreferencesState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 727
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->isRadioBusy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 730
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    .line 734
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAlertDialogFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAlertDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 738
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAlertDialogFragment:Landroid/app/DialogFragment;

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 742
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialogFragment:Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;

    .line 745
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->isRadioBusy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 747
    return-void

    .line 745
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePrimaryCardValues()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 361
    const-string v3, "sim_primary_card"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 362
    .local v1, "simPref":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPrimaryCard()I

    move-result v0

    .line 363
    .local v0, "primaryCard":I
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v3, v0}, Landroid/sim/SimManager;->getSimById(I)Landroid/sim/Sim;

    move-result-object v2

    .line 364
    .local v2, "sir":Landroid/sim/Sim;
    const v3, 0x7f090990

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 365
    sget-boolean v3, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updatePrimaryCardValues] mSubInfoArray="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoArray:[Landroid/sim/Sim;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 366
    :cond_0
    if-eqz v2, :cond_4

    .line 367
    invoke-virtual {v2}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 373
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v3}, Landroid/sim/SimManager;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v3

    array-length v3, v3

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isCmccPriority()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isSingleCmcc()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 375
    :cond_2
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 376
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 382
    :goto_2
    return-void

    .line 367
    :cond_3
    invoke-virtual {v2}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 369
    :cond_4
    if-nez v2, :cond_1

    .line 370
    const v3, 0x7f09098c

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 380
    :cond_5
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfoArray:[Landroid/sim/Sim;

    array-length v3, v3

    if-le v3, v4, :cond_6

    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3
.end method

.method private updateSimSlotValues()V
    .locals 4

    .prologue
    .line 290
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 291
    .local v2, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 292
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 293
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v3, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 294
    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 291
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 309
    const-string v3, "sim_sms"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 310
    .local v1, "simPref":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v0

    .line 311
    .local v0, "dualVoiceSettingValue":I
    const v3, 0x7f090958

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 312
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v3, v0}, Landroid/sim/SimManager;->getSimById(I)Landroid/sim/Sim;

    move-result-object v2

    .line 313
    .local v2, "sir":Landroid/sim/Sim;
    sget-boolean v3, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateSmsValues] mSubInfoArray="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoArray:[Landroid/sim/Sim;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 315
    :cond_0
    if-eqz v2, :cond_3

    .line 316
    invoke-virtual {v2}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfoArray:[Landroid/sim/Sim;

    array-length v3, v3

    if-le v3, v4, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 326
    return-void

    .line 316
    :cond_2
    invoke-virtual {v2}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 318
    :cond_3
    if-nez v2, :cond_1

    .line 319
    const v3, 0x7f090991

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 324
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private updateSubscriptions()V
    .locals 7

    .prologue
    .line 264
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v4}, Landroid/sim/SimManager;->getSims()[Landroid/sim/Sim;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoArray:[Landroid/sim/Sim;

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 267
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v4, :cond_0

    .line 268
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_2

    .line 273
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v4, v0}, Landroid/sim/SimManager;->getSimById(I)Landroid/sim/Sim;

    move-result-object v3

    .line 275
    .local v3, "sir":Landroid/sim/Sim;
    new-instance v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, v3, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/sim/Sim;I)V

    .line 276
    .local v2, "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 277
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    .end local v2    # "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    .end local v3    # "sir":Landroid/sim/Sim;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 282
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 160
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mFragmentManager:Landroid/app/FragmentManager;

    .line 163
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    iput v7, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 164
    iget v7, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    new-array v7, v7, [Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v7, :cond_0

    .line 166
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    const-string v7, "phone"

    invoke-static {v7, v1}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    aput-object v7, v10, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mConnService:Landroid/net/ConnectivityManager;

    .line 170
    const v7, 0x7f050036

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 172
    const-string v7, "sim_cards"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    .line 173
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->getActiveSubInfoList()[Landroid/sim/Sim;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfoArray:[Landroid/sim/Sim;

    .line 175
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 176
    .local v5, "simPreferenceCatergory":Landroid/preference/PreferenceCategory;
    new-instance v7, Lcom/android/settings/sim/SimSettings$DataPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, p0, v10}, Lcom/android/settings/sim/SimSettings$DataPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/SimSettings$DataPreference;

    .line 177
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/SimSettings$DataPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 178
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/SimSettings$DataPreference;

    const-string v10, "sim_cellular_data"

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 179
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/SimSettings$DataPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    invoke-static {}, Landroid/telephony/TelephonyManager;->isDualLteModem()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 181
    const-string v7, "sim_primary_card"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 182
    .local v3, "mSimPrimaryCardPreference":Landroid/preference/Preference;
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    .end local v3    # "mSimPrimaryCardPreference":Landroid/preference/Preference;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v7, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v7, :cond_2

    .line 185
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v7, v1}, Landroid/sim/SimManager;->getSimById(I)Landroid/sim/Sim;

    move-result-object v6

    .line 187
    .local v6, "sir":Landroid/sim/Sim;
    new-instance v4, Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v7, v6, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/sim/Sim;I)V

    .line 188
    .local v4, "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    iget v7, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    sub-int v7, v1, v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 189
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    .end local v4    # "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    .end local v6    # "sir":Landroid/sim/Sim;
    :cond_2
    const-string v7, "phone"

    invoke-static {v7, v9}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getModemType()I

    move-result v7

    if-lez v7, :cond_6

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/android/settings/sim/SimSettings;->mIsVTModem:Z

    .line 195
    const-string v7, "reply_message_setting"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

    .line 196
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

    new-instance v9, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v9, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    if-nez v7, :cond_3

    .line 217
    new-instance v7, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 219
    :cond_3
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_4

    .line 227
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfoArray:[Landroid/sim/Sim;

    array-length v7, v7

    if-le v7, v8, :cond_5

    .line 228
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initSimManagerSharedPreferences()V

    .line 232
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->updateReplyMsgPrefence()V

    .line 234
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SIM_STATE_CHANGED0"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v7, "android.intent.action.SIM_STATE_CHANGED1"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    return-void

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_6
    move v7, v9

    .line 192
    goto :goto_2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v7, "SimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RuntimeException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 242
    const-string v1, "onCreateView "

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 243
    const v1, 0x1090082

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    if-eqz v1, :cond_1

    .line 255
    :cond_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 662
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 664
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 665
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 621
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 628
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimInfoChanged:Lcom/android/settings/sim/SimSettings$SimInfoChanged;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimInfoChanged:Lcom/android/settings/sim/SimSettings$SimInfoChanged;

    invoke-virtual {v1, v2}, Landroid/sim/SimManager;->removeOnSimsUpdatedListener(Landroid/sim/SimManager$OnSimsUpdateListener;)V

    .line 630
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimInfoChanged:Lcom/android/settings/sim/SimSettings$SimInfoChanged;

    .line 632
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 633
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 634
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 670
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 671
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 672
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 674
    instance-of v2, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v2, :cond_1

    .line 676
    check-cast p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {p2}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/sim/SimFragmentDialog;->show(Lcom/android/settings/sim/SimSettings;I)V

    .line 695
    :cond_0
    :goto_0
    return v4

    .line 677
    :cond_1
    instance-of v2, p2, Lcom/android/settings/sim/SimSettings$DataPreference;

    if-eqz v2, :cond_2

    .line 679
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 681
    :cond_2
    const-string v2, "sim_calls"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_3

    .line 682
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 684
    :cond_3
    const-string v2, "sim_sms"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_4

    .line 685
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 689
    :cond_4
    const-string v2, "sim_primary_card"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 690
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 691
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 406
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio_operation"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 418
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updatePreferencesState()V

    .line 419
    new-instance v1, Lcom/android/settings/sim/SimSettings$SimInfoChanged;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/SimSettings$SimInfoChanged;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimInfoChanged:Lcom/android/settings/sim/SimSettings$SimInfoChanged;

    .line 420
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimManager:Landroid/sim/SimManager;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimInfoChanged:Lcom/android/settings/sim/SimSettings$SimInfoChanged;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/sim/SimManager;->addOnSimsUpdatedListener(Landroid/sim/SimManager$OnSimsUpdateListener;Landroid/os/Handler;Z)V

    .line 421
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 423
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 426
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimSettingList:Landroid/widget/ListView;

    .line 427
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimSettingList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimSettingList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimlistListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 429
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimSettingList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 431
    :cond_0
    return-void
.end method

.method public updateReplyMsgPrefence()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getReplyMessage(Landroid/content/Context;)I

    move-result v0

    .line 260
    .local v0, "replyMessage":I
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 261
    return-void

    .line 260
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

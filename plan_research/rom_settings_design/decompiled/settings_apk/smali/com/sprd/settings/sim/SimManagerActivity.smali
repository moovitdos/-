.class public Lcom/sprd/settings/sim/SimManagerActivity;
.super Landroid/preference/PreferenceActivity;
.source "SimManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEBUG:Z

.field private static isLeave:I


# instance fields
.field private airplane:Z

.field private dataEnabled:Z

.field private isShowDialog:I

.field private isVTCall:[Z

.field private isVideoEnable:Z

.field private lock:[B

.field private mConManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataPreference:Lcom/sprd/settings/sim/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mPhoneCount:I

.field private mPhoneId:I

.field private mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSimCounts:I

.field private mSimData:[Landroid/sim/Sim;

.field private mSimDataAdapter:Lcom/sprd/settings/sim/DataListAdapter;

.field private mSimManager:Landroid/sim/SimManager;

.field private mSimMms:[Landroid/sim/Sim;

.field private mSimMmsAdapter:Lcom/sprd/settings/sim/SimListAdapter;

.field private mSimPhone:[Landroid/sim/Sim;

.field private mSimPhoneAdapter:Lcom/sprd/settings/sim/SimListAdapter;

.field private mSimSlotCfg:Landroid/preference/PreferenceScreen;

.field private mSims:[Landroid/sim/Sim;

.field private mStandbyPreference:Landroid/preference/PreferenceScreen;

.field private mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

.field private mVoicePreference:Lcom/sprd/settings/sim/ListPreference;

.field private myReceiver:Landroid/content/BroadcastReceiver;

.field private oldSetPhoneId:I

.field private preferencekey:Ljava/lang/String;

.field private setPhoneId:I

.field private telephonyManager:[Landroid/telephony/TelephonyManager;

.field private timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, -0x1

    sput v0, Lcom/sprd/settings/sim/SimManagerActivity;->isLeave:I

    .line 118
    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 93
    iput v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isShowDialog:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mPhoneCount:I

    .line 95
    iput v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    .line 107
    iput v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    .line 108
    iput v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->oldSetPhoneId:I

    .line 113
    iput-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->preferencekey:Ljava/lang/String;

    .line 114
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->lock:[B

    .line 119
    iput-boolean v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->dataEnabled:Z

    .line 120
    iput v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mPhoneId:I

    .line 319
    new-instance v0, Lcom/sprd/settings/sim/SimManagerActivity$5;

    invoke-direct {v0, p0}, Lcom/sprd/settings/sim/SimManagerActivity$5;-><init>(Lcom/sprd/settings/sim/SimManagerActivity;)V

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v0, Lcom/sprd/settings/sim/SimManagerActivity$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sprd/settings/sim/SimManagerActivity$6;-><init>(Lcom/sprd/settings/sim/SimManagerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 622
    iput-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 624
    iput-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timerTask:Ljava/util/TimerTask;

    .line 659
    new-instance v0, Lcom/sprd/settings/sim/SimManagerActivity$8;

    invoke-direct {v0, p0}, Lcom/sprd/settings/sim/SimManagerActivity$8;-><init>(Lcom/sprd/settings/sim/SimManagerActivity;)V

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/sim/SimManagerActivity;)Lcom/sprd/settings/sim/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/sim/SimManagerActivity;)[Landroid/sim/Sim;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimData:[Landroid/sim/Sim;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sprd/settings/sim/SimManagerActivity;)Lcom/sprd/settings/sim/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sprd/settings/sim/SimManagerActivity;)[Landroid/sim/Sim;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMms:[Landroid/sim/Sim;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sprd/settings/sim/SimManagerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->updateDataSummary()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sprd/settings/sim/SimManagerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->airplane:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sprd/settings/sim/SimManagerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->airplane:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sprd/settings/sim/SimManagerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sprd/settings/sim/SimManagerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->updateState()V

    return-void
.end method

.method static synthetic access$1602(Lcom/sprd/settings/sim/SimManagerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->dataEnabled:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/sprd/settings/sim/SimManagerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mPhoneId:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sprd/settings/sim/SimManagerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->finishSettingsWait()V

    return-void
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/sprd/settings/sim/SimManagerActivity;->isLeave:I

    return v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/sim/SimManagerActivity;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mConManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sprd/settings/sim/SimManagerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->oldSetPhoneId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sprd/settings/sim/SimManagerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sprd/settings/sim/SimManagerActivity;->startTimer(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sprd/settings/sim/SimManagerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sprd/settings/sim/SimManagerActivity;->startUpdateDataSettings(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sprd/settings/sim/SimManagerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sprd/settings/sim/SimManagerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sprd/settings/sim/SimManagerActivity;->startCloseDataSettings(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sprd/settings/sim/SimManagerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->preferencekey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sprd/settings/sim/SimManagerActivity;)Lcom/sprd/settings/sim/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sprd/settings/sim/SimManagerActivity;)[Landroid/sim/Sim;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhone:[Landroid/sim/Sim;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sprd/settings/sim/SimManagerActivity;)Lcom/sprd/settings/sim/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimManagerActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVoicePreference:Lcom/sprd/settings/sim/ListPreference;

    return-object v0
.end method

.method private closeTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 639
    sget-boolean v0, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimManagerActivity"

    const-string v1, "closeTimer,timer end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 642
    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timerTask:Ljava/util/TimerTask;

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 646
    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 648
    :cond_2
    return-void
.end method

.method private finishSettingsWait()V
    .locals 2

    .prologue
    .line 651
    sget-boolean v0, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimManagerActivity"

    const-string v1, "Finish dual settings wait."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->closeTimer()V

    .line 653
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isShowDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 654
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 655
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isShowDialog:I

    .line 657
    :cond_1
    return-void
.end method

.method private initSim()V
    .locals 3

    .prologue
    .line 203
    invoke-static {p0}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimManager:Landroid/sim/SimManager;

    .line 204
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimManager:Landroid/sim/SimManager;

    if-nez v0, :cond_1

    .line 205
    sget-boolean v0, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v0}, Landroid/sim/SimManager;->getSims()[Landroid/sim/Sim;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    .line 209
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    array-length v0, v0

    iput v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    .line 210
    sget-boolean v0, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreDataSettings(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 617
    sget-boolean v0, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreDataSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/TelephonyManager;->setAutoDefaultPhoneId(Landroid/content/Context;I)V

    .line 619
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->updateDefaultPhoneId(I)Z

    .line 620
    return-void
.end method

.method private setSummary(Lcom/sprd/settings/sim/ListPreference;I)V
    .locals 9
    .param p1, "pref"    # Lcom/sprd/settings/sim/ListPreference;
    .param p2, "mode"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, "phoneId":I
    iget-boolean v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->airplane:Z

    if-eqz v2, :cond_1

    .line 425
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 426
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 430
    invoke-virtual {p1}, Lcom/sprd/settings/sim/ListPreference;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMmsAdapter:Lcom/sprd/settings/sim/SimListAdapter;

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    :goto_1
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVoicePreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 435
    invoke-static {p0, v5}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v1

    .line 442
    :cond_2
    :goto_2
    sget-boolean v2, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSummary:mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_3
    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    if-lt v2, v8, :cond_d

    .line 444
    sget-boolean v2, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSummary: active Counts  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_4
    if-ne v7, p2, :cond_8

    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVTCall:[Z

    invoke-virtual {p0, v2}, Lcom/sprd/settings/sim/SimManagerActivity;->supportMulticard([Z)I

    move-result v2

    if-ge v2, v8, :cond_8

    .line 446
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 447
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVTCall:[Z

    invoke-virtual {p0, v2}, Lcom/sprd/settings/sim/SimManagerActivity;->supportMulticard([Z)I

    move-result v2

    if-nez v2, :cond_9

    .line 448
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 432
    :cond_5
    invoke-virtual {p1}, Lcom/sprd/settings/sim/ListPreference;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhoneAdapter:Lcom/sprd/settings/sim/SimListAdapter;

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 436
    :cond_6
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 437
    invoke-static {p0, v7}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v1

    goto :goto_2

    .line 438
    :cond_7
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    invoke-static {p0, v8}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v1

    goto/16 :goto_2

    .line 452
    :cond_8
    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 453
    :cond_9
    sget-boolean v2, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "standbycount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->standbyCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_a
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->standbyCount()I

    move-result v2

    if-ge v2, v8, :cond_b

    .line 455
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 465
    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sprd/settings/sim/ListPreference;->setValue(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMms:[Landroid/sim/Sim;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMms:[Landroid/sim/Sim;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v2

    if-ne v2, v1, :cond_c

    .line 469
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sprd/settings/sim/ListPreference;->setValue(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMms:[Landroid/sim/Sim;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 458
    .end local v0    # "i":I
    :cond_d
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 460
    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    if-eqz v2, :cond_e

    if-ne v7, p2, :cond_b

    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVTCall:[Z

    invoke-virtual {p0, v2}, Lcom/sprd/settings/sim/SimManagerActivity;->supportMulticard([Z)I

    move-result v2

    if-nez v2, :cond_b

    .line 461
    :cond_e
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 474
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhone:[Landroid/sim/Sim;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhone:[Landroid/sim/Sim;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v2

    if-ne v2, v1, :cond_10

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sprd/settings/sim/ListPreference;->setValue(Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhone:[Landroid/sim/Sim;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 474
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private startCloseDataSettings(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mConManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledByPhoneId(IZ)V

    .line 609
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    .line 610
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 611
    sput v1, Lcom/sprd/settings/sim/SimManagerActivity;->isLeave:I

    .line 612
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/sprd/settings/sim/SimManagerActivity;->startTimer(I)V

    .line 613
    return-void
.end method

.method private startTimer(I)V
    .locals 5
    .param p1, "time"    # I

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->closeTimer()V

    .line 628
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 629
    new-instance v0, Lcom/sprd/settings/sim/SimManagerActivity$7;

    invoke-direct {v0, p0}, Lcom/sprd/settings/sim/SimManagerActivity$7;-><init>(Lcom/sprd/settings/sim/SimManagerActivity;)V

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timerTask:Ljava/util/TimerTask;

    .line 634
    sget-boolean v0, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimManagerActivity"

    const-string v1, "startTimer,timer start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->timerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 636
    return-void
.end method

.method private startUpdateDataSettings(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 574
    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 575
    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    iput v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->oldSetPhoneId:I

    .line 579
    :goto_0
    sget-boolean v2, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 580
    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUpdateDataSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->oldSetPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    if-ne v2, p1, :cond_2

    .line 583
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09095f

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 585
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 606
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_1
    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->oldSetPhoneId:I

    goto :goto_0

    .line 588
    :cond_2
    iput p1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    .line 590
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 591
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 592
    sput v5, Lcom/sprd/settings/sim/SimManagerActivity;->isLeave:I

    .line 593
    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/MsmsDcTrackerProxy;->isActivePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 594
    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "already active phone, just start timer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/16 v2, 0x1388

    invoke-direct {p0, v2}, Lcom/sprd/settings/sim/SimManagerActivity;->startTimer(I)V

    goto :goto_1

    .line 598
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/MsmsDcTrackerProxy;->getActivePhoneId()I

    move-result v0

    .line 599
    .local v0, "activePhoneId":I
    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is active phone, register for GprsDetached"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-gez v0, :cond_4

    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->oldSetPhoneId:I

    .end local v0    # "activePhoneId":I
    :cond_4
    iput v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->oldSetPhoneId:I

    .line 601
    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->oldSetPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v6, v4}, Lcom/android/internal/telephony/Phone;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 603
    invoke-direct {p0, p1}, Lcom/sprd/settings/sim/SimManagerActivity;->restoreDataSettings(I)V

    .line 604
    const/16 v2, 0x7530

    invoke-direct {p0, v2}, Lcom/sprd/settings/sim/SimManagerActivity;->startTimer(I)V

    goto/16 :goto_1
.end method

.method private updateDataSummary()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 505
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    .line 506
    .local v0, "Data_val":I
    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->dataEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDefaultPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-boolean v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->airplane:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    if-nez v2, :cond_1

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 509
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-boolean v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->dataEnabled:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mPhoneId:I

    if-eq v0, v2, :cond_3

    .line 513
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 518
    :goto_1
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->prepareForDataAdapter()V

    .line 519
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Lcom/sprd/settings/sim/ListPreference;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimDataAdapter:Lcom/sprd/settings/sim/DataListAdapter;

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mConManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabledByPhoneId(I)Z

    move-result v1

    .line 521
    .local v1, "dataDefaultNetworkOn":Z
    iput v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    .line 522
    sget-boolean v2, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 523
    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataSummary:defaultPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dataDefaultNetworkOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_2
    if-nez v1, :cond_4

    .line 526
    const/4 v2, -0x1

    iput v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->setPhoneId:I

    .line 527
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    iget v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprd/settings/sim/ListPreference;->setValue(Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimData:[Landroid/sim/Sim;

    iget v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 516
    .end local v1    # "dataDefaultNetworkOn":Z
    :cond_3
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 530
    .restart local v1    # "dataDefaultNetworkOn":Z
    :cond_4
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprd/settings/sim/ListPreference;->setValue(Ljava/lang/String;)V

    .line 531
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v3, v0}, Landroid/sim/SimManager;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateMmsSummary()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sprd/settings/sim/SimManagerActivity;->setSummary(Lcom/sprd/settings/sim/ListPreference;I)V

    .line 420
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->updateStandbyPreference()V

    .line 402
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->updateDataSummary()V

    .line 403
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->updateVoiceSummary()V

    .line 404
    iget-boolean v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVideoEnable:Z

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->updateVideoSummary()V

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->updateMmsSummary()V

    .line 408
    return-void
.end method

.method private updateVideoSummary()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sprd/settings/sim/SimManagerActivity;->setSummary(Lcom/sprd/settings/sim/ListPreference;I)V

    .line 416
    return-void
.end method

.method private updateVoiceSummary()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVoicePreference:Lcom/sprd/settings/sim/ListPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sprd/settings/sim/SimManagerActivity;->setSummary(Lcom/sprd/settings/sim/ListPreference;I)V

    .line 412
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 758
    const-string v0, "SimManagerActivity"

    const-string v1, "onClick!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 390
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 125
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 127
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v2, 0x7f050014

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mRoot:Landroid/preference/PreferenceScreen;

    .line 132
    const-string v2, "simslotcfg"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimSlotCfg:Landroid/preference/PreferenceScreen;

    .line 133
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimSlotCfg:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    const-string v2, "persist.sys.support.vt"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVideoEnable:Z

    .line 136
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mPhoneCount:I

    .line 137
    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mPhoneCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVTCall:[Z

    .line 139
    const-string v2, "data_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sprd/settings/sim/ListPreference;

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    .line 140
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Lcom/sprd/settings/sim/ListPreference;->onCreateDialogView()Landroid/view/View;

    .line 143
    const-string v2, "voice_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sprd/settings/sim/ListPreference;

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVoicePreference:Lcom/sprd/settings/sim/ListPreference;

    .line 144
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVoicePreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVoicePreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Lcom/sprd/settings/sim/ListPreference;->onCreateDialogView()Landroid/view/View;

    .line 146
    const-string v2, "video_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sprd/settings/sim/ListPreference;

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

    .line 147
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Lcom/sprd/settings/sim/ListPreference;->onCreateDialogView()Landroid/view/View;

    .line 149
    iget-boolean v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVideoEnable:Z

    if-nez v2, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_0
    const-string v2, "mms_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sprd/settings/sim/ListPreference;

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    .line 153
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v2}, Lcom/sprd/settings/sim/ListPreference;->onCreateDialogView()Landroid/view/View;

    .line 156
    const-string v2, "reply_message_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

    .line 157
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/sprd/settings/sim/SimManagerActivity$1;

    invoke-direct {v3, p0}, Lcom/sprd/settings/sim/SimManagerActivity$1;-><init>(Lcom/sprd/settings/sim/SimManagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    const-string v2, "standby_setting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mStandbyPreference:Landroid/preference/PreferenceScreen;

    .line 175
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mStandbyPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CONFIG_SUB"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DEFAULT_PHONE_CHANGE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "android.intent.action.MMS_REQUEST_DATA"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mPhoneCount:I

    new-array v2, v2, [Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->telephonyManager:[Landroid/telephony/TelephonyManager;

    .line 183
    iput-object p0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mContext:Landroid/content/Context;

    .line 184
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mConManager:Landroid/net/ConnectivityManager;

    .line 185
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->updateReplyMsgPrefence()V

    .line 186
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 714
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 715
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 716
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const v1, 0x7f090955

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09096c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 718
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 719
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 720
    iput v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isShowDialog:I

    .line 739
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 723
    :cond_0
    sget v2, Lcom/sprd/settings/sim/SimManagerActivity;->isLeave:I

    if-nez v2, :cond_1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_1

    .line 724
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09096e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090969

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09096d

    new-instance v4, Lcom/sprd/settings/sim/SimManagerActivity$9;

    invoke-direct {v4, p0}, Lcom/sprd/settings/sim/SimManagerActivity$9;-><init>(Lcom/sprd/settings/sim/SimManagerActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 736
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move-object v0, v1

    .line 737
    goto :goto_0

    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    move-object v0, v1

    .line 739
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 709
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 710
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 753
    const-string v0, "SimManagerActivity"

    const-string v1, "onDismiss!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 395
    const/4 v0, 0x1

    sput v0, Lcom/sprd/settings/sim/SimManagerActivity;->isLeave:I

    .line 397
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 398
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 536
    move-object v0, p1

    check-cast v0, Lcom/sprd/settings/sim/ListPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->preferencekey:Ljava/lang/String;

    .line 537
    const-string v0, "SimManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " preferencekey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->preferencekey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mDataPreference:Lcom/sprd/settings/sim/ListPreference;

    move-object v0, p1

    check-cast v0, Lcom/sprd/settings/sim/ListPreference;

    if-ne v1, v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimDataAdapter:Lcom/sprd/settings/sim/DataListAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sprd/settings/sim/DataListAdapter;->setMode(I)V

    .line 550
    .end local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return v3

    .line 541
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVoicePreference:Lcom/sprd/settings/sim/ListPreference;

    move-object v0, p1

    check-cast v0, Lcom/sprd/settings/sim/ListPreference;

    if-ne v1, v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhoneAdapter:Lcom/sprd/settings/sim/SimListAdapter;

    invoke-virtual {v0, v3}, Lcom/sprd/settings/sim/SimListAdapter;->setMode(I)V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    move-object v0, p1

    check-cast v0, Lcom/sprd/settings/sim/ListPreference;

    if-ne v1, v0, :cond_3

    .line 544
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMmsAdapter:Lcom/sprd/settings/sim/SimListAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprd/settings/sim/SimListAdapter;->setMode(I)V

    goto :goto_0

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

    check-cast p1, Lcom/sprd/settings/sim/ListPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    if-ne v0, p1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhoneAdapter:Lcom/sprd/settings/sim/SimListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/settings/sim/SimListAdapter;->setMode(I)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 744
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 747
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 749
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 355
    iget-object v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->telephonyManager:[Landroid/telephony/TelephonyManager;

    const-string v1, "phone"

    invoke-static {v1, v0}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    aput-object v1, v4, v0

    .line 357
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVTCall:[Z

    aput-boolean v3, v1, v0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->initSim()V

    .line 360
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->prepareForDataAdapter()V

    .line 361
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->prepareForAdapter()V

    .line 362
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->airplane:Z

    .line 364
    sget-boolean v1, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SimManagerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume: airplane="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sprd/settings/sim/SimManagerActivity;->airplane:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    invoke-direct {p0}, Lcom/sprd/settings/sim/SimManagerActivity;->updateState()V

    .line 366
    sput v3, Lcom/sprd/settings/sim/SimManagerActivity;->isLeave:I

    .line 368
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 372
    return-void

    :cond_2
    move v1, v3

    .line 362
    goto :goto_1
.end method

.method public preferenceChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 554
    const/4 v0, -0x1

    .line 555
    .local v0, "mode":I
    const-string v1, "SimManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v1, "data_setting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    invoke-direct {p0, p2}, Lcom/sprd/settings/sim/SimManagerActivity;->startUpdateDataSettings(I)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const-string v1, "voice_setting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    const/4 v0, 0x0

    .line 560
    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    .line 561
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVoicePreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/sprd/settings/sim/SimManagerActivity;->setSummary(Lcom/sprd/settings/sim/ListPreference;I)V

    goto :goto_0

    .line 562
    :cond_2
    const-string v1, "video_setting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 563
    const/4 v0, 0x1

    .line 564
    const/4 v1, 0x1

    invoke-static {p0, v1, p2}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    .line 565
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mVideoPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/sprd/settings/sim/SimManagerActivity;->setSummary(Lcom/sprd/settings/sim/ListPreference;I)V

    goto :goto_0

    .line 566
    :cond_3
    const-string v1, "mms_setting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    const/4 v0, 0x2

    .line 568
    const/4 v1, 0x2

    invoke-static {p0, v1, p2}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    .line 569
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mMmsPreference:Lcom/sprd/settings/sim/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/sprd/settings/sim/SimManagerActivity;->setSummary(Lcom/sprd/settings/sim/ListPreference;I)V

    goto :goto_0
.end method

.method public prepareForAdapter()V
    .locals 13

    .prologue
    const v12, 0x7f09095e

    const v11, 0x10900a5

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 250
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    if-le v0, v8, :cond_1

    .line 251
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Landroid/sim/Sim;

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhone:[Landroid/sim/Sim;

    .line 252
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Landroid/sim/Sim;

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMms:[Landroid/sim/Sim;

    .line 253
    iget-object v9, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhone:[Landroid/sim/Sim;

    iget v10, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    new-instance v0, Landroid/sim/Sim;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/sim/Sim;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v0, v9, v10

    .line 255
    iget-object v9, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMms:[Landroid/sim/Sim;

    iget v10, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    new-instance v0, Landroid/sim/Sim;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/sim/Sim;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v0, v9, v10

    .line 261
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    if-ge v7, v0, :cond_5

    .line 262
    sget-boolean v0, Lcom/sprd/settings/sim/SimManagerActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimManagerActivity"

    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/sim/Sim;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhone:[Landroid/sim/Sim;

    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    aget-object v1, v1, v7

    aput-object v1, v0, v7

    .line 264
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMms:[Landroid/sim/Sim;

    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    aget-object v1, v1, v7

    aput-object v1, v0, v7

    .line 266
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getModemType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVTCall:[Z

    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/sim/Sim;->getPhoneId()I

    move-result v2

    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/sim/Sim;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    :goto_2
    aput-boolean v0, v1, v2

    .line 261
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 258
    .end local v7    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhone:[Landroid/sim/Sim;

    .line 259
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMms:[Landroid/sim/Sim;

    goto :goto_0

    .restart local v7    # "i":I
    :cond_2
    move v0, v4

    .line 267
    goto :goto_2

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->isVTCall:[Z

    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/sim/Sim;->getPhoneId()I

    move-result v2

    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->telephonyManager:[Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/sim/Sim;->getPhoneId()I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getModemType()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v8

    :goto_4
    aput-boolean v0, v1, v2

    goto :goto_3

    :cond_4
    move v0, v4

    goto :goto_4

    .line 274
    :cond_5
    new-instance v0, Lcom/sprd/settings/sim/SimListAdapter;

    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhone:[Landroid/sim/Sim;

    new-instance v2, Lcom/sprd/settings/sim/SimManagerActivity$3;

    invoke-direct {v2, p0}, Lcom/sprd/settings/sim/SimManagerActivity$3;-><init>(Lcom/sprd/settings/sim/SimManagerActivity;)V

    invoke-direct {v0, p0, v1, v2, v11}, Lcom/sprd/settings/sim/SimListAdapter;-><init>(Landroid/content/Context;[Landroid/sim/Sim;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimPhoneAdapter:Lcom/sprd/settings/sim/SimListAdapter;

    .line 289
    new-instance v0, Lcom/sprd/settings/sim/SimListAdapter;

    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMms:[Landroid/sim/Sim;

    new-instance v2, Lcom/sprd/settings/sim/SimManagerActivity$4;

    invoke-direct {v2, p0}, Lcom/sprd/settings/sim/SimManagerActivity$4;-><init>(Lcom/sprd/settings/sim/SimManagerActivity;)V

    invoke-direct {v0, p0, v1, v2, v11}, Lcom/sprd/settings/sim/SimListAdapter;-><init>(Landroid/content/Context;[Landroid/sim/Sim;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimMmsAdapter:Lcom/sprd/settings/sim/SimListAdapter;

    .line 299
    return-void
.end method

.method public prepareForDataAdapter()V
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 213
    const/4 v9, 0x0

    .line 214
    .local v9, "isCloseData":Z
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v7

    .line 215
    .local v7, "dataPhoneId":I
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mConManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabledByPhoneId(I)Z

    move-result v10

    .line 216
    .local v10, "mDataDefaultNetworkOn":Z
    if-eqz v10, :cond_0

    move v9, v4

    .line 218
    :goto_0
    iget v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    if-lt v1, v0, :cond_1

    .line 219
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Landroid/sim/Sim;

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimData:[Landroid/sim/Sim;

    .line 220
    iget-object v11, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimData:[Landroid/sim/Sim;

    iget v12, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    new-instance v0, Landroid/sim/Sim;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090965

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/sim/Sim;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v0, v11, v12

    .line 226
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    if-ge v8, v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimData:[Landroid/sim/Sim;

    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    aget-object v1, v1, v8

    aput-object v1, v0, v8

    .line 226
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8    # "i":I
    :cond_0
    move v9, v0

    .line 216
    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSims:[Landroid/sim/Sim;

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimData:[Landroid/sim/Sim;

    .line 248
    :goto_2
    return-void

    .line 230
    .restart local v8    # "i":I
    :cond_2
    new-instance v0, Lcom/sprd/settings/sim/DataListAdapter;

    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimData:[Landroid/sim/Sim;

    new-instance v3, Lcom/sprd/settings/sim/SimManagerActivity$2;

    invoke-direct {v3, p0, v7}, Lcom/sprd/settings/sim/SimManagerActivity$2;-><init>(Lcom/sprd/settings/sim/SimManagerActivity;I)V

    const v4, 0x10900a5

    move-object v1, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sprd/settings/sim/DataListAdapter;-><init>(Landroid/content/Context;[Landroid/sim/Sim;Landroid/view/View$OnClickListener;IZ)V

    iput-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimDataAdapter:Lcom/sprd/settings/sim/DataListAdapter;

    goto :goto_2
.end method

.method public standbyCount()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 493
    const/4 v2, 0x0

    .line 494
    .local v2, "standbyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    if-ge v0, v4, :cond_2

    .line 495
    iget-object v4, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sim_standby"

    invoke-static {v5, v0}, Landroid/telephony/TelephonyManager;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    .line 497
    .local v1, "isStandby":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 498
    add-int/lit8 v2, v2, 0x1

    .line 494
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    .end local v1    # "isStandby":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 501
    :cond_2
    return v2
.end method

.method public supportMulticard([Z)I
    .locals 3
    .param p1, "bl"    # [Z

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 485
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    .line 486
    add-int/lit8 v0, v0, 0x1

    .line 484
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    :cond_1
    return v0
.end method

.method public updateReplyMsgPrefence()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 189
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getReplyMessage(Landroid/content/Context;)I

    move-result v0

    .line 190
    .local v0, "replyMessage":I
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 191
    return-void

    .line 190
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateStandbyPreference()V
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mSimCounts:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->airplane:Z

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mStandbyPreference:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity;->mStandbyPreference:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

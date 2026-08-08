.class public Lcom/android/settings/DualSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "DualSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z

.field private static isLeave:I

.field private static isShowDialog:I

.field private static mDefaultValue:I

.field private static mSeleteActiveSimMinCount:I


# instance fields
.field private dataEnabled:Z

.field private mConfigSub:Landroid/preference/PreferenceScreen;

.field private mData:Landroid/preference/ListPreference;

.field private mDualMmsSetting:Landroid/preference/ListPreference;

.field private mDualPrimarySetting:Landroid/preference/ListPreference;

.field private mDualVideoSetting:Landroid/preference/ListPreference;

.field private mDualVoiceSetting:Landroid/preference/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIsVTModem:Z

.field private mPhoneId:I

.field private mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSimSlotCfg:Landroid/preference/PreferenceScreen;

.field private myReceiver:Landroid/content/BroadcastReceiver;

.field private setPhoneId:I

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 69
    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    .line 95
    sput v1, Lcom/android/settings/DualSimSettings;->isLeave:I

    .line 97
    sput v1, Lcom/android/settings/DualSimSettings;->isShowDialog:I

    .line 115
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/DualSimSettings;->mDefaultValue:I

    .line 117
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/DualSimSettings;->mSeleteActiveSimMinCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/DualSimSettings;->setPhoneId:I

    .line 123
    iput-boolean v1, p0, Lcom/android/settings/DualSimSettings;->dataEnabled:Z

    .line 124
    iput v1, p0, Lcom/android/settings/DualSimSettings;->mPhoneId:I

    .line 196
    new-instance v0, Lcom/android/settings/DualSimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DualSimSettings$2;-><init>(Lcom/android/settings/DualSimSettings;)V

    iput-object v0, p0, Lcom/android/settings/DualSimSettings;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 493
    new-instance v0, Lcom/android/settings/DualSimSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DualSimSettings$4;-><init>(Lcom/android/settings/DualSimSettings;)V

    iput-object v0, p0, Lcom/android/settings/DualSimSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DualSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DualSimSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mData:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mDualVoiceSetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mDualMmsSetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mDualPrimarySetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/DualSimSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/settings/DualSimSettings;->dataEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/DualSimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings/DualSimSettings;->mPhoneId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/DualSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->updateDataSummary()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/DualSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->finishSettingsWait()V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/DualSimSettings;->isLeave:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/DualSimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings/DualSimSettings;->setPhoneId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/DualSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DualSimSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->startTimer()V

    return-void
.end method

.method private closeTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    sget-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualSimSettings"

    const-string v1, "closeTimer,timer end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 473
    iput-object v2, p0, Lcom/android/settings/DualSimSettings;->timerTask:Ljava/util/TimerTask;

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 477
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 478
    iput-object v2, p0, Lcom/android/settings/DualSimSettings;->timer:Ljava/util/Timer;

    .line 480
    :cond_2
    return-void
.end method

.method private finishSettingsWait()V
    .locals 2

    .prologue
    .line 483
    sget-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualSimSettings"

    const-string v1, "Finish dual settings wait."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->closeTimer()V

    .line 488
    sget-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DualSimSettings"

    const-string v1, "removeDialog start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 490
    sget-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DualSimSettings"

    const-string v1, "removeDialog done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_2
    return-void
.end method

.method private restoreDataSettings(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 435
    sget-boolean v1, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DualSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreDataSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 437
    .local v0, "summaries":[Ljava/lang/CharSequence;
    invoke-static {p0, p1}, Landroid/telephony/TelephonyManager;->setAutoDefaultPhoneId(Landroid/content/Context;I)V

    .line 438
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->updateDefaultPhoneId(I)Z

    .line 439
    iget-object v1, p0, Lcom/android/settings/DualSimSettings;->mData:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method

.method private setDefaultEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mDualVoiceSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/DualSimSettings;->mIsVTModem:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mDualMmsSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mDualPrimarySetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 333
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setDualSettingDefaultValue()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 341
    invoke-static {p0, v7}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v3

    .line 342
    .local v3, "dualVoiceSettingValue":I
    const/4 v4, 0x1

    invoke-static {p0, v4}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v2

    .line 343
    .local v2, "dualVideoSettingValue":I
    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v0

    .line 344
    .local v0, "dualMmsSettingValue":I
    const/4 v4, 0x3

    invoke-static {p0, v4}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v1

    .line 346
    .local v1, "dualPrimarySettingValue":I
    iget-object v4, p0, Lcom/android/settings/DualSimSettings;->mDualVoiceSetting:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 348
    sget-boolean v4, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DualSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualVideoSettingValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsVTModem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/DualSimSettings;->mIsVTModem:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/DualSimSettings;->mIsVTModem:Z

    if-eqz v4, :cond_1

    .line 350
    iget-object v4, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 354
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DualSimSettings;->mDualMmsSetting:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/android/settings/DualSimSettings;->mDualPrimarySetting:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->updateSettingSummary()V

    .line 358
    return-void

    .line 352
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTelephonyManagerDefaultValue(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    .line 336
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    .line 337
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    .line 338
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->closeTimer()V

    .line 458
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/DualSimSettings;->timer:Ljava/util/Timer;

    .line 459
    new-instance v0, Lcom/android/settings/DualSimSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DualSimSettings$3;-><init>(Lcom/android/settings/DualSimSettings;)V

    iput-object v0, p0, Lcom/android/settings/DualSimSettings;->timerTask:Ljava/util/TimerTask;

    .line 465
    sget-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualSimSettings"

    const-string v1, "startTimer,timer start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/settings/DualSimSettings;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 467
    return-void
.end method

.method private startUpdateDataSettings(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 424
    sget-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualSimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUpdateDataSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DualSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 426
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DualSimSettings;->setPhoneId:I

    .line 427
    invoke-direct {p0, p1}, Lcom/android/settings/DualSimSettings;->restoreDataSettings(I)V

    .line 429
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 431
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/DualSimSettings;->isLeave:I

    .line 432
    return-void
.end method

.method private updateDataSummary()V
    .locals 14

    .prologue
    .line 262
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    .line 263
    .local v2, "defaultPhoneId":I
    const-string v11, "DualSimSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dataEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/settings/DualSimSettings;->dataEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mPhoneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/DualSimSettings;->mPhoneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mDefaultPhoneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a003c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 266
    .local v9, "summaries":[Ljava/lang/CharSequence;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 267
    .local v7, "phoneCount":I
    new-array v10, v7, [Landroid/telephony/TelephonyManager;

    .line 268
    .local v10, "tm":[Landroid/telephony/TelephonyManager;
    new-array v3, v7, [Z

    .line 269
    .local v3, "hasCard":[Z
    new-array v5, v7, [Z

    .line 270
    .local v5, "isCardReady":[Z
    new-array v8, v7, [Z

    .line 271
    .local v8, "simLock":[Z
    const/4 v6, 0x0

    .line 272
    .local v6, "isEnabled":Z
    sget v0, Lcom/android/settings/DualSimSettings;->mDefaultValue:I

    .line 273
    .local v0, "activeSimCount":I
    sget v1, Lcom/android/settings/DualSimSettings;->mDefaultValue:I

    .line 275
    .local v1, "activeSimNum":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 276
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->isCardExist(I)Z

    move-result v11

    aput-boolean v11, v3, v4

    .line 277
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->isCardReady(I)Z

    move-result v11

    aput-boolean v11, v5, v4

    .line 278
    const-string v11, "phone"

    invoke-static {v11, v4}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    aput-object v11, v10, v4

    .line 280
    aget-object v11, v10, v4

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->checkSimLocked()Z

    move-result v11

    aput-boolean v11, v8, v4

    .line 281
    aget-boolean v11, v3, v4

    if-eqz v11, :cond_0

    .line 282
    const/4 v6, 0x1

    .line 284
    :cond_0
    aget-boolean v11, v5, v4

    if-eqz v11, :cond_1

    aget-boolean v11, v8, v4

    if-nez v11, :cond_1

    .line 285
    move v1, v4

    .line 286
    add-int/lit8 v0, v0, 0x1

    .line 275
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 290
    :cond_2
    if-eqz v6, :cond_3

    .line 291
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 296
    :goto_1
    sget v11, Lcom/android/settings/DualSimSettings;->mDefaultValue:I

    if-ne v0, v11, :cond_4

    .line 297
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/settings/DualSimSettings;->setDefaultEnabled(Z)V

    .line 298
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mData:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mDualVoiceSetting:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mDualMmsSetting:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mDualPrimarySetting:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    :goto_2
    return-void

    .line 293
    :cond_3
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 305
    :cond_4
    sget v11, Lcom/android/settings/DualSimSettings;->mSeleteActiveSimMinCount:I

    if-lt v0, v11, :cond_6

    .line 306
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/settings/DualSimSettings;->setDefaultEnabled(Z)V

    .line 308
    iget-boolean v11, p0, Lcom/android/settings/DualSimSettings;->dataEnabled:Z

    if-eqz v11, :cond_5

    iget v11, p0, Lcom/android/settings/DualSimSettings;->mPhoneId:I

    if-eq v2, v11, :cond_5

    .line 309
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mData:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 316
    :cond_5
    :goto_3
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 317
    iget-object v11, p0, Lcom/android/settings/DualSimSettings;->mData:Landroid/preference/ListPreference;

    aget-object v12, v9, v2

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->setDualSettingDefaultValue()V

    goto :goto_2

    .line 313
    :cond_6
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/settings/DualSimSettings;->setDefaultEnabled(Z)V

    .line 314
    invoke-direct {p0, v1}, Lcom/android/settings/DualSimSettings;->setTelephonyManagerDefaultValue(I)V

    goto :goto_3
.end method

.method private updateSettingSummary()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, -0x1

    .line 373
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a003c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 374
    .local v4, "summaries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 375
    .local v5, "summaries_mms":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a003d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 377
    .local v6, "summaries_primary":[Ljava/lang/CharSequence;
    invoke-static {p0, v12}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v2

    .line 378
    .local v2, "dualVoiceSettingValue":I
    const/4 v7, 0x1

    invoke-static {p0, v7}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v1

    .line 379
    .local v1, "dualVideoSettingValue":I
    invoke-static {p0, v11}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v0

    .line 380
    .local v0, "dualMmsSettingValue":I
    const/4 v7, 0x3

    invoke-static {p0, v7}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v3

    .line 382
    .local v3, "primaryCardSettingValue":I
    iget-object v8, p0, Lcom/android/settings/DualSimSettings;->mDualVoiceSetting:Landroid/preference/ListPreference;

    if-ne v2, v10, :cond_1

    aget-object v7, v4, v11

    :goto_0
    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    sget-boolean v7, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "DualSimSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dualVideoSettingValue:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mIsVTModem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/DualSimSettings;->mIsVTModem:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/DualSimSettings;->mIsVTModem:Z

    if-eqz v7, :cond_2

    .line 386
    iget-object v7, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    aget-object v8, v4, v12

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 391
    :goto_1
    iget-object v8, p0, Lcom/android/settings/DualSimSettings;->mDualMmsSetting:Landroid/preference/ListPreference;

    if-ne v0, v10, :cond_4

    aget-object v7, v5, v11

    :goto_2
    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v8, p0, Lcom/android/settings/DualSimSettings;->mDualPrimarySetting:Landroid/preference/ListPreference;

    if-ne v3, v10, :cond_5

    const-string v7, " "

    :goto_3
    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    return-void

    .line 382
    :cond_1
    aget-object v7, v4, v2

    goto :goto_0

    .line 388
    :cond_2
    iget-object v8, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    if-ne v1, v10, :cond_3

    aget-object v7, v4, v11

    :goto_4
    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    aget-object v7, v4, v1

    goto :goto_4

    .line 391
    :cond_4
    aget-object v7, v5, v0

    goto :goto_2

    .line 392
    :cond_5
    aget-object v7, v6, v3

    goto :goto_3
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->updateDataSummary()V

    .line 258
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 630
    sget-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualSimSettings"

    const-string v1, "onClick!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    sget v0, Lcom/android/settings/DualSimSettings;->isShowDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v3, 0x7f050013

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DualSimSettings;->mRoot:Landroid/preference/PreferenceScreen;

    .line 132
    const-string v3, "simslotcfg"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DualSimSettings;->mSimSlotCfg:Landroid/preference/PreferenceScreen;

    .line 133
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/DualSimSettings;->mSimSlotCfg:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    const-string v3, "data"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DualSimSettings;->mData:Landroid/preference/ListPreference;

    .line 135
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    const-string v3, "config_sub"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/DualSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    .line 137
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "CONFIG_SUB"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const v6, 0x8000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    const-string v3, "dual_voice_setting"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DualSimSettings;->mDualVoiceSetting:Landroid/preference/ListPreference;

    .line 141
    const-string v3, "dual_video_setting"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    .line 142
    const-string v3, "dual_mms_setting"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DualSimSettings;->mDualMmsSetting:Landroid/preference/ListPreference;

    .line 143
    const-string v3, "dual_primary_setting"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/DualSimSettings;->mDualPrimarySetting:Landroid/preference/ListPreference;

    .line 144
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->mDualVideoSetting:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->mDualVoiceSetting:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->mDualMmsSetting:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->mDualPrimarySetting:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    const-string v3, "reply_message_setting"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DualSimSettings;->mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

    .line 151
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

    new-instance v6, Lcom/android/settings/DualSimSettings$1;

    invoke-direct {v6, p0}, Lcom/android/settings/DualSimSettings$1;-><init>(Lcom/android/settings/DualSimSettings;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string v3, "phone"

    invoke-static {v3, v5}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getModemType()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/DualSimSettings;->mIsVTModem:Z

    .line 170
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DEFAULT_PHONE_CHANGE_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v3, "android.intent.action.MMS_REQUEST_DATA"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    move v3, v5

    .line 167
    goto :goto_0

    .line 178
    .restart local v1    # "i":I
    .restart local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DualSimSettings;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 181
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DualSimSettings;->updateReplyMsgPrefence()V

    .line 187
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 587
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 588
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 589
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const v1, 0x7f09095a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 590
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09096c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 591
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 592
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 593
    sput v3, Lcom/android/settings/DualSimSettings;->isShowDialog:I

    .line 611
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 596
    :cond_0
    sget v1, Lcom/android/settings/DualSimSettings;->isLeave:I

    if-nez v1, :cond_1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 597
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09096e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090969

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09096d

    new-instance v3, Lcom/android/settings/DualSimSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/DualSimSettings$5;-><init>(Lcom/android/settings/DualSimSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 609
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 611
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/settings/DualSimSettings;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 582
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 583
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 625
    sget-boolean v0, Lcom/android/settings/DualSimSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualSimSettings"

    const-string v1, "onDismiss!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 253
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/DualSimSettings;->isLeave:I

    .line 254
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 396
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 398
    .local v1, "phoneId":I
    const-string v2, "data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 400
    invoke-direct {p0, v1}, Lcom/android/settings/DualSimSettings;->startUpdateDataSettings(I)V

    .line 420
    :cond_0
    :goto_0
    return v5

    .line 401
    :cond_1
    const-string v2, "dual_voice_setting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    invoke-static {p0, v3, v1}, Landroid/telephony/TelephonyManager;->setSubscriberDesiredSim(Landroid/content/Context;II)V

    .line 403
    invoke-static {p0, v3, v1}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    .line 404
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->updateSettingSummary()V

    goto :goto_0

    .line 405
    :cond_2
    const-string v2, "dual_video_setting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    invoke-static {p0, v5, v1}, Landroid/telephony/TelephonyManager;->setSubscriberDesiredSim(Landroid/content/Context;II)V

    .line 407
    invoke-static {p0, v5, v1}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    .line 408
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->updateSettingSummary()V

    goto :goto_0

    .line 409
    :cond_3
    const-string v2, "dual_mms_setting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    invoke-static {p0, v4, v1}, Landroid/telephony/TelephonyManager;->setSubscriberDesiredSim(Landroid/content/Context;II)V

    .line 411
    invoke-static {p0, v4, v1}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    .line 412
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->updateSettingSummary()V

    goto :goto_0

    .line 413
    :cond_4
    const-string v2, "dual_primary_setting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    const-string v2, "DualSimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Priamry Card phoneId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v2, 0x3

    invoke-static {p0, v2, v1}, Landroid/telephony/TelephonyManager;->setSubscriberDesiredSim(Landroid/content/Context;II)V

    .line 416
    const-string v2, "phone"

    invoke-static {v2, v1}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->setPrimaryCard(I)V

    .line 418
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->updateSettingSummary()V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 616
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 621
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    invoke-direct {p0}, Lcom/android/settings/DualSimSettings;->updateState()V

    .line 228
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/DualSimSettings;->isLeave:I

    .line 229
    return-void
.end method

.method public updateReplyMsgPrefence()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 193
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getReplyMessage(Landroid/content/Context;)I

    move-result v0

    .line 194
    .local v0, "replyMessage":I
    iget-object v2, p0, Lcom/android/settings/DualSimSettings;->mReplyMsgPrefence:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 195
    return-void

    .line 194
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

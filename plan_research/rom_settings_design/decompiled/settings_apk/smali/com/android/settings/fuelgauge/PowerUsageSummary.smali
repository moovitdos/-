.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPercentagePref:Landroid/preference/CheckBoxPreference;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mFeatureBarIsAvailable:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mHandler:Landroid/os/Handler;

.field private mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPowerUsageList:Landroid/widget/ListView;

.field private mSendTimer:Ljava/util/Timer;

.field private mSendTimerTask:Ljava/util/TimerTask;

.field private mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

.field private mStatsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 81
    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFeatureBarIsAvailable:Z

    .line 106
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    .line 422
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 447
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->removeAndroidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/settings/fuelgauge/BatteryStatsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    return-object v0
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f0905a0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    return-void
.end method

.method private cleanSendTimerTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 374
    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimerTask:Ljava/util/TimerTask;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 378
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 379
    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimer:Ljava/util/Timer;

    .line 381
    :cond_1
    return-void
.end method

.method private refreshStats()V
    .locals 21

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPercentagePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, -0x3

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOrder(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPercentagePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOrder(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f040013

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    new-instance v2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 282
    .local v2, "hist":Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v14, v17, v19

    .line 286
    .local v14, "uSecTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v12

    .line 288
    .local v12, "uSecNow":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v9

    .line 290
    .local v9, "screenTime":J
    const-wide/16 v17, 0x0

    cmp-long v17, v9, v17

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v17

    const-string v18, "screen.full"

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    long-to-double v0, v9

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    cmpg-double v17, v17, v19

    if-gez v17, :cond_1

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->refreshStats(Z)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v16

    .line 300
    .local v16, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 301
    .local v11, "sipper":Lcom/android/settings/fuelgauge/BatterySipper;
    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v17

    const-wide/high16 v19, 0x4014000000000000L    # 5.0

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_2

    .line 302
    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v19

    div-double v17, v17, v19

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    mul-double v6, v17, v19

    .line 304
    .local v6, "percentOfTotal":D
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v17, v6, v17

    if-ltz v17, :cond_2

    .line 305
    new-instance v8, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1, v11}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 307
    .local v8, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v17

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    mul-double v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v19

    div-double v4, v17, v19

    .line 309
    .local v4, "percentOfMax":D
    iput-wide v6, v11, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    .line 311
    const-string v17, "PowerUsageSummary"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "refreshStats: sipper.name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, v11, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->removeAndroidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 313
    const v17, 0x7fffffff

    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 314
    invoke-virtual {v8, v4, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 315
    iget-object v0, v11, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 316
    iget-object v0, v11, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 318
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    goto/16 :goto_0
.end method

.method private removeAndroidChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 413
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const-string v0, "(?i)android |android.|android"

    .line 415
    .local v0, "replaceStr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 417
    .end local v0    # "replaceStr":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private sendTimerTask()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x2710

    .line 358
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimer:Ljava/util/Timer;

    .line 362
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimerTask:Ljava/util/TimerTask;

    .line 368
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSendTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 369
    return-void
.end method

.method private setSoftKey()V
    .locals 3

    .prologue
    .line 387
    :try_start_0
    new-instance v1, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 388
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(I)V

    .line 389
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(I)V

    .line 390
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 391
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 392
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(I)V

    .line 393
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(I)V

    .line 404
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFeatureBarIsAvailable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFeatureBarIsAvailable:Z

    .line 407
    const-string v1, "PowerUsageSummary"

    const-string v2, "The ListView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 128
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 136
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setSoftKey()V

    .line 139
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 140
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "battery_status"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    .line 141
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "battery_percentage_on"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPercentagePref:Landroid/preference/CheckBoxPreference;

    .line 145
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPercentagePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "battery_percentage_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 147
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 148
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 149
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x0

    .line 231
    const/4 v3, 0x2

    const v4, 0x7f0905e3

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x72

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    .line 233
    .local v2, "refresh":Landroid/view/MenuItem;
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 236
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "helpUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    const/4 v3, 0x3

    const v4, 0x7f0907ba

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 238
    .local v0, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 240
    .end local v0    # "help":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->destroy()V

    .line 191
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 258
    :goto_0
    return v0

    .line 246
    :pswitch_0
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 247
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 251
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 249
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 254
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->clearStats()V

    .line 255
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->pause()V

    .line 178
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->cleanSendTimerTask()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 185
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPercentagePref:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "battery_percentage_enabled"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryPercentagePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v6, v1

    :cond_0
    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sprd.battery.percentage"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    :goto_0
    return v1

    .line 202
    :cond_1
    instance-of v0, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_2

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 206
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 207
    const-string v1, "stats"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 208
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 209
    const-class v1, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0905b1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 211
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 213
    :cond_2
    instance-of v0, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_3

    move v1, v6

    .line 214
    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 216
    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 217
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v2

    .line 219
    iget-object v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->removeAndroidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 220
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->startBatteryDetailPage(Landroid/preference/PreferenceActivity;Lcom/android/settings/fuelgauge/BatterySipper;Z)V

    .line 221
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sendTimerTask()V

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFeatureBarIsAvailable:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerUsageList:Landroid/widget/ListView;

    .line 164
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerUsageList:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerUsageList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerUsageList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerUsageList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

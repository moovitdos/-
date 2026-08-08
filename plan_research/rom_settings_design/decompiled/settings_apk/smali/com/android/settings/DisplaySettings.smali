.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static PIKEL_UI_SUPPORT:Z

.field private static final WCN_DISABLED:Z


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFeatureBarDisplay:Landroid/preference/CheckBoxPreference;

.field private mFont:Landroid/preference/PreferenceScreen;

.field private mFontSizePref:Lcom/android/settings/WarnedListPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "ro.wcn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->WCN_DISABLED:Z

    .line 104
    const-string v0, "pikel_ui_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->PIKEL_UI_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 106
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/WarnedListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    return-object v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 294
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 295
    .local v3, "maxTimeout":J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 329
    :goto_1
    return-void

    .line 294
    .end local v3    # "maxTimeout":J
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 298
    .restart local v3    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 299
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 300
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v5, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 303
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 304
    .local v7, "timeout":J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 305
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 309
    .end local v7    # "timeout":J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 310
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 311
    .local v9, "userPreference":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 315
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_6

    .line 316
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 328
    .end local v9    # "userPreference":I
    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 317
    .restart local v9    # "userPreference":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v11, v11, v3

    if-nez v11, :cond_5

    .line 321
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 328
    .end local v9    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private fileIsExists()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 540
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/leds/keyboard-backlight/brightness"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, "file":Ljava/io/File;
    const-string v3, "DisplaySettings"

    const-string v4, " fileIsExists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 543
    const-string v3, "DisplaySettings"

    const-string v4, "fileIsExists false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v2

    .line 546
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    const-string v2, "DisplaySettings"

    const-string v3, "fileIsExists true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private initTimeoutPreferenceValue(I)I
    .locals 8
    .param p1, "currentTimeout"    # I

    .prologue
    const v7, 0x61a80

    const v6, 0x249f0

    const v5, 0x13880

    const v4, 0x9c40

    const/16 v3, 0x4e20

    .line 560
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 562
    if-lez p1, :cond_1

    if-gt p1, v3, :cond_1

    .line 563
    const/16 p1, 0x3a98

    .line 580
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    const-string v1, "DisplaySettings"

    const-string v2, "the 3rd app modified the database with our has deal with  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :cond_0
    :goto_1
    return p1

    .line 564
    :cond_1
    if-ge v3, p1, :cond_2

    if-gt p1, v4, :cond_2

    .line 565
    const/16 p1, 0x7530

    goto :goto_0

    .line 566
    :cond_2
    if-ge v4, p1, :cond_3

    if-gt p1, v5, :cond_3

    .line 567
    const p1, 0xea60

    goto :goto_0

    .line 568
    :cond_3
    if-ge v5, p1, :cond_4

    if-gt p1, v6, :cond_4

    .line 569
    const p1, 0x1d4c0

    goto :goto_0

    .line 570
    :cond_4
    if-ge v6, p1, :cond_5

    if-gt p1, v7, :cond_5

    .line 571
    const p1, 0x493e0

    goto :goto_0

    .line 572
    :cond_5
    if-ge v7, p1, :cond_6

    const v1, 0xc3500

    if-gt p1, v1, :cond_6

    .line 573
    const p1, 0x927c0

    goto :goto_0

    .line 574
    :cond_6
    const v1, 0xc3500

    if-ge v1, p1, :cond_7

    const v1, 0x1e8480

    if-gt p1, v1, :cond_7

    .line 575
    const p1, 0x1b7740

    goto :goto_0

    .line 577
    :cond_7
    const/16 p1, 0x7530

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateFontSummary()V
    .locals 9

    .prologue
    .line 524
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 525
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 526
    .local v1, "config":Landroid/content/res/Configuration;
    iget-boolean v4, v1, Landroid/content/res/Configuration;->bUserSetTypeface:Z

    if-nez v4, :cond_0

    iget-object v4, v1, Landroid/content/res/Configuration;->sUserTypeface:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 527
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mFont:Landroid/preference/PreferenceScreen;

    const v5, 0x7f09083f

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 535
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 529
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :cond_0
    iget-object v4, v1, Landroid/content/res/Configuration;->sUserTypeface:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 530
    .local v3, "lastSplash":I
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mFont:Landroid/preference/PreferenceScreen;

    iget-object v5, v1, Landroid/content/res/Configuration;->sUserTypeface:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    iget-object v7, v1, Landroid/content/res/Configuration;->sUserTypeface:Ljava/lang/String;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "lastSplash":I
    :catch_0
    move-exception v2

    .line 533
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 420
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 421
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 422
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 260
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 262
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_1

    .line 264
    const-string v4, ""

    .line 287
    .local v4, "summary":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    return-void

    .line 266
    .end local v4    # "summary":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 267
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 268
    .local v7, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    array-length v8, v1

    if-nez v8, :cond_3

    .line 269
    :cond_2
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 271
    .end local v4    # "summary":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 272
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_5

    .line 273
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 274
    .local v5, "timeout":J
    cmp-long v8, p1, v5

    if-ltz v8, :cond_4

    .line 275
    move v0, v2

    .line 272
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    .end local v5    # "timeout":J
    :cond_5
    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0902e7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .restart local v4    # "summary":Ljava/lang/String;
    aget-object v8, v7, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v8, p1, v8

    if-eqz v8, :cond_0

    .line 282
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    aget-object v9, v7, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTouchLightPreferenceSummary(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 244
    const/16 v0, 0x5dc

    if-ne p1, v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/16 v0, 0x1770

    if-ne p1, v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_3
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private writeTouchLightPreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "value":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_light_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->updateTouchLightPreferenceSummary(I)V

    .line 238
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 10
    .param p1, "val"    # F

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "indices":[Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    .line 335
    .local v3, "tempIndices":[Ljava/lang/String;
    aget-object v5, v1, v8

    aput-object v5, v3, v7

    .line 336
    aget-object v5, v1, v9

    aput-object v5, v3, v8

    .line 337
    move-object v1, v3

    .line 339
    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 340
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 341
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 342
    .local v4, "thisVal":F
    sub-float v5, v4, v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    .line 343
    add-int/lit8 v5, v0, -0x1

    .line 347
    .end local v4    # "thisVal":F
    :goto_1
    return v5

    .line 345
    .restart local v4    # "thisVal":F
    :cond_0
    move v2, v4

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .end local v4    # "thisVal":F
    :cond_1
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to update mCurConfig on screen switch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 119
    .local v8, "resolver":Landroid/content/ContentResolver;
    const v11, 0x7f050012

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 121
    const-string v11, "accelerometer"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 122
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    sget-boolean v11, Lcom/android/settings/DisplaySettings;->PIKEL_UI_SUPPORT:Z

    if-eqz v11, :cond_1

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_1
    const-string v11, "screensaver"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 132
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x111004a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    sget-boolean v11, Lcom/android/settings/DisplaySettings;->PIKEL_UI_SUPPORT:Z

    if-eqz v11, :cond_4

    .line 135
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    :cond_4
    const-string v11, "screen_timeout"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 139
    const-string v11, "screen_off_timeout"

    const-wide/16 v12, 0x7530

    invoke-static {v8, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 142
    .local v0, "currentTimeout":J
    long-to-int v11, v0

    invoke-direct {p0, v11}, Lcom/android/settings/DisplaySettings;->initTimeoutPreferenceValue(I)I

    move-result v11

    int-to-long v0, v11

    .line 144
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    const-string v11, "touch_light_timeout"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->fileIsExists()Z

    move-result v11

    if-nez v11, :cond_9

    .line 150
    const-string v11, "DisplaySettings"

    const-string v12, "fileIsExists true--removePreference(mTouchLightTimeoutPreference)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    :goto_0
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v11}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 163
    const-string v11, "font_size"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/WarnedListPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    .line 166
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 169
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 170
    .local v6, "fontSizePrefEntries":[Ljava/lang/CharSequence;
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/CharSequence;

    .line 171
    .local v2, "duoqinFontSizePrefEntries":[Ljava/lang/CharSequence;
    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-object v12, v6, v12

    aput-object v12, v2, v11

    .line 172
    const/4 v11, 0x1

    const/4 v12, 0x2

    aget-object v12, v6, v12

    aput-object v12, v2, v11

    .line 173
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 174
    .local v7, "fontSizePrefEntryValues":[Ljava/lang/CharSequence;
    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/CharSequence;

    .line 175
    .local v3, "duoqinFontSizePrefEntryValues":[Ljava/lang/CharSequence;
    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-object v12, v7, v12

    aput-object v12, v3, v11

    .line 176
    const/4 v11, 0x1

    const/4 v12, 0x2

    aget-object v12, v7, v12

    aput-object v12, v3, v11

    .line 177
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 178
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    invoke-virtual {v11, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 182
    const-string v11, "notification_pulse"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 183
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_a

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110027

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_a

    .line 186
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "display"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManager;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 199
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v11}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 200
    const-string v11, "wifi_display"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 201
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v11

    if-eqz v11, :cond_5

    sget-boolean v11, Lcom/android/settings/DisplaySettings;->WCN_DISABLED:Z

    if-eqz v11, :cond_6

    .line 203
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 207
    :cond_6
    const-string v11, "font"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mFont:Landroid/preference/PreferenceScreen;

    .line 208
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateFontSummary()V

    .line 210
    sget-boolean v11, Lcom/android/settings/DisplaySettings;->PIKEL_UI_SUPPORT:Z

    if-eqz v11, :cond_7

    .line 212
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mFont:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_7
    const-string v11, "featurebar_display"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mFeatureBarDisplay:Landroid/preference/CheckBoxPreference;

    .line 216
    const-string v11, "persist.sys.duoqin.featurebar"

    const-string v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "featurebarDisplay":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 218
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFeatureBarDisplay:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 223
    :goto_2
    const-string v11, "flash_light"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 224
    .local v5, "flashLight":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_8

    .line 225
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :cond_8
    return-void

    .line 153
    .end local v2    # "duoqinFontSizePrefEntries":[Ljava/lang/CharSequence;
    .end local v3    # "duoqinFontSizePrefEntryValues":[Ljava/lang/CharSequence;
    .end local v4    # "featurebarDisplay":Ljava/lang/String;
    .end local v5    # "flashLight":Landroid/preference/PreferenceScreen;
    .end local v6    # "fontSizePrefEntries":[Ljava/lang/CharSequence;
    .end local v7    # "fontSizePrefEntryValues":[Ljava/lang/CharSequence;
    :cond_9
    const-string v11, "button_light_off_timeout"

    const/16 v12, 0x5dc

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 155
    .local v10, "touchlightcurrentTimeout":I
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, v10}, Lcom/android/settings/DisplaySettings;->updateTouchLightPreferenceSummary(I)V

    .line 157
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 189
    .end local v10    # "touchlightcurrentTimeout":I
    .restart local v2    # "duoqinFontSizePrefEntries":[Ljava/lang/CharSequence;
    .restart local v3    # "duoqinFontSizePrefEntryValues":[Ljava/lang/CharSequence;
    .restart local v6    # "fontSizePrefEntries":[Ljava/lang/CharSequence;
    .restart local v7    # "fontSizePrefEntryValues":[Ljava/lang/CharSequence;
    :cond_a
    :try_start_0
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v11, "notification_light_pulse"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_b

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 191
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 192
    :catch_0
    move-exception v9

    .line 193
    .local v9, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v11, "DisplaySettings"

    const-string v12, "notification_light_pulse not found"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 189
    .end local v9    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    .line 220
    .restart local v4    # "featurebarDisplay":Ljava/lang/String;
    :cond_c
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mFeatureBarDisplay:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 406
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0907ae

    new-instance v2, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 400
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 402
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 487
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "key":Ljava/lang/String;
    const-string v3, "screen_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 489
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 491
    .local v2, "value":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v2    # "value":I
    :cond_0
    :goto_0
    const-string v3, "font_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 501
    :cond_1
    const-string v3, "touch_light_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 502
    invoke-direct {p0, p2}, Lcom/android/settings/DisplaySettings;->writeTouchLightPreference(Ljava/lang/Object;)V

    .line 504
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 493
    .restart local v2    # "value":I
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 509
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 510
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 517
    :goto_0
    return v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/settings/WarnedListPreference;->click()V

    .line 517
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 448
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_2

    .line 449
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    invoke-static {v5, v3}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 482
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_2
    return v3

    :cond_1
    move v3, v4

    .line 449
    goto :goto_0

    .line 451
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_4

    .line 452
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 453
    .local v2, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_light_pulse"

    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 460
    .end local v2    # "value":Z
    :cond_4
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    if-ne p2, v4, :cond_5

    .line 462
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 464
    .local v0, "britnessmode":I
    if-ne v0, v3, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0902e6

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 468
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mTouchLightTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 470
    .end local v0    # "britnessmode":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 472
    :cond_5
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mFeatureBarDisplay:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 473
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mFeatureBarDisplay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 474
    const-string v3, "persist.sys.duoqin.featurebar"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 479
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.duoqin.featurebar.change"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 476
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v3, "persist.sys.duoqin.featurebar"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 390
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 393
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 394
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 352
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 359
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 362
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 364
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/WarnedListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 365
    .local v1, "fontSizePrefEntries":[Ljava/lang/CharSequence;
    const v4, 0x7f0902f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    return-void

    .line 353
    .end local v1    # "fontSizePrefEntries":[Ljava/lang/CharSequence;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 440
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

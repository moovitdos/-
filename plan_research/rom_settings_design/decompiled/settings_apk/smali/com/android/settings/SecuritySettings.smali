.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final MY_USER_ID:I

.field public static PIKEL_UI_SUPPORT:Z


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mOwnerInfoPref:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mRadioBusyObserver:Landroid/database/ContentObserver;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSimStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    .line 126
    const-string v0, "pikel_ui_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/SecuritySettings;->PIKEL_UI_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 798
    new-instance v0, Lcom/android/settings/SecuritySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 807
    new-instance v0, Lcom/android/settings/SecuritySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mRadioBusyObserver:Landroid/database/ContentObserver;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateSimLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/SecuritySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isRadioBusy()Z

    move-result v0

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 25

    .prologue
    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 177
    .local v12, "root":Landroid/preference/PreferenceScreen;
    if-eqz v12, :cond_0

    .line 178
    invoke-virtual {v12}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 180
    :cond_0
    const v19, 0x7f050028

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 184
    const/4 v11, 0x0

    .line 185
    .local v11, "resid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v19

    if-nez v19, :cond_10

    .line 187
    const-string v19, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 188
    .local v8, "mUm":Landroid/os/UserManager;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v18

    .line 189
    .local v18, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/4 v14, 0x1

    .line 191
    .local v14, "singleUser":Z
    :goto_0
    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 192
    const v11, 0x7f05002c

    .line 214
    .end local v8    # "mUm":Landroid/os/UserManager;
    .end local v14    # "singleUser":Z
    .end local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 218
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-nez v19, :cond_12

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    .line 220
    const-string v19, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/SecuritySettings$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 231
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 233
    const-string v19, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 234
    .local v10, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v10, :cond_2

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 236
    const v19, 0x7f090129

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 244
    .end local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNeedAddEncryptPrefence()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 260
    :cond_3
    :pswitch_0
    const-string v19, "lock_after_timeout"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->setupLockAfterPreference()V

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 267
    :cond_4
    const-string v19, "biometric_weak_liveliness"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 271
    const-string v19, "visiblepattern"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 274
    const-string v19, "power_button_instantly_locks"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 278
    const v19, 0x7f050029

    move/from16 v0, v19

    if-ne v11, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v19

    const/high16 v20, 0x10000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 281
    const-string v19, "security_category"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceGroup;

    .line 283
    .local v13, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 284
    const-string v19, "visiblepattern"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    .end local v13    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_5
    const v19, 0x7f05002d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateSimLock()V

    .line 296
    const-string v19, "keyguard_enable_widgets"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 298
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 301
    :cond_6
    const-string v19, "security_category"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceGroup;

    .line 303
    .restart local v13    # "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v13, :cond_7

    .line 304
    const-string v19, "keyguard_enable_widgets"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 305
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 321
    .end local v13    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_7
    :goto_4
    const-string v19, "show_password"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 322
    const-string v19, "reset_credentials"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "user"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .line 326
    .local v17, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 327
    const-string v19, "no_config_credentials"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_19

    .line 328
    const-string v19, "credential_storage_type"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 330
    .local v3, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v19

    if-eqz v19, :cond_18

    const v15, 0x7f09064e

    .line 333
    .local v15, "storageSummaryRes":I
    :goto_5
    invoke-virtual {v3, v15}, Landroid/preference/Preference;->setSummary(I)V

    .line 340
    .end local v3    # "credentialStorageType":Landroid/preference/Preference;
    .end local v15    # "storageSummaryRes":I
    :goto_6
    const-string v19, "device_admin_category"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 342
    .local v5, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v19, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 350
    const-string v19, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    .line 351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->showVerifierSetting()Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isVerifierInstalled()Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 366
    :goto_7
    const-string v19, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v16

    .line 369
    .local v16, "total":I
    if-nez v16, :cond_1d

    .line 370
    if-eqz v5, :cond_8

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    .end local v16    # "total":I
    :cond_8
    :goto_8
    const-string v19, "restrictions_pin_set"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 390
    const-string v19, "credentials_install"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 392
    :cond_9
    sget-boolean v19, Lcom/android/settings/SecuritySettings;->PIKEL_UI_SUPPORT:Z

    if-eqz v19, :cond_b

    .line 393
    const-string v19, "security_passwords_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 394
    const-string v19, "device_admin_category"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 396
    .local v6, "devicesecurityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v6, :cond_a

    .line 397
    const-string v19, "toggle_verify_applications"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 399
    :cond_a
    const-string v19, "credentials_management"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 401
    .local v4, "credentialssecurityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v4, :cond_b

    .line 402
    const-string v19, "install_credentials"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    .end local v4    # "credentialssecurityCategory":Landroid/preference/PreferenceGroup;
    .end local v6    # "devicesecurityCategory":Landroid/preference/PreferenceGroup;
    :cond_b
    const-string v19, "security_category"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceGroup;

    .line 409
    .restart local v13    # "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 412
    :cond_c
    const-string v19, "device_admin_category"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 414
    .restart local v6    # "devicesecurityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 418
    :cond_d
    return-object v12

    .line 189
    .end local v5    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v6    # "devicesecurityCategory":Landroid/preference/PreferenceGroup;
    .end local v13    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v17    # "um":Landroid/os/UserManager;
    .restart local v8    # "mUm":Landroid/os/UserManager;
    .restart local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 194
    .restart local v14    # "singleUser":Z
    :cond_f
    const v11, 0x7f05002a

    goto/16 :goto_1

    .line 196
    .end local v8    # "mUm":Landroid/os/UserManager;
    .end local v14    # "singleUser":Z
    .end local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 198
    const v11, 0x7f050029

    goto/16 :goto_1

    .line 200
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    goto/16 :goto_1

    .line 202
    :sswitch_0
    const v11, 0x7f05002f

    .line 203
    goto/16 :goto_1

    .line 205
    :sswitch_1
    const v11, 0x7f050031

    .line 206
    goto/16 :goto_1

    .line 210
    :sswitch_2
    const v11, 0x7f05002e

    goto/16 :goto_1

    .line 218
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 238
    .restart local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_13
    const v19, 0x7f090127

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_3

    .line 308
    .end local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v19

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_15

    const/4 v7, 0x1

    .line 310
    .local v7, "disabled":Z
    :goto_9
    if-eqz v7, :cond_16

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f090123

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 316
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-nez v7, :cond_17

    const/16 v19, 0x1

    :goto_b
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 308
    .end local v7    # "disabled":Z
    :cond_15
    const/4 v7, 0x0

    goto :goto_9

    .line 314
    .restart local v7    # "disabled":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 316
    :cond_17
    const/16 v19, 0x0

    goto :goto_b

    .line 330
    .end local v7    # "disabled":Z
    .restart local v3    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v17    # "um":Landroid/os/UserManager;
    :cond_18
    const v15, 0x7f09064f

    goto/16 :goto_5

    .line 336
    .end local v3    # "credentialStorageType":Landroid/preference/Preference;
    :cond_19
    const-string v19, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 355
    .restart local v5    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 359
    :cond_1b
    if-eqz v5, :cond_1c

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 362
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 374
    .restart local v16    # "total":I
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getNumEnabledNotificationListeners()I

    move-result v9

    .line 375
    .local v9, "n":I
    if-nez v9, :cond_1e

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090179

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 379
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0007

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 245
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10
    .param p1, "maxTimeout"    # J

    .prologue
    .line 591
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 592
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 593
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 596
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 597
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 598
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 603
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 605
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 607
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 608
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 609
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 616
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 617
    return-void

    .line 616
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private getNumEnabledNotificationListeners()I
    .locals 4

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_notification_listeners"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "flat":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 472
    :goto_0
    return v2

    .line 471
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "components":[Ljava/lang/String;
    array-length v2, v0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isNeedAddEncryptPrefence()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 838
    const-string v2, "ro.storage.flash_type"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRadioBusy()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "radio_operation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isStandby(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_standby"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 746
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 497
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, "verification":Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 501
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 481
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 482
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 552
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 553
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 554
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 555
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 557
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 561
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 563
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 554
    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v11, 0x1388

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 569
    .local v1, "currentTimeout":J
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 570
    .local v3, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 573
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 574
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 575
    aget-object v9, v8, v4

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 576
    .local v6, "timeout":J
    cmp-long v9, v1, v6

    if-ltz v9, :cond_0

    .line 577
    move v0, v4

    .line 574
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 581
    .end local v6    # "timeout":J
    :cond_1
    if-nez v0, :cond_2

    .line 582
    aget-object v9, v3, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 586
    .local v5, "summary":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 588
    return-void

    .line 584
    .end local v5    # "summary":Ljava/lang/String;
    :cond_2
    const v9, 0x7f09011f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateSimLock()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 422
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 423
    .local v2, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 424
    const-string v5, "sim_lock_category"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 429
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 430
    :cond_1
    const-string v5, "sim_lock"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 433
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 434
    const-string v5, "sim_lock"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, "isSimReady":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 440
    const-string v5, "phone"

    invoke-static {v5, v0}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 442
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v5, "SecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isStandby ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->isStandby(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->isStandby(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v10, :cond_4

    .line 444
    const/4 v1, 0x1

    .line 448
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v5, "SecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSimReady  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isAirplaneModeOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isAirplaneModeOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isAirplaneModeOn()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isRadioBusy()Z

    move-result v5

    if-nez v5, :cond_5

    .line 450
    const-string v5, "sim_lock"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 438
    .restart local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 452
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v5, "sim_lock"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 455
    .end local v0    # "i":I
    .end local v1    # "isSimReady":Z
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v10, :cond_7

    invoke-direct {p0, v8}, Lcom/android/settings/SecuritySettings;->isStandby(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isAirplaneModeOn()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isRadioBusy()Z

    move-result v5

    if-nez v5, :cond_7

    .line 457
    const-string v5, "sim_lock"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 459
    :cond_7
    const-string v5, "sim_lock"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 511
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090385

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09043c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 521
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 788
    const v0, 0x7f0907c9

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 754
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 755
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    .line 769
    :goto_0
    return-void

    .line 759
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 761
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 762
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 768
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 525
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 526
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 531
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 151
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 154
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 156
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.SIM_STATE_CHANGED0"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.SIM_STATE_CHANGED1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mSimStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio_operation"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 535
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 536
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 540
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 546
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 774
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 776
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 783
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist lockAfter timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 667
    invoke-virtual {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 742
    :cond_0
    :goto_0
    return v1

    .line 670
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 672
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 673
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 674
    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v2, 0x7b

    invoke-virtual {p0, p0, v0, v2, v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 676
    :cond_2
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 677
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 679
    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 687
    :cond_3
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 688
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 689
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 694
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 695
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 697
    const/16 v4, 0x7d

    invoke-virtual {v2, v4, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 704
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 707
    :cond_5
    const-string v4, "lockenabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 708
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 709
    :cond_6
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 710
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto/16 :goto_0

    .line 711
    :cond_7
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 712
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 713
    :cond_8
    const-string v4, "keyguard_enable_widgets"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 714
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(Z)V

    goto/16 :goto_0

    .line 715
    :cond_9
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 716
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 718
    :cond_b
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_d

    .line 719
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 720
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 721
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    .line 723
    :cond_c
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    .line 725
    :cond_d
    const-string v3, "toggle_verify_applications"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 726
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 728
    :cond_f
    const-string v0, "install_credentials"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 729
    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Landroid/os/Environment;->getInternalStoragePathState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 731
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0908c2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 733
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.CertImportEditor"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 735
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 739
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 621
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 625
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 627
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 628
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 633
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 636
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 640
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "show_password"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 644
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    .line 648
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v4

    sget-object v5, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v4, v5, :cond_7

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 651
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 652
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 654
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->updateOwnerInfo()V

    .line 655
    return-void

    :cond_6
    move v1, v3

    .line 640
    goto :goto_0

    :cond_7
    move v2, v3

    .line 648
    goto :goto_1
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 792
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 793
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 795
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 659
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 663
    :cond_0
    return-void

    .line 659
    :cond_1
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

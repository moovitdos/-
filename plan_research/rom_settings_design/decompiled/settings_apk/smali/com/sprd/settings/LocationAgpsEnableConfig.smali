.class public Lcom/sprd/settings/LocationAgpsEnableConfig;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationAgpsEnableConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDefaultSet:Landroid/preference/Preference;

.field private mEnableAgpsAll:Lcom/android/settings/location/RadioButtonPreference;

.field private mEnableAgpsNone:Lcom/android/settings/location/RadioButtonPreference;

.field private mEnableAgpsRegistered:Lcom/android/settings/location/RadioButtonPreference;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/LocationAgpsEnableConfig;)Lcom/android/settings/location/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/LocationAgpsEnableConfig;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsRegistered:Lcom/android/settings/location/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/LocationAgpsEnableConfig;)Lcom/android/settings/location/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/LocationAgpsEnableConfig;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsAll:Lcom/android/settings/location/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/LocationAgpsEnableConfig;)Lcom/android/settings/location/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/LocationAgpsEnableConfig;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsNone:Lcom/android/settings/location/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprd/settings/LocationAgpsEnableConfig;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/LocationAgpsEnableConfig;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->resolver:Landroid/content/ContentResolver;

    .line 39
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 41
    const-string v0, "enable_agps_registered"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsRegistered:Lcom/android/settings/location/RadioButtonPreference;

    .line 42
    const-string v0, "enable_agps_all"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsAll:Lcom/android/settings/location/RadioButtonPreference;

    .line 43
    const-string v0, "enable_agps_none"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsNone:Lcom/android/settings/location/RadioButtonPreference;

    .line 44
    const-string v0, "default_set_button"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mDefaultSet:Landroid/preference/Preference;

    .line 45
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mDefaultSet:Landroid/preference/Preference;

    new-instance v1, Lcom/sprd/settings/LocationAgpsEnableConfig$1;

    invoke-direct {v1, p0}, Lcom/sprd/settings/LocationAgpsEnableConfig$1;-><init>(Lcom/sprd/settings/LocationAgpsEnableConfig;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsRegistered:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p2, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsRegistered:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 79
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsAll:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 80
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsNone:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->resolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_enable_option"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsAll:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p2, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsAll:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 84
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsRegistered:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 85
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsNone:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 86
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->resolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_enable_option"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsNone:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p2, v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsNone:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 89
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsAll:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 90
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsRegistered:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 91
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->resolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_enable_option"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 93
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 63
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->resolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_enable_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "tmp":I
    if-nez v0, :cond_1

    .line 66
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsRegistered:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-ne v0, v4, :cond_2

    .line 68
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsAll:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig;->mEnableAgpsNone:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

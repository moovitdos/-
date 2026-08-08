.class public Lcom/android/settings/location/LocationMode;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# static fields
.field private static final LOCATION_GPS_ENABLED:Z

.field private static final SUPORT_CMCC:Z

.field private static final WCN_DISABLED:Z


# instance fields
.field private mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

.field private mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

.field private mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "ro.wcn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/location/LocationMode;->WCN_DISABLED:Z

    .line 46
    const-string v0, "persist.sys.location.gps"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/location/LocationMode;->LOCATION_GPS_ENABLED:Z

    .line 47
    const-string v0, "ro.operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/location/LocationMode;->SUPORT_CMCC:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 62
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 65
    :cond_0
    const v1, 0x7f05001a

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    const-string v1, "high_accuracy"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    .line 69
    const-string v1, "battery_saving"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    .line 70
    const-string v1, "sensors_only"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    .line 71
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    .line 77
    sget-boolean v1, Lcom/android/settings/location/LocationMode;->WCN_DISABLED:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/location/LocationMode;->LOCATION_GPS_ENABLED:Z

    if-nez v1, :cond_2

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    :cond_2
    sget-boolean v1, Lcom/android/settings/location/LocationMode;->SUPORT_CMCC:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/settings/location/LocationMode;->WCN_DISABLED:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/settings/location/LocationMode;->LOCATION_GPS_ENABLED:Z

    if-nez v1, :cond_4

    .line 83
    :cond_3
    const-string v1, "location_agps_config"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 85
    :cond_4
    return-object v0
.end method

.method private updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 3
    .param p1, "activated"    # Lcom/android/settings/location/RadioButtonPreference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f0907c8

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 141
    .local v0, "enabled":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 144
    return-void

    .line 125
    .end local v0    # "enabled":Z
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 58
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 2
    .param p1, "emiter"    # Lcom/android/settings/location/RadioButtonPreference;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 112
    const/4 v0, 0x3

    .line 118
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    .line 119
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 114
    const/4 v0, 0x2

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 53
    return-void
.end method

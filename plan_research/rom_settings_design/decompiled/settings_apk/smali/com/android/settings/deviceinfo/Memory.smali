.class public Lcom/android/settings/deviceinfo/Memory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Memory.java"


# instance fields
.field private mInstallLocation:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "selectedLocation":I
    if-ne v0, v4, :cond_0

    .line 155
    const-string v1, "device"

    .line 172
    :goto_0
    return-object v1

    .line 156
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 158
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    const-string v1, "device"

    goto :goto_0

    .line 165
    :cond_1
    const-string v1, "sdcard"

    goto :goto_0

    .line 166
    :cond_2
    if-nez v0, :cond_3

    .line 167
    const-string v1, "auto"

    goto :goto_0

    .line 168
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 169
    const-string v1, "internal sdcard"

    goto :goto_0

    .line 172
    :cond_4
    const-string v1, "auto"

    goto :goto_0
.end method


# virtual methods
.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 149
    return-void

    .line 137
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "internal sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 96
    const-string v1, "app_install_location"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    .line 97
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    invoke-static {}, Landroid/os/Environment;->getStorageType()I

    move-result v1

    if-ne v3, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->internalIsEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "app_install_location"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 121
    :cond_0
    const-string v1, "app_install_location"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/os/Environment;->getStorageType()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->internalIsEmulated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 128
    :cond_1
    return-void
.end method

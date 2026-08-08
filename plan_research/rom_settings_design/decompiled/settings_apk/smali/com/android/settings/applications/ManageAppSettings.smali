.class public Lcom/android/settings/applications/ManageAppSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManageAppSettings.java"


# instance fields
.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field private mFilterAppsAll:Landroid/preference/PreferenceScreen;

.field private mFilterAppsDisabled:Landroid/preference/PreferenceScreen;

.field private mFilterAppsOnsdcard:Landroid/preference/PreferenceScreen;

.field private mFilterAppsRunning:Landroid/preference/PreferenceScreen;

.field private mFilterAppsThirdParty:Landroid/preference/PreferenceScreen;

.field private mManageAppCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private startPreferencePanel(ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 98
    .line 99
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v0, "filter_app_item"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 103
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, -0x1

    move v3, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 105
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 68
    const-string v0, "manage_app_settings_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mManageAppCategory:Landroid/preference/PreferenceCategory;

    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mManageAppCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "filter_apps_third_party"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsThirdParty:Landroid/preference/PreferenceScreen;

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mManageAppCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "filter_apps_onsdcard"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsOnsdcard:Landroid/preference/PreferenceScreen;

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mManageAppCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "filter_apps_running"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsRunning:Landroid/preference/PreferenceScreen;

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mManageAppCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "filter_apps_all"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsAll:Landroid/preference/PreferenceScreen;

    .line 73
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mManageAppCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "filter_apps_disabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsDisabled:Landroid/preference/PreferenceScreen;

    .line 75
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 110
    const v1, 0x7f09046b

    .line 111
    .local v1, "resid":I
    const-string v0, "filter_apps_all"

    .line 113
    .local v0, "filterAppItem":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsThirdParty:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_1

    .line 114
    const v1, 0x7f09046d

    .line 115
    const-string v0, "filter_apps_third_party"

    .line 130
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/ManageAppSettings;->startPreferencePanel(ILjava/lang/String;)V

    .line 132
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsOnsdcard:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_2

    .line 117
    const v1, 0x7f09046f

    .line 118
    const-string v0, "filter_apps_onsdcard"

    goto :goto_0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsRunning:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_3

    .line 120
    const v1, 0x7f09046e

    .line 121
    const-string v0, "filter_apps_running"

    goto :goto_0

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsAll:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_4

    .line 123
    const v1, 0x7f09046b

    .line 124
    const-string v0, "filter_apps_all"

    goto :goto_0

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsDisabled:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_0

    .line 126
    const v1, 0x7f09046c

    .line 127
    const-string v0, "filter_apps_disabled"

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mManageAppCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsDisabled:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mManageAppCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsOnsdcard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageAppSettings;->mManageAppCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAppSettings;->mFilterAppsDisabled:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

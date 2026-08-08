.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final LOCATION_GPS_ENABLED:Z


# instance fields
.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "persist.sys.location.gps"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/location/LocationSettings;->LOCATION_GPS_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 77
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 201
    const-string v4, "location_services"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 203
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v2, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v2, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 204
    .local v2, "injector":Lcom/android/settings/location/SettingsInjector;
    invoke-virtual {v2}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v3

    .line 206
    .local v3, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v4, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/location/SettingsInjector;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v4, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 222
    invoke-direct {p0, v3, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 122
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 124
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 128
    .local v0, "activity":Landroid/preference/PreferenceActivity;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 129
    .local v4, "root":Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 132
    :cond_0
    const v5, 0x7f05001b

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 133
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 134
    const-string v5, "location_switch"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/LocationSwitchPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    .line 135
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    const v6, 0x7f09055c

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 138
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    const v6, 0x7f09055d

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    .line 139
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    const-string v5, "location_mode"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 141
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v6, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    const-string v5, "recent_location_requests"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 155
    new-instance v2, Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {v2, v0}, Lcom/android/settings/location/RecentLocationApps;-><init>(Landroid/preference/PreferenceActivity;)V

    .line 156
    .local v2, "recentApps":Lcom/android/settings/location/RecentLocationApps;
    invoke-virtual {v2}, Lcom/android/settings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v3

    .line 157
    .local v3, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 158
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v3, v5}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 168
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 184
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    .line 187
    return-object v4

    .line 161
    :cond_1
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, "banner":Landroid/preference/Preference;
    const v5, 0x7f040045

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 163
    const v5, 0x7f0903cc

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 164
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 165
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 231
    const v0, 0x7f0907c8

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 292
    if-eqz p2, :cond_1

    .line 293
    sget-boolean v0, Lcom/android/settings/location/LocationSettings;->LOCATION_GPS_ENABLED:Z

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onModeChanged(IZ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    packed-switch p1, :pswitch_data_0

    .line 256
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    .line 259
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    if-nez p2, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 260
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 274
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 276
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 280
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    :cond_1
    return-void

    .line 238
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0903ca

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0903c9

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0903c8

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0903c7

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 256
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_3
    move v3, v2

    .line 259
    goto :goto_2

    :cond_4
    move v1, v2

    .line 260
    goto :goto_3

    .line 236
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
    .locals 2

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "key":Ljava/lang/String;
    const-string v1, "location_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSwitch:Lcom/android/settings/location/LocationSwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    sget-boolean v1, Lcom/android/settings/location/LocationSettings;->LOCATION_GPS_ENABLED:Z

    if-nez v1, :cond_1

    .line 312
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    .line 320
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 314
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    goto :goto_0

    .line 317
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 97
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 98
    return-void
.end method

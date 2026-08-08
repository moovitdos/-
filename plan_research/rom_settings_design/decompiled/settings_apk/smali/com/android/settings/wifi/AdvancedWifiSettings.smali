.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectCheckBox:Landroid/preference/CheckBoxPreference;

.field private mConnectTimePref:Landroid/preference/Preference;

.field private mDisconnectCheckBox:Landroid/preference/CheckBoxPreference;

.field private mDisconnectTimePref:Landroid/preference/Preference;

.field private mResetPreference:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private supportCMCC:Z

.field private whichTimepicker:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->supportCMCC:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->whichTimepicker:I

    return-void
.end method

.method private getCalendar(II)Ljava/util/Calendar;
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 500
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 501
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 502
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 503
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 504
    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 505
    return-object v0
.end method

.method private initCellularWLANPreference()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 383
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    .line 384
    .local v6, "wifiEnabled":Z
    const-string v7, "mobile_to_wlan_policy"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 385
    .local v4, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 386
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 387
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConnectionPolicy;->getMobileToWlanPolicy(Landroid/content/Context;)I

    move-result v5

    .line 388
    .local v5, "value":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateMobileToWlanSummary(Landroid/preference/Preference;I)V

    .line 391
    const-string v7, "show_dialog_connect_to_cmcc"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 392
    .local v0, "ConnectToCmccCheckBox":Landroid/preference/CheckBoxPreference;
    const-string v7, "dialog_connect_to_cmcc"

    invoke-direct {p0, v0, v7, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setShowDialogCheckBoxStatus(Landroid/preference/CheckBoxPreference;Ljava/lang/String;Z)V

    .line 393
    const-string v7, "reset_wifi_policy_show_dialog"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mResetPreference:Landroid/preference/Preference;

    .line 395
    const-string v7, "wifi_connect_alarm_checkbox"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectCheckBox:Landroid/preference/CheckBoxPreference;

    .line 396
    const-string v7, "wifi_connect_alarm_time"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectTimePref:Landroid/preference/Preference;

    .line 397
    const-string v7, "wifi_disconnect_alarm_checkbox"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDisconnectCheckBox:Landroid/preference/CheckBoxPreference;

    .line 398
    const-string v7, "wifi_disconnect_alarm_time"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDisconnectTimePref:Landroid/preference/Preference;

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_connect_alarm_hour"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 401
    .local v2, "hourOfDay":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_connect_alarm_minute"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 402
    .local v3, "minute":I
    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getCalendar(II)Ljava/util/Calendar;

    move-result-object v1

    .line 403
    .local v1, "calendar":Ljava/util/Calendar;
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v7, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateTimeDisplay(Landroid/preference/Preference;Ljava/util/Calendar;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_disconnect_alarm_hour"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_disconnect_alarm_minute"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 406
    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getCalendar(II)Ljava/util/Calendar;

    move-result-object v1

    .line 407
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDisconnectTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v7, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateTimeDisplay(Landroid/preference/Preference;Ljava/util/Calendar;)V

    .line 408
    return-void
.end method

.method private initPreferences()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 134
    const-string v9, "notify_open_networks"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 136
    .local v2, "notifyOpenNetworks":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_networks_available_notification_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_4

    move v9, v10

    :goto_0
    invoke-virtual {v2, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 138
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v2, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 140
    const-string v9, "wifi_poor_network_detection"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 142
    .local v3, "poorNetworkDetection":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 144
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    :cond_0
    :goto_1
    const-string v9, "wifi_scan_always_available"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 155
    .local v5, "scanAlwaysAvailable":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_scan_always_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_7

    :goto_2
    invoke-virtual {v5, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "com.android.certinstaller"

    const-string v10, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v9, "install_as_uid"

    const/16 v10, 0x3f2

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v9, "install_credentials"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 163
    .local v4, "pref":Landroid/preference/Preference;
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 170
    const-string v9, "frequency_band"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 172
    .local v0, "frequencyPref":Landroid/preference/ListPreference;
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 173
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v8

    .line 175
    .local v8, "value":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 176
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V

    .line 188
    .end local v8    # "value":I
    :cond_1
    :goto_3
    const-string v9, "sleep_policy"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 189
    .local v6, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v6, :cond_3

    .line 190
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 191
    const v9, 0x7f0a0022

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 193
    :cond_2
    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_sleep_policy"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 197
    .restart local v8    # "value":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "stringValue":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 201
    .end local v7    # "stringValue":Ljava/lang/String;
    .end local v8    # "value":I
    :cond_3
    return-void

    .end local v0    # "frequencyPref":Landroid/preference/ListPreference;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "poorNetworkDetection":Landroid/preference/CheckBoxPreference;
    .end local v4    # "pref":Landroid/preference/Preference;
    .end local v5    # "scanAlwaysAvailable":Landroid/preference/CheckBoxPreference;
    .end local v6    # "sleepPolicyPref":Landroid/preference/ListPreference;
    :cond_4
    move v9, v11

    .line 136
    goto/16 :goto_0

    .line 146
    .restart local v3    # "poorNetworkDetection":Landroid/preference/CheckBoxPreference;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_6

    move v9, v10

    :goto_4
    invoke-virtual {v3, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_6
    move v9, v11

    goto :goto_4

    .restart local v5    # "scanAlwaysAvailable":Landroid/preference/CheckBoxPreference;
    :cond_7
    move v10, v11

    .line 155
    goto/16 :goto_2

    .line 179
    .restart local v0    # "frequencyPref":Landroid/preference/ListPreference;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "pref":Landroid/preference/Preference;
    .restart local v8    # "value":I
    :cond_8
    const-string v9, "AdvancedWifiSettings"

    const-string v10, "Failed to fetch frequency band"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 182
    .end local v8    # "value":I
    :cond_9
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private isDismissCalendar(II)Z
    .locals 4
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/16 v3, 0xb

    const/4 v1, 0x1

    .line 539
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 540
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v2, p1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v1

    .line 542
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 543
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    .line 547
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSameTime()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_connect_alarm_hour"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 558
    .local v0, "hourOfDayForConn":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_disconnect_alarm_hour"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 560
    .local v1, "hourOfDayForDisconn":I
    if-eq v0, v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v4

    .line 564
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_connect_alarm_minute"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 566
    .local v2, "minuteForConn":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_disconnect_alarm_minute"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 568
    .local v3, "minuteForDisconn":I
    if-ne v2, v3, :cond_0

    .line 571
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private refreshWifiInfo()V
    .locals 7

    .prologue
    const v6, 0x7f090335

    .line 368
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 370
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v5, "mac_address"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 371
    .local v4, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 372
    .local v1, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .end local v1    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    const-string v5, "current_ip_address"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 376
    .local v3, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "ipAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    return-void

    .line 371
    .end local v3    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 372
    .restart local v1    # "macAddress":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private setConnectWifiAlarm()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 509
    const-string v6, "AdvancedWifiSettings"

    const-string v7, "setConnectWifiAlarm"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_connect_alarm_hour"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 511
    .local v1, "hourOfDay":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_connect_alarm_minute"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 512
    .local v4, "minute":I
    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getCalendar(II)Ljava/util/Calendar;

    move-result-object v0

    .line 513
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 514
    .local v2, "inMillis":J
    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isDismissCalendar(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 515
    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "sprd.wifi.alarm.CONNECT_WIFI"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 519
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 520
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v9, v2, v3, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 521
    return-void
.end method

.method private setDisonnectWifiAlarm()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 524
    const-string v6, "AdvancedWifiSettings"

    const-string v7, "setDisonnectWifiAlarm"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_disconnect_alarm_hour"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 526
    .local v1, "hourOfDay":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_disconnect_alarm_minute"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 527
    .local v4, "minute":I
    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getCalendar(II)Ljava/util/Calendar;

    move-result-object v0

    .line 528
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 529
    .local v2, "inMillis":J
    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isDismissCalendar(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 530
    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    .line 532
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "sprd.wifi.alarm.DISCONNECT_WIFI"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 534
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 535
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v9, v2, v3, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 536
    return-void
.end method

.method private setShowDialogCheckBoxStatus(Landroid/preference/CheckBoxPreference;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "item"    # Landroid/preference/CheckBoxPreference;
    .param p2, "showDialogFlag"    # Ljava/lang/String;
    .param p3, "wifiEnabled"    # Z

    .prologue
    .line 413
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->shouldShowDialog(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 414
    invoke-virtual {p1, p3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 415
    return-void
.end method

.method private shouldShowDialog(Ljava/lang/String;)Z
    .locals 2
    .param p1, "showDialogFlag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method

.method private updateMobileToWlanSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 204
    if-eqz p2, :cond_2

    .line 205
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a0022

    .line 208
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 210
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 212
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 206
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a0021

    goto :goto_0

    .line 209
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "summaryArrayResId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateTimeDisplay(Landroid/preference/Preference;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 553
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 104
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAlarmManager:Landroid/app/AlarmManager;

    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "ro.operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->supportCMCC:Z

    .line 97
    const v0, 0x7f050045

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 98
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    const/16 v4, 0xc

    const/16 v2, 0xb

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 429
    .local v6, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 449
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 431
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->whichTimepicker:I

    .line 432
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 439
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->whichTimepicker:I

    .line 440
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 325
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "key":Ljava/lang/String;
    const-string v5, "frequency_band"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 330
    .local v4, "value":I
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x1

    invoke-virtual {v5, v4, v8}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 331
    invoke-direct {p0, p1, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v4    # "value":I
    :cond_0
    const-string v5, "sleep_policy"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 341
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 342
    .local v3, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_sleep_policy"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    .end local v3    # "stringValue":Ljava/lang/String;
    :cond_1
    const-string v5, "mobile_to_wlan_policy"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 354
    :try_start_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 355
    .restart local v4    # "value":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setMobileToWlanPolicy(Landroid/content/Context;I)V

    .line 356
    invoke-direct {p0, p1, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateMobileToWlanSummary(Landroid/preference/Preference;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v4    # "value":I
    :cond_2
    move v5, v7

    .line 364
    :goto_0
    return v5

    .line 332
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f090266

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 335
    goto :goto_0

    .line 345
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 346
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f090202

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 348
    goto :goto_0

    .line 357
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "newValue":Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 358
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f090800

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 360
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v9, 0x7f0908d2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 230
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "key":Ljava/lang/String;
    const-string v5, "notify_open_networks"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    move v7, v6

    .line 320
    :goto_2
    return v7

    :cond_0
    move v5, v7

    .line 233
    goto :goto_0

    .line 236
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v5, "wifi_poor_network_detection"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    move v7, v6

    :cond_2
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 245
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    const-string v5, "wifi_scan_always_available"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v6

    :cond_4
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 249
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_5
    const-string v5, "show_dialog_connect_to_cmcc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dialog_connect_to_cmcc"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_6

    move v7, v6

    :cond_6
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 252
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_7
    const-string v5, "reset_wifi_policy_show_dialog"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 253
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mResetPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 254
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPolicy;->resetTimer()V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dialog_wlan_to_wlan"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dialog_mobile_to_wlan_always_ask"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dialog_mobile_to_wlan_manual"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dialog_wlan_to_mobile"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mResetPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 264
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0908c8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 267
    :cond_8
    const-string v5, "wifi_connect_alarm_checkbox"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object v5, p2

    .line 268
    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 269
    .local v2, "isChecked":Z
    if-eqz v2, :cond_b

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_disconnect_alarm_flag"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 272
    .local v1, "disconnFlag":I
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isSameTime()Z

    move-result v5

    if-eqz v5, :cond_9

    if-ne v1, v6, :cond_9

    .line 273
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 274
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 278
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setConnectWifiAlarm()V

    .line 284
    .end local v1    # "disconnFlag":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_connect_alarm_flag"

    if-eqz v2, :cond_a

    move v7, v6

    :cond_a
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 280
    :cond_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v8, Landroid/content/Intent;

    const-string v9, "sprd.wifi.alarm.CONNECT_WIFI"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7, v8, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 282
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_3

    .line 285
    .end local v2    # "isChecked":Z
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_c
    const-string v5, "wifi_connect_alarm_time"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 286
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 287
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_1

    .line 288
    :cond_d
    const-string v5, "wifi_disconnect_alarm_checkbox"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object v5, p2

    .line 289
    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 290
    .restart local v2    # "isChecked":Z
    if-eqz v2, :cond_10

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_connect_alarm_flag"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, "connFlag":I
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->isSameTime()Z

    move-result v5

    if-eqz v5, :cond_e

    if-ne v0, v6, :cond_e

    .line 294
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 295
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 299
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setDisonnectWifiAlarm()V

    .line 305
    .end local v0    # "connFlag":I
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_disconnect_alarm_flag"

    if-eqz v2, :cond_f

    move v7, v6

    :cond_f
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 301
    :cond_10
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v8, Landroid/content/Intent;

    const-string v9, "sprd.wifi.alarm.DISCONNECT_WIFI"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7, v8, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 303
    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_4

    .line 306
    .end local v2    # "isChecked":Z
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_11
    const-string v5, "wifi_disconnect_alarm_time"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 307
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 308
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_1

    .line 309
    :cond_12
    const-string v5, "mobile_to_auto_roam"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 311
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 312
    .restart local v2    # "isChecked":Z
    if-eqz v2, :cond_13

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "wifi_auto_roam_switch"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 315
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "wifi_auto_roam_switch"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 318
    .end local v2    # "isChecked":Z
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 115
    iget-boolean v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->supportCMCC:Z

    if-eqz v2, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initCellularWLANPreference()V

    .line 131
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v2, "mobile_to_wlan_preference_category"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 119
    .local v1, "wifiCellularPreferenceCategory":Landroid/preference/PreferenceCategory;
    const-string v2, "mobile_to_wlan_policy"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 120
    .local v0, "pref":Landroid/preference/ListPreference;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "show_dialog_connect_to_cmcc"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "reset_wifi_policy_show_dialog"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "wifi_alarm_category"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "wifi_connect_alarm_checkbox"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "wifi_connect_alarm_time"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "wifi_disconnect_alarm_checkbox"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "wifi_disconnect_alarm_time"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 9
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const v8, 0x7f0908d2

    const/4 v7, 0x0

    .line 454
    const-string v5, "AdvancedWifiSettings"

    const-string v6, "onTimeSet"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0, p2, p3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getCalendar(II)Ljava/util/Calendar;

    move-result-object v0

    .line 457
    .local v0, "calendar":Ljava/util/Calendar;
    iget v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->whichTimepicker:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 458
    iget v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->whichTimepicker:I

    packed-switch v5, :pswitch_data_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 460
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_disconnect_alarm_hour"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 462
    .local v2, "hourOfDayForDisc":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_disconnect_alarm_minute"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 464
    .local v4, "minuteForDisc":I
    if-ne p2, v2, :cond_1

    if-ne v4, p3, :cond_1

    .line 465
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_connect_alarm_hour"

    invoke-static {v5, v6, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_connect_alarm_minute"

    invoke-static {v5, v6, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 471
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setConnectWifiAlarm()V

    .line 473
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateTimeDisplay(Landroid/preference/Preference;Ljava/util/Calendar;)V

    goto :goto_0

    .line 477
    .end local v2    # "hourOfDayForDisc":I
    .end local v4    # "minuteForDisc":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_connect_alarm_hour"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 479
    .local v1, "hourOfDayForConn":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_connect_alarm_minute"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 481
    .local v3, "minuteForConn":I
    if-ne p2, v1, :cond_3

    if-ne v3, p3, :cond_3

    .line 482
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 485
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_disconnect_alarm_hour"

    invoke-static {v5, v6, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_disconnect_alarm_minute"

    invoke-static {v5, v6, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 487
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDisconnectCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 488
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->setDisonnectWifiAlarm()V

    .line 490
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDisconnectTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateTimeDisplay(Landroid/preference/Preference;Ljava/util/Calendar;)V

    goto/16 :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

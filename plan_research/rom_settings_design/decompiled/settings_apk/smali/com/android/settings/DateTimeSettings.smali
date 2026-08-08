.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final AUTO_TIME_OFF_INDEX:I

.field public static GPS_SUPPORT:Z

.field private static final KEY_AUTO_TIME:Ljava/lang/String;

.field public static ORIG_AUTOTIME_SUPPORT:Z

.field private static mIsSetDataTimeSucess:Z


# instance fields
.field private mAutoTimeOrigPref:Landroid/preference/CheckBoxPreference;

.field private mAutoTimePref:Landroid/preference/ListPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    const-string v0, "orig_autotime_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/DateTimeSettings;->ORIG_AUTOTIME_SUPPORT:Z

    .line 81
    const-string v0, "ro.wcn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "disabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/DateTimeSettings;->GPS_SUPPORT:Z

    .line 82
    sget-boolean v0, Lcom/android/settings/DateTimeSettings;->GPS_SUPPORT:Z

    if-eqz v0, :cond_2

    const-string v0, "auto_time_list"

    :goto_1
    sput-object v0, Lcom/android/settings/DateTimeSettings;->KEY_AUTO_TIME:Ljava/lang/String;

    .line 102
    sput-boolean v2, Lcom/android/settings/DateTimeSettings;->mIsSetDataTimeSucess:Z

    .line 109
    sget-boolean v0, Lcom/android/settings/DateTimeSettings;->GPS_SUPPORT:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    sput v1, Lcom/android/settings/DateTimeSettings;->AUTO_TIME_OFF_INDEX:I

    return-void

    :cond_1
    move v0, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const-string v0, "auto_time_list_no_gps"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 552
    new-instance v0, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$2;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->reSetAutoTimePref()V

    return-void
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    .line 429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 430
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 431
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 432
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 433
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 434
    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 435
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 436
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 510
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 512
    :cond_0
    :goto_0
    return v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 547
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ZZZZ, zzzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 549
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initUI()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 122
    const-string v6, "auto_time"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 123
    .local v1, "autoTimeEnabled":Z
    const-string v6, "auto_time_zone"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v3

    .line 125
    .local v3, "autoTimeZoneEnabled":Z
    const-string v6, "auto_time_gps"

    invoke-direct {p0, v6}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 127
    .local v2, "autoTimeGpsEnabled":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 128
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "firstRun"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 130
    .local v5, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 132
    sget-object v6, Lcom/android/settings/DateTimeSettings;->KEY_AUTO_TIME:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    .line 133
    if-eqz v1, :cond_5

    .line 134
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 140
    :goto_0
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    const-string v6, "auto_time"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeOrigPref:Landroid/preference/CheckBoxPreference;

    .line 144
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeOrigPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 147
    const-string v6, "auto_zone"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    .line 150
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    const/4 v3, 0x0

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 156
    const-string v6, "time"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 157
    const-string v6, "24 hour"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 158
    const-string v6, "timezone"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 159
    const-string v6, "date"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 160
    const-string v6, "date_format"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 161
    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :cond_2
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    if-eqz v6, :cond_3

    .line 166
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateDateFormatDisplay()V

    .line 203
    sget-boolean v6, Lcom/android/settings/DateTimeSettings;->ORIG_AUTOTIME_SUPPORT:Z

    if-eqz v6, :cond_a

    .line 205
    const-string v6, "auto_time_list_no_gps"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 206
    const-string v6, "auto_time_list"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 207
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_7

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_8

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 209
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v3, :cond_9

    :goto_3
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 228
    :cond_4
    :goto_4
    return-void

    .line 135
    :cond_5
    sget-boolean v6, Lcom/android/settings/DateTimeSettings;->GPS_SUPPORT:Z

    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    .line 136
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 138
    :cond_6
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    sget v9, Lcom/android/settings/DateTimeSettings;->AUTO_TIME_OFF_INDEX:I

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 207
    goto :goto_1

    :cond_8
    move v6, v8

    .line 208
    goto :goto_2

    :cond_9
    move v7, v8

    .line 209
    goto :goto_3

    .line 211
    :cond_a
    if-nez v1, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    move v0, v7

    .line 213
    .local v0, "autoEnabled":Z
    :goto_5
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_d

    move v6, v7

    :goto_6
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 214
    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_e

    move v6, v7

    :goto_7
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v3, :cond_f

    :goto_8
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 217
    sget-boolean v6, Lcom/android/settings/DateTimeSettings;->GPS_SUPPORT:Z

    if-eqz v6, :cond_10

    .line 218
    const-string v6, "auto_time_list_no_gps"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 222
    :goto_9
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeOrigPref:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    .line 223
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeOrigPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .end local v0    # "autoEnabled":Z
    :cond_c
    move v0, v8

    .line 211
    goto :goto_5

    .restart local v0    # "autoEnabled":Z
    :cond_d
    move v6, v8

    .line 213
    goto :goto_6

    :cond_e
    move v6, v8

    .line 214
    goto :goto_7

    :cond_f
    move v7, v8

    .line 215
    goto :goto_8

    .line 220
    :cond_10
    const-string v6, "auto_time_list"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isNeedshowToast()V
    .locals 3

    .prologue
    .line 596
    sget-boolean v0, Lcom/android/settings/DateTimeSettings;->mIsSetDataTimeSucess:Z

    if-nez v0, :cond_0

    .line 597
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09088c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 599
    :cond_0
    return-void
.end method

.method private reSetAutoTimePref()V
    .locals 4

    .prologue
    .line 632
    const-string v2, "DateTimeSettings"

    const-string v3, "reset AutoTimePref as cancel the selection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v2, "auto_time"

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 634
    .local v0, "autoTimeEnabled":Z
    const-string v2, "auto_time_gps"

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 635
    .local v1, "autoTimeGpsEnabled":Z
    if-eqz v0, :cond_0

    .line 636
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 642
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 643
    return-void

    .line 637
    :cond_0
    sget-boolean v2, Lcom/android/settings/DateTimeSettings;->GPS_SUPPORT:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 638
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 640
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    sget v3, Lcom/android/settings/DateTimeSettings;->AUTO_TIME_OFF_INDEX:I

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 501
    return-void

    .line 498
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v7, 0x1

    .line 517
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 519
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v7, p1}, Ljava/util/Calendar;->set(II)V

    .line 520
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 521
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 522
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 523
    .local v1, "when":J
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/DateTimeSettings;->mIsSetDataTimeSucess:Z

    .line 524
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 525
    sput-boolean v7, Lcom/android/settings/DateTimeSettings;->mIsSetDataTimeSucess:Z

    .line 526
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 528
    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 531
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 534
    .local v0, "c":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 535
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 536
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 537
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 538
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 539
    .local v1, "when":J
    sput-boolean v4, Lcom/android/settings/DateTimeSettings;->mIsSetDataTimeSucess:Z

    .line 540
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 541
    sput-boolean v7, Lcom/android/settings/DateTimeSettings;->mIsSetDataTimeSucess:Z

    .line 542
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 544
    :cond_0
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "timeChanged":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    return-void
.end method

.method private updateDateFormatDisplay()V
    .locals 10

    .prologue
    const v9, 0x7f0a0002

    .line 565
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "dateFormats":[Ljava/lang/String;
    array-length v5, v1

    new-array v3, v5, [Ljava/lang/String;

    .line 568
    .local v3, "formattedDates":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "currentFormat":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 572
    const-string v0, ""

    .line 574
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 575
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "formatted":Ljava/lang/String;
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 579
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09009f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 574
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 582
    :cond_1
    aput-object v2, v3, v4

    goto :goto_1

    .line 586
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 587
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 588
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 589
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 484
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 647
    const-string v0, "DateTimeSettings"

    const-string v1, "onCancel Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->reSetAutoTimePref()V

    .line 649
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 604
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 605
    const-string v3, "DateTimeSettings"

    const-string v4, "Enable GPS time sync"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 609
    .local v2, "mLocationManager":Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 610
    .local v1, "gpsEnabled":Z
    if-nez v1, :cond_0

    .line 611
    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable GPS time sync gpsEnabled ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 619
    .local v0, "currentUserId":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v6, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 622
    .end local v0    # "currentUserId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time_gps"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    .end local v1    # "gpsEnabled":Z
    .end local v2    # "mLocationManager":Landroid/location/LocationManager;
    :cond_1
    :goto_0
    return-void

    .line 626
    :cond_2
    const/4 v3, -0x2

    if-ne p2, v3, :cond_1

    .line 627
    const-string v3, "DateTimeSettings"

    const-string v4, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->reSetAutoTimePref()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 119
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .param p1, "id"    # I

    .prologue
    .line 360
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 361
    .local v8, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 423
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 363
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1030073

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 370
    .local v0, "d":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    .line 371
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->setDateListener(Landroid/app/DatePickerDialog;)V

    .line 419
    .end local v0    # "d":Landroid/app/DatePickerDialog;
    :goto_0
    return-object v0

    .line 376
    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030073

    const/16 v4, 0xb

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v4, 0xc

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 383
    .local v1, "timePickerDialog":Landroid/app/TimePickerDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->setTimeListener(Landroid/app/TimePickerDialog;)V

    move-object v0, v1

    .line 386
    goto :goto_0

    .line 392
    .end local v1    # "timePickerDialog":Landroid/app/TimePickerDialog;
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/LocationManager;

    .line 393
    .local v11, "mLocationManager":Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v11, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    .line 395
    .local v10, "gpsEnabled":Z
    if-eqz v10, :cond_0

    .line 396
    const v12, 0x7f09097e

    .line 400
    .local v12, "msg":I
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 407
    .local v9, "dGps":Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 408
    new-instance v2, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v0, v9

    .line 419
    goto/16 :goto_0

    .line 398
    .end local v9    # "dGps":Landroid/app/Dialog;
    .end local v12    # "msg":I
    :cond_0
    const v12, 0x7f09097f

    .restart local v12    # "msg":I
    goto :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 286
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 287
    invoke-static {v0, p2, p3, p4}, Lcom/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedshowToast()V

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 291
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateDateFormatDisplay()V

    .line 294
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 256
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 259
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 466
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 477
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 470
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 471
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 474
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 475
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 234
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateDateFormatDisplay()V

    .line 251
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 312
    const-string v5, "date_format"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 317
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 356
    .end local v2    # "format":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    sget-object v5, Lcom/android/settings/DateTimeSettings;->KEY_AUTO_TIME:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 323
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 325
    .local v3, "index":I
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    const/4 v0, 0x1

    .line 328
    .local v0, "autoEnabled":Z
    if-nez v3, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "auto_time"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "auto_time_gps"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    :goto_1
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 343
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 333
    :cond_2
    sget-boolean v5, Lcom/android/settings/DateTimeSettings;->GPS_SUPPORT:Z

    if-eqz v5, :cond_3

    if-ne v3, v6, :cond_3

    .line 334
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 337
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "auto_time"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "auto_time_gps"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v5, v7

    .line 342
    goto :goto_2

    :cond_5
    move v6, v7

    .line 343
    goto :goto_3

    .line 344
    .end local v0    # "autoEnabled":Z
    .end local v3    # "index":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_6
    const-string v5, "auto_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 345
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 346
    .restart local v0    # "autoEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v0, :cond_7

    move v5, v6

    :goto_4
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_8

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 349
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_9

    :goto_6
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 346
    goto :goto_4

    :cond_8
    move v5, v7

    .line 348
    goto :goto_5

    :cond_9
    move v6, v7

    .line 349
    goto :goto_6

    .line 350
    .end local v0    # "autoEnabled":Z
    :cond_a
    const-string v5, "auto_zone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 352
    .local v1, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_b

    move v5, v6

    :goto_7
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_c

    :goto_8
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    move v5, v7

    .line 352
    goto :goto_7

    :cond_c
    move v6, v7

    .line 354
    goto :goto_8
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 299
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 300
    invoke-static {v0, p2, p3}, Lcom/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 301
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedshowToast()V

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 308
    :cond_0
    return-void
.end method

.method public setDateListener(Landroid/app/DatePickerDialog;)V
    .locals 2
    .param p1, "datePickerDialog"    # Landroid/app/DatePickerDialog;

    .prologue
    .line 671
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    .line 672
    .local v0, "datePicker":Landroid/widget/DatePicker;
    new-instance v1, Lcom/android/settings/DateTimeSettings$4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/DateTimeSettings$4;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/widget/DatePicker;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 685
    return-void
.end method

.method public setTimeListener(Landroid/app/TimePickerDialog;)V
    .locals 2
    .param p1, "timePickerDialog"    # Landroid/app/TimePickerDialog;

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->getTime()Landroid/widget/TimePicker;

    move-result-object v0

    .line 655
    .local v0, "timePicker":Landroid/widget/TimePicker;
    new-instance v1, Lcom/android/settings/DateTimeSettings$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/DateTimeSettings$3;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/widget/TimePicker;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 668
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 262
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 263
    .local v9, "shortDateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 264
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 274
    .local v7, "dummyDate":Ljava/util/Date;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->updateDateFormatDisplay()V

    .line 281
    return-void
.end method

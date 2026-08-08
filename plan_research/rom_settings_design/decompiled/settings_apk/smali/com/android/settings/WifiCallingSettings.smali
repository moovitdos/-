.class public Lcom/android/settings/WifiCallingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/WifiCallingSettings$VowifiCallingSettingsPreference;
    }
.end annotation


# instance fields
.field private mButtonWfcMode:Landroid/preference/ListPreference;

.field private mEditableWfcMode:Z

.field private mEmptyPreference:Landroid/preference/Preference;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mValidListener:Z

.field private mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    .line 76
    new-instance v0, Lcom/android/settings/WifiCallingSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/WifiCallingSettings$1;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 159
    new-instance v0, Lcom/android/settings/WifiCallingSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/WifiCallingSettings$2;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WifiCallingSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/WifiCallingSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/WifiCallingSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WifiCallingSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method static getWfcModeSummary(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    .prologue
    .line 292
    const-string v1, "WifiCallingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWfcSummary wfcMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const v0, 0x7f090909

    .line 294
    .local v0, "resId":I
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    packed-switch p1, :pswitch_data_0

    .line 306
    const-string v1, "WifiCallingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 297
    :pswitch_0
    const v0, 0x7f09090c

    .line 298
    goto :goto_0

    .line 300
    :pswitch_1
    const v0, 0x7f09090b

    .line 301
    goto :goto_0

    .line 303
    :pswitch_2
    const v0, 0x7f09090a

    .line 304
    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private relatedVolteVowifi()Z
    .locals 7

    .prologue
    .line 361
    const/4 v2, 0x1

    .line 362
    .local v2, "isRelated":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v3

    .line 363
    .local v3, "phoneId":I
    const-string v4, "carrier_config"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 365
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForPhoneId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 367
    .local v0, "config":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 368
    const-string v4, "related_vowifi_and_volte"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 371
    .end local v0    # "config":Landroid/os/PersistableBundle;
    :cond_0
    const-string v4, "WifiCallingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRelated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return v2
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 150
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 154
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 155
    return-void
.end method

.method private updateButtonWfcMode(Landroid/content/Context;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfcEnabled"    # Z
    .param p3, "wfcMode"    # I

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-static {p1, p3}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 262
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 263
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 272
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 273
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyPreference:Landroid/preference/Preference;

    const v2, 0x7f090906

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 270
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x1

    .line 126
    .local v1, "isNonTtyOrTtyOnVolteEnabled":Z
    new-instance v2, Lcom/android/settings/WifiCallingSettings$VowifiCallingSettingsPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/WifiCallingSettings$VowifiCallingSettingsPreference;-><init>(Lcom/android/settings/WifiCallingSettings;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    .line 127
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    const v3, 0x7f09055c

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    const v3, 0x7f09055d

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    .line 132
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyPreference:Landroid/preference/Preference;

    .line 133
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 134
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    const v4, 0x7f050046

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 189
    const-string v4, "wifi_calling_mode"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    .line 190
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 192
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v4, "carrier_config"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 196
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v3, 0x1

    .line 197
    .local v3, "isWifiOnlySupported":Z
    const/4 v2, 0x1

    .line 198
    .local v2, "isLteOnlySupported":Z
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfigForDefaultPhone()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 200
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 202
    const-string v4, "carrier_wfc_supports_wifi_only_bool"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 204
    const-string v4, "carrier_wfc_supports_lte_only_bool"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 207
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_0
    const-string v4, "WifiCallingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iswifionlysupported:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-nez v3, :cond_1

    .line 209
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    const v5, 0x7f0a0095

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 210
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    const v5, 0x7f0a0096

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 212
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 142
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 239
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    iget-boolean v2, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    if-eqz v2, :cond_0

    .line 242
    iput-boolean v3, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    .line 244
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 245
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 250
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 278
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 279
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 280
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    .local v0, "buttonMode":I
    invoke-static {v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    .line 282
    .local v2, "currentMode":I
    if-eq v0, v2, :cond_0

    .line 283
    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;I)V

    .line 284
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 288
    .end local v0    # "buttonMode":I
    .end local v2    # "currentMode":I
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 333
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 334
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 335
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 337
    .local v2, "isChecked":Z
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 338
    const-string v4, "WifiCallingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckedChange isChecked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 341
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v3

    .line 342
    .local v3, "wfcMode":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3}, Lcom/android/settings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZI)V

    .line 344
    invoke-direct {p0}, Lcom/android/settings/WifiCallingSettings;->relatedVolteVowifi()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    .line 350
    const v4, 0x7f0909a4

    invoke-static {v0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 357
    .end local v2    # "isChecked":Z
    .end local v3    # "wfcMode":I
    :cond_0
    return v7
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 217
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 218
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 220
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 221
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    .line 224
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    .line 226
    .local v2, "wfcEnabled":Z
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mVowifiCallingSettingsPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 227
    const-string v4, "WifiCallingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume wfcEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v3

    .line 229
    .local v3, "wfcMode":I
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZI)V

    .line 231
    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    return-void
.end method

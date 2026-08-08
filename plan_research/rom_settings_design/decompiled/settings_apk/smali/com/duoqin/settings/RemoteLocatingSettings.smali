.class public Lcom/duoqin/settings/RemoteLocatingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RemoteLocatingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final REQUEST_UNBIND:I

.field private mControlLogPreference:Landroid/preference/Preference;

.field private mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

.field private mRequireBindDialog:Landroid/app/AlertDialog;

.field private mTurnOnWifiDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->REQUEST_UNBIND:I

    return-void
.end method

.method static synthetic access$000(Lcom/duoqin/settings/RemoteLocatingSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/settings/RemoteLocatingSettings;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/duoqin/settings/RemoteLocatingSettings;->hasRemoteControlLog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/duoqin/settings/RemoteLocatingSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/settings/RemoteLocatingSettings;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mControlLogPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/duoqin/settings/RemoteLocatingSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/settings/RemoteLocatingSettings;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/duoqin/settings/RemoteLocatingSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/duoqin/settings/RemoteLocatingSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/duoqin/settings/RemoteLocatingSettings;->setLocationMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/duoqin/settings/RemoteLocatingSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/duoqin/settings/RemoteLocatingSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/duoqin/settings/RemoteLocatingSettings;->turnOnWifiIfNeed(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/duoqin/settings/RemoteLocatingSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/settings/RemoteLocatingSettings;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private hasRemoteControlLog()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 230
    const/4 v7, 0x0

    .line 231
    .local v7, "hasLog":Z
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/duoqin/settings/RemoteServiceLogActivity;->REMOTE_SERVICE_COMMAND_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v7, 0x1

    .line 236
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_1
    const-string v0, "Duoqin.RLS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasRemoteControlLog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v7
.end method

.method private setLocationMode(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, "currentMode":I
    if-eqz p1, :cond_0

    const/4 v2, 0x3

    .line 169
    .local v2, "mode":I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "CURRENT_MODE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v3, "NEW_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v3, v1, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    return-void
.end method

.method private turnOnWifiIfNeed(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 177
    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 179
    .local v2, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 180
    .local v3, "wifiState":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 181
    .local v1, "isEnabled":Z
    :goto_1
    if-nez v1, :cond_0

    .line 182
    iget-object v4, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mTurnOnWifiDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_2

    .line 183
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f09093f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090940

    new-instance v6, Lcom/duoqin/settings/RemoteLocatingSettings$5;

    invoke-direct {v6, p0, v2}, Lcom/duoqin/settings/RemoteLocatingSettings$5;-><init>(Lcom/duoqin/settings/RemoteLocatingSettings;Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0900f6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mTurnOnWifiDialog:Landroid/app/AlertDialog;

    .line 200
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v4, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mTurnOnWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 180
    .end local v1    # "isEnabled":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private unbind()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoqin.remotelocating.unBind"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 212
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 213
    const-string v1, "Duoqin.RLS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eq v5, p2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 217
    const-string v1, "contacts_count"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 219
    invoke-direct {p0, v4}, Lcom/duoqin/settings/RemoteLocatingSettings;->setLocationMode(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_locating"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoqin.remoteLocating"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "restart"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    const-string v1, "com.duoqin.remoteservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v4, 0x7f050026

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 54
    const-string v4, "remote_locating"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "remote_locating"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 57
    .local v0, "enabled":Z
    :goto_0
    iget-object v4, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 58
    iget-object v4, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 60
    const-string v4, "bind"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 61
    .local v1, "mBindingPreference":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    const-string v4, "unbind"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 63
    .local v3, "mUnBindPreference":Landroid/preference/Preference;
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    const-string v4, "terms_of_service"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 65
    .local v2, "mTermsOfServicePreference":Landroid/preference/Preference;
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    const-string v4, "control_log"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mControlLogPreference:Landroid/preference/Preference;

    .line 67
    iget-object v4, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mControlLogPreference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/duoqin/settings/RemoteLocatingSettings$1;

    invoke-direct {v5, p0}, Lcom/duoqin/settings/RemoteLocatingSettings$1;-><init>(Lcom/duoqin/settings/RemoteLocatingSettings;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 77
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "mBindingPreference":Landroid/preference/Preference;
    .end local v2    # "mTermsOfServicePreference":Landroid/preference/Preference;
    .end local v3    # "mUnBindPreference":Landroid/preference/Preference;
    :cond_0
    move v0, v5

    .line 55
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mTurnOnWifiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mTurnOnWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mTurnOnWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 161
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "remote_locating"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "remote_locating_token"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09093b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09093c

    new-instance v3, Lcom/duoqin/settings/RemoteLocatingSettings$4;

    invoke-direct {v3, p0}, Lcom/duoqin/settings/RemoteLocatingSettings$4;-><init>(Lcom/duoqin/settings/RemoteLocatingSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0900f6

    new-instance v3, Lcom/duoqin/settings/RemoteLocatingSettings$3;

    invoke-direct {v3, p0}, Lcom/duoqin/settings/RemoteLocatingSettings$3;-><init>(Lcom/duoqin/settings/RemoteLocatingSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/duoqin/settings/RemoteLocatingSettings$2;

    invoke-direct {v2, p0}, Lcom/duoqin/settings/RemoteLocatingSettings$2;-><init>(Lcom/duoqin/settings/RemoteLocatingSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 144
    :cond_1
    :goto_0
    return v1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/duoqin/settings/RemoteLocatingSettings;->setLocationMode(Z)V

    .line 121
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/duoqin/settings/RemoteLocatingSettings;->turnOnWifiIfNeed(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_locating"

    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRemoteLocatingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.duoqin.remoteLocating"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v2, "restart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v2, "com.duoqin.remoteservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 130
    :cond_4
    const-string v2, "bind"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.duoqin.remotelocating.Binding"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_5
    const-string v2, "unbind"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 135
    invoke-direct {p0}, Lcom/duoqin/settings/RemoteLocatingSettings;->unbind()V

    goto :goto_0

    .line 136
    :cond_6
    const-string v2, "terms_of_service"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    const-string v0, "http://www.duoqin.com/license.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :cond_7
    const-string v2, "control_log"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/duoqin/settings/RemoteServiceLogActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 150
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 153
    :cond_0
    return-void
.end method

.class public Lcom/duoqin/settings/DuoqinChatSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DuoqinChatSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mDuoqinChatNotificationSoundSwitch:Landroid/preference/SwitchPreference;

.field private mDuoqinChatNotificationSwitch:Landroid/preference/SwitchPreference;

.field private mDuoqinChatSwitch:Landroid/preference/SwitchPreference;

.field private mRequireBindDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/duoqin/settings/DuoqinChatSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/settings/DuoqinChatSettings;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/duoqin/settings/DuoqinChatSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/settings/DuoqinChatSettings;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v5, 0x7f050015

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 37
    const-string v5, "duoqin_chat"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatSwitch:Landroid/preference/SwitchPreference;

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "duoqin_chat"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v6, v5, :cond_0

    move v0, v6

    .line 40
    .local v0, "chatEnable":Z
    :goto_0
    iget-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 41
    iget-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 43
    const-string v5, "duoqin_chat_notification"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatNotificationSwitch:Landroid/preference/SwitchPreference;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "duoqin_chat_notification"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v6, v5, :cond_1

    move v1, v6

    .line 47
    .local v1, "chatNotificationEnabled":Z
    :goto_1
    iget-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatNotificationSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 48
    iget-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatNotificationSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 50
    const-string v5, "duoqin_chat_notification_sound"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatNotificationSoundSwitch:Landroid/preference/SwitchPreference;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "duoqin_chat_notification_sound"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v6, v5, :cond_2

    move v2, v6

    .line 54
    .local v2, "chatNotificationSoundEnabled":Z
    :goto_2
    iget-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatNotificationSoundSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 55
    iget-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatNotificationSoundSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    const-string v5, "bind"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 58
    .local v3, "mBindingPreference":Landroid/preference/Preference;
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    const-string v5, "terms_of_service"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 60
    .local v4, "mTermsOfServicePreference":Landroid/preference/Preference;
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 61
    return-void

    .end local v0    # "chatEnable":Z
    .end local v1    # "chatNotificationEnabled":Z
    .end local v2    # "chatNotificationSoundEnabled":Z
    .end local v3    # "mBindingPreference":Landroid/preference/Preference;
    .end local v4    # "mTermsOfServicePreference":Landroid/preference/Preference;
    :cond_0
    move v0, v7

    .line 38
    goto :goto_0

    .restart local v0    # "chatEnable":Z
    :cond_1
    move v1, v7

    .line 45
    goto :goto_1

    .restart local v1    # "chatNotificationEnabled":Z
    :cond_2
    move v2, v7

    .line 52
    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 65
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "key":Ljava/lang/String;
    const-string v7, "duoqin_chat"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "remote_locating_token"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "token":Ljava/lang/String;
    iget-object v7, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v3, :cond_2

    .line 70
    iget-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    .line 71
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f09093b

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f09093c

    new-instance v8, Lcom/duoqin/settings/DuoqinChatSettings$3;

    invoke-direct {v8, p0}, Lcom/duoqin/settings/DuoqinChatSettings$3;-><init>(Lcom/duoqin/settings/DuoqinChatSettings;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f0900f6

    new-instance v8, Lcom/duoqin/settings/DuoqinChatSettings$2;

    invoke-direct {v8, p0}, Lcom/duoqin/settings/DuoqinChatSettings$2;-><init>(Lcom/duoqin/settings/DuoqinChatSettings;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v7, Lcom/duoqin/settings/DuoqinChatSettings$1;

    invoke-direct {v7, p0}, Lcom/duoqin/settings/DuoqinChatSettings$1;-><init>(Lcom/duoqin/settings/DuoqinChatSettings;)V

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 98
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    .line 100
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v5, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 125
    .end local v3    # "token":Ljava/lang/String;
    :cond_1
    :goto_0
    return v6

    .line 102
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "duoqin_chat"

    iget-object v9, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_3

    move v5, v6

    :cond_3
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.duoqin.duoqinchat"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "restart"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string v5, "com.duoqin.remoteservice"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "token":Ljava/lang/String;
    :cond_4
    const-string v7, "duoqin_chat_notification"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "duoqin_chat_notification"

    iget-object v9, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatNotificationSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    move v5, v6

    :cond_5
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 113
    :cond_6
    const-string v7, "duoqin_chat_notification_sound"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "duoqin_chat_notification_sound"

    iget-object v9, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mDuoqinChatNotificationSoundSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_7

    move v5, v6

    :cond_7
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 116
    :cond_8
    const-string v5, "bind"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.duoqin.duoqinchat.Binding"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v5, 0x14000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v5, "terms_of_service"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    const-string v5, "http://www.duoqin.com/license.html"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 122
    .local v4, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 131
    iget-object v0, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/duoqin/settings/DuoqinChatSettings;->mRequireBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 134
    :cond_0
    return-void
.end method

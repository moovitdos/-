.class public Lcom/android/settings/VoiceBroadcastSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VoiceBroadcastSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mDuoqinTts:Landroid/preference/CheckBoxPreference;

.field private mDuoqinTtsSettings:Landroid/preference/Preference;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mVoiceCall:Landroid/preference/CheckBoxPreference;

.field private mVoiceContacts:Landroid/preference/CheckBoxPreference;

.field private mVoiceDate:Landroid/preference/CheckBoxPreference;

.field private mVoiceInCall:Landroid/preference/CheckBoxPreference;

.field private mVoiceMenu:Landroid/preference/CheckBoxPreference;

.field private mVoiceMessage:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VoiceBroadcastSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 215
    new-instance v0, Lcom/android/settings/VoiceBroadcastSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceBroadcastSettings$1;-><init>(Lcom/android/settings/VoiceBroadcastSettings;)V

    iput-object v0, p0, Lcom/android/settings/VoiceBroadcastSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    :try_start_0
    const-string v1, "VoiceBroadcastSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "menu:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "voice_for_menu"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    const-string v1, "VoiceBroadcastSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "voice_for_date"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v1, "VoiceBroadcastSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "voice_for_call"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v1, "VoiceBroadcastSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contacts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "voice_for_contacts"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "VoiceBroadcastSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incall:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "voice_for_incall"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v1, "VoiceBroadcastSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "voice_for_message"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v4, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceMenu:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "voice_for_menu"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceDate:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "voice_for_date"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 149
    iget-object v4, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceCall:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "voice_for_call"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 152
    iget-object v4, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceContacts:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "voice_for_contacts"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 155
    iget-object v4, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceInCall:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "voice_for_incall"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceMessage:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "voice_for_message"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    :goto_6
    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 161
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VoiceBroadcastSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v1, v3

    .line 143
    goto :goto_1

    :cond_1
    move v1, v3

    .line 146
    goto :goto_2

    :cond_2
    move v1, v3

    .line 149
    goto :goto_3

    :cond_3
    move v1, v3

    .line 152
    goto :goto_4

    :cond_4
    move v1, v3

    .line 155
    goto :goto_5

    :cond_5
    move v2, v3

    .line 158
    goto :goto_6
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 256
    const-string v0, "VoiceBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-nez p1, :cond_0

    .line 259
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "duoqin_tts"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceBroadcastSettings;->mDuoqinTts:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 76
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    .line 78
    const v2, 0x7f050041

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 80
    const-string v2, "voice_menu"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceMenu:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v2, "voice_date"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceDate:Landroid/preference/CheckBoxPreference;

    .line 82
    const-string v2, "voice_call"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceCall:Landroid/preference/CheckBoxPreference;

    .line 83
    const-string v2, "voice_contacts"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceContacts:Landroid/preference/CheckBoxPreference;

    .line 84
    const-string v2, "voice_incall"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceInCall:Landroid/preference/CheckBoxPreference;

    .line 85
    const-string v2, "voice_message"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceMessage:Landroid/preference/CheckBoxPreference;

    .line 86
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceMenu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceInCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    const-string v2, "duoqin_tts"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mDuoqinTts:Landroid/preference/CheckBoxPreference;

    .line 95
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "duoqin_tts"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 96
    .local v1, "ttsEnable":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mDuoqinTts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mDuoqinTts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    const-string v2, "duoqin_tts_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mDuoqinTtsSettings:Landroid/preference/Preference;

    .line 99
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mDuoqinTtsSettings:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceMenu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/VoiceBroadcastSettings;->mVoiceContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/VoiceBroadcastSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/VoiceBroadcastSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 122
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 123
    return-void
.end method

.method public onInitEngine(I)V
    .locals 8
    .param p1, "status"    # I

    .prologue
    const/4 v7, 0x1

    .line 230
    const/4 v0, -0x1

    .line 231
    .local v0, "isAvailable":I
    const/4 v1, 0x0

    .line 233
    .local v1, "loc":Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 237
    :cond_0
    if-nez v1, :cond_1

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 242
    iget-object v2, p0, Lcom/android/settings/VoiceBroadcastSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    .line 246
    :cond_2
    if-ltz v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090622

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 250
    :cond_4
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/high16 v8, 0x4000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 165
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "key":Ljava/lang/String;
    const-string v7, "duoqin_tts"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, p1

    .line 168
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 169
    .local v0, "duoqinTtsPreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.duoqin.tts.settings"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    .end local v0    # "duoqinTtsPreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v6

    .line 174
    .restart local v0    # "duoqinTtsPreference":Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "duoqin_tts"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 177
    .end local v0    # "duoqinTtsPreference":Landroid/preference/CheckBoxPreference;
    :cond_2
    const-string v7, "duoqin_tts_settings"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 178
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.duoqin.tts.settings"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v4, p1

    .line 184
    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 185
    .local v4, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 186
    .local v2, "isChecked":Z
    const-string v7, "VoiceBroadcastSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v7, "voice_menu"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 188
    iget-object v7, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "voice_for_menu"

    if-eqz v2, :cond_4

    move v5, v6

    :cond_4
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 190
    :cond_5
    const-string v7, "voice_date"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 191
    iget-object v7, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "voice_for_date"

    if-eqz v2, :cond_6

    move v5, v6

    :cond_6
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 193
    :cond_7
    const-string v7, "voice_call"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 194
    iget-object v7, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "voice_for_call"

    if-eqz v2, :cond_8

    move v5, v6

    :cond_8
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 196
    :cond_9
    const-string v7, "voice_contacts"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 197
    iget-object v7, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "voice_for_contacts"

    if-eqz v2, :cond_a

    move v5, v6

    :cond_a
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 199
    :cond_b
    const-string v7, "voice_incall"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 200
    iget-object v7, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "voice_for_incall"

    if-eqz v2, :cond_c

    move v5, v6

    :cond_c
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 202
    :cond_d
    const-string v7, "voice_message"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 203
    iget-object v7, p0, Lcom/android/settings/VoiceBroadcastSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "voice_for_message"

    if-eqz v2, :cond_e

    move v5, v6

    :cond_e
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/VoiceBroadcastSettings;->updateState()V

    .line 114
    return-void
.end method

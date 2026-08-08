.class public Lcom/android/settings/tts/TtsEngineSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mEngineSettingsIntent:Landroid/content/Intent;

.field private mEngineSettingsPreference:Landroid/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInstallVoicesPreference:Landroid/preference/Preference;

.field private final mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalePreference:Landroid/preference/ListPreference;

.field private mSelectedLocaleIndex:I

.field private mSystemLocaleIndex:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mVoiceDataDetails:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 96
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    iput v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    .line 67
    iput v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSystemLocaleIndex:I

    .line 69
    new-instance v0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 85
    new-instance v0, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tts/TtsEngineSettingsFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/tts/TtsEngineSettingsFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->checkTtsData()V

    return-void
.end method

.method private final checkTtsData()V
    .locals 5

    .prologue
    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEngineLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEngineName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installVoiceData()V
    .locals 5

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    :try_start_0
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing voice data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install TTS data, no acitivty found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLocalePreference(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 252
    if-gez p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const v1, 0x7f090611

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDefaultLocalePref(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "availableLangs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 192
    :cond_0
    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 248
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "currentLocale":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v4, "entryPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_6

    .line 201
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, "langCountryVariant":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 203
    .local v10, "loc":Ljava/util/Locale;
    array-length v11, v9

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 204
    new-instance v10, Ljava/util/Locale;

    .end local v10    # "loc":Ljava/util/Locale;
    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v10    # "loc":Ljava/util/Locale;
    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    .line 212
    new-instance v11, Landroid/util/Pair;

    invoke-virtual {v10}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 205
    :cond_4
    array-length v11, v9

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 206
    new-instance v10, Ljava/util/Locale;

    .end local v10    # "loc":Ljava/util/Locale;
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-direct {v10, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v10    # "loc":Ljava/util/Locale;
    goto :goto_2

    .line 207
    :cond_5
    array-length v11, v9

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    .line 208
    new-instance v10, Ljava/util/Locale;

    .end local v10    # "loc":Ljava/util/Locale;
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    const/4 v13, 0x2

    aget-object v13, v9, v13

    invoke-direct {v10, v11, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v10    # "loc":Ljava/util/Locale;
    goto :goto_2

    .line 218
    .end local v9    # "langCountryVariant":[Ljava/lang/String;
    .end local v10    # "loc":Ljava/util/Locale;
    :cond_6
    new-instance v11, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;

    invoke-direct {v11, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    invoke-static {v4, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v11}, Landroid/speech/tts/TtsEngines;->getDefaultLocale()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "defaultLocaleStr":Ljava/lang/String;
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    .line 229
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSystemLocaleIndex:I

    .line 230
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v2, v11, [Ljava/lang/CharSequence;

    .line 231
    .local v2, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v5, v11, [Ljava/lang/CharSequence;

    .line 232
    .local v5, "entryValues":[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 233
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 234
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 235
    iput v6, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    .line 237
    :cond_7
    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 238
    iput v6, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSystemLocaleIndex:I

    .line 240
    :cond_8
    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    aput-object v11, v2, v6

    .line 241
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    aput-object v11, v5, v6

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_3

    .line 244
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 245
    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 246
    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    iget v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    invoke-direct {p0, v11}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->setLocalePreference(I)V

    goto/16 :goto_0
.end method

.method private updateLanguageTo(Ljava/lang/String;)V
    .locals 8
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v2, -0x1

    .line 302
    .local v2, "selectedLocaleIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    move v2, v0

    .line 309
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 310
    const-string v3, "TtsEngineSettings"

    const-string v4, "updateLanguageTo called with unknown locale argument"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1
    :goto_1
    return-void

    .line 302
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_3
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    iput v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    .line 316
    iget v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    iget v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSystemLocaleIndex:I

    if-ne v3, v4, :cond_4

    .line 318
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    invoke-static {p1}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "localeArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 326
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Ljava/util/Locale;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-direct {v4, v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_1

    .line 320
    .end local v1    # "localeArray":[Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateVoiceDetails()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string v3, "availableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    .local v0, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string v3, "unavailableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 175
    .local v1, "unavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 181
    :goto_0
    if-nez v0, :cond_1

    .line 182
    const-string v2, "TtsEngineSettings"

    const-string v3, "TTS data check failed (available == null)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    :goto_1
    return-void

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateDefaultLocalePref(Ljava/util/ArrayList;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 161
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 162
    iput-object p3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    .line 163
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateVoiceDetails()V

    .line 165
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v1, 0x7f05003e

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 103
    new-instance v1, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 105
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 106
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string v1, "tts_default_lang"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    .line 107
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string v1, "tts_engine_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    .line 109
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    const-string v1, "tts_install_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    .line 111
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090629

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    new-array v2, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    new-array v2, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "voices"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    .line 131
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 135
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->checkTtsData()V

    .line 137
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 146
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 294
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateLanguageTo(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 280
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->installVoiceData()V

    .line 288
    :goto_0
    return v0

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

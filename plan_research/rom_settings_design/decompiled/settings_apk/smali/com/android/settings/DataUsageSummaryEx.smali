.class public Lcom/android/settings/DataUsageSummaryEx;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataUsageSummaryEx.java"


# instance fields
.field private SIM_CARD_1:I

.field private SIM_CARD_2:I

.field private WLAN:I

.field private mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

.field private mDataUsageSettingsSim2:Landroid/preference/PreferenceScreen;

.field private mDataUsageSettingsWlan:Landroid/preference/PreferenceScreen;

.field private mSimManager:Landroid/sim/SimManager;

.field private mSimStateReceive:Landroid/content/BroadcastReceiver;

.field private mSims:[Landroid/sim/Sim;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_1:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_2:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/DataUsageSummaryEx;->WLAN:I

    .line 166
    new-instance v0, Lcom/android/settings/DataUsageSummaryEx$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummaryEx$1;-><init>(Lcom/android/settings/DataUsageSummaryEx;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummaryEx;->mSimStateReceive:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DataUsageSummaryEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummaryEx;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummaryEx;->buildPreference()V

    return-void
.end method

.method private buildPreference()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 104
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 105
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSimManager:Landroid/sim/SimManager;

    if-eqz v6, :cond_0

    .line 106
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v6}, Landroid/sim/SimManager;->getSims()[Landroid/sim/Sim;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    .line 108
    :cond_0
    const-string v6, "DataUsageSummaryEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSims.length:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    array-length v6, v6

    if-lez v6, :cond_c

    .line 110
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 111
    .local v4, "mNumSlots":I
    const-string v6, "DataUsageSummaryEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mNumSlots:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v6, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_1:I

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    .line 113
    .local v2, "isSim1CardExist":Z
    const/4 v3, 0x0

    .line 114
    .local v3, "isSim2CardExist":Z
    if-le v4, v7, :cond_1

    .line 115
    iget v6, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_2:I

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    .line 117
    :cond_1
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    array-length v6, v6

    if-ne v6, v7, :cond_6

    .line 118
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 119
    :cond_2
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 120
    iget-object v9, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v10, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_1:I

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v11, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_1:I

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/sim/Sim;->getPhoneId()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    array-length v6, v6

    if-ge v1, v6, :cond_d

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sim_standby"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "tmpStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_a

    move v0, v7

    .line 139
    .local v0, "bStandy":Z
    :goto_3
    const-string v6, "DataUsageSummaryEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "simIsStandy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 141
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    .end local v0    # "bStandy":Z
    .end local v1    # "i":I
    .end local v5    # "tmpStr":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v10, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_1:I

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 123
    :cond_6
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    array-length v6, v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 124
    if-eqz v2, :cond_7

    .line 125
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 126
    iget-object v9, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v10, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_1:I

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v11, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_1:I

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/sim/Sim;->getPhoneId()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    :cond_7
    if-eqz v3, :cond_3

    .line 130
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim2:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 131
    iget-object v9, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim2:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v10, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_2:I

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v11, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_2:I

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/sim/Sim;->getPhoneId()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 126
    :cond_8
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v10, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_1:I

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 131
    :cond_9
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v10, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_2:I

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .restart local v1    # "i":I
    .restart local v5    # "tmpStr":Ljava/lang/String;
    :cond_a
    move v0, v8

    .line 137
    goto/16 :goto_3

    .line 142
    .restart local v0    # "bStandy":Z
    :cond_b
    if-nez v0, :cond_4

    if-ne v1, v7, :cond_4

    .line 143
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim2:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 147
    .end local v0    # "bStandy":Z
    .end local v1    # "i":I
    .end local v2    # "isSim1CardExist":Z
    .end local v3    # "isSim2CardExist":Z
    .end local v4    # "mNumSlots":I
    .end local v5    # "tmpStr":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 148
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0908ee

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 149
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    :cond_d
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummaryEx;->isWifiSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 154
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsWlan:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 155
    iget-object v6, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsWlan:Landroid/preference/PreferenceScreen;

    const v7, 0x7f090718

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 158
    :cond_e
    return-void
.end method

.method private isWifiSupported(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 178
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private startPreferencePanel(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DATAUSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "subId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v1, "DataUsageSummaryEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreferencePanel: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 83
    const-string v1, "data_usage_settings_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 84
    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "data_usage_settings_sim1"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    .line 85
    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "data_usage_settings_sim2"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim2:Landroid/preference/PreferenceScreen;

    .line 87
    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "data_usage_settings_wlan"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsWlan:Landroid/preference/PreferenceScreen;

    .line 90
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mSimManager:Landroid/sim/SimManager;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummaryEx;->mSimStateReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mSimStateReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 164
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 194
    const-string v1, "DataUsageSummaryEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: preference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, -0x1

    .line 196
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim1:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v2, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_1:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/sim/Sim;->getPhoneId()I

    move-result v0

    .line 208
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummaryEx;->startPreferencePanel(I)V

    .line 210
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim2:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsSim2:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mSims:[Landroid/sim/Sim;

    iget v2, p0, Lcom/android/settings/DataUsageSummaryEx;->SIM_CARD_2:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/sim/Sim;->getPhoneId()I

    move-result v0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsWlan:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/DataUsageSummaryEx;->mDataUsageSettingsWlan:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_2

    .line 202
    iget v0, p0, Lcom/android/settings/DataUsageSummaryEx;->WLAN:I

    goto :goto_0

    .line 204
    :cond_2
    const-string v1, "TAG"

    const-string v2, "This is an exception click!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummaryEx;->buildPreference()V

    .line 101
    return-void
.end method

.class public Lcom/android/settings/deviceinfo/ImeiInformation;
.super Landroid/preference/PreferenceActivity;
.source "ImeiInformation.java"


# static fields
.field private static final PROPERTY_VALUE:Ljava/lang/String;


# instance fields
.field private isMultiSIM:Z

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "ro.operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/ImeiInformation;->PROPERTY_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    return-void
.end method

.method private initPreferenceScreen(Z)V
    .locals 3
    .param p1, "isMultiSIM"    # Z

    .prologue
    .line 82
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 83
    .local v0, "slotCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "slotId":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 84
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 85
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->setPreferenceValue(I)V

    .line 86
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->setNewKey(I)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "slotCount":I
    .end local v1    # "slotId":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    .restart local v0    # "slotCount":I
    .restart local v1    # "slotId":I
    :cond_1
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 177
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_0
    return-void
.end method

.method private setNewKey(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 136
    .local v4, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 137
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 138
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 139
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "key":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v3, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->updateTitle(Landroid/preference/Preference;I)V

    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private setPreferenceValue(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 91
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 93
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 95
    const-string v1, "meid_number"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "min_number"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "min_number"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f090324

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 102
    :cond_0
    const-string v1, "prl_version"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "imei_sv"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 105
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 107
    const-string v1, "icc_id"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "imei"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    const-string v1, "imei"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 113
    const-string v1, "icc_id"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    const-string v1, "cmcc"

    sget-object v2, Lcom/android/settings/deviceinfo/ImeiInformation;->PROPERTY_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    const-string v1, "imei"

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_1
    const-string v1, "imei_sv"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "prl_version"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 125
    const-string v1, "meid_number"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 126
    const-string v1, "min_number"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 127
    const-string v1, "icc_id"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    const-string v1, "imei"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 162
    .local v0, "preference":Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 166
    :cond_0
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    :cond_1
    return-void
.end method

.method private updateTitle(Landroid/preference/Preference;I)V
    .locals 7
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "slotId"    # I

    .prologue
    .line 149
    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0908e7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v1, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v1, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 63
    iget-object v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 64
    iget-object v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 73
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 75
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    .line 76
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->initPreferenceScreen(Z)V

    .line 77
    return-void
.end method

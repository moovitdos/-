.class public Lcom/sprd/settings/sim/SimInfoSetActivity;
.super Landroid/preference/PreferenceActivity;
.source "SimInfoSetActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNumber:Landroid/preference/EditTextPreference;

.field private mOperator:Landroid/preference/Preference;

.field private mPhoneId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/sim/SimInfoSetActivity;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimInfoSetActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/sim/SimInfoSetActivity;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimInfoSetActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/sim/SimInfoSetActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/SimInfoSetActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    return v0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v1, 0x1

    .line 17
    .local v1, "flag":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return v1

    .line 18
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "com.android.carrierconfigs"

    invoke-static {p0, v0}, Lcom/sprd/settings/sim/SimInfoSetActivity;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .prologue
    :cond_0
    const v11, 0x7f09095c

    const v10, 0x7f09095b

    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 67
    .local v1, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v1, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 68
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iput-object p0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "phoneId"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    .line 74
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v3

    .line 75
    .local v3, "simManager":Landroid/sim/SimManager;
    iget v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    invoke-virtual {v3, v6}, Landroid/sim/SimManager;->getName(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "simName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/sim/SimManager;->getSims()[Landroid/sim/Sim;

    move-result-object v5

    .line 77
    .local v5, "sims":[Landroid/sim/Sim;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-nez v6, :cond_2

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 81
    .local v2, "root":Landroid/preference/PreferenceScreen;
    new-instance v6, Landroid/preference/EditTextPreference;

    invoke-direct {v6, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    .line 82
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 83
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v10}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 84
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name_setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 85
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 86
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 87
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 89
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/sprd/settings/sim/SimInfoSetActivity$1;

    invoke-direct {v7, p0}, Lcom/sprd/settings/sim/SimInfoSetActivity$1;-><init>(Lcom/sprd/settings/sim/SimInfoSetActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 134
    iget v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    invoke-virtual {v3, v6}, Landroid/sim/SimManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "PhoneNumber":Ljava/lang/String;
    new-instance v6, Landroid/preference/EditTextPreference;

    invoke-direct {v6, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    .line 136
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 137
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v11}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 138
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "number_setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 139
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 140
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 141
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 142
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/sprd/settings/sim/SimInfoSetActivity$2;

    invoke-direct {v7, p0}, Lcom/sprd/settings/sim/SimInfoSetActivity$2;-><init>(Lcom/sprd/settings/sim/SimInfoSetActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    sget-boolean v6, Lcom/android/settings/Settings;->CU_SUPPORT:Z

    if-eqz v6, :cond_3

    .line 182
    new-instance v6, Landroid/preference/Preference;

    iget-object v7, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mOperator:Landroid/preference/Preference;

    .line 183
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mOperator:Landroid/preference/Preference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "operator_setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 184
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mOperator:Landroid/preference/Preference;

    const v7, 0x7f09031b

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 185
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mOperator:Landroid/preference/Preference;

    const v7, 0x7f09031c

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 186
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mOperator:Landroid/preference/Preference;

    new-instance v7, Lcom/sprd/settings/sim/SimInfoSetActivity$3;

    invoke-direct {v7, p0}, Lcom/sprd/settings/sim/SimInfoSetActivity$3;-><init>(Lcom/sprd/settings/sim/SimInfoSetActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    iget-object v6, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mOperator:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_3
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 201
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimInfoSetActivity;->refreshSimInfo()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 227
    iget-object v2, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v1

    .line 228
    .local v1, "simManager":Landroid/sim/SimManager;
    iget-object v2, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_0

    .line 229
    iget v3, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/sim/SimManager;->setName(ILjava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimInfoSetActivity;->refreshSimInfo()V

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_2

    move-object v0, p2

    .line 232
    check-cast v0, Ljava/lang/String;

    .line 233
    .local v0, "PhoneNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const-string v0, ""

    .line 236
    :cond_1
    const-string v2, "MSISDN"

    iget v3, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/sim/SimManager;->setMsisdn(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimInfoSetActivity;->refreshSimInfo()V

    .line 239
    .end local v0    # "PhoneNumber":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method refreshSimInfo()V
    .locals 5

    .prologue
    .line 215
    iget-object v3, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v2

    .line 216
    .local v2, "simManager":Landroid/sim/SimManager;
    iget v3, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    invoke-virtual {v2, v3}, Landroid/sim/SimManager;->getName(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "name":Ljava/lang/String;
    iget v3, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mPhoneId:I

    invoke-virtual {v2, v3}, Landroid/sim/SimManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    const v4, 0x7f09095d

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 223
    :goto_0
    iget-object v3, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    return-void

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/sprd/settings/sim/SimInfoSetActivity;->mNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

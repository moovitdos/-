.class public Lcom/android/settings/MobileSimChoose;
.super Landroid/preference/PreferenceActivity;
.source "MobileSimChoose.java"


# static fields
.field public static CLASS_NAME:Ljava/lang/String;

.field public static CLASS_NAME_OTHER:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private mOtherPref:Landroid/preference/Preference;

.field private mPhoneNumber:I

.field private mSimPref:[Landroid/preference/Preference;

.field private myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "package_name"

    sput-object v0, Lcom/android/settings/MobileSimChoose;->PACKAGE_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "class_name"

    sput-object v0, Lcom/android/settings/MobileSimChoose;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const-string v0, "class_name_other"

    sput-object v0, Lcom/android/settings/MobileSimChoose;->CLASS_NAME_OTHER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MobileSimChoose;->mPhoneNumber:I

    .line 74
    new-instance v0, Lcom/android/settings/MobileSimChoose$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MobileSimChoose$1;-><init>(Lcom/android/settings/MobileSimChoose;)V

    iput-object v0, p0, Lcom/android/settings/MobileSimChoose;->myReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MobileSimChoose;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MobileSimChoose;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/MobileSimChoose;->updateSimList()V

    return-void
.end method

.method private isSimAvailable(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim_standby"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 101
    .local v1, "isStandby":Z
    :goto_0
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 103
    .local v0, "isSimReady":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    .end local v0    # "isSimReady":Z
    .end local v1    # "isStandby":Z
    :cond_0
    move v1, v3

    .line 99
    goto :goto_0

    .restart local v1    # "isStandby":Z
    :cond_1
    move v0, v3

    .line 101
    goto :goto_1

    .restart local v0    # "isSimReady":Z
    :cond_2
    move v2, v3

    .line 103
    goto :goto_2
.end method

.method private updateSimList()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    .line 87
    .local v1, "isAirplaneModeOn":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "radio_operation"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 89
    .local v2, "isRadioBusy":Z
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v5, p0, Lcom/android/settings/MobileSimChoose;->mPhoneNumber:I

    if-ge v0, v5, :cond_3

    .line 90
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings/MobileSimChoose;->isSimAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/android/settings/MobileSimChoose;->mSimPref:[Landroid/preference/Preference;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 89
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "isAirplaneModeOn":Z
    .end local v2    # "isRadioBusy":Z
    :cond_0
    move v1, v4

    .line 85
    goto :goto_0

    .restart local v1    # "isAirplaneModeOn":Z
    :cond_1
    move v2, v4

    .line 87
    goto :goto_1

    .line 93
    .restart local v0    # "i":I
    .restart local v2    # "isRadioBusy":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/MobileSimChoose;->mSimPref:[Landroid/preference/Preference;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 96
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f09097b

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    iput v4, p0, Lcom/android/settings/MobileSimChoose;->mPhoneNumber:I

    .line 29
    iget v4, p0, Lcom/android/settings/MobileSimChoose;->mPhoneNumber:I

    new-array v4, v4, [Landroid/preference/Preference;

    iput-object v4, p0, Lcom/android/settings/MobileSimChoose;->mSimPref:[Landroid/preference/Preference;

    .line 32
    const v4, 0x7f05001e

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 34
    .local v3, "prefSet":Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings/MobileSimChoose;->mPhoneNumber:I

    if-ge v1, v4, :cond_0

    .line 35
    iget-object v4, p0, Lcom/android/settings/MobileSimChoose;->mSimPref:[Landroid/preference/Preference;

    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v5, v4, v1

    .line 36
    iget-object v4, p0, Lcom/android/settings/MobileSimChoose;->mSimPref:[Landroid/preference/Preference;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "title_name"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    new-array v7, v9, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v4, p0, Lcom/android/settings/MobileSimChoose;->mSimPref:[Landroid/preference/Preference;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "title_name"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    new-array v7, v9, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 42
    iget-object v4, p0, Lcom/android/settings/MobileSimChoose;->mSimPref:[Landroid/preference/Preference;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lcom/android/settings/MobileSimChoose;->CLASS_NAME_OTHER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 46
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settings/MobileSimChoose;->mOtherPref:Landroid/preference/Preference;

    .line 47
    iget-object v4, p0, Lcom/android/settings/MobileSimChoose;->mOtherPref:Landroid/preference/Preference;

    const v5, 0x7f090835

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 48
    iget-object v4, p0, Lcom/android/settings/MobileSimChoose;->mOtherPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE_DONE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v4, p0, Lcom/android/settings/MobileSimChoose;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/MobileSimChoose;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/android/settings/MobileSimChoose;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lcom/android/settings/MobileSimChoose;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/settings/MobileSimChoose;->mPhoneNumber:I

    if-ge v0, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/settings/MobileSimChoose;->mSimPref:[Landroid/preference/Preference;

    aget-object v2, v2, v0

    if-ne p2, v2, :cond_2

    .line 114
    const-string v2, "sub_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MobileSimChoose;->mOtherPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 119
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/android/settings/MobileSimChoose;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lcom/android/settings/MobileSimChoose;->CLASS_NAME_OTHER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 124
    const/4 v2, 0x1

    return v2

    .line 112
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/MobileSimChoose;->updateSimList()V

    .line 66
    return-void
.end method

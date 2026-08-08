.class public Lcom/sprd/settings/sim/MobileSimChooseUUI;
.super Landroid/app/ListActivity;
.source "MobileSimChooseUUI.java"


# static fields
.field public static ACTIVITY_TITLE:Ljava/lang/String;

.field public static CLASS_NAME:Ljava/lang/String;

.field public static CLASS_NAME_OTHER:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;

.field public static PIKEL_UI_SUPPORT:Z


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mPhoneNumber:I

.field private mRadioBusyObserver:Landroid/database/ContentObserver;

.field private mSims:[Landroid/sim/Sim;

.field private myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "pikel_ui_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->PIKEL_UI_SUPPORT:Z

    .line 31
    const-string v0, "package_name"

    sput-object v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->PACKAGE_NAME:Ljava/lang/String;

    .line 32
    const-string v0, "class_name"

    sput-object v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->CLASS_NAME:Ljava/lang/String;

    .line 33
    const-string v0, "class_name_other"

    sput-object v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->CLASS_NAME_OTHER:Ljava/lang/String;

    .line 34
    const-string v0, "activity_title"

    sput-object v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->ACTIVITY_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/sprd/settings/sim/MobileSimChooseUUI$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sprd/settings/sim/MobileSimChooseUUI$1;-><init>(Lcom/sprd/settings/sim/MobileSimChooseUUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mRadioBusyObserver:Landroid/database/ContentObserver;

    .line 77
    new-instance v0, Lcom/sprd/settings/sim/MobileSimChooseUUI$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sprd/settings/sim/MobileSimChooseUUI$2;-><init>(Lcom/sprd/settings/sim/MobileSimChooseUUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 191
    new-instance v0, Lcom/sprd/settings/sim/MobileSimChooseUUI$3;

    invoke-direct {v0, p0}, Lcom/sprd/settings/sim/MobileSimChooseUUI$3;-><init>(Lcom/sprd/settings/sim/MobileSimChooseUUI;)V

    iput-object v0, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->myReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/sim/MobileSimChooseUUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/MobileSimChooseUUI;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sprd/settings/sim/MobileSimChooseUUI;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/sim/MobileSimChooseUUI;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/MobileSimChooseUUI;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/sim/MobileSimChooseUUI;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/MobileSimChooseUUI;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public isRadioBusy()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "radio_operation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x1

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 42
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "radio_operation"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mPhoneNumber:I

    .line 52
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mPhoneNumber:I

    if-ge v1, v3, :cond_0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v3, "MobileSimChooseUUI"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 144
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    iget-object v0, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 148
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 100
    iget-object v7, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mSims:[Landroid/sim/Sim;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/sim/Sim;->getPhoneId()I

    move-result v4

    .line 101
    .local v4, "phoneId":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Lcom/sprd/settings/sim/MobileSimChooseUUI;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Lcom/sprd/settings/sim/MobileSimChooseUUI;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Lcom/sprd/settings/sim/MobileSimChooseUUI;->CLASS_NAME_OTHER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "otherCls":Ljava/lang/String;
    const-string v5, "com.android.settings"

    .line 105
    const-string v0, "com.android.settings.deviceinfo.StatusSim"

    .line 107
    if-eqz v5, :cond_0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v7, p3, :cond_2

    .line 113
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    :goto_1
    const-string v7, "phone"

    invoke-static {v7, v4}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 120
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 121
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.PUK_UNLOCK_REQUESTED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "intentPUK":Landroid/content/Intent;
    const-string v7, "phone_id"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    .end local v2    # "intentPUK":Landroid/content/Intent;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v7, "sub_id"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 127
    .restart local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/sprd/settings/sim/MobileSimChooseUUI;->refreshSimList()V

    .line 64
    return-void
.end method

.method public refreshSimList()V
    .locals 18

    .prologue
    .line 152
    invoke-static/range {p0 .. p0}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v16

    .line 153
    .local v16, "sm":Landroid/sim/SimManager;
    invoke-virtual/range {v16 .. v16}, Landroid/sim/SimManager;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v15

    .line 154
    .local v15, "sims":[Landroid/sim/Sim;
    const-string v3, "MobileSimChooseUUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sims.length = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v7, v15

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    array-length v3, v15

    if-nez v3, :cond_0

    .line 156
    const-string v3, "MobileSimChooseUUI"

    const-string v4, "allSimAbsent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 189
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 161
    .local v13, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/sprd/settings/sim/MobileSimChooseUUI;->ACTIVITY_TITLE:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 162
    .local v17, "title":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    sget-object v3, Lcom/sprd/settings/sim/MobileSimChooseUUI;->CLASS_NAME_OTHER:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/sprd/settings/sim/MobileSimChooseUUI;->PIKEL_UI_SUPPORT:Z

    if-nez v3, :cond_3

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090835

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "other":Ljava/lang/String;
    new-instance v2, Landroid/sim/Sim;

    const/4 v3, -0x1

    const-string v4, ""

    const/4 v6, -0x1

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/sim/Sim;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 168
    .local v2, "sim":Landroid/sim/Sim;
    array-length v3, v15

    add-int/lit8 v14, v3, 0x1

    .line 169
    .local v14, "len":I
    new-array v3, v14, [Landroid/sim/Sim;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mSims:[Landroid/sim/Sim;

    .line 170
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    add-int/lit8 v3, v14, -0x1

    if-ge v12, v3, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mSims:[Landroid/sim/Sim;

    aget-object v4, v15, v12

    aput-object v4, v3, v12

    .line 170
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 173
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mSims:[Landroid/sim/Sim;

    add-int/lit8 v4, v14, -0x1

    aput-object v2, v3, v4

    .line 178
    .end local v2    # "sim":Landroid/sim/Sim;
    .end local v5    # "other":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "len":I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/sprd/settings/sim/MobileSimChooseUUI;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sprd/settings/sim/MobileSimChooseUUI;->isRadioBusy()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v11, 0x1

    .line 179
    .local v11, "enabled":Z
    :goto_3
    if-eqz v11, :cond_5

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    :goto_4
    new-instance v6, Landroid/sim/SimListAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mSims:[Landroid/sim/Sim;

    const/4 v9, 0x0

    const v10, 0x10900a3

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Landroid/sim/SimListAdapter;-><init>(Landroid/content/Context;[Landroid/sim/Sim;Landroid/view/View$OnClickListener;IZ)V

    .line 188
    .local v6, "adapter":Landroid/sim/SimListAdapter;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 175
    .end local v6    # "adapter":Landroid/sim/SimListAdapter;
    .end local v11    # "enabled":Z
    :cond_3
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sprd/settings/sim/MobileSimChooseUUI;->mSims:[Landroid/sim/Sim;

    goto :goto_2

    .line 178
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 182
    .restart local v11    # "enabled":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4
.end method

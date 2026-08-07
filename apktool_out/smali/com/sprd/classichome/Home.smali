.class public Lcom/sprd/classichome/Home;
.super Lcom/sprd/classichome/BaseHomeActivity;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/Home$ScreenStatusReceiver;,
        Lcom/sprd/classichome/Home$AnonymousClass5;,
        Lcom/sprd/classichome/Home$AnonymousClass4;,
        Lcom/sprd/classichome/Home$WeatherAsyncTask;
    }
.end annotation


# static fields
.field private static CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

.field private mCallerIdView:Landroid/widget/TextView;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDpadLeftCn:Landroid/content/ComponentName;

.field private mDpadRightCn:Landroid/content/ComponentName;

.field private mDpadStarCn:Landroid/content/ComponentName;

.field private mDpadUpCn:Landroid/content/ComponentName;

.field private mHebrewDateView:Landroid/widget/TextView;

.field private mHomeFlipper:Landroid/widget/ViewFlipper;

.field private mHomeStatus:Lcom/sprd/classichome/HomeStatusView;

.field private mLeftCn:Landroid/content/ComponentName;

.field private mNavKeySettingsReceiver:Landroid/content/BroadcastReceiver;

.field private mRightCn:Landroid/content/ComponentName;

.field private mScreenStatusReceiver:Lcom/sprd/classichome/Home$ScreenStatusReceiver;

.field private mWeatherImg:Landroid/widget/ImageView;

.field private mWeatherTask:Lcom/sprd/classichome/Home$WeatherAsyncTask;

.field private mWeatherView:Landroid/widget/TextView;

.field private mWidgetContainerPage1:Landroid/view/ViewGroup;

.field private mWidgetContainerPage2:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "content://com.duoqin.weather/city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sprd/classichome/Home;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/sprd/classichome/BaseHomeActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/sprd/classichome/Home$1;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/Home$1;-><init>(Lcom/sprd/classichome/Home;)V

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .line 61
    new-instance v0, Lcom/sprd/classichome/Home$2;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/Home$2;-><init>(Lcom/sprd/classichome/Home;)V

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mNavKeySettingsReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v0, Lcom/sprd/classichome/Home$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sprd/classichome/Home$3;-><init>(Lcom/sprd/classichome/Home;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/Home;)Lcom/sprd/classichome/HomeStatusView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sprd/classichome/Home;->mHomeStatus:Lcom/sprd/classichome/HomeStatusView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mDpadLeftCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mDpadRightCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mDpadUpCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$502(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .line 35
    sget-object v0, Lcom/sprd/classichome/Home;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 129
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 p0, 0x1

    return p0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    return v0
.end method

.method private registerScreenStatusReceiver()V
    .locals 2

    .line 170
    new-instance v0, Lcom/sprd/classichome/Home$ScreenStatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sprd/classichome/Home$ScreenStatusReceiver;-><init>(Lcom/sprd/classichome/Home;Lcom/sprd/classichome/Home$1;)V

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mScreenStatusReceiver:Lcom/sprd/classichome/Home$ScreenStatusReceiver;

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/sprd/classichome/Home;->mScreenStatusReceiver:Lcom/sprd/classichome/Home$ScreenStatusReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sprd/classichome/Home;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    return-void
.end method

.method private setupViews()V
    .locals 4

    .line 177
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/HomeStatusView;

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mHomeStatus:Lcom/sprd/classichome/HomeStatusView;

    .line 178
    invoke-static {p0}, Lcom/sprd/classichome/util/UtilitiesExt;->getLFComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    .line 179
    invoke-static {p0}, Lcom/sprd/classichome/util/UtilitiesExt;->getRTComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    .line 180
    const/16 v0, 0x15

    invoke-static {p0, v0}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mDpadLeftCn:Landroid/content/ComponentName;

    .line 181
    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mDpadRightCn:Landroid/content/ComponentName;

    .line 182
    const/16 v0, 0x13

    invoke-static {p0, v0}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mDpadUpCn:Landroid/content/ComponentName;

    .line 183
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mDpadStarCn:Landroid/content/ComponentName;

    .line 184
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->setSoftKey()V

    .line 185
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mWeatherView:Landroid/widget/TextView;

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mCallerIdView:Landroid/widget/TextView;

    .line 188
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sprd/classichome/Home;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sprd/classichome/Home;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mHebrewDateView:Landroid/widget/TextView;

    .line 190
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "home_flipper"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    .line 191
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widget_container_page1"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mWidgetContainerPage1:Landroid/view/ViewGroup;

    .line 192
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widget_container_page2"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mWidgetContainerPage2:Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->refreshWidgets()V

    .line 194
    return-void
.end method

.method private updateStatusInfo()V
    .locals 13

    .line 88
    const-string v0, "number"

    const-string v1, "name"

    :try_start_0
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mWeatherView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 89
    iget-object v3, p0, Lcom/sprd/classichome/Home;->mWeatherView:Landroid/widget/TextView;

    .line 90
    iget-object v4, p0, Lcom/sprd/classichome/Home;->mCallerIdView:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "date"

    filled-new-array {v1, v0, v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "type = ? AND is_read = ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v10

    const-string v10, "date DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 92
    if-eqz v5, :cond_3

    .line 93
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isMissedCallsEnabled(Landroid/content/Context;)Z

    move-result v6

    const/16 v7, 0x8

    if-nez v6, :cond_0

    .line 94
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 95
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void

    .line 98
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 99
    if-lez v6, :cond_2

    .line 100
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u05e9\u05d9\u05d7\u05d5\u05ea \u05e9\u05dc\u05d0 \u05e0\u05e2\u05e0\u05d5"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_3
    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    :goto_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 261
    invoke-super {p0, p1, p2, p3}, Lcom/sprd/classichome/BaseHomeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 263
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Lcom/sprd/classichome/BaseHomeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const p1, 0x7f040005

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/Home;->setContentView(I)V

    .line 162
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/HomeApplication;

    iget-object v0, p0, Lcom/sprd/classichome/Home;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    invoke-virtual {p1, v0}, Lcom/sprd/classichome/HomeApplication;->setHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)Lcom/sprd/classichome/model/LauncherModel;

    .line 163
    invoke-direct {p0}, Lcom/sprd/classichome/Home;->setupViews()V

    .line 164
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/Home;->enableWallpaperShowing(Z)V

    .line 165
    iget-object p1, p0, Lcom/sprd/classichome/Home;->mNavKeySettingsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.duoqin.navkeysettings.update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sprd/classichome/Home;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    invoke-direct {p0}, Lcom/sprd/classichome/Home;->registerScreenStatusReceiver()V

    .line 167
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 306
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/HomeApplication;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/HomeApplication;->removeHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    goto :goto_1

    .line 307
    :catch_1
    move-exception v0

    .line 310
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mNavKeySettingsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/Home;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 312
    goto :goto_2

    .line 311
    :catch_2
    move-exception v0

    .line 314
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mScreenStatusReceiver:Lcom/sprd/classichome/Home$ScreenStatusReceiver;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mScreenStatusReceiver:Lcom/sprd/classichome/Home$ScreenStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/Home;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 318
    :cond_0
    goto :goto_3

    .line 317
    :catch_3
    move-exception v0

    .line 319
    :goto_3
    invoke-super {p0}, Lcom/sprd/classichome/BaseHomeActivity;->onDestroy()V

    .line 320
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 409
    nop

    .line 410
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v1, 0x88

    if-ne v0, v1, :cond_1

    .line 414
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mDpadStarCn:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 415
    const/4 v0, 0x1

    goto :goto_1

    .line 421
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 422
    invoke-super {p0, p1, p2}, Lcom/sprd/classichome/BaseHomeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 424
    :cond_2
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 324
    invoke-static {p1}, Lcom/sprd/common/util/KeyCodeEventUtil;->isLauncherNeedUseKeycode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-super {p0, p1, p2}, Lcom/sprd/classichome/BaseHomeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 327
    :cond_0
    nop

    .line 328
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 330
    invoke-static {p0, p1, p2}, Lcom/sprd/common/util/KeyCodeEventUtil;->pressKeyEventForMainActivity(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    return v2

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 341
    :goto_0
    if-lez v0, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 343
    :goto_1
    const/4 v4, 0x4

    if-eq p1, v4, :cond_b

    const/16 v4, 0x52

    if-eq p1, v4, :cond_9

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    .line 388
    :pswitch_0
    invoke-static {p0}, Lcom/sprd/classichome/util/UtilitiesExt;->goMainMenu(Landroid/content/Context;)V

    .line 389
    nop

    .line 390
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 382
    :pswitch_1
    if-nez v3, :cond_4

    .line 383
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mDpadRightCn:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 385
    :cond_4
    nop

    .line 386
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 376
    :pswitch_2
    if-nez v3, :cond_5

    .line 377
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mDpadLeftCn:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 379
    :cond_5
    nop

    .line 380
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 366
    :pswitch_3
    if-nez v3, :cond_6

    .line 368
    :try_start_0
    const-string v0, "android.app.StatusBarManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "expandNotificationsPanel"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/sprd/classichome/Home;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_2

    .line 369
    :catch_0
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    :cond_6
    :goto_2
    nop

    .line 374
    const/4 v1, 0x1

    goto :goto_5

    .line 360
    :pswitch_4
    if-nez v3, :cond_7

    .line 361
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mDpadUpCn:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 363
    :cond_7
    nop

    .line 364
    const/4 v1, 0x1

    goto :goto_5

    .line 353
    :pswitch_5
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_8

    .line 354
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    rem-int/2addr v0, v1

    .line 355
    iget-object v1, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 357
    :cond_8
    nop

    .line 358
    const/4 v1, 0x1

    goto :goto_5

    .line 392
    :cond_9
    if-eqz v3, :cond_a

    .line 393
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->showRemoveDialogForCurrentPage(Landroid/app/Activity;I)V

    goto :goto_3

    .line 395
    :cond_a
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 397
    :goto_3
    const/4 v1, 0x1

    goto :goto_5

    .line 345
    :cond_b
    if-eqz v3, :cond_c

    .line 346
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_4

    .line 348
    :cond_c
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 350
    :goto_4
    nop

    .line 351
    const/4 v1, 0x1

    .line 401
    :cond_d
    :goto_5
    if-nez v1, :cond_e

    .line 402
    invoke-super {p0, p1, p2}, Lcom/sprd/classichome/BaseHomeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 404
    :cond_e
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .line 251
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->stopListening()V

    .line 252
    invoke-super {p0}, Lcom/sprd/classichome/BaseHomeActivity;->onPause()V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 240
    invoke-super {p0}, Lcom/sprd/classichome/BaseHomeActivity;->onResume()V

    .line 241
    invoke-direct {p0}, Lcom/sprd/classichome/Home;->updateStatusInfo()V

    .line 242
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mHomeStatus:Lcom/sprd/classichome/HomeStatusView;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/sprd/classichome/HomeStatusView;->refreshTime()V

    .line 245
    :cond_0
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->startListening()V

    .line 246
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->refreshWidgets()V

    .line 247
    return-void
.end method

.method public refreshWidgets()V
    .locals 2

    .line 256
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->setupHomeWidgets(Landroid/app/Activity;Landroid/widget/ViewFlipper;)V

    .line 257
    return-void
.end method

.method protected setSoftKey()V
    .locals 2

    .line 266
    invoke-virtual {p0, p0}, Lcom/sprd/classichome/Home;->setupFeatureBar(Landroid/app/Activity;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 267
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setForceIcon(Z)V

    .line 268
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->loadAppSKIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 271
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 272
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->loadAppSKIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(Landroid/graphics/drawable/Drawable;)V

    .line 274
    return-void
.end method

.method public updateWeather()V
    .locals 0

    .line 121
    return-void
.end method

.method public updateWeather([Ljava/lang/String;)V
    .locals 0

    .line 125
    return-void
.end method

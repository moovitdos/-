.class public Lcom/sprd/classichome/Home;
.super Lcom/sprd/classichome/BaseHomeActivity;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/Home$WeatherAsyncTask;,
        Lcom/sprd/classichome/Home$ScreenStatusReceiver;
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

.field private mHomeStatus:Lcom/sprd/classichome/HomeStatusView;

.field private mHomeFlipper:Landroid/widget/ViewFlipper;

.field private mWidgetContainerPage1:Landroid/view/ViewGroup;

.field private mWidgetContainerPage2:Landroid/view/ViewGroup;

.field private mLeftCn:Landroid/content/ComponentName;

.field private mNavKeySettingsReceiver:Landroid/content/BroadcastReceiver;

.field private mRightCn:Landroid/content/ComponentName;

.field private mScreenStatusReceiver:Lcom/sprd/classichome/Home$ScreenStatusReceiver;

.field private mWeatherImg:Landroid/widget/ImageView;

.field private mWeatherTask:Lcom/sprd/classichome/Home$WeatherAsyncTask;

.field private mWeatherView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "content://com.duoqin.weather/city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sprd/classichome/Home;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sprd/classichome/BaseHomeActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/sprd/classichome/Home$1;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/Home$1;-><init>(Lcom/sprd/classichome/Home;)V

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .line 86
    new-instance v0, Lcom/sprd/classichome/Home$2;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/Home$2;-><init>(Lcom/sprd/classichome/Home;)V

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mNavKeySettingsReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/sprd/classichome/Home$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sprd/classichome/Home$3;-><init>(Lcom/sprd/classichome/Home;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sprd/classichome/Home;->mContentObserver:Landroid/database/ContentObserver;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/Home;)Lcom/sprd/classichome/HomeStatusView;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/classichome/Home;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mHomeStatus:Lcom/sprd/classichome/HomeStatusView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/Home;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mDpadLeftCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/Home;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mDpadRightCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/Home;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mDpadUpCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/classichome/Home;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/Home;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/classichome/Home;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/Home;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sprd/classichome/Home;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/Home;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sprd/classichome/Home;->updateWeather()V

    return-void
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sprd/classichome/Home;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sprd/classichome/Home;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/Home;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sprd/classichome/Home;->updateWeather([Ljava/lang/String;)V

    return-void
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

.method private registerScreenStatusReceiver()V
    .locals 3

    .prologue
    .line 166
    new-instance v1, Lcom/sprd/classichome/Home$ScreenStatusReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sprd/classichome/Home$ScreenStatusReceiver;-><init>(Lcom/sprd/classichome/Home;Lcom/sprd/classichome/Home$1;)V

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mScreenStatusReceiver:Lcom/sprd/classichome/Home$ScreenStatusReceiver;

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "screenStatusFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/sprd/classichome/Home;->mScreenStatusReceiver:Lcom/sprd/classichome/Home$ScreenStatusReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method private setupViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    const v1, 0x7f0d000c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/HomeStatusView;

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mHomeStatus:Lcom/sprd/classichome/HomeStatusView;

    .line 175
    invoke-static {p0}, Lcom/sprd/classichome/util/UtilitiesExt;->getLFComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    .line 176
    invoke-static {p0}, Lcom/sprd/classichome/util/UtilitiesExt;->getRTComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    .line 179
    const/16 v1, 0x15

    invoke-static {p0, v1}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mDpadLeftCn:Landroid/content/ComponentName;

    .line 180
    const/16 v1, 0x16

    invoke-static {p0, v1}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mDpadRightCn:Landroid/content/ComponentName;

    .line 181
    const/16 v1, 0x13

    invoke-static {p0, v1}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mDpadUpCn:Landroid/content/ComponentName;

    .line 182
    const/16 v1, 0x11

    invoke-static {p0, v1}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mDpadStarCn:Landroid/content/ComponentName;

    .line 184
    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->setSoftKey()V

    const v1, 0x7f0d000c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/HomeStatusView;

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mHomeStatus:Lcom/sprd/classichome/HomeStatusView;

    .line 186
    const v1, 0x7f0d0011

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 187
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mWeatherView:Landroid/widget/TextView;

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mCallerIdView:Landroid/widget/TextView;

    .line 189
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sprd/classichome/Home;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sprd/classichome/Home;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    const v1, 0x7f0d000f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mHebrewDateView:Landroid/widget/TextView;

    const v1, 0x7f0d0018

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    const v1, 0x7f0d001a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mWidgetContainerPage1:Landroid/view/ViewGroup;

    const v1, 0x7f0d001d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sprd/classichome/Home;->mWidgetContainerPage2:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->refreshWidgets()V

    return-void
.end method

.method private updateStatusInfo()V
    .locals 15

    .prologue
    .line 1
    const/4 v1, 0x0

    const/4 v13, 0x0

    const/16 v12, 0x8

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mWeatherView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 3
    iget-object v11, p0, Lcom/sprd/classichome/Home;->mWeatherView:Landroid/widget/TextView;

    .line 4
    iget-object v9, p0, Lcom/sprd/classichome/Home;->mCallerIdView:Landroid/widget/TextView;

    .line 5
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v4, v13

    const/4 v0, 0x1

    const-string v1, "number"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "date"

    aput-object v1, v4, v0

    .line 6
    const-string v5, "type = ? AND is_read = ?"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v13

    const/4 v0, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 7
    const-string v7, "date DESC"

    .line 8
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 9
    if-eqz v8, :cond_3

    .line 10
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 11
    if-lez v1, :cond_2

    .line 12
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u05e9\u05d9\u05d7\u05d5\u05ea \u05e9\u05dc\u05d0 \u05e0\u05e2\u05e0\u05d5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 15
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    const-string v0, "number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :cond_3
    :goto_2
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private updateWeather()V
    .locals 0

    .prologue
    return-void
.end method

.method private updateWeather([Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/sprd/classichome/BaseHomeActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/HomeApplication;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/HomeApplication;->setHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)Lcom/sprd/classichome/model/LauncherModel;

    .line 141
    invoke-direct {p0}, Lcom/sprd/classichome/Home;->setupViews()V

    .line 142
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/BaseHomeActivity;->enableWallpaperShowing(Z)V

    .line 159
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mNavKeySettingsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.duoqin.navkeysettings.update"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    invoke-direct {p0}, Lcom/sprd/classichome/Home;->registerScreenStatusReceiver()V

    .line 163
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    :try_start_destroy
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_destroy
    .catch Ljava/lang/Exception; {:try_start_destroy .. :try_end_destroy} :catch_destroy

    :catch_destroy
    :try_start_callback
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/HomeApplication;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/HomeApplication;->removeHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V
    :try_end_callback
    .catch Ljava/lang/Exception; {:try_start_callback .. :try_end_callback} :catch_callback

    :catch_callback
    :try_start_receiver
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mNavKeySettingsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_receiver
    .catch Ljava/lang/Exception; {:try_start_receiver .. :try_end_receiver} :catch_receiver

    :catch_receiver
    :try_start_screen
    iget-object v0, p0, Lcom/sprd/classichome/Home;->mScreenStatusReceiver:Lcom/sprd/classichome/Home$ScreenStatusReceiver;

    if-eqz v0, :cond_destroy_done

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_screen
    .catch Ljava/lang/Exception; {:try_start_screen .. :try_end_screen} :catch_screen

    :catch_screen
    :cond_destroy_done
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    packed-switch p1, :pswitch_data_0

    .line 654
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 655
    invoke-super {p0, p1, p2}, Lcom/sprd/classichome/BaseHomeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 657
    :cond_1
    return v0

    .line 647
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v2, 0x88

    if-ne v1, v2, :cond_0

    .line 648
    iget-object v1, p0, Lcom/sprd/classichome/Home;->mDpadStarCn:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 649
    const/4 v0, 0x1

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 306
    invoke-static {p1}, Lcom/sprd/common/util/KeyCodeEventUtil;->isLauncherNeedUseKeycode(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    invoke-super {p0, p1, p2}, Lcom/sprd/classichome/BaseHomeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 355
    :cond_0
    :goto_0
    return v1

    .line 310
    :cond_1
    const/4 v1, 0x0

    .line 311
    .local v1, "result":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0, p1, p2}, Lcom/sprd/common/util/KeyCodeEventUtil;->pressKeyEventForMainActivity(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_custom_short_done

    const/4 v1, 0x1

    goto :goto_1

    :cond_custom_short_done
    .line 312
    sparse-switch p1, :sswitch_data_0

    .line 352
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 353
    invoke-super {p0, p1, p2}, Lcom/sprd/classichome/BaseHomeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 314
    :sswitch_0
    invoke-static {p0}, Lcom/sprd/classichome/util/UtilitiesExt;->goMainMenu(Landroid/content/Context;)V

    .line 315
    const/4 v1, 0x1

    .line 316
    goto/16 :goto_1

    .line 318
    :sswitch_1
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_menu_orig

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-lez v3, :cond_menu_orig

    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/sprd/classichome/widget/WidgetHostManager;->showRemoveDialogForCurrentPage(Landroid/app/Activity;I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_menu_orig
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    invoke-static {p0, v2}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_back_orig

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-lez v3, :cond_back_orig

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_back_orig
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    invoke-static {p0, v2}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_pound
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_flipper_end

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_flipper_end

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_flipper_end
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_dpad_left

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-lez v3, :cond_dpad_left

    const/4 v1, 0x1

    goto :goto_1

    :cond_dpad_left
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mDpadLeftCn:Landroid/content/ComponentName;

    invoke-static {p0, v2}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_dpad_right

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-lez v3, :cond_dpad_right

    const/4 v1, 0x1

    goto :goto_1

    :cond_dpad_right
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mDpadRightCn:Landroid/content/ComponentName;

    invoke-static {p0, v2}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_dpad_up

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-lez v3, :cond_dpad_up

    const/4 v1, 0x1

    goto :goto_1

    :cond_dpad_up
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mDpadUpCn:Landroid/content/ComponentName;

    invoke-static {p0, v2}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    iget-object v2, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_dpad_down

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-lez v3, :cond_dpad_down

    const/4 v1, 0x1

    goto :goto_1

    :cond_dpad_down
    :try_start_0
    const-string v2, "android.app.StatusBarManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "expandNotificationsPanel"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x12 -> :sswitch_pound
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->stopListening()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/sprd/classichome/BaseHomeActivity;->onResume()V

    invoke-direct {p0}, Lcom/sprd/classichome/Home;->updateStatusInfo()V

    iget-object v0, p0, Lcom/sprd/classichome/Home;->mHomeStatus:Lcom/sprd/classichome/HomeStatusView;

    if-eqz v0, :cond_widget_status_done

    invoke-virtual {v0}, Lcom/sprd/classichome/HomeStatusView;->refreshTime()V

    :cond_widget_status_done
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->startListening()V

    invoke-virtual {p0}, Lcom/sprd/classichome/Home;->refreshWidgets()V

    return-void
.end method

.method public refreshWidgets()V
    .locals 2

    .prologue
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mHomeFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->setupHomeWidgets(Landroid/app/Activity;Landroid/widget/ViewFlipper;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"     # I
    .param p3, "data"           # Landroid/content/Intent;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/sprd/classichome/BaseHomeActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method protected setSoftKey()V
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0, p0}, Lcom/sprd/classichome/BaseHomeActivity;->setupFeatureBar(Landroid/app/Activity;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 273
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setForceIcon(Z)V

    .line 284
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mLeftCn:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->loadAppSKIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 287
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 288
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home;->mRightCn:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->loadAppSKIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method

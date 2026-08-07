.class public Lcom/sprd/classichome/widget/WidgetHostManager;
.super Ljava/lang/Object;
.source "WidgetHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400

.field private static final PREFS_NAME:Ljava/lang/String; = "launcher_widget_prefs"

.field private static final PREF_KEY_WIDGET_LIST:Ljava/lang/String; = "widget_list_json"

.field public static final REQUEST_CREATE_WIDGET:I = 0x3ed

.field private static final TAG:Ljava/lang/String; = "WidgetHostManager"

.field private static sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field private mPendingConfigurationStarted:Z

.field private mPendingConfigureComponent:Landroid/content/ComponentName;

.field private mPendingLabel:Ljava/lang/String;

.field private mPendingPkg:Ljava/lang/String;

.field private mPendingTargetPage:I

.field private mPendingWidgetId:I

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    .line 94
    new-instance p1, Landroid/appwidget/AppWidgetHost;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x400

    invoke-direct {p1, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 95
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 96
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    const-string v0, "launcher_widget_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 97
    return-void
.end method

.method private deletePendingWidgetId()V
    .locals 3

    .line 551
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    const-string v1, "WidgetHostManager"

    const-string v2, "Error deleting pending widget id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    :cond_0
    :goto_0
    return-void
.end method

.method private finalizeWidgetAdd(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 528
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping invalid widget id "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WidgetHostManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->deletePendingWidgetId()V

    .line 532
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 533
    return-void

    .line 535
    :cond_1
    new-instance v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->addWidget(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V

    .line 536
    const/4 p2, 0x0

    const-string p3, "\u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05e0\u05d5\u05e1\u05e3 \u05d1\u05d4\u05e6\u05dc\u05d7\u05d4"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 537
    invoke-direct {p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->notifyActivityRefresh(Landroid/app/Activity;)V

    .line 538
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 539
    return-void

    .line 528
    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;
    .locals 2

    const-class v0, Lcom/sprd/classichome/widget/WidgetHostManager;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/sprd/classichome/widget/WidgetHostManager;->sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/sprd/classichome/widget/WidgetHostManager;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/widget/WidgetHostManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sprd/classichome/widget/WidgetHostManager;->sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;

    .line 103
    :cond_0
    sget-object p0, Lcom/sprd/classichome/widget/WidgetHostManager;->sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 99
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static makeViewOnly(Landroid/view/View;)V
    .locals 2

    .line 420
    if-nez p0, :cond_0

    return-void

    .line 421
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 422
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 423
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 424
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 425
    new-instance v1, Lcom/sprd/classichome/widget/WidgetHostManager$2;

    invoke-direct {v1}, Lcom/sprd/classichome/widget/WidgetHostManager$2;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 431
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 432
    check-cast p0, Landroid/view/ViewGroup;

    .line 433
    const/high16 v1, 0x60000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 434
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 435
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->makeViewOnly(Landroid/view/View;)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_1
    return-void
.end method

.method private notifyActivityRefresh(Landroid/app/Activity;)V
    .locals 4

    .line 253
    if-nez p1, :cond_0

    return-void

    .line 255
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refreshWidgets"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 256
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception p1

    .line 258
    const-string v0, "WidgetHostManager"

    const-string v1, "Failed to invoke refreshWidgets via reflection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    :goto_0
    return-void
.end method

.method private purgeInvalidWidgets()V
    .locals 6

    .line 166
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    nop

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 170
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v5, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 171
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    iget v2, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ltz v2, :cond_2

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v3, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_2

    .line 174
    :catch_0
    move-exception v2

    .line 177
    :cond_2
    :goto_2
    const/4 v2, 0x1

    .line 181
    :goto_3
    goto :goto_0

    .line 182
    :cond_3
    if-eqz v2, :cond_4

    .line 183
    invoke-virtual {p0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 185
    :cond_4
    return-void
.end method

.method private resetPendingWidget()V
    .locals 1

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    .line 562
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    .line 563
    const-string v0, ""

    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    .line 564
    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigureComponent:Landroid/content/ComponentName;

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigurationStarted:Z

    .line 567
    return-void
.end method

.method private startConfigurationActivity(Landroid/app/Activity;ILandroid/content/ComponentName;)V
    .locals 2

    .line 542
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 545
    const-string p3, "appWidgetId"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigurationStarted:Z

    .line 547
    const/16 p2, 0x3ed

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 548
    return-void

    .line 542
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addWidget(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
    .locals 4

    .line 209
    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 211
    iget v1, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-nez v1, :cond_3

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 215
    iget v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-nez v3, :cond_1

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v2, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 218
    :catch_0
    move-exception v2

    :goto_1
    goto :goto_2

    .line 220
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :goto_2
    goto :goto_0

    .line 223
    :cond_2
    move-object v0, v1

    .line 225
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 227
    return-void
.end method

.method public addWidgetFromPackage(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    if-eqz v0, :cond_1

    .line 444
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 445
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_0
    goto :goto_0

    .line 451
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 452
    const-string p2, "\u05dc\u05d0 \u05e0\u05de\u05e6\u05d0\u05d5 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05dc\u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 453
    return-void

    .line 456
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 457
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->bindAndConfigureWidget(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;I)V

    goto :goto_2

    .line 459
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 460
    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 461
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    aput-object v2, p2, v0

    .line 462
    aget-object v2, p2, v0

    if-eqz v2, :cond_4

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 463
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    .line 460
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 466
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 467
    const-string v2, "\u05d1\u05d7\u05e8 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 468
    new-instance v2, Lcom/sprd/classichome/widget/WidgetHostManager$3;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/sprd/classichome/widget/WidgetHostManager$3;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 474
    const/4 p1, 0x0

    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 475
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 477
    :goto_2
    return-void
.end method

.method public bindAndConfigureWidget(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 10

    .line 480
    const-string v0, "WidgetHostManager"

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 481
    :cond_0
    iget v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 482
    const-string p2, "\u05e4\u05e2\u05d5\u05dc\u05ea \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05e7\u05d5\u05d3\u05de\u05ea \u05e2\u05d3\u05d9\u05d9\u05df \u05d1\u05ea\u05d4\u05dc\u05d9\u05da"

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 483
    return-void

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v6

    .line 486
    iput v6, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    .line 487
    iput p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    .line 488
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    .line 489
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    :goto_1
    iput-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    .line 490
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigureComponent:Landroid/content/ComponentName;

    .line 491
    iput-boolean v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigurationStarted:Z

    .line 493
    nop

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v6, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    goto :goto_2

    .line 496
    :catch_0
    move-exception v1

    .line 497
    const-string v2, "bindAppWidgetIdIfAllowed failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    :goto_2
    if-nez v3, :cond_4

    .line 502
    :try_start_1
    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v1, "appWidgetProvider"

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    const/16 p2, 0x3ed

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 510
    goto :goto_3

    .line 506
    :catch_1
    move-exception p1

    .line 507
    const-string p2, "Unable to start widget bind flow"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->deletePendingWidgetId()V

    .line 509
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 511
    :goto_3
    return-void

    .line 514
    :cond_4
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    .line 516
    :try_start_2
    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v6, p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->startConfigurationActivity(Landroid/app/Activity;ILandroid/content/ComponentName;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 517
    :catch_2
    move-exception p1

    .line 518
    const-string p2, "Unable to start widget configuration"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->deletePendingWidgetId()V

    .line 520
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 521
    :goto_4
    goto :goto_5

    .line 523
    :cond_5
    iget-object v8, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    iget-object v9, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    move-object v4, p0

    move-object v5, p1

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/sprd/classichome/widget/WidgetHostManager;->finalizeWidgetAdd(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_5
    return-void

    .line 480
    :cond_6
    :goto_6
    return-void
.end method

.method public getHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method public getManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method public getMaxPage()I
    .locals 4

    .line 188
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 189
    nop

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 191
    iget v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-le v3, v1, :cond_0

    .line 192
    iget v1, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    .line 194
    :cond_0
    goto :goto_0

    .line 195
    :cond_1
    return v1
.end method

.method public declared-synchronized getWidgetList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 135
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "widget_list_json"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 139
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 141
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->fromJson(Lorg/json/JSONObject;)Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    move-result-object v3

    .line 142
    if-eqz v3, :cond_0

    .line 143
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    goto :goto_1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    :try_start_2
    const-string v2, "WidgetHostManager"

    const-string v3, "Error parsing widget list JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getWidgetsForPage(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 201
    iget v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-ne v3, p1, :cond_0

    .line 202
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    return-object v0
.end method

.method public handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6

    .line 570
    const/16 v0, 0x3ed

    if-ne p2, v0, :cond_3

    .line 571
    iget p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    if-eqz p4, :cond_0

    const-string v0, "appWidgetId"

    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    move v2, p2

    .line 572
    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    if-eq v2, p2, :cond_2

    .line 573
    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    if-eq p3, p2, :cond_1

    iget-boolean p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigurationStarted:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigureComponent:Landroid/content/ComponentName;

    if-eqz p3, :cond_1

    .line 574
    invoke-direct {p0, p1, v2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->startConfigurationActivity(Landroid/app/Activity;ILandroid/content/ComponentName;)V

    .line 575
    return-void

    .line 577
    :cond_1
    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    if-eq p3, p2, :cond_3

    .line 578
    iget v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    iget-object v4, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sprd/classichome/widget/WidgetHostManager;->finalizeWidgetAdd(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_2
    if-eq v2, p2, :cond_3

    .line 582
    :try_start_0
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p1, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_0

    .line 583
    :catch_0
    move-exception p1

    .line 584
    const-string p2, "WidgetHostManager"

    const-string p3, "Error deleting cancelled widget id"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    :goto_0
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 589
    :cond_3
    :goto_1
    return-void
.end method

.method public removeWidgetById(Landroid/app/Activity;I)V
    .locals 8

    .line 230
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    nop

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 234
    iget v5, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ne v5, p2, :cond_0

    .line 235
    const/4 v3, 0x1

    .line 237
    :try_start_0
    iget-object v5, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v6, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v5

    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error deleting widget id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "WidgetHostManager"

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    :goto_1
    goto :goto_2

    .line 242
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :goto_2
    goto :goto_0

    .line 245
    :cond_1
    if-eqz v3, :cond_2

    .line 246
    invoke-virtual {p0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->notifyActivityRefresh(Landroid/app/Activity;)V

    .line 248
    const-string p2, "\u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05d4\u05d5\u05e1\u05e8"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 250
    :cond_2
    return-void
.end method

.method public declared-synchronized saveWidgetList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 154
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 155
    if-eqz p1, :cond_1

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 157
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 160
    :cond_0
    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "widget_list_json"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setupHomeWidgets(Landroid/app/Activity;Landroid/widget/ViewFlipper;)V
    .locals 16

    .line 298
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_a

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 299
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->purgeInvalidWidgets()V

    .line 302
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    const-string v5, "WidgetHostManager"

    const/4 v6, -0x2

    const/16 v7, 0x8

    const/4 v8, -0x1

    if-eqz v0, :cond_3

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "widget_container_page1"

    const-string v12, "id"

    invoke-virtual {v9, v11, v12, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 305
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    .line 306
    if-eqz v9, :cond_3

    .line 307
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 308
    const/high16 v0, 0x60000

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 310
    invoke-virtual {v1, v4}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 312
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 313
    iget-object v10, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v11, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 314
    if-eqz v10, :cond_1

    .line 316
    :try_start_0
    iget-object v11, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v12, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v11, v2, v12, v10}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v11

    .line 317
    iget v0, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v11, v0, v10}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 318
    invoke-static {v11}, Lcom/sprd/classichome/widget/WidgetHostManager;->makeViewOnly(Landroid/view/View;)V

    .line 320
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 324
    invoke-virtual {v9, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v10, "Error creating page 0 widget"

    invoke-static {v5, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    :goto_0
    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 333
    :goto_1
    goto :goto_2

    .line 334
    :cond_2
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 340
    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v9, 0x1

    if-le v0, v9, :cond_4

    .line 341
    invoke-virtual {v3, v9}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    goto :goto_2

    .line 345
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getMaxPage()I

    move-result v0

    .line 346
    if-ge v0, v9, :cond_5

    .line 347
    const/4 v10, 0x1

    goto :goto_3

    .line 346
    :cond_5
    move v10, v0

    .line 350
    :goto_3
    const/4 v11, 0x1

    :goto_4
    if-gt v11, v10, :cond_9

    .line 351
    nop

    .line 352
    nop

    .line 354
    new-instance v12, Landroid/widget/ScrollView;

    invoke-direct {v12, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 355
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 356
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 358
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 360
    const/16 v0, 0xc

    const/16 v14, 0x10

    invoke-virtual {v13, v0, v7, v0, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 363
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 364
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd ("

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const v9, -0x4f000001

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 367
    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 368
    const/4 v15, 0x4

    invoke-virtual {v0, v4, v15, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 369
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-virtual {v1, v11}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 376
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 377
    const-string v4, "\u05e2\u05de\u05d5\u05d3 \u05e8\u05d9\u05e7\n\n\u05dc\u05d7\u05e5 \u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 \u05e2\u05dc \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4 \u05d1\u05ea\u05e4\u05e8\u05d9\u05d8 \u05dc\u05d4\u05d5\u05e1\u05e4\u05ea \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\n(\u05dc\u05d7\u05e5 \u05e2\u05dc \u05de\u05e7\u05e9 Menu \u05dc\u05d4\u05e1\u05e8\u05d4)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    const v4, -0x66000001

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 380
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 381
    const/16 v4, 0x28

    invoke-virtual {v0, v14, v4, v14, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 382
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    const/4 v14, 0x0

    goto :goto_8

    .line 387
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 388
    iget-object v9, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v14, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v9, v14}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 389
    if-eqz v9, :cond_7

    .line 391
    :try_start_1
    iget-object v14, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v7, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v14, v2, v7, v9}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v7

    .line 392
    iget v0, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v7, v0, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 394
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 398
    const/16 v9, 0x8

    const/4 v14, 0x0

    :try_start_2
    invoke-virtual {v0, v14, v15, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 399
    invoke-virtual {v13, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 402
    goto :goto_7

    .line 400
    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    const/16 v9, 0x8

    const/4 v14, 0x0

    .line 401
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error adding widget view for page "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 389
    :cond_7
    const/4 v14, 0x0

    .line 404
    :goto_7
    const/16 v7, 0x8

    goto :goto_5

    .line 387
    :cond_8
    const/4 v14, 0x0

    .line 407
    :goto_8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v9, 0x1

    goto/16 :goto_4

    .line 417
    :cond_9
    return-void

    .line 298
    :cond_a
    :goto_9
    return-void
.end method

.method public showRemoveDialogForCurrentPage(Landroid/app/Activity;I)V
    .locals 3

    .line 263
    invoke-virtual {p0, p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object p2

    .line 264
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    const-string p2, "\u05d0\u05d9\u05df \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05dc\u05d4\u05e1\u05e8\u05d4 \u05d1\u05e2\u05de\u05d5\u05d3 \u05d6\u05d4"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 266
    return-void

    .line 269
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 270
    nop

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 271
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget-object v2, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->label:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    const-string v2, "\u05d1\u05d7\u05e8 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05dc\u05d4\u05e1\u05e8\u05d4"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    new-instance v2, Lcom/sprd/classichome/widget/WidgetHostManager$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/sprd/classichome/widget/WidgetHostManager$1;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    const/4 p1, 0x0

    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 295
    return-void
.end method

.method public startListening()V
    .locals 3

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "WidgetHostManager"

    const-string v2, "Error in startListening"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :goto_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "WidgetHostManager"

    const-string v2, "Error in stopListening"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :goto_0
    return-void
.end method

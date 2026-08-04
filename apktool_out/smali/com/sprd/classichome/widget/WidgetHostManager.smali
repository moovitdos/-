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

.field private mPendingLabel:Ljava/lang/String;

.field private mPendingPkg:Ljava/lang/String;

.field private mPendingTargetPage:I

.field private mPendingWidgetId:I

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    .line 91
    new-instance p1, Landroid/appwidget/AppWidgetHost;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x400

    invoke-direct {p1, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 92
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 93
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    const-string v0, "launcher_widget_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 94
    return-void
.end method

.method private finalizeWidgetAdd(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 486
    new-instance v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->addWidget(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V

    .line 487
    const-string p2, "\u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05e0\u05d5\u05e1\u05e3 \u05d1\u05d4\u05e6\u05dc\u05d7\u05d4"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 488
    invoke-direct {p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->notifyActivityRefresh(Landroid/app/Activity;)V

    .line 489
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;
    .locals 2

    const-class v0, Lcom/sprd/classichome/widget/WidgetHostManager;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/sprd/classichome/widget/WidgetHostManager;->sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/sprd/classichome/widget/WidgetHostManager;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/widget/WidgetHostManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sprd/classichome/widget/WidgetHostManager;->sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;

    .line 100
    :cond_0
    sget-object p0, Lcom/sprd/classichome/widget/WidgetHostManager;->sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 96
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static makeViewOnly(Landroid/view/View;)V
    .locals 2

    .line 394
    if-nez p0, :cond_0

    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 396
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 397
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 398
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 399
    new-instance v1, Lcom/sprd/classichome/widget/WidgetHostManager$2;

    invoke-direct {v1}, Lcom/sprd/classichome/widget/WidgetHostManager$2;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 405
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 406
    check-cast p0, Landroid/view/ViewGroup;

    .line 407
    const/high16 v1, 0x60000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 408
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 409
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->makeViewOnly(Landroid/view/View;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_1
    return-void
.end method

.method private notifyActivityRefresh(Landroid/app/Activity;)V
    .locals 4

    .line 228
    if-nez p1, :cond_0

    return-void

    .line 230
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refreshWidgets"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 231
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 232
    :catch_0
    move-exception p1

    .line 233
    const-string v0, "WidgetHostManager"

    const-string v1, "Failed to invoke refreshWidgets via reflection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    :goto_0
    return-void
.end method


# virtual methods
.method public addWidget(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
    .locals 4

    .line 184
    if-nez p1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 186
    iget v1, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-nez v1, :cond_3

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 190
    iget v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-nez v3, :cond_1

    .line 192
    :try_start_0
    iget-object v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v2, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    :catch_0
    move-exception v2

    :goto_1
    goto :goto_2

    .line 195
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_2
    goto :goto_0

    .line 198
    :cond_2
    move-object v0, v1

    .line 200
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 202
    return-void
.end method

.method public addWidgetFromPackage(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    if-eqz v0, :cond_1

    .line 418
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 419
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_0
    goto :goto_0

    .line 425
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 426
    const-string p2, "\u05dc\u05d0 \u05e0\u05de\u05e6\u05d0\u05d5 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05dc\u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 427
    return-void

    .line 430
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 431
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->bindAndConfigureWidget(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;I)V

    goto :goto_2

    .line 433
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 434
    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 435
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    aput-object v2, p2, v0

    .line 436
    aget-object v2, p2, v0

    if-eqz v2, :cond_4

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 437
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

    .line 434
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    const-string v2, "\u05d1\u05d7\u05e8 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 442
    new-instance v2, Lcom/sprd/classichome/widget/WidgetHostManager$3;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/sprd/classichome/widget/WidgetHostManager$3;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    const/4 p1, 0x0

    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 451
    :goto_2
    return-void
.end method

.method public bindAndConfigureWidget(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 7

    .line 454
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 455
    iput v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    .line 456
    iput p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    .line 457
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    .line 458
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    :goto_1
    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    .line 460
    const/4 v0, 0x0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    goto :goto_2

    .line 463
    :catch_0
    move-exception v1

    .line 464
    const-string v2, "WidgetHostManager"

    const-string v4, "bindAppWidgetIdIfAllowed failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    :goto_2
    const/16 v1, 0x3ed

    const-string v2, "appWidgetId"

    if-nez v0, :cond_2

    .line 468
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const-string v0, "appWidgetProvider"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p1, p3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 472
    return-void

    .line 475
    :cond_2
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 476
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    invoke-virtual {p1, p3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 480
    goto :goto_3

    .line 481
    :cond_3
    iget-object v5, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/sprd/classichome/widget/WidgetHostManager;->finalizeWidgetAdd(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;)V

    .line 483
    :goto_3
    return-void
.end method

.method public getHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method public getManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method public getMaxPage()I
    .locals 4

    .line 163
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 164
    nop

    .line 165
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

    .line 166
    iget v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-le v3, v1, :cond_0

    .line 167
    iget v1, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    .line 169
    :cond_0
    goto :goto_0

    .line 170
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

    .line 132
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "widget_list_json"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 136
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 138
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->fromJson(Lorg/json/JSONObject;)Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    move-result-object v3

    .line 139
    if-eqz v3, :cond_0

    .line 140
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    .line 144
    :try_start_2
    const-string v2, "WidgetHostManager"

    const-string v3, "Error parsing widget list JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    .line 131
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

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
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

    .line 176
    iget v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-ne v3, p1, :cond_0

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    goto :goto_0

    .line 180
    :cond_1
    return-object v0
.end method

.method public handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6

    .line 492
    const/16 v0, 0x3ed

    if-ne p2, v0, :cond_3

    .line 493
    iget p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    if-eqz p4, :cond_0

    const-string v0, "appWidgetId"

    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    move v2, p2

    .line 494
    const/4 p2, -0x1

    if-ne p3, p2, :cond_1

    if-eq v2, p2, :cond_1

    .line 495
    iget v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    iget-object v4, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sprd/classichome/widget/WidgetHostManager;->finalizeWidgetAdd(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_1
    if-eq v2, p2, :cond_2

    .line 499
    :try_start_0
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p1, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    goto :goto_0

    .line 500
    :catch_0
    move-exception p1

    .line 501
    const-string p3, "WidgetHostManager"

    const-string p4, "Error deleting cancelled widget id"

    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    :cond_2
    :goto_0
    iput p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    .line 507
    :cond_3
    return-void
.end method

.method public removeWidgetById(Landroid/app/Activity;I)V
    .locals 8

    .line 205
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    nop

    .line 208
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

    .line 209
    iget v5, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ne v5, p2, :cond_0

    .line 210
    const/4 v3, 0x1

    .line 212
    :try_start_0
    iget-object v5, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v6, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v5

    .line 214
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

    .line 215
    :goto_1
    goto :goto_2

    .line 217
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :goto_2
    goto :goto_0

    .line 220
    :cond_1
    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {p0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->notifyActivityRefresh(Landroid/app/Activity;)V

    .line 223
    const-string p2, "\u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05d4\u05d5\u05e1\u05e8"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 225
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

    .line 151
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 152
    if-eqz p1, :cond_1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 154
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 157
    :cond_0
    goto :goto_0

    .line 159
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

    .line 160
    monitor-exit p0

    return-void

    .line 150
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

    .line 273
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_a

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 276
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 277
    const-string v5, "WidgetHostManager"

    const/4 v6, -0x2

    const/16 v7, 0x8

    const/4 v8, -0x1

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "widget_container_page1"

    const-string v12, "id"

    invoke-virtual {v9, v11, v12, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 279
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    .line 280
    if-eqz v9, :cond_3

    .line 281
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 282
    const/high16 v0, 0x60000

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 284
    invoke-virtual {v1, v4}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 286
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 287
    iget-object v10, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v11, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 288
    if-eqz v10, :cond_1

    .line 290
    :try_start_0
    iget-object v11, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v12, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v11, v2, v12, v10}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v11

    .line 291
    iget v0, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v11, v0, v10}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 292
    invoke-static {v11}, Lcom/sprd/classichome/widget/WidgetHostManager;->makeViewOnly(Landroid/view/View;)V

    .line 294
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 298
    invoke-virtual {v9, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    const-string v10, "Error creating page 0 widget"

    invoke-static {v5, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    :goto_0
    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    :goto_1
    goto :goto_2

    .line 308
    :cond_2
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 314
    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v9, 0x1

    if-le v0, v9, :cond_4

    .line 315
    invoke-virtual {v3, v9}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    goto :goto_2

    .line 319
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getMaxPage()I

    move-result v0

    .line 320
    if-ge v0, v9, :cond_5

    .line 321
    const/4 v10, 0x1

    goto :goto_3

    .line 320
    :cond_5
    move v10, v0

    .line 324
    :goto_3
    const/4 v11, 0x1

    :goto_4
    if-gt v11, v10, :cond_9

    .line 325
    nop

    .line 326
    nop

    .line 328
    new-instance v12, Landroid/widget/ScrollView;

    invoke-direct {v12, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 330
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 332
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 333
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 334
    const/16 v0, 0xc

    const/16 v14, 0x10

    invoke-virtual {v13, v0, v7, v0, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 337
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 338
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

    .line 339
    const v9, -0x4f000001

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 341
    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 342
    const/4 v15, 0x4

    invoke-virtual {v0, v4, v15, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 343
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual {v1, v11}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 350
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 351
    const-string v4, "\u05e2\u05de\u05d5\u05d3 \u05e8\u05d9\u05e7\n\n\u05dc\u05d7\u05e5 \u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 \u05e2\u05dc \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4 \u05d1\u05ea\u05e4\u05e8\u05d9\u05d8 \u05dc\u05d4\u05d5\u05e1\u05e4\u05ea \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\n(\u05dc\u05d7\u05e5 \u05e2\u05dc \u05de\u05e7\u05e9 Menu \u05dc\u05d4\u05e1\u05e8\u05d4)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const v4, -0x66000001

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 354
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 355
    const/16 v4, 0x28

    invoke-virtual {v0, v14, v4, v14, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 356
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    const/4 v14, 0x0

    goto :goto_8

    .line 361
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

    .line 362
    iget-object v9, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v14, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v9, v14}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 363
    if-eqz v9, :cond_7

    .line 365
    :try_start_1
    iget-object v14, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v7, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v14, v2, v7, v9}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v7

    .line 366
    iget v0, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v7, v0, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 368
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 372
    const/16 v9, 0x8

    const/4 v14, 0x0

    :try_start_2
    invoke-virtual {v0, v14, v15, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 373
    invoke-virtual {v13, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 376
    goto :goto_7

    .line 374
    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    const/16 v9, 0x8

    const/4 v14, 0x0

    .line 375
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

    .line 363
    :cond_7
    const/4 v14, 0x0

    .line 378
    :goto_7
    const/16 v7, 0x8

    goto :goto_5

    .line 361
    :cond_8
    const/4 v14, 0x0

    .line 381
    :goto_8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v9, 0x1

    goto/16 :goto_4

    .line 391
    :cond_9
    return-void

    .line 273
    :cond_a
    :goto_9
    return-void
.end method

.method public showRemoveDialogForCurrentPage(Landroid/app/Activity;I)V
    .locals 3

    .line 238
    invoke-virtual {p0, p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object p2

    .line 239
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    const-string p2, "\u05d0\u05d9\u05df \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05dc\u05d4\u05e1\u05e8\u05d4 \u05d1\u05e2\u05de\u05d5\u05d3 \u05d6\u05d4"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 241
    return-void

    .line 244
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 245
    nop

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 246
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget-object v2, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->label:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    const-string v2, "\u05d1\u05d7\u05e8 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05dc\u05d4\u05e1\u05e8\u05d4"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    new-instance v2, Lcom/sprd/classichome/widget/WidgetHostManager$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/sprd/classichome/widget/WidgetHostManager$1;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    const/4 p1, 0x0

    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    return-void
.end method

.method public startListening()V
    .locals 3

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "WidgetHostManager"

    const-string v2, "Error in startListening"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "WidgetHostManager"

    const-string v2, "Error in stopListening"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :goto_0
    return-void
.end method

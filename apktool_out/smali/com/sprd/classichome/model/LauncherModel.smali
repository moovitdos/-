.class public Lcom/sprd/classichome/model/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/model/LauncherModel$LoaderTask;
    }
.end annotation


# static fields
.field static final DEBUG_LOADER:Z

.field private static final DEBUG_RECEIVER:Z

.field public static isLoaded:Z

.field public static final mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

.field public static final mBgCustomizeAppsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sprd/classichome/util/ComponentKey;",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mExtraApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mGameApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMainHandler:Landroid/os/Handler;

.field private static final mMainMenuApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sprd/classichome/model/HomeMonitorCallbacks;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private mNeedForceLoad:Z

.field private mPreDate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG_LOADER:Z

    sput-boolean v0, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_LOADER:Z

    .line 41
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    sput-boolean v0, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_RECEIVER:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/sprd/classichome/model/AllAppsList;

    invoke-direct {v0}, Lcom/sprd/classichome/model/AllAppsList;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mMainMenuApps:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mExtraApps:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mGameApps:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mMainHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mNeedForceLoad:Z

    .line 59
    new-instance v0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;-><init>(Lcom/sprd/classichome/model/LauncherModel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    .line 60
    invoke-static {v0}, Lcom/sprd/classichome/model/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/model/LauncherModel;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/sprd/classichome/model/LauncherModel;->mNeedForceLoad:Z

    return p0
.end method

.method static synthetic access$002(Lcom/sprd/classichome/model/LauncherModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/sprd/classichome/model/LauncherModel;->mNeedForceLoad:Z

    return p1
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 35
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mMainMenuApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .line 35
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mGameApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .line 35
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mExtraApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static forceReloadApps(Landroid/content/Context;)V
    .locals 3

    .line 383
    :try_start_0
    invoke-static {}, Lcom/sprd/classichome/HomeApplication;->getInstance()Lcom/sprd/classichome/HomeApplication;

    move-result-object p0

    .line 388
    const/4 v0, 0x0

    .line 389
    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 390
    const-class v0, Lcom/sprd/classichome/HomeApplication;

    const-string v2, "mModel"

    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 393
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sprd/classichome/model/LauncherModel;

    .line 395
    :cond_0
    if-eqz v0, :cond_1

    .line 396
    iput-boolean v1, v0, Lcom/sprd/classichome/model/LauncherModel;->mNeedForceLoad:Z

    .line 397
    iget-object p0, v0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-virtual {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->isLoading()Z

    move-result p0

    if-nez p0, :cond_1

    .line 398
    iget-object p0, v0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-static {p0, v1}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->access$402(Lcom/sprd/classichome/model/LauncherModel$LoaderTask;Z)Z

    .line 399
    iget-object p0, v0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-static {p0}, Lcom/sprd/classichome/model/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_1
    goto :goto_0

    .line 402
    :catchall_0
    move-exception p0

    .line 403
    const-string v0, "Gridhome.Model"

    const-string v1, "forceReloadApps failed"

    invoke-static {v0, v1, p0}, Lcom/sprd/common/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    :goto_0
    return-void
.end method

.method public static getExtraAppsList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mExtraApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getGamesAppsList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mGameApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getMainMenuAppsList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mMainMenuApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private onDateChanged()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 87
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/sprd/classichome/model/HomeMonitorCallbacks;->onDateChanged()V

    .line 91
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 119
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 120
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    :goto_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    if-eqz p1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyAppsUpdated()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 99
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .line 100
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/sprd/classichome/model/HomeMonitorCallbacks;->notifyAppsUpdated()V

    .line 103
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 128
    sget-boolean v0, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_RECEIVER:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gridhome.Model"

    invoke-static {v1, v0}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 141
    :cond_1
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 146
    :cond_2
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    if-nez v2, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 147
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    move-object p2, v5

    .line 148
    :goto_0
    if-eqz p2, :cond_8

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v1, p1, p2, v5}, Lcom/sprd/classichome/model/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 152
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v1, p1, p2, v5}, Lcom/sprd/classichome/model/AllAppsList;->removePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 155
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v0, p1, p2, v5}, Lcom/sprd/classichome/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 158
    :cond_7
    iget-object p1, p0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-virtual {p1}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->isLoading()Z

    move-result p1

    if-nez p1, :cond_8

    .line 159
    iget-object p1, p0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-static {p1}, Lcom/sprd/classichome/model/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 163
    :cond_8
    return-void

    .line 142
    :cond_9
    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sprd/classichome/model/LauncherModel;->mNeedForceLoad:Z

    .line 143
    iget-object p1, p0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-static {p1}, Lcom/sprd/classichome/model/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 144
    return-void

    .line 133
    :cond_a
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 134
    iget p2, p0, Lcom/sprd/classichome/model/LauncherModel;->mPreDate:I

    if-eq p1, p2, :cond_b

    .line 135
    iput p1, p0, Lcom/sprd/classichome/model/LauncherModel;->mPreDate:I

    .line 136
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel;->onDateChanged()V

    .line 137
    return-void

    .line 139
    :cond_b
    return-void
.end method

.method public removeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V
    .locals 4

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 81
    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 108
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 109
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void

    .line 113
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 116
    return-void
.end method

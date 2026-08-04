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
            "Ljava/util/HashMap",
            "<",
            "Lcom/sprd/classichome/util/ComponentKey;",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mExtraApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mGameApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMainHandler:Landroid/os/Handler;

.field private static final mMainMenuApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
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

    .prologue
    .line 61
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG_LOADER:Z

    sput-boolean v0, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_LOADER:Z

    .line 62
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    sput-boolean v0, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_RECEIVER:Z

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    .line 75
    new-instance v0, Lcom/sprd/classichome/model/AllAppsList;

    invoke-direct {v0}, Lcom/sprd/classichome/model/AllAppsList;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mMainMenuApps:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mExtraApps:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mGameApps:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->mMainHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 92
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mNeedForceLoad:Z

    .line 99
    new-instance v0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;-><init>(Lcom/sprd/classichome/model/LauncherModel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    .line 100
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-static {v0}, Lcom/sprd/classichome/model/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/model/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/classichome/model/LauncherModel;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mNeedForceLoad:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sprd/classichome/model/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/model/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sprd/classichome/model/LauncherModel;->mNeedForceLoad:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sprd/classichome/model/LauncherModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/model/LauncherModel;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel;->notifyAppsUpdated()V

    return-void
.end method

.method static synthetic access$200(Lcom/sprd/classichome/model/LauncherModel;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/model/LauncherModel;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sprd/classichome/model/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mMainMenuApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mGameApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mExtraApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getExtraAppsList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mMainMenuApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private notifyAppsUpdated()V
    .locals 4

    .prologue
    .line 132
    iget-object v3, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 133
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sprd/classichome/model/HomeMonitorCallbacks;>;"
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .line 134
    .local v1, "cb":Lcom/sprd/classichome/model/HomeMonitorCallbacks;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Lcom/sprd/classichome/model/HomeMonitorCallbacks;->notifyAppsUpdated()V

    goto :goto_0

    .line 138
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sprd/classichome/model/HomeMonitorCallbacks;>;"
    .end local v1    # "cb":Lcom/sprd/classichome/model/HomeMonitorCallbacks;
    :cond_1
    return-void
.end method

.method private onDateChanged()V
    .locals 4

    .prologue
    .line 123
    iget-object v3, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 124
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sprd/classichome/model/HomeMonitorCallbacks;>;"
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .line 125
    .local v1, "cb":Lcom/sprd/classichome/model/HomeMonitorCallbacks;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/sprd/classichome/model/HomeMonitorCallbacks;->onDateChanged()V

    goto :goto_0

    .line 129
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sprd/classichome/model/HomeMonitorCallbacks;>;"
    .end local v1    # "cb":Lcom/sprd/classichome/model/HomeMonitorCallbacks;
    :cond_1
    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 141
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 143
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 156
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 157
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V
    .locals 3
    .param p1, "cb"    # Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/sprd/classichome/model/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    if-eqz p1, :cond_0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 166
    sget-boolean v4, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_RECEIVER:Z

    if-eqz v4, :cond_0

    const-string v4, "Gridhome.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 173
    .local v1, "curDate":I
    iget v3, p0, Lcom/sprd/classichome/model/LauncherModel;->mPreDate:I

    if-eq v1, v3, :cond_2

    .line 174
    iput v1, p0, Lcom/sprd/classichome/model/LauncherModel;->mPreDate:I

    .line 175
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel;->onDateChanged()V

    .line 201
    .end local v1    # "curDate":I
    :cond_2
    :goto_0
    return-void

    .line 177
    :cond_3
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 179
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sprd/classichome/model/LauncherModel;->mNeedForceLoad:Z

    .line 180
    iget-object v3, p0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-static {v3}, Lcom/sprd/classichome/model/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 181
    :cond_5
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "pkgName":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_2

    .line 187
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 188
    sget-object v4, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v4, p1, v2, v3}, Lcom/sprd/classichome/model/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 190
    :cond_7
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 191
    sget-object v4, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v4, p1, v2, v3}, Lcom/sprd/classichome/model/AllAppsList;->removePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 193
    :cond_8
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 194
    sget-object v4, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v4, p1, v2, v3}, Lcom/sprd/classichome/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 196
    :cond_9
    iget-object v3, p0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-virtual {v3}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->isLoading()Z

    move-result v3

    if-nez v3, :cond_2

    .line 197
    iget-object v3, p0, Lcom/sprd/classichome/model/LauncherModel;->mLoaderTask:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-static {v3}, Lcom/sprd/classichome/model/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_a
    move-object v2, v3

    .line 184
    goto :goto_1
.end method

.method public removeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V
    .locals 4
    .param p1, "cb"    # Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .prologue
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, "removeCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/sprd/classichome/model/HomeMonitorCallbacks;>;>;"
    iget-object v3, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 115
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sprd/classichome/model/HomeMonitorCallbacks;>;"
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 116
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sprd/classichome/model/HomeMonitorCallbacks;>;"
    :cond_1
    iget-object v3, p0, Lcom/sprd/classichome/model/LauncherModel;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 120
    return-void
.end method

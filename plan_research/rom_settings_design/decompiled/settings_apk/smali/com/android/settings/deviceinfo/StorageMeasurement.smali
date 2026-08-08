.class public Lcom/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static final MEDIA_ITEMS:[Ljava/lang/String;

.field private static final MEDIA_URIS:[Ljava/lang/Object;

.field private static sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSize:J

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    const-string v0, "StorageMeasurement"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 75
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 95
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DCIM"

    aput-object v1, v0, v4

    const-string v1, "VIDEO"

    aput-object v1, v0, v3

    const-string v1, "MUSIC"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->MEDIA_ITEMS:[Ljava/lang/String;

    .line 97
    new-array v0, v6, [Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->MEDIA_URIS:[Ljava/lang/Object;

    .line 109
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    .line 196
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    .line 197
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 200
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 203
    return-void

    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_1
    move v1, v2

    .line 196
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseLongArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->MEDIA_ITEMS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->MEDIA_URIS:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 826
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 827
    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6
    .param p0, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 755
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v1

    .line 756
    .local v1, "size":J
    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDirectorySize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v1    # "size":J
    :goto_0
    return-wide v1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 116
    sget-object v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    monitor-enter v2

    .line 117
    :try_start_0
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 118
    .local v0, "value":Lcom/android/settings/deviceinfo/StorageMeasurement;
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    .end local v0    # "value":Lcom/android/settings/deviceinfo/StorageMeasurement;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    .line 120
    .restart local v0    # "value":Lcom/android/settings/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    monitor-exit v2

    return-object v0

    .line 123
    .end local v0    # "value":Lcom/android/settings/deviceinfo/StorageMeasurement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendExactUpdate(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 3
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    .line 237
    .local v0, "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v0, :cond_2

    .line 238
    sget-boolean v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "StorageMeasurement"

    const-string v2, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 236
    .end local v0    # "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    .restart local v0    # "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 6

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    .line 229
    .local v0, "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v0, :cond_1

    .line 233
    :goto_1
    return-void

    .line 228
    .end local v0    # "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    .restart local v0    # "receiver":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Lcom/android/settings/deviceinfo/StorageMeasurement;JJ)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 219
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 212
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 209
    :cond_1
    return-void
.end method

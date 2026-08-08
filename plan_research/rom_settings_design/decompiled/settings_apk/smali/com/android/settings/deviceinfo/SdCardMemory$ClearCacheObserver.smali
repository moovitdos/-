.class Lcom/android/settings/deviceinfo/SdCardMemory$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SdCardMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/SdCardMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/settings/deviceinfo/SdCardMemory;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/SdCardMemory;I)V
    .locals 0
    .param p1, "target"    # Lcom/android/settings/deviceinfo/SdCardMemory;
    .param p2, "remaining"    # I

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SdCardMemory$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/SdCardMemory;

    .line 375
    iput p2, p0, Lcom/android/settings/deviceinfo/SdCardMemory$ClearCacheObserver;->mRemaining:I

    .line 376
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 380
    monitor-enter p0

    .line 381
    :try_start_0
    iget v0, p0, Lcom/android/settings/deviceinfo/SdCardMemory$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/SdCardMemory$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SdCardMemory$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/SdCardMemory;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/SdCardMemory;->access$300(Lcom/android/settings/deviceinfo/SdCardMemory;)V

    .line 384
    :cond_0
    monitor-exit p0

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

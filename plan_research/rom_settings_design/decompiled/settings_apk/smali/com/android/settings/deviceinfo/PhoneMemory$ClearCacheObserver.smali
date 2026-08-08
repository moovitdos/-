.class Lcom/android/settings/deviceinfo/PhoneMemory$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PhoneMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PhoneMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/settings/deviceinfo/PhoneMemory;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PhoneMemory;I)V
    .locals 0
    .param p1, "target"    # Lcom/android/settings/deviceinfo/PhoneMemory;
    .param p2, "remaining"    # I

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneMemory$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PhoneMemory;

    .line 232
    iput p2, p0, Lcom/android/settings/deviceinfo/PhoneMemory$ClearCacheObserver;->mRemaining:I

    .line 233
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PhoneMemory;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/PhoneMemory;->access$200(Lcom/android/settings/deviceinfo/PhoneMemory;)V

    .line 241
    :cond_0
    monitor-exit p0

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

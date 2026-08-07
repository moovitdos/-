.class public Lcom/sprd/classichome/model/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# instance fields
.field public final added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final data:Ljava/util/HashMap;
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

.field public final removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 80
    invoke-static {p1, p2, p3}, Lcom/sprd/classichome/util/UtilitiesExt;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    iget-object v2, p0, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    monitor-exit v2

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 64
    iget-object v1, p0, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v1, p0, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    monitor-enter v1

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 69
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public put(Lcom/sprd/classichome/AppItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/sprd/classichome/AppItemInfo;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sprd/classichome/AppItemInfo;->getComponentKey()Lcom/sprd/classichome/util/ComponentKey;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public remove(Lcom/sprd/classichome/AppItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/sprd/classichome/AppItemInfo;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sprd/classichome/AppItemInfo;->getComponentKey()Lcom/sprd/classichome/util/ComponentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public removePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 87
    new-instance v0, Lcom/sprd/classichome/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, ""

    invoke-direct {v1, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p3}, Lcom/sprd/classichome/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 88
    .local v0, "cpk":Lcom/sprd/classichome/util/ComponentKey;
    iget-object v2, p0, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v2

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/sprd/classichome/model/AllAppsList;->removePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/sprd/classichome/model/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 96
    return-void
.end method

.class Lcom/sprd/classichome/BaseListActivity$1;
.super Lcom/sprd/classichome/model/HomeMonitorCallbacks;
.source "BaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/BaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/BaseListActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sprd/classichome/BaseListActivity$1;->this$0:Lcom/sprd/classichome/BaseListActivity;

    invoke-direct {p0}, Lcom/sprd/classichome/model/HomeMonitorCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAppsUpdated()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprd/classichome/BaseListActivity$1;->this$0:Lcom/sprd/classichome/BaseListActivity;

    iget-object v0, v0, Lcom/sprd/classichome/BaseListActivity;->mAdapter:Lcom/sprd/classichome/BaseListAdapter;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sprd/classichome/BaseListActivity$1;->this$0:Lcom/sprd/classichome/BaseListActivity;

    iget-object v0, v0, Lcom/sprd/classichome/BaseListActivity;->mAdapter:Lcom/sprd/classichome/BaseListAdapter;

    iget-object v1, p0, Lcom/sprd/classichome/BaseListActivity$1;->this$0:Lcom/sprd/classichome/BaseListActivity;

    invoke-virtual {v1}, Lcom/sprd/classichome/BaseListActivity;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/BaseListAdapter;->notifyAppsUpdated(Ljava/util/ArrayList;)V

    .line 40
    :cond_0
    return-void
.end method

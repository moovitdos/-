.class public abstract Lcom/sprd/classichome/BaseListActivity;
.super Landroid/app/Activity;
.source "BaseListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field protected mAdapter:Lcom/sprd/classichome/BaseListAdapter;

.field private mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mListView:Landroid/widget/ListView;

.field protected mModel:Lcom/sprd/classichome/model/LauncherModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lcom/sprd/classichome/BaseListActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/BaseListActivity$1;-><init>(Lcom/sprd/classichome/BaseListActivity;)V

    iput-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/sprd/classichome/BaseListAdapter;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/BaseListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mAdapter:Lcom/sprd/classichome/BaseListAdapter;

    .line 59
    iget-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mAdapter:Lcom/sprd/classichome/BaseListAdapter;

    invoke-virtual {p0}, Lcom/sprd/classichome/BaseListActivity;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/BaseListAdapter;->setApps(Ljava/util/ArrayList;)V

    .line 60
    iget-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprd/classichome/BaseListActivity;->mAdapter:Lcom/sprd/classichome/BaseListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method abstract getApps()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/HomeApplication;

    iget-object v1, p0, Lcom/sprd/classichome/BaseListActivity;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/HomeApplication;->setHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)Lcom/sprd/classichome/model/LauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mModel:Lcom/sprd/classichome/model/LauncherModel;

    .line 49
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 50
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mListView:Landroid/widget/ListView;

    .line 51
    invoke-direct {p0}, Lcom/sprd/classichome/BaseListActivity;->initListView()V

    .line 52
    invoke-virtual {p0}, Lcom/sprd/classichome/BaseListActivity;->setSoftKey()V

    .line 53
    invoke-static {p0}, Landroid/app/EventRecordManager;->getInstance(Landroid/content/Context;)Landroid/app/EventRecordManager;

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/HomeApplication;

    iget-object v1, p0, Lcom/sprd/classichome/BaseListActivity;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/HomeApplication;->removeHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V

    .line 80
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/AppItemInfo;

    iget-object v2, v1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/AppItemInfo;

    iget-object v1, v1, Lcom/sprd/classichome/AppItemInfo;->clsName:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/sprd/common/util/Utilities;->constructLauncherIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 90
    const-string v2, "com.android.browser"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/AppItemInfo;

    iget-object v1, v1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {p0}, Landroid/app/EventRecordManager;->getInstance(Landroid/content/Context;)Landroid/app/EventRecordManager;

    move-result-object v1

    const-string v2, "OPEN_BROWSER"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/app/EventRecordManager;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p2, :cond_0

    .line 105
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected setSoftKey()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/sprd/PlatformHelper;->isTargetBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/BaseListActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->LFK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {v0, v1}, Lcom/sprd/common/util/FeatureBarUtil;->hideSoftKey(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;)V

    .line 71
    return-void
.end method

.class public Lcom/sprd/classichome/mainmenu/MainMenuActivity;
.super Lcom/sprd/classichome/BaseHomeActivity;
.source "MainMenuActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mAdapter:Lcom/sprd/classichome/mainmenu/MainMenuAdapter;

.field mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sprd/classichome/BaseHomeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/mainmenu/MainMenuActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/classichome/mainmenu/MainMenuActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 58
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 59
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mTitle:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    .line 61
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;

    iget-object v1, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-direct {v0, v1}, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;-><init>(Landroid/widget/GridView;)V

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mAdapter:Lcom/sprd/classichome/mainmenu/MainMenuAdapter;

    .line 63
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mAdapter:Lcom/sprd/classichome/mainmenu/MainMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 65
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/sprd/classichome/mainmenu/MainMenuActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity$1;-><init>(Lcom/sprd/classichome/mainmenu/MainMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->setSoftKey()V

    .line 75
    return-void
.end method

.method private updateTitle(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "read"    # Z

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/AppItemInfo;

    .line 88
    .local v0, "itemInfo":Lcom/sprd/classichome/AppItemInfo;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, v0, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0    # "itemInfo":Lcom/sprd/classichome/AppItemInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 136
    invoke-static {p0}, Lcom/sprd/classichome/util/UtilitiesExt;->goHome(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/sprd/classichome/BaseHomeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->setupViews()V

    .line 46
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/BaseHomeActivity;->enableWallpaperShowing(Z)V

    .line 47
    iput-object p0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p0}, Landroid/app/EventRecordManager;->getInstance(Landroid/content/Context;)Landroid/app/EventRecordManager;

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 116
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
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

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 122
    const-string v2, "com.android.browser"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/AppItemInfo;

    iget-object v1, v1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {p0}, Landroid/app/EventRecordManager;->getInstance(Landroid/content/Context;)Landroid/app/EventRecordManager;

    move-result-object v1

    const-string v2, "OPEN_BROWSER"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/app/EventRecordManager;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper;->handleItemLongClick(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"     # I
    .param p3, "data"           # Landroid/content/Intent;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/sprd/classichome/BaseHomeActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->updateTitle(IZ)V

    .line 100
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
    .line 112
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected setSoftKey()V
    .locals 3

    .prologue
    const v2, 0x7f090002

    .line 78
    invoke-virtual {p0, p0}, Lcom/sprd/classichome/BaseHomeActivity;->setupFeatureBar(Landroid/app/Activity;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 79
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->LFK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {v0, v1}, Lcom/sprd/common/util/FeatureBarUtil;->hideSoftKey(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;)V

    .line 81
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->MDK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {p0, v0, v1, v2}, Lcom/sprd/common/util/FeatureBarUtil;->setTextColor(Landroid/content/Context;Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;I)V

    .line 82
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->RTK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {p0, v0, v1, v2}, Lcom/sprd/common/util/FeatureBarUtil;->setTextColor(Landroid/content/Context;Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;I)V

    .line 83
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

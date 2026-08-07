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

    .line 23
    invoke-direct {p0}, Lcom/sprd/classichome/BaseHomeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/mainmenu/MainMenuActivity;)Landroid/widget/GridView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method private setupViews()V
    .locals 2

    .line 50
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mTitle:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    .line 53
    if-eqz v0, :cond_0

    .line 58
    nop

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getMenuColumns(Landroid/content/Context;)I

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 63
    :goto_0
    new-instance v0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;

    iget-object v1, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-direct {v0, v1}, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;-><init>(Landroid/widget/GridView;)V

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mAdapter:Lcom/sprd/classichome/mainmenu/MainMenuAdapter;

    .line 64
    iget-object v1, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 66
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/sprd/classichome/mainmenu/MainMenuActivity$1;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity$1;-><init>(Lcom/sprd/classichome/mainmenu/MainMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->setSoftKey()V

    .line 76
    return-void
.end method

.method private updateTitle(IZ)V
    .locals 0

    .line 87
    iget-object p2, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mGridView:Landroid/widget/GridView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/AppItemInfo;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p1, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/sprd/classichome/BaseHomeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 138
    invoke-static {p0}, Lcom/sprd/classichome/util/UtilitiesExt;->goHome(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/sprd/classichome/BaseHomeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->setupViews()V

    .line 33
    invoke-virtual {p0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->enableWallpaperShowing(Z)V

    .line 34
    iput-object p0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p0}, Landroid/app/EventRecordManager;->getInstance(Landroid/content/Context;)Landroid/app/EventRecordManager;

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/sprd/classichome/BaseHomeActivity;->onDestroy()V

    .line 41
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 111
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/AppItemInfo;

    iget-object p1, p1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sprd/classichome/AppItemInfo;

    iget-object p3, p3, Lcom/sprd/classichome/AppItemInfo;->clsName:Ljava/lang/String;

    invoke-static {p0, p1, p3}, Lcom/sprd/common/util/Utilities;->constructLauncherIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 113
    invoke-static {p0, p1}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/AppItemInfo;

    iget-object p1, p1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    const-string p2, "com.android.browser"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-static {p0}, Landroid/app/EventRecordManager;->getInstance(Landroid/content/Context;)Landroid/app/EventRecordManager;

    move-result-object p1

    const-string p2, "OPEN_BROWSER"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Landroid/app/EventRecordManager;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 123
    if-nez p1, :cond_0

    .line 124
    const/4 p1, 0x0

    return p1

    .line 126
    :cond_0
    invoke-static {p0, p1}, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper;->handleItemLongClick(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 127
    return p3

    .line 129
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string p4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    check-cast p1, Lcom/sprd/classichome/AppItemInfo;

    iget-object p1, p1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    const/4 p4, 0x0

    const-string p5, "package"

    invoke-static {p5, p1, p4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, p2}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return p3
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 94
    const/4 p1, 0x1

    invoke-direct {p0, p3, p1}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->updateTitle(IZ)V

    .line 95
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 107
    return-void
.end method

.method protected setSoftKey()V
    .locals 3

    .line 79
    invoke-virtual {p0, p0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->setupFeatureBar(Landroid/app/Activity;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 80
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->LFK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {v0, v1}, Lcom/sprd/common/util/FeatureBarUtil;->hideSoftKey(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;)V

    .line 81
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->MDK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    const v2, 0x7f090002

    invoke-static {p0, v0, v1, v2}, Lcom/sprd/common/util/FeatureBarUtil;->setTextColor(Landroid/content/Context;Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;I)V

    .line 82
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->RTK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {p0, v0, v1, v2}, Lcom/sprd/common/util/FeatureBarUtil;->setTextColor(Landroid/content/Context;Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;I)V

    .line 83
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/sprd/classichome/BaseHomeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

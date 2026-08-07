.class public Lcom/sprd/wallpaperpicker/SetWallpaperActivity;
.super Landroid/app/Activity;
.source "SetWallpaperActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mGridView:Lcom/sprd/common/view/LoopGridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->mGridView:Lcom/sprd/common/view/LoopGridView;

    return-void
.end method

.method private handleCenterKey(I)V
    .locals 3

    .prologue
    .line 55
    sget-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetWallpaperActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCenterKey id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v2, "Position"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    return-void
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    .line 64
    sget-boolean v1, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SetWallpaperActivity"

    const-string v2, "setAdapter"

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    const v1, 0x7f0d0017

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sprd/common/view/LoopGridView;

    iput-object v1, p0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->mGridView:Lcom/sprd/common/view/LoopGridView;

    .line 66
    new-instance v0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;

    invoke-direct {v0, p0}, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "adapter":Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->mGridView:Lcom/sprd/common/view/LoopGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->mGridView:Lcom/sprd/common/view/LoopGridView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    return-void
.end method

.method private setSoftKey()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/sprd/PlatformHelper;->isTargetBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->LFK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {v0, v1}, Lcom/sprd/common/util/FeatureBarUtil;->hideSoftKey(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 35
    sget-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetWallpaperActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 41
    :cond_3
    if-ltz p2, :cond_1

    .line 42
    iget-object v0, p0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->mGridView:Lcom/sprd/common/view/LoopGridView;

    invoke-virtual {v0, p2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    sget-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetWallpaperActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->setAdapter()V

    .line 30
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->setSoftKey()V

    .line 31
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 73
    .local p1, "container":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetWallpaperActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick mPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-direct {p0, p3}, Lcom/sprd/wallpaperpicker/SetWallpaperActivity;->handleCenterKey(I)V

    .line 75
    return-void
.end method

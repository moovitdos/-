.class public Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;
.super Landroid/app/Activity;
.source "PreviewWallpaperActivity.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mERManager:Landroid/app/EventRecordManager;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mPosition:I

.field private mWallpaperCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    return-void
.end method

.method private handleBackKey()V
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 109
    return-void
.end method

.method private handleCenterKey()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->setWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 116
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 118
    return-void
.end method

.method private handleLeftKey()V
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    .line 104
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->updateBackgroundImage()V

    .line 105
    return-void

    .line 103
    :cond_0
    iget v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mWallpaperCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private handleRightKey()V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mWallpaperCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    .line 99
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->updateBackgroundImage()V

    .line 100
    return-void
.end method

.method private setSoftKey()V
    .locals 4

    .prologue
    const/high16 v3, 0x7f090000

    .line 86
    invoke-static {}, Lcom/sprd/PlatformHelper;->isTargetBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v1, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, v1, v2

    .line 90
    .local v0, "softBarAlpha":F
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sprd/common/util/FeatureBarUtil;->setBackgroundAlpha(Lcom/sprd/android/support/featurebar/FeatureBarHelper;I)V

    .line 92
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v2, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->LFK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {v1, v2}, Lcom/sprd/common/util/FeatureBarUtil;->hideSoftKey(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;)V

    .line 93
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v2, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->MDK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {p0, v1, v2, v3}, Lcom/sprd/common/util/FeatureBarUtil;->setTextColor(Landroid/content/Context;Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;I)V

    .line 94
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    sget-object v2, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->RTK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {p0, v1, v2, v3}, Lcom/sprd/common/util/FeatureBarUtil;->setTextColor(Landroid/content/Context;Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;I)V

    .line 95
    return-void
.end method

.method private setWallpaper()Z
    .locals 8

    .prologue
    .line 126
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 128
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    :try_start_0
    iget v5, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    invoke-static {p0, v5}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->getWallpaperRes(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :try_start_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0a0000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "wallpapers":[Ljava/lang/String;
    iget v5, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    aget-object v1, v4, v5

    .line 134
    .local v1, "wallpaper":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "wallpaperName":Ljava/lang/String;
    const-string v5, "duoqin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " wallpaper "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; wallpaperName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v5, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mERManager:Landroid/app/EventRecordManager;

    const-string v6, "SET_WALLPAPER"

    invoke-virtual {v5, v6, v3}, Landroid/app/EventRecordManager;->onEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .end local v1    # "wallpaper":Ljava/lang/String;
    .end local v3    # "wallpaperName":Ljava/lang/String;
    .end local v4    # "wallpapers":[Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    .line 148
    :goto_1
    return v5

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 146
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "PreviewWallpaperActivity"

    const-string v6, "setWallpaper fail"

    invoke-static {v5, v6, v0}, Lcom/sprd/common/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateBackgroundImage()V
    .locals 3

    .prologue
    .line 121
    sget-boolean v0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PreviewWallpaperActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBackgroundImage mPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    invoke-static {p0, v1}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->getWallpaperRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    sget-boolean v0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PreviewWallpaperActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mPosition:I

    .line 35
    :cond_1
    invoke-static {p0}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->getWallpaperResCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mWallpaperCount:I

    .line 36
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->updateBackgroundImage()V

    .line 37
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->setSoftKey()V

    .line 39
    invoke-static {p0}, Landroid/app/EventRecordManager;->getInstance(Landroid/content/Context;)Landroid/app/EventRecordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->mERManager:Landroid/app/EventRecordManager;

    .line 40
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 78
    sget-boolean v0, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PreviewWallpaperActivity"

    const-string v1, "getRepeatCount"

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "returnValue":Z
    sget-boolean v1, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PreviewWallpaperActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 47
    sget-boolean v1, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "PreviewWallpaperActivity"

    const-string v2, "onKeyUp  short press"

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 72
    :cond_2
    :goto_0
    return v0

    .line 50
    :sswitch_0
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->handleLeftKey()V

    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 54
    :sswitch_1
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->handleRightKey()V

    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 58
    :sswitch_2
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->handleCenterKey()V

    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 62
    :sswitch_3
    invoke-direct {p0}, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->handleBackKey()V

    .line 63
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 64
    goto :goto_0

    .line 70
    :cond_3
    sget-boolean v1, Lcom/sprd/wallpaperpicker/PreviewWallpaperActivity;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "PreviewWallpaperActivity"

    const-string v2, "onKeyUp  long press"

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
    .end sparse-switch
.end method

.class public abstract Lcom/sprd/classichome/BaseHomeActivity;
.super Landroid/app/Activity;
.source "BaseHomeActivity.java"


# instance fields
.field protected mDefaultWindowBg:Landroid/graphics/drawable/Drawable;

.field protected mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mLongPressKey:Z

.field private mSoftBarAlpha:F

.field protected mWindowBg:Landroid/graphics/drawable/Drawable;

.field private mWindowBgAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private updateWallpaperVisibility(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/high16 v3, 0x100000

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 110
    .local v1, "win":Landroid/view/Window;
    if-eqz p1, :cond_2

    move v2, v3

    .line 111
    .local v2, "wpflags":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v4, v3

    .line 113
    .local v0, "curflags":I
    if-eq v2, v0, :cond_0

    .line 114
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/sprd/classichome/BaseHomeActivity;->mWindowBg:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lcom/sprd/classichome/BaseHomeActivity;->mWindowBgAlpha:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 118
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/sprd/classichome/BaseHomeActivity;->mWindowBg:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    if-eqz p1, :cond_1

    .line 121
    iget-object v3, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-static {v3}, Lcom/sprd/common/util/FeatureBarUtil;->setBackgroundNull(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    .line 126
    :cond_1
    return-void

    .line 110
    .end local v0    # "curflags":I
    .end local v2    # "wpflags":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 118
    .restart local v0    # "curflags":I
    .restart local v2    # "wpflags":I
    :cond_3
    iget-object v3, p0, Lcom/sprd/classichome/BaseHomeActivity;->mDefaultWindowBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method protected enableWallpaperShowing(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 101
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "BaseHomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWallpaperShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/sprd/classichome/BaseHomeActivity;->updateWallpaperVisibility(Z)V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mDefaultWindowBg:Landroid/graphics/drawable/Drawable;

    .line 38
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mWindowBg:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mWindowBgAlpha:F

    .line 40
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mSoftBarAlpha:F

    .line 41
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 72
    sget-boolean v2, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "BaseHomeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: keyCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/sprd/common/util/KeyCodeEventUtil;->isLauncherNeedUseKeycode(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 84
    :cond_1
    :goto_0
    return v1

    .line 77
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 78
    .local v0, "repeatCount":I
    if-nez v0, :cond_3

    .line 79
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 80
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sprd/classichome/BaseHomeActivity;->mLongPressKey:Z

    goto :goto_0

    .line 81
    :cond_3
    if-lez v0, :cond_1

    .line 82
    iput-boolean v1, p0, Lcom/sprd/classichome/BaseHomeActivity;->mLongPressKey:Z

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    invoke-static {p1}, Lcom/sprd/common/util/KeyCodeEventUtil;->isLauncherNeedUseKeycode(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-static {p0, p1}, Lcom/sprd/common/util/KeyCodeEventUtil;->longPressKeyEventForMainActivity(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 96
    .local v0, "result":Z
    :goto_1
    sget-boolean v1, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseHomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyLongPress: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v0    # "result":Z
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/sprd/common/util/KeyCodeEventUtil;->isLauncherNeedUseKeycode(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    iget-boolean v1, p0, Lcom/sprd/classichome/BaseHomeActivity;->mLongPressKey:Z

    if-nez v1, :cond_2

    .line 59
    invoke-static {p0, p1, p2}, Lcom/sprd/common/util/KeyCodeEventUtil;->pressKeyEventForMainActivity(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 62
    :cond_2
    if-nez v0, :cond_3

    .line 63
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 66
    :cond_3
    sget-boolean v1, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseHomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setupFeatureBar(Landroid/app/Activity;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-static {}, Lcom/sprd/PlatformHelper;->isTargetBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    return-object v0
.end method

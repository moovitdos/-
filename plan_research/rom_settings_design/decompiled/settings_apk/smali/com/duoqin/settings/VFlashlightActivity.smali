.class public Lcom/duoqin/settings/VFlashlightActivity;
.super Landroid/app/Activity;
.source "VFlashlightActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setWindowBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 30
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 31
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 18
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 46
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 38
    const-string v0, "VFlashlightActivity"

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lcom/duoqin/settings/VFlashlightActivity;->setWindowBrightness(F)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 23
    const-string v0, "VFlashlightActivity"

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/duoqin/settings/VFlashlightActivity;->setWindowBrightness(F)V

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 26
    return-void
.end method

.class public Lcom/sprd/PlatformHelper;
.super Ljava/lang/Object;
.source "PlatformHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLayoutRtl(Landroid/widget/GridView;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/GridView;

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "ret":Z
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    .line 19
    :cond_0
    return v0
.end method

.method public static isTargetBuild()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method

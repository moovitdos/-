.class public Lcom/sprd/wallpaperpicker/WallpaperUtil;
.super Ljava/lang/Object;
.source "WallpaperUtil.java"


# static fields
.field private static final DEBUG:Z

.field private static mResIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/sprd/wallpaperpicker/WallpaperUtil;->DEBUG:Z

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWallpaperRes(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .prologue
    .line 27
    sget-object v0, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->initWallpaperResArray(Landroid/content/Context;)V

    .line 30
    :cond_0
    sget-object v0, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 31
    sget-boolean v0, Lcom/sprd/wallpaperpicker/WallpaperUtil;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WallpaperUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWallpaperRes position too big, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mResIds.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public static getWallpaperResCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->initWallpaperResArray(Landroid/content/Context;)V

    .line 40
    :cond_0
    sget-object v0, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    array-length v0, v0

    return v0
.end method

.method public static initWallpaperResArray(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v3, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    if-nez v3, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0a0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 17
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    const/4 v0, -0x1

    .line 18
    .local v0, "defValue":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    .line 19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 20
    sget-object v3, Lcom/sprd/wallpaperpicker/WallpaperUtil;->mResIds:[I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v1

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    .end local v0    # "defValue":I
    .end local v1    # "i":I
    .end local v2    # "typedArray":Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method

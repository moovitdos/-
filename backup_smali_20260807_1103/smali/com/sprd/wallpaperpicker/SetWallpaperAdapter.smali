.class public Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetWallpaperAdapter.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->mContext:Landroid/content/Context;

    .line 19
    sget-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetWallpaperAdapter"

    const-string v1, "SetWallpaperAdapter"

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 25
    sget-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetWallpaperAdapter"

    const-string v1, "getCount"

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->getWallpaperResCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 31
    sget-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetWallpaperAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->getWallpaperRes(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 37
    sget-boolean v0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetWallpaperAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemId , position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f0d0016

    .line 43
    sget-boolean v1, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SetWallpaperAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView , position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->getWallpaperRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->getWallpaperRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    return-object p2

    .line 50
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/sprd/wallpaperpicker/SetWallpaperAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sprd/wallpaperpicker/WallpaperUtil;->getWallpaperRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

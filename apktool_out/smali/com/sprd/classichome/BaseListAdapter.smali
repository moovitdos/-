.class public Lcom/sprd/classichome/BaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseListAdapter.java"


# instance fields
.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/BaseListAdapter;->mApps:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/sprd/classichome/BaseListAdapter;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/sprd/classichome/BaseListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sprd/classichome/BaseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprd/classichome/BaseListAdapter;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sprd/classichome/BaseListAdapter;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v3, p0, Lcom/sprd/classichome/BaseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/sprd/classichome/BaseListAdapter;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/AppItemInfo;

    .line 58
    .local v2, "info":Lcom/sprd/classichome/AppItemInfo;
    const v3, 0x7f0d0001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    .local v0, "appIcon":Landroid/widget/ImageView;
    iget-object v3, v2, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const v3, 0x7f0d0002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "appName":Landroid/widget/TextView;
    iget-object v3, v2, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    return-object p2
.end method

.method public notifyAppsUpdated(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    invoke-virtual {p0, p1}, Lcom/sprd/classichome/BaseListAdapter;->setApps(Ljava/util/ArrayList;)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method setApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    iget-object v0, p0, Lcom/sprd/classichome/BaseListAdapter;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    iget-object v0, p0, Lcom/sprd/classichome/BaseListAdapter;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    return-void
.end method

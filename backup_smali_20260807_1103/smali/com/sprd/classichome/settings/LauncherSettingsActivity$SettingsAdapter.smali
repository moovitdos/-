.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;",
            ">;)V"
        }
    .end annotation

    .line 761
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 762
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    .line 763
    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    .line 764
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 778
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    iget p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    .line 800
    iget v0, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 802
    if-nez p2, :cond_0

    .line 803
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 804
    const/high16 p3, 0x41500000    # 13.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 805
    const/16 p3, -0x4d00

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 806
    const/16 p3, 0x10

    const/4 v0, 0x6

    const/16 v2, 0xc

    invoke-virtual {p2, v2, p3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 807
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 809
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    .line 811
    :goto_0
    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    return-object p2

    .line 814
    :cond_1
    nop

    .line 816
    if-nez p2, :cond_2

    .line 817
    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x1090004

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 818
    new-instance p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;)V

    .line 819
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 820
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 821
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 823
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 824
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v2, -0x555556

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 825
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 826
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 827
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 829
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;

    .line 832
    :goto_1
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    iget-object p3, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 783
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    iget p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

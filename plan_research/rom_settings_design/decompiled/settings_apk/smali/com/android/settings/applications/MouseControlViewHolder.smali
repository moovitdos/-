.class public Lcom/android/settings/applications/MouseControlViewHolder;
.super Ljava/lang/Object;
.source "MouseControlViewHolder.java"


# instance fields
.field public mAppIcon:Landroid/widget/ImageView;

.field public mAppName:Landroid/widget/TextView;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/MouseControlViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 22
    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/settings/applications/MouseControlViewHolder;

    invoke-direct {v0}, Lcom/android/settings/applications/MouseControlViewHolder;-><init>()V

    .line 25
    .local v0, "holder":Lcom/android/settings/applications/MouseControlViewHolder;
    iput-object p1, v0, Lcom/android/settings/applications/MouseControlViewHolder;->mRootView:Landroid/view/View;

    .line 26
    const v1, 0x7f0b0021

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applications/MouseControlViewHolder;->mAppName:Landroid/widget/TextView;

    .line 27
    const v1, 0x7f0b0020

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings/applications/MouseControlViewHolder;->mAppIcon:Landroid/widget/ImageView;

    .line 29
    const v1, 0x7f0b0025

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/applications/MouseControlViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 31
    iget-object v1, v0, Lcom/android/settings/applications/MouseControlViewHolder;->mAppIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    .end local v0    # "holder":Lcom/android/settings/applications/MouseControlViewHolder;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/MouseControlViewHolder;

    move-object v0, v1

    goto :goto_0
.end method

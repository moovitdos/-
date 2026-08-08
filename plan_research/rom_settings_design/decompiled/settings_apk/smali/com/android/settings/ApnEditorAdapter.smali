.class public Lcom/android/settings/ApnEditorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApnEditorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnEditorAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public isSelected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mArray:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFullApn:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p1, p0, Lcom/android/settings/ApnEditorAdapter;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/android/settings/ApnEditorAdapter;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    .line 33
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/settings/ApnEditorAdapter;->mData:Ljava/util/List;

    .line 34
    iget-object v6, p0, Lcom/android/settings/ApnEditorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0081

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ApnEditorAdapter;->mArray:[Ljava/lang/String;

    .line 35
    iget-object v6, p0, Lcom/android/settings/ApnEditorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ApnEditorAdapter;->mFullApn:[Ljava/lang/String;

    .line 36
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/settings/ApnEditorAdapter;->isSelected:Ljava/util/Map;

    .line 37
    iget-object v1, p0, Lcom/android/settings/ApnEditorAdapter;->mArray:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 38
    .local v0, "apntype":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "title"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v6, p0, Lcom/android/settings/ApnEditorAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "apntype":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/settings/ApnEditorAdapter;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 43
    iget-object v6, p0, Lcom/android/settings/ApnEditorAdapter;->isSelected:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/ApnEditorAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntries()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v2, ""

    .line 99
    .local v2, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ApnEditorAdapter;->isSelected:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/settings/ApnEditorAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/android/settings/ApnEditorAdapter;->isSelected:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-object v1
.end method

.method public getFullArray()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/ApnEditorAdapter;->mFullApn:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 73
    .local v0, "apnType":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOrigArray()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/ApnEditorAdapter;->mArray:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 65
    .local v0, "apnType":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public getPositionByText(Ljava/lang/String;)I
    .locals 10
    .param p1, "apnString"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 79
    const-string v6, ""

    .line 80
    .local v6, "text":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/ApnEditorAdapter;->mArray:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 82
    .local v0, "apn":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "apn":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v8

    .line 93
    :cond_1
    :goto_1
    return v2

    .line 87
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/settings/ApnEditorAdapter;->mArray:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 88
    iget-object v7, p0, Lcom/android/settings/ApnEditorAdapter;->mData:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "title"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v8

    .line 93
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "holder":Lcom/android/settings/ApnEditorAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 125
    new-instance v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/android/settings/ApnEditorAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/android/settings/ApnEditorAdapter$ViewHolder;-><init>(Lcom/android/settings/ApnEditorAdapter;)V

    .line 126
    .restart local v0    # "holder":Lcom/android/settings/ApnEditorAdapter$ViewHolder;
    iget-object v1, p0, Lcom/android/settings/ApnEditorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 127
    const v1, 0x7f0b0015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f0b0016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;->cBox:Landroid/widget/CheckBox;

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    :goto_0
    iget-object v2, v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ApnEditorAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;->cBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/ApnEditorAdapter;->isSelected:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 135
    return-object p2

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/settings/ApnEditorAdapter$ViewHolder;
    check-cast v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/ApnEditorAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setApnChecked(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;

    .line 49
    .local v0, "holder":Lcom/android/settings/ApnEditorAdapter$ViewHolder;
    iget-object v1, v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;->cBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->toggle()V

    .line 51
    iget-object v1, v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 55
    :cond_0
    iget-object v1, v0, Lcom/android/settings/ApnEditorAdapter$ViewHolder;->cBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/settings/ApnEditorAdapter;->isSelected:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnEditorAdapter;->isSelected:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

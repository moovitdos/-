.class public final Lcom/sprd/classichome/util/AppsSort;
.super Ljava/lang/Object;
.source "AppsSort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/util/AppsSort$2;,
        Lcom/sprd/classichome/util/AppsSort$SortType;
    }
.end annotation


# static fields
.field private static final NAME_METHODS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_METHODS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/sprd/classichome/util/AppsSort$1;

    invoke-direct {v0}, Lcom/sprd/classichome/util/AppsSort$1;-><init>()V

    sput-object v0, Lcom/sprd/classichome/util/AppsSort;->POSITION_METHODS:Ljava/util/Comparator;

    .line 27
    new-instance v0, Lcom/sprd/classichome/util/NameComparator;

    invoke-direct {v0}, Lcom/sprd/classichome/util/NameComparator;-><init>()V

    sput-object v0, Lcom/sprd/classichome/util/AppsSort;->NAME_METHODS:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static sort(Ljava/util/ArrayList;Lcom/sprd/classichome/util/AppsSort$SortType;)V
    .locals 2
    .param p1, "type"    # Lcom/sprd/classichome/util/AppsSort$SortType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;",
            "Lcom/sprd/classichome/util/AppsSort$SortType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "srcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    sget-object v0, Lcom/sprd/classichome/util/AppsSort$2;->$SwitchMap$com$sprd$classichome$util$AppsSort$SortType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 32
    :pswitch_0
    sget-object v0, Lcom/sprd/classichome/util/AppsSort;->NAME_METHODS:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 35
    :pswitch_1
    sget-object v0, Lcom/sprd/classichome/util/AppsSort;->POSITION_METHODS:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static verifyPosition(Ljava/util/ArrayList;)V
    .locals 9
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
    .line 43
    .local p0, "srcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v5, "posList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v6, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprd/classichome/AppItemInfo;

    .line 47
    .local v4, "info":Lcom/sprd/classichome/AppItemInfo;
    iget v7, v4, Lcom/sprd/classichome/AppItemInfo;->position:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    iget v7, v4, Lcom/sprd/classichome/AppItemInfo;->position:I

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_0

    .line 48
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v4    # "info":Lcom/sprd/classichome/AppItemInfo;
    :cond_1
    sget-object v7, Lcom/sprd/classichome/util/AppsSort$SortType;->POSITION:Lcom/sprd/classichome/util/AppsSort$SortType;

    invoke-static {v5, v7}, Lcom/sprd/classichome/util/AppsSort;->sort(Ljava/util/ArrayList;Lcom/sprd/classichome/util/AppsSort$SortType;)V

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 56
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/AppItemInfo;

    .line 57
    .local v0, "appInfo":Lcom/sprd/classichome/AppItemInfo;
    iget v7, v0, Lcom/sprd/classichome/AppItemInfo;->position:I

    add-int/lit8 v3, v7, -0x1

    .line 58
    .local v3, "index":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 59
    invoke-virtual {v6, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 55
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 64
    .end local v0    # "appInfo":Lcom/sprd/classichome/AppItemInfo;
    .end local v3    # "index":I
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 65
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    return-void
.end method

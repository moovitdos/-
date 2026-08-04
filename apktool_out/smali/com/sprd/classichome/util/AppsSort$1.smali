.class final Lcom/sprd/classichome/util/AppsSort$1;
.super Ljava/lang/Object;
.source "AppsSort.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/util/AppsSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sprd/classichome/AppItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sprd/classichome/AppItemInfo;Lcom/sprd/classichome/AppItemInfo;)I
    .locals 2
    .param p1, "a"    # Lcom/sprd/classichome/AppItemInfo;
    .param p2, "b"    # Lcom/sprd/classichome/AppItemInfo;

    .prologue
    .line 20
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Comparator AppItemInfo should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iget v0, p1, Lcom/sprd/classichome/AppItemInfo;->position:I

    iget v1, p2, Lcom/sprd/classichome/AppItemInfo;->position:I

    if-ge v0, v1, :cond_2

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/sprd/classichome/AppItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sprd/classichome/AppItemInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sprd/classichome/util/AppsSort$1;->compare(Lcom/sprd/classichome/AppItemInfo;Lcom/sprd/classichome/AppItemInfo;)I

    move-result v0

    return v0
.end method

.class public Lcom/sprd/classichome/util/NameComparator;
.super Ljava/lang/Object;
.source "NameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sprd/classichome/AppItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/util/NameComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sprd/classichome/AppItemInfo;Lcom/sprd/classichome/AppItemInfo;)I
    .locals 7
    .param p1, "appA"    # Lcom/sprd/classichome/AppItemInfo;
    .param p2, "appB"    # Lcom/sprd/classichome/AppItemInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 36
    iget-object v6, p1, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v6, :cond_1

    const-string v2, ""

    .line 37
    .local v2, "titleA":Ljava/lang/String;
    :goto_0
    iget-object v6, p2, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v6, :cond_2

    const-string v3, ""

    .line 39
    .local v3, "titleB":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 41
    .local v0, "aStartsWithLetter":Z
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 43
    .local v1, "bStartsWithLetter":Z
    :goto_3
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 44
    const/4 v4, -0x1

    .line 50
    :cond_0
    :goto_4
    return v4

    .line 36
    .end local v0    # "aStartsWithLetter":Z
    .end local v1    # "bStartsWithLetter":Z
    .end local v2    # "titleA":Ljava/lang/String;
    .end local v3    # "titleB":Ljava/lang/String;
    :cond_1
    iget-object v6, p1, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 37
    .restart local v2    # "titleA":Ljava/lang/String;
    :cond_2
    iget-object v6, p2, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .restart local v3    # "titleB":Ljava/lang/String;
    :cond_3
    move v0, v5

    .line 39
    goto :goto_2

    .restart local v0    # "aStartsWithLetter":Z
    :cond_4
    move v1, v5

    .line 41
    goto :goto_3

    .line 45
    .restart local v1    # "bStartsWithLetter":Z
    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_0

    .line 50
    :cond_6
    iget-object v4, p0, Lcom/sprd/classichome/util/NameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v4, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lcom/sprd/classichome/AppItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sprd/classichome/AppItemInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sprd/classichome/util/NameComparator;->compare(Lcom/sprd/classichome/AppItemInfo;Lcom/sprd/classichome/AppItemInfo;)I

    move-result v0

    return v0
.end method

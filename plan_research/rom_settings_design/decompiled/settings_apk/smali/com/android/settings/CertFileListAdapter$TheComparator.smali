.class public Lcom/android/settings/CertFileListAdapter$TheComparator;
.super Ljava/lang/Object;
.source "CertFileListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CertFileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TheComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/CertFileListAdapter$TheComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x100

    const/16 v9, 0x5b

    const/16 v8, 0x40

    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 79
    .local v2, "len1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 80
    .local v3, "len2":I
    if-gt v2, v3, :cond_3

    move v1, v2

    .line 81
    .local v1, "len":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_7

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 84
    .local v4, "value1":I
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 87
    .local v5, "value2":I
    if-le v4, v8, :cond_0

    if-ge v4, v9, :cond_0

    add-int/lit8 v4, v4, 0x20

    .line 88
    :cond_0
    if-le v5, v8, :cond_1

    if-ge v5, v9, :cond_1

    add-int/lit8 v5, v5, 0x20

    .line 90
    :cond_1
    if-ne v4, v5, :cond_4

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v4    # "value1":I
    .end local v5    # "value2":I
    :cond_3
    move v1, v3

    .line 80
    goto :goto_0

    .line 92
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v4    # "value1":I
    .restart local v5    # "value2":I
    :cond_4
    if-le v4, v10, :cond_2

    if-le v5, v10, :cond_2

    .line 94
    if-le v4, v5, :cond_6

    .line 102
    .end local v4    # "value1":I
    .end local v5    # "value2":I
    :cond_5
    :goto_2
    return v6

    .restart local v4    # "value1":I
    .restart local v5    # "value2":I
    :cond_6
    move v6, v7

    .line 94
    goto :goto_2

    .line 99
    .end local v4    # "value1":I
    .end local v5    # "value2":I
    :cond_7
    if-ne v2, v3, :cond_8

    .line 100
    const/4 v6, 0x0

    goto :goto_2

    .line 102
    :cond_8
    if-gt v2, v3, :cond_5

    move v6, v7

    goto :goto_2
.end method

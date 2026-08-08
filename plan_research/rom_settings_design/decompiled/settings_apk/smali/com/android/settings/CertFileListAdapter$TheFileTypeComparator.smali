.class public Lcom/android/settings/CertFileListAdapter$TheFileTypeComparator;
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
    name = "TheFileTypeComparator"
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
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/CertFileListAdapter$TheFileTypeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x100

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 114
    const-string v10, "."

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, "index":I
    if-eq v1, v8, :cond_1

    .line 116
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    :goto_0
    const-string v10, "."

    invoke-virtual {p2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 121
    if-eq v1, v8, :cond_2

    .line 122
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 126
    :goto_1
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    move v7, v9

    .line 154
    :cond_0
    :goto_2
    return v7

    .line 118
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 124
    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    .line 128
    :cond_3
    if-nez p1, :cond_4

    move v7, v8

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 137
    .local v3, "len1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 138
    .local v4, "len2":I
    if-gt v3, v4, :cond_6

    move v2, v3

    .line 139
    .local v2, "len":I
    :goto_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v2, :cond_8

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 142
    .local v5, "value1":I
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 143
    .local v6, "value2":I
    if-ne v5, v6, :cond_7

    .line 139
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    .end local v2    # "len":I
    .end local v5    # "value1":I
    .end local v6    # "value2":I
    :cond_6
    move v2, v4

    .line 138
    goto :goto_3

    .line 145
    .restart local v0    # "i":I
    .restart local v2    # "len":I
    .restart local v5    # "value1":I
    .restart local v6    # "value2":I
    :cond_7
    if-le v5, v11, :cond_5

    if-le v6, v11, :cond_5

    .line 147
    if-gt v5, v6, :cond_0

    move v7, v8

    goto :goto_2

    .line 151
    .end local v5    # "value1":I
    .end local v6    # "value2":I
    :cond_8
    if-ne v3, v4, :cond_9

    move v7, v9

    .line 152
    goto :goto_2

    .line 154
    :cond_9
    if-gt v3, v4, :cond_0

    move v7, v8

    goto :goto_2
.end method

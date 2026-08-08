.class Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;
.super Ljava/lang/Object;
.source "CertFileListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CertFileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TheFileSizeComparator"
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


# instance fields
.field final synthetic this$0:Lcom/android/settings/CertFileListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/CertFileListAdapter;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;->this$0:Lcom/android/settings/CertFileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 158
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 162
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;->this$0:Lcom/android/settings/CertFileListAdapter;

    invoke-static {v4}, Lcom/android/settings/CertFileListAdapter;->access$000(Lcom/android/settings/CertFileListAdapter;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v2, "file1":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;->this$0:Lcom/android/settings/CertFileListAdapter;

    invoke-static {v4}, Lcom/android/settings/CertFileListAdapter;->access$000(Lcom/android/settings/CertFileListAdapter;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v3, "file2":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 166
    .local v0, "diff":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_0

    .line 167
    const/4 v4, 0x0

    .line 169
    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v8

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

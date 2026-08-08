.class Lcom/android/settings/CertFileListAdapter$2;
.super Ljava/lang/Object;
.source "CertFileListAdapter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CertFileListAdapter;->sortImpl(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CertFileListAdapter;

.field final synthetic val$pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lcom/android/settings/CertFileListAdapter;Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings/CertFileListAdapter$2;->this$0:Lcom/android/settings/CertFileListAdapter;

    iput-object p2, p0, Lcom/android/settings/CertFileListAdapter$2;->val$pattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/CertFileListAdapter$2;->val$pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

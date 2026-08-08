.class public Lcom/duoqin/settings/DuoqinUtils;
.super Ljava/lang/Object;
.source "DuoqinUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 10
    const-string v2, ""

    .line 11
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v2

    .line 26
    .end local v2    # "title":Ljava/lang/CharSequence;
    .local v3, "title":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 15
    .end local v3    # "title":Ljava/lang/Object;
    .restart local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 17
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_1
    move-object v3, v2

    .line 26
    .restart local v3    # "title":Ljava/lang/Object;
    goto :goto_0

    .line 21
    .end local v3    # "title":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    const-string v2, ""

    goto :goto_1
.end method

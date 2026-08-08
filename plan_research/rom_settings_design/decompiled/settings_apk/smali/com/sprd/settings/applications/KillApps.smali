.class public Lcom/sprd/settings/applications/KillApps;
.super Ljava/lang/Object;
.source "KillApps.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private context:Landroid/content/Context;

.field private mKeepApp:[Ljava/lang/String;

.field private mKeepService:[Ljava/lang/String;

.field private mpm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sprd/settings/applications/KillApps;->context:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/settings/applications/KillApps;->mKeepApp:[Ljava/lang/String;

    .line 42
    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/settings/applications/KillApps;->mKeepService:[Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/sprd/settings/applications/KillApps;->am:Landroid/app/ActivityManager;

    .line 44
    iput-object p3, p0, Lcom/sprd/settings/applications/KillApps;->mpm:Landroid/content/pm/PackageManager;

    .line 45
    return-void
.end method

.method private checkKeepAppOrService(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "Pkg"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, "rth":Z
    packed-switch p2, :pswitch_data_0

    .line 73
    :cond_0
    return v4

    .line 55
    :pswitch_0
    iget-object v5, p0, Lcom/sprd/settings/applications/KillApps;->mKeepApp:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sprd/settings/applications/KillApps;->mKeepApp:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 57
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    const/4 v4, 0x1

    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/sprd/settings/applications/KillApps;->mKeepService:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sprd/settings/applications/KillApps;->mKeepService:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 66
    .restart local v3    # "pkg":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    const/4 v4, 0x1

    .line 65
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRunningApp()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/sprd/settings/applications/KillApps;->getRunningAppProcessesList()Ljava/util/List;

    move-result-object v7

    .line 83
    .local v7, "procList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 109
    :cond_0
    return-object v1

    .line 87
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 88
    .local v2, "appProcInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 89
    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v8

    .line 90
    .local v6, "pkgsize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v8, p0, Lcom/sprd/settings/applications/KillApps;->mpm:Landroid/content/pm/PackageManager;

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v9, v9, v5

    const/16 v10, 0x2000

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    if-eqz v0, :cond_3

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/sprd/settings/applications/KillApps;->checkKeepAppOrService(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 104
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v3

    .line 97
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "KillAllAppsAndServices"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error retrieving ApplicationInfo for pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getRunningAppProcessesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sprd/settings/applications/KillApps;->am:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getService()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v4, p0, Lcom/sprd/settings/applications/KillApps;->am:Landroid/app/ActivityManager;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 138
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "mServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 140
    .local v0, "NS":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 143
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/sprd/settings/applications/KillApps;->checkKeepAppOrService(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "NS":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    .restart local v0    # "NS":I
    .restart local v1    # "i":I
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    :cond_3
    return-object v2
.end method

.method public killApp()V
    .locals 6

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sprd/settings/applications/KillApps;->getRunningApp()Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "allRunningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 124
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v3, "KillApps & the names of be killed apps:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ******"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Lcom/sprd/settings/applications/KillApps;->am:Landroid/app/ActivityManager;

    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method

.method public killService()V
    .locals 6

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/sprd/settings/applications/KillApps;->getService()Ljava/util/List;

    move-result-object v0

    .line 162
    .local v0, "allRunningServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 163
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 164
    const-string v4, "KillApps & the names of be killed services:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****** "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ******"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, Lcom/sprd/settings/applications/KillApps;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

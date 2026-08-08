.class public Lcom/android/settings/applications/ApplicationsState$AppEntry;
.super Lcom/android/settings/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field final apkFile:Ljava/io/File;

.field externalSize:J

.field externalSizeStr:Ljava/lang/String;

.field icon:Landroid/graphics/drawable/Drawable;

.field final id:J

.field info:Landroid/content/pm/ApplicationInfo;

.field installTime:J

.field internalSize:J

.field internalSizeStr:Ljava/lang/String;

.field label:Ljava/lang/String;

.field mounted:Z

.field normalizedLabel:Ljava/lang/String;

.field size:J

.field sizeLoadStart:J

.field sizeStale:Z

.field sizeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "id"    # J

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->installTime:J

    .line 125
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 126
    iput-wide p3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    .line 127
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->setFirstInstallTime(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 133
    return-void
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const v3, 0x1080663

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 165
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 185
    :goto_0
    return v0

    .line 172
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_1
    move v0, v1

    .line 185
    goto :goto_0

    .line 176
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    goto :goto_0
.end method

.method ensureLabel(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v1, :cond_1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 153
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/Utils;->removeAndroidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 162
    :cond_1
    return-void

    .line 155
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 156
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 157
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method getNormalizedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    .line 108
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method setFirstInstallTime(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 139
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 140
    .local v1, "pak":Landroid/content/pm/PackageInfo;
    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->installTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "pak":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ApplicationsState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sorry, can not find this package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

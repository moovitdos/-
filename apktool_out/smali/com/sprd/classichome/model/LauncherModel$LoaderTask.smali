.class Lcom/sprd/classichome/model/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/model/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/sprd/classichome/model/LauncherModel;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/model/LauncherModel;Landroid/content/Context;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->this$0:Lcom/sprd/classichome/model/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mIsLoading:Z

    .line 170
    iput-object p2, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 171
    return-void
.end method

.method static synthetic access$402(Lcom/sprd/classichome/model/LauncherModel$LoaderTask;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mIsLoading:Z

    return p1
.end method

.method private addExtraApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 352
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 353
    :try_start_0
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 354
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 355
    sget-object v1, Lcom/sprd/classichome/util/AppsSort$SortType;->NAME:Lcom/sprd/classichome/util/AppsSort$SortType;

    invoke-static {p1, v1}, Lcom/sprd/classichome/util/AppsSort;->sort(Ljava/util/ArrayList;Lcom/sprd/classichome/util/AppsSort$SortType;)V

    .line 356
    invoke-static {p1}, Lcom/sprd/classichome/util/AppsSort;->verifyPosition(Ljava/util/ArrayList;)V

    .line 357
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 359
    :cond_0
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addGameApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 341
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 342
    :try_start_0
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 343
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 344
    sget-object v1, Lcom/sprd/classichome/util/AppsSort$SortType;->NAME:Lcom/sprd/classichome/util/AppsSort$SortType;

    invoke-static {p1, v1}, Lcom/sprd/classichome/util/AppsSort;->sort(Ljava/util/ArrayList;Lcom/sprd/classichome/util/AppsSort$SortType;)V

    .line 345
    invoke-static {p1}, Lcom/sprd/classichome/util/AppsSort;->verifyPosition(Ljava/util/ArrayList;)V

    .line 346
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 348
    :cond_0
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addMainMenuApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 330
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 331
    :try_start_0
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 332
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    sget-object v1, Lcom/sprd/classichome/util/AppsSort$SortType;->NAME:Lcom/sprd/classichome/util/AppsSort$SortType;

    invoke-static {p1, v1}, Lcom/sprd/classichome/util/AppsSort;->sort(Ljava/util/ArrayList;Lcom/sprd/classichome/util/AppsSort$SortType;)V

    .line 334
    invoke-static {p1}, Lcom/sprd/classichome/util/AppsSort;->verifyPosition(Ljava/util/ArrayList;)V

    .line 335
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    :cond_0
    monitor-exit v0

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getCusAppInfo(Lcom/sprd/classichome/AppItemInfo;)Lcom/sprd/classichome/AppItemInfo;
    .locals 4

    .line 273
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sprd/classichome/AppItemInfo;->getComponentKey()Lcom/sprd/classichome/util/ComponentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/AppItemInfo;

    .line 274
    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/sprd/classichome/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/sprd/classichome/AppItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p1}, Lcom/sprd/classichome/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 276
    sget-object p1, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/AppItemInfo;

    return-object p1

    .line 278
    :cond_0
    return-object v0
.end method

.method private loadAllApps()V
    .locals 8

    .line 197
    sget-boolean v0, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_LOADER:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "Gridhome.Model"

    const-string v1, "loadAllApps"

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v0, v0, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 202
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    check-cast v4, Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 205
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v3}, Lcom/sprd/classichome/model/AllAppsList;->clear()V

    .line 206
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 207
    new-instance v4, Lcom/sprd/classichome/AppItemInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/sprd/classichome/AppItemInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v3, v3, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    goto :goto_0

    .line 210
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprd/classichome/model/LauncherModel;->isLoaded:Z

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private loadCustomizeApp()V
    .locals 13

    .line 215
    sget-boolean v0, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_LOADER:Z

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "Gridhome.Model"

    const-string v1, "loadCustomizeApp:"

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    monitor-enter v0

    .line 219
    :try_start_0
    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :try_start_1
    iget-object v1, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 223
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 224
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 225
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 226
    const-string v6, "App"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sprd/simple/launcher/R$styleable;->AppInfo:[I

    invoke-virtual {v3, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 228
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 229
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 230
    const v4, 0x7fffffff

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 231
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 232
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 233
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 234
    if-eqz v9, :cond_1

    .line 235
    new-instance v4, Lcom/sprd/classichome/AppItemInfo;

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/sprd/classichome/AppItemInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    sget-object v5, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/sprd/classichome/AppItemInfo;->getComponentKey()Lcom/sprd/classichome/util/ComponentKey;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :cond_3
    goto :goto_1

    .line 242
    :catch_0
    move-exception v1

    .line 243
    :try_start_2
    const-string v2, "Gridhome.Model"

    const-string v3, "parse xml failed"

    invoke-static {v2, v3, v1}, Lcom/sprd/common/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :goto_1
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private mergeItemInfo(Lcom/sprd/classichome/AppItemInfo;Lcom/sprd/classichome/AppItemInfo;)V
    .locals 2

    .line 363
    if-eqz p1, :cond_3

    .line 364
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    .line 367
    :cond_0
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p2, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/sprd/classichome/AppItemInfo;->iconCustomized:Z

    .line 371
    :cond_1
    iget v0, p1, Lcom/sprd/classichome/AppItemInfo;->position:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 372
    iget v0, p1, Lcom/sprd/classichome/AppItemInfo;->position:I

    iput v0, p2, Lcom/sprd/classichome/AppItemInfo;->position:I

    .line 374
    :cond_2
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sprd/classichome/AppItemInfo;->isGroupValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    iget-object p1, p1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    iput-object p1, p2, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    .line 378
    :cond_3
    return-void
.end method

.method private splitAllApps()V
    .locals 9

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v3, v3, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    .line 308
    sget-object v4, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v4, v4, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    monitor-enter v4

    .line 309
    :try_start_0
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprd/classichome/AppItemInfo;

    .line 311
    iget-object v6, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v7, v5, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    iget-object v8, v5, Lcom/sprd/classichome/AppItemInfo;->clsName:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/sprd/classichome/settings/LauncherSettings;->getCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 312
    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    .line 313
    :goto_1
    const-string v7, "hide"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 314
    const-string v7, "extra"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 315
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 316
    :cond_1
    const-string v7, "game"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 317
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 318
    :cond_2
    const-string v7, "mainmenu"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 319
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_3
    :goto_2
    goto :goto_0

    .line 323
    :cond_4
    invoke-direct {p0, v0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->addMainMenuApps(Ljava/util/ArrayList;)V

    .line 324
    invoke-direct {p0, v1}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->addExtraApps(Ljava/util/ArrayList;)V

    .line 325
    invoke-direct {p0, v2}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->addGameApps(Ljava/util/ArrayList;)V

    .line 326
    monitor-exit v4

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private verifyAddAppInfo()V
    .locals 5

    .line 254
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v0, v0, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    monitor-enter v0

    .line 255
    :try_start_0
    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v1, v1, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v1, v1, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    :try_start_1
    sget-object v2, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v2, v2, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 258
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/AppItemInfo;

    .line 260
    invoke-direct {p0, v3}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->getCusAppInfo(Lcom/sprd/classichome/AppItemInfo;)Lcom/sprd/classichome/AppItemInfo;

    move-result-object v4

    .line 261
    if-eqz v4, :cond_0

    .line 262
    invoke-direct {p0, v4, v3}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mergeItemInfo(Lcom/sprd/classichome/AppItemInfo;Lcom/sprd/classichome/AppItemInfo;)V

    .line 264
    :cond_0
    sget-object v4, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v4, v3}, Lcom/sprd/classichome/model/AllAppsList;->put(Lcom/sprd/classichome/AppItemInfo;)V

    .line 265
    goto :goto_0

    .line 266
    :cond_1
    sget-object v2, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v2, v2, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 267
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 269
    :cond_2
    :goto_1
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private verifyAllAppList()V
    .locals 0

    .line 249
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->verifyRemovePackageActivities()V

    .line 250
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->verifyAddAppInfo()V

    .line 251
    return-void
.end method

.method private verifyRemovePackageActivities()V
    .locals 9

    .line 282
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v1, v1, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 283
    sget-object v1, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v1, v1, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    monitor-enter v1

    .line 284
    :try_start_0
    sget-object v2, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v2, v2, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 285
    sget-object v2, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v2, v2, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    :try_start_1
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v3, v3, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 287
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprd/classichome/util/ComponentKey;

    .line 289
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sprd/classichome/AppItemInfo;

    .line 291
    iget-object v7, v4, Lcom/sprd/classichome/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/sprd/classichome/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    .line 292
    :goto_2
    iget-object v8, v6, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Lcom/sprd/classichome/AppItemInfo;->user:Landroid/os/UserHandle;

    iget-object v8, v4, Lcom/sprd/classichome/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 293
    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v7, v6}, Lcom/sprd/classichome/model/AllAppsList;->remove(Lcom/sprd/classichome/AppItemInfo;)V

    .line 295
    :cond_1
    goto :goto_1

    .line 296
    :cond_2
    goto :goto_0

    .line 297
    :cond_3
    sget-object v0, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v0, v0, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 300
    :cond_4
    :goto_3
    monitor-exit v1

    .line 301
    return-void

    .line 300
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method isLoading()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mIsLoading:Z

    return v0
.end method

.method public run()V
    .locals 2

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mIsLoading:Z

    .line 180
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->this$0:Lcom/sprd/classichome/model/LauncherModel;

    invoke-static {v0}, Lcom/sprd/classichome/model/LauncherModel;->access$000(Lcom/sprd/classichome/model/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->loadCustomizeApp()V

    .line 182
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->loadAllApps()V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->verifyAllAppList()V

    .line 185
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->splitAllApps()V

    .line 186
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->this$0:Lcom/sprd/classichome/model/LauncherModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sprd/classichome/model/LauncherModel;->access$002(Lcom/sprd/classichome/model/LauncherModel;Z)Z

    .line 187
    iput-boolean v1, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mIsLoading:Z

    .line 188
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->this$0:Lcom/sprd/classichome/model/LauncherModel;

    new-instance v1, Lcom/sprd/classichome/model/LauncherModel$LoaderTask$1;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask$1;-><init>(Lcom/sprd/classichome/model/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/model/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

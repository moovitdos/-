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
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->this$0:Lcom/sprd/classichome/model/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mIsLoading:Z

    .line 214
    return-void
.end method

.method private addExtraApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 417
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 418
    :try_start_0
    sget-object v0, Lcom/sprd/classichome/util/AppsSort$SortType;->NAME:Lcom/sprd/classichome/util/AppsSort$SortType;

    invoke-static {p1, v0}, Lcom/sprd/classichome/util/AppsSort;->sort(Ljava/util/ArrayList;Lcom/sprd/classichome/util/AppsSort$SortType;)V

    .line 419
    invoke-static {p1}, Lcom/sprd/classichome/util/AppsSort;->verifyPosition(Ljava/util/ArrayList;)V

    .line 420
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 421
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 422
    monitor-exit v1

    .line 424
    :cond_0
    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addGameApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 406
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$400()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 407
    :try_start_0
    sget-object v0, Lcom/sprd/classichome/util/AppsSort$SortType;->NAME:Lcom/sprd/classichome/util/AppsSort$SortType;

    invoke-static {p1, v0}, Lcom/sprd/classichome/util/AppsSort;->sort(Ljava/util/ArrayList;Lcom/sprd/classichome/util/AppsSort$SortType;)V

    .line 408
    invoke-static {p1}, Lcom/sprd/classichome/util/AppsSort;->verifyPosition(Ljava/util/ArrayList;)V

    .line 409
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 410
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    monitor-exit v1

    .line 413
    :cond_0
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addMainMenuApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 395
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 396
    :try_start_0
    sget-object v0, Lcom/sprd/classichome/util/AppsSort$SortType;->NAME:Lcom/sprd/classichome/util/AppsSort$SortType;

    invoke-static {p1, v0}, Lcom/sprd/classichome/util/AppsSort;->sort(Ljava/util/ArrayList;Lcom/sprd/classichome/util/AppsSort$SortType;)V

    .line 397
    invoke-static {p1}, Lcom/sprd/classichome/util/AppsSort;->verifyPosition(Ljava/util/ArrayList;)V

    .line 398
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 399
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 400
    monitor-exit v1

    .line 402
    :cond_0
    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCusAppInfo(Lcom/sprd/classichome/AppItemInfo;)Lcom/sprd/classichome/AppItemInfo;
    .locals 5
    .param p1, "info"    # Lcom/sprd/classichome/AppItemInfo;

    .prologue
    .line 337
    sget-object v2, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sprd/classichome/AppItemInfo;->getComponentKey()Lcom/sprd/classichome/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/AppItemInfo;

    .line 338
    .local v1, "cusAppInfo":Lcom/sprd/classichome/AppItemInfo;
    if-nez v1, :cond_0

    .line 339
    new-instance v0, Lcom/sprd/classichome/util/ComponentKey;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/sprd/classichome/AppItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v2, v3}, Lcom/sprd/classichome/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 340
    .local v0, "cpk":Lcom/sprd/classichome/util/ComponentKey;
    sget-object v2, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cusAppInfo":Lcom/sprd/classichome/AppItemInfo;
    check-cast v1, Lcom/sprd/classichome/AppItemInfo;

    .line 342
    .end local v0    # "cpk":Lcom/sprd/classichome/util/ComponentKey;
    .restart local v1    # "cusAppInfo":Lcom/sprd/classichome/AppItemInfo;
    :cond_0
    return-object v1
.end method

.method private loadAllApps()V
    .locals 11

    .prologue
    .line 242
    sget-boolean v6, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_LOADER:Z

    if-eqz v6, :cond_0

    const-string v6, "Gridhome.Model"

    const-string v7, "loadAllApps"

    invoke-static {v6, v7}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    sget-object v6, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v7, v6, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    monitor-enter v7

    .line 244
    :try_start_0
    iget-object v6, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 246
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 251
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v6, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v6}, Lcom/sprd/classichome/model/AllAppsList;->clear()V

    .line 252
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 253
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    new-instance v1, Lcom/sprd/classichome/AppItemInfo;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v8, v9, v10}, Lcom/sprd/classichome/AppItemInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v1, "appInfo":Lcom/sprd/classichome/AppItemInfo;
    sget-object v6, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v6, v6, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v1    # "appInfo":Lcom/sprd/classichome/AppItemInfo;
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mainIntent":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "mainIntent":Landroid/content/Intent;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    const/4 v6, 0x1

    sput-boolean v6, Lcom/sprd/classichome/model/LauncherModel;->isLoaded:Z

    .line 262
    return-void
.end method

.method private loadCustomizeApp()V
    .locals 17

    .prologue
    .line 268
    sget-boolean v14, Lcom/sprd/classichome/model/LauncherModel;->DEBUG_LOADER:Z

    if-eqz v14, :cond_0

    const-string v14, "Gridhome.Model"

    const-string v15, "loadCustomizeApp:"

    invoke-static {v14, v15}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    sget-object v15, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    monitor-enter v15

    .line 270
    :try_start_0
    sget-object v14, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v16, 0x7f050000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 273
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 275
    .local v9, "attrs":Landroid/util/AttributeSet;
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v11

    .line 276
    .local v11, "eventType":I
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_3

    .line 277
    const/4 v14, 0x2

    if-ne v11, v14, :cond_2

    .line 278
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 279
    .local v13, "tagName":Ljava/lang/String;
    const-string v14, "App"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    sget-object v16, Lcom/sprd/simple/launcher/R$styleable;->AppInfo:[I

    move-object/from16 v0, v16

    invoke-virtual {v14, v9, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 281
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "clsName":Ljava/lang/String;
    const/4 v14, 0x2

    const v16, 0x7fffffff

    move/from16 v0, v16

    invoke-virtual {v8, v14, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 284
    .local v7, "position":I
    const/4 v14, 0x3

    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 285
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x4

    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "label":Ljava/lang/CharSequence;
    const/4 v14, 0x5

    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "group":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 290
    new-instance v1, Lcom/sprd/classichome/AppItemInfo;

    invoke-direct/range {v1 .. v7}, Lcom/sprd/classichome/AppItemInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    .local v1, "appInfo":Lcom/sprd/classichome/AppItemInfo;
    sget-object v14, Lcom/sprd/classichome/model/LauncherModel;->mBgCustomizeAppsList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sprd/classichome/AppItemInfo;->getComponentKey()Lcom/sprd/classichome/util/ComponentKey;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v1    # "appInfo":Lcom/sprd/classichome/AppItemInfo;
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "clsName":Ljava/lang/String;
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "position":I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    goto :goto_0

    .line 298
    .end local v9    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "eventType":I
    .end local v12    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v10

    .line 299
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v14, "Gridhome.Model"

    const-string v16, "parse xml failed"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v10}, Lcom/sprd/common/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-exit v15

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14
.end method

.method private mergeItemInfo(Lcom/sprd/classichome/AppItemInfo;Lcom/sprd/classichome/AppItemInfo;)V
    .locals 2
    .param p1, "src"    # Lcom/sprd/classichome/AppItemInfo;
    .param p2, "des"    # Lcom/sprd/classichome/AppItemInfo;

    .prologue
    .line 427
    if-eqz p1, :cond_3

    .line 428
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    .line 431
    :cond_0
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p2, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/sprd/classichome/AppItemInfo;->iconCustomized:Z

    .line 435
    :cond_1
    iget v0, p1, Lcom/sprd/classichome/AppItemInfo;->position:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 436
    iget v0, p1, Lcom/sprd/classichome/AppItemInfo;->position:I

    iput v0, p2, Lcom/sprd/classichome/AppItemInfo;->position:I

    .line 438
    :cond_2
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sprd/classichome/AppItemInfo;->isGroupValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    iput-object v0, p2, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    .line 442
    :cond_3
    return-void
.end method

.method private splitAllApps()V
    .locals 12

    .prologue
    .line 368
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v6, "mainMenuApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v3, "extraApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v4, "gameApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sprd/classichome/AppItemInfo;>;"
    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v0, v7, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    .line 372
    .local v0, "allApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v8, v7, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    monitor-enter v8

    .line 373
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 374
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/AppItemInfo;

    # Override group from LauncherSettings if customized
    iget-object v7, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    iget-object v10, v1, Lcom/sprd/classichome/AppItemInfo;->clsName:Ljava/lang/String;

    iget-object v11, v1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    invoke-static {v7, v9, v10, v11}, Lcom/sprd/classichome/settings/LauncherSettings;->getAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    .line 376
    .local v1, "appInfo":Lcom/sprd/classichome/AppItemInfo;
    const-string v7, "hide"

    iget-object v9, v1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 377
    const-string v7, "extra"

    iget-object v9, v1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 378
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    .end local v1    # "appInfo":Lcom/sprd/classichome/AppItemInfo;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 379
    .restart local v1    # "appInfo":Lcom/sprd/classichome/AppItemInfo;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v7, "game"

    iget-object v9, v1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 380
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_2
    const-string v7, "mainmenu"

    iget-object v9, v1, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 382
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    .end local v1    # "appInfo":Lcom/sprd/classichome/AppItemInfo;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    :cond_3
    invoke-direct {p0, v6}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->addMainMenuApps(Ljava/util/ArrayList;)V

    .line 387
    invoke-direct {p0, v3}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->addExtraApps(Ljava/util/ArrayList;)V

    .line 388
    invoke-direct {p0, v4}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->addGameApps(Ljava/util/ArrayList;)V

    .line 389
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    return-void
.end method

.method private verifyAddAppInfo()V
    .locals 6

    .prologue
    .line 310
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v4, v3, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    monitor-enter v4

    .line 311
    :try_start_0
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v3, v3, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 312
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v5, v3, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    :try_start_1
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v3, v3, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/AppItemInfo;

    .line 314
    .local v0, "apInfo":Lcom/sprd/classichome/AppItemInfo;
    invoke-direct {p0, v0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->getCusAppInfo(Lcom/sprd/classichome/AppItemInfo;)Lcom/sprd/classichome/AppItemInfo;

    move-result-object v1

    .line 315
    .local v1, "cusAppInfo":Lcom/sprd/classichome/AppItemInfo;
    if-eqz v1, :cond_0

    .line 316
    invoke-direct {p0, v1, v0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mergeItemInfo(Lcom/sprd/classichome/AppItemInfo;Lcom/sprd/classichome/AppItemInfo;)V

    .line 321
    :cond_0
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v3, v0}, Lcom/sprd/classichome/model/AllAppsList;->put(Lcom/sprd/classichome/AppItemInfo;)V

    goto :goto_0

    .line 331
    .end local v0    # "apInfo":Lcom/sprd/classichome/AppItemInfo;
    .end local v1    # "cusAppInfo":Lcom/sprd/classichome/AppItemInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 333
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 330
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    sget-object v3, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v3, v3, Lcom/sprd/classichome/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 331
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 334
    return-void
.end method

.method private verifyAllAppList()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->verifyRemovePackageActivities()V

    .line 306
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->verifyAddAppInfo()V

    .line 307
    return-void
.end method

.method private verifyRemovePackageActivities()V
    .locals 11

    .prologue
    .line 346
    new-instance v0, Ljava/util/HashMap;

    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v7, v7, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 347
    .local v0, "allApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v8, v7, Lcom/sprd/classichome/model/AllAppsList;->data:Ljava/util/HashMap;

    monitor-enter v8

    .line 348
    :try_start_0
    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v7, v7, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 349
    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v9, v7, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 350
    :try_start_1
    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v7, v7, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/util/ComponentKey;

    .line 351
    .local v2, "cpk":Lcom/sprd/classichome/util/ComponentKey;
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 352
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/AppItemInfo;

    .line 353
    .local v1, "appInfo":Lcom/sprd/classichome/AppItemInfo;
    iget-object v7, v2, Lcom/sprd/classichome/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/sprd/classichome/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "pkgName":Ljava/lang/String;
    :goto_1
    iget-object v7, v1, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/sprd/classichome/AppItemInfo;->user:Landroid/os/UserHandle;

    iget-object v10, v2, Lcom/sprd/classichome/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 356
    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    invoke-virtual {v7, v1}, Lcom/sprd/classichome/model/AllAppsList;->remove(Lcom/sprd/classichome/AppItemInfo;)V

    goto :goto_0

    .line 361
    .end local v1    # "appInfo":Lcom/sprd/classichome/AppItemInfo;
    .end local v2    # "cpk":Lcom/sprd/classichome/util/ComponentKey;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7

    .line 364
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 353
    .restart local v1    # "appInfo":Lcom/sprd/classichome/AppItemInfo;
    .restart local v2    # "cpk":Lcom/sprd/classichome/util/ComponentKey;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 360
    .end local v1    # "appInfo":Lcom/sprd/classichome/AppItemInfo;
    .end local v2    # "cpk":Lcom/sprd/classichome/util/ComponentKey;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sprd/classichome/util/ComponentKey;Lcom/sprd/classichome/AppItemInfo;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    sget-object v7, Lcom/sprd/classichome/model/LauncherModel;->mBgAllAppsList:Lcom/sprd/classichome/model/AllAppsList;

    iget-object v7, v7, Lcom/sprd/classichome/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 361
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    :cond_4
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 365
    return-void
.end method


# virtual methods
.method isLoading()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mIsLoading:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mIsLoading:Z

    .line 221
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->this$0:Lcom/sprd/classichome/model/LauncherModel;

    invoke-static {v0}, Lcom/sprd/classichome/model/LauncherModel;->access$000(Lcom/sprd/classichome/model/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->loadCustomizeApp()V

    .line 223
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->loadAllApps()V

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->verifyAllAppList()V

    .line 226
    invoke-direct {p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->splitAllApps()V

    .line 227
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->this$0:Lcom/sprd/classichome/model/LauncherModel;

    invoke-static {v0, v1}, Lcom/sprd/classichome/model/LauncherModel;->access$002(Lcom/sprd/classichome/model/LauncherModel;Z)Z

    .line 228
    iput-boolean v1, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->mIsLoading:Z

    .line 230
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->this$0:Lcom/sprd/classichome/model/LauncherModel;

    new-instance v1, Lcom/sprd/classichome/model/LauncherModel$LoaderTask$1;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/model/LauncherModel$LoaderTask$1;-><init>(Lcom/sprd/classichome/model/LauncherModel$LoaderTask;)V

    invoke-static {v0, v1}, Lcom/sprd/classichome/model/LauncherModel;->access$200(Lcom/sprd/classichome/model/LauncherModel;Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

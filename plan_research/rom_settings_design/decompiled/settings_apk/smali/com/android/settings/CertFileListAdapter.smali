.class public Lcom/android/settings/CertFileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CertFileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CertFileListAdapter$TheFileTimeComparator;,
        Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;,
        Lcom/android/settings/CertFileListAdapter$TheFileTypeComparator;,
        Lcom/android/settings/CertFileListAdapter$TheComparator;,
        Lcom/android/settings/CertFileListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static UNIVERSEUI_SUPPORT:Z

.field private static final mAcsOrder:Lcom/android/settings/CertFileListAdapter$TheComparator;

.field private static final mTypeOrder:Lcom/android/settings/CertFileListAdapter$TheFileTypeComparator;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDir:Ljava/io/File;

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mSizeOrder:Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;

.field private final mTimeOrder:Lcom/android/settings/CertFileListAdapter$TheFileTimeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/android/settings/CertFileListAdapter$TheComparator;

    invoke-direct {v0}, Lcom/android/settings/CertFileListAdapter$TheComparator;-><init>()V

    sput-object v0, Lcom/android/settings/CertFileListAdapter;->mAcsOrder:Lcom/android/settings/CertFileListAdapter$TheComparator;

    .line 45
    new-instance v0, Lcom/android/settings/CertFileListAdapter$TheFileTypeComparator;

    invoke-direct {v0}, Lcom/android/settings/CertFileListAdapter$TheFileTypeComparator;-><init>()V

    sput-object v0, Lcom/android/settings/CertFileListAdapter;->mTypeOrder:Lcom/android/settings/CertFileListAdapter$TheFileTypeComparator;

    .line 53
    const-string v0, "universe_ui_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/CertFileListAdapter;->UNIVERSEUI_SUPPORT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    new-instance v0, Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;-><init>(Lcom/android/settings/CertFileListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/CertFileListAdapter;->mSizeOrder:Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;

    .line 47
    new-instance v0, Lcom/android/settings/CertFileListAdapter$TheFileTimeComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/CertFileListAdapter$TheFileTimeComparator;-><init>(Lcom/android/settings/CertFileListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/CertFileListAdapter;->mTimeOrder:Lcom/android/settings/CertFileListAdapter$TheFileTimeComparator;

    .line 225
    iput-object p1, p0, Lcom/android/settings/CertFileListAdapter;->mContext:Landroid/content/Context;

    .line 226
    iget-object v0, p0, Lcom/android/settings/CertFileListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CertFileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CertFileListAdapter;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CertFileListAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/CertFileListAdapter;->mCurrentDir:Ljava/io/File;

    return-object v0
.end method

.method private filterFileFold(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 345
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    .local v0, "filefoldname":Ljava/lang/String;
    const-string v2, "lost+found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 350
    :cond_1
    const-string v2, ".android_secure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 354
    .end local v0    # "filefoldname":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static getFileDate(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 459
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 460
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 461
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getFileSize(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 437
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 439
    .local v2, "size":J
    const-wide/32 v4, 0x100000

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 441
    long-to-float v4, v2

    const/high16 v5, 0x44800000    # 1024.0f

    div-float v0, v4, v5

    .line 442
    .local v0, "fSize":F
    const-string v4, "%.2f KB"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 444
    .end local v0    # "fSize":F
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 446
    long-to-float v4, v2

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float v0, v4, v5

    .line 447
    .restart local v0    # "fSize":F
    const-string v4, "%.2f MB"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 451
    .end local v0    # "fSize":F
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    long-to-float v4, v2

    const/high16 v5, 0x4e800000

    div-float v0, v4, v5

    .line 452
    .restart local v0    # "fSize":F
    const-string v4, "%.2f GB"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSortedFileNameArray(Ljava/io/File;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "theFile"    # Ljava/io/File;
    .param p2, "filenames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v3, "fileNameArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v2, "fileFolderArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 362
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 364
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 365
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/CertFileListAdapter;->filterFileFold(Ljava/util/ArrayList;)V

    .line 373
    const/4 v7, 0x0

    packed-switch v7, :pswitch_data_0

    .line 421
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    :goto_2
    return-object v2

    .line 378
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :pswitch_0
    :try_start_0
    sget-object v7, Lcom/android/settings/CertFileListAdapter;->mAcsOrder:Lcom/android/settings/CertFileListAdapter$TheComparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 379
    sget-object v7, Lcom/android/settings/CertFileListAdapter;->mAcsOrder:Lcom/android/settings/CertFileListAdapter$TheComparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 389
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/CertFileListAdapter;->mTimeOrder:Lcom/android/settings/CertFileListAdapter$TheFileTimeComparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 390
    iget-object v7, p0, Lcom/android/settings/CertFileListAdapter;->mTimeOrder:Lcom/android/settings/CertFileListAdapter$TheFileTimeComparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :goto_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 391
    :catch_1
    move-exception v1

    .line 392
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 400
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    sget-object v7, Lcom/android/settings/CertFileListAdapter;->mAcsOrder:Lcom/android/settings/CertFileListAdapter$TheComparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 401
    iget-object v7, p0, Lcom/android/settings/CertFileListAdapter;->mSizeOrder:Lcom/android/settings/CertFileListAdapter$TheFileSizeComparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 405
    :goto_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 402
    :catch_2
    move-exception v1

    .line 403
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 411
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_3
    sget-object v7, Lcom/android/settings/CertFileListAdapter;->mAcsOrder:Lcom/android/settings/CertFileListAdapter$TheComparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 412
    sget-object v7, Lcom/android/settings/CertFileListAdapter;->mTypeOrder:Lcom/android/settings/CertFileListAdapter$TheFileTypeComparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 416
    :goto_6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 413
    :catch_3
    move-exception v1

    .line 414
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/CertFileListAdapter;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/CertFileListAdapter;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 279
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/settings/CertFileListAdapter;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/high16 v6, -0x1000000

    .line 284
    iget-object v4, p0, Lcom/android/settings/CertFileListAdapter;->mCurrentDir:Ljava/io/File;

    if-nez v4, :cond_0

    .line 335
    :goto_0
    return-object v3

    .line 291
    :cond_0
    if-nez p2, :cond_2

    .line 293
    iget-object v4, p0, Lcom/android/settings/CertFileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040059

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 294
    new-instance v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/CertFileListAdapter$ViewHolder;-><init>()V

    .line 296
    .local v1, "holder":Lcom/android/settings/CertFileListAdapter$ViewHolder;
    const v3, 0x7f0b003a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->fileicon:Landroid/widget/ImageView;

    .line 297
    const v3, 0x7f0b0104

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    .line 298
    const v3, 0x7f0b0105

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->subfilesnum:Landroid/widget/TextView;

    .line 299
    const v3, 0x7f0b0106

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->filedate:Landroid/widget/TextView;

    .line 300
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 308
    :goto_1
    iget-object v3, p0, Lcom/android/settings/CertFileListAdapter;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .local v0, "filename":Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/CertFileListAdapter;->UNIVERSEUI_SUPPORT:Z

    if-eqz v3, :cond_1

    .line 310
    iget-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->filedate:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->subfilesnum:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    :cond_1
    iget-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/CertFileListAdapter;->mCurrentDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v2, "thefile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    iget-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->fileicon:Landroid/widget/ImageView;

    const v4, 0x7f02010a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->subfilesnum:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/settings/CertFileListAdapter;->getFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_2
    iget-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->filedate:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/settings/CertFileListAdapter;->getFileDate(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, p2

    .line 335
    goto/16 :goto_0

    .line 304
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "holder":Lcom/android/settings/CertFileListAdapter$ViewHolder;
    .end local v2    # "thefile":Ljava/io/File;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/android/settings/CertFileListAdapter$ViewHolder;
    goto :goto_1

    .line 328
    .restart local v0    # "filename":Ljava/lang/String;
    .restart local v2    # "thefile":Ljava/io/File;
    :cond_3
    iget-object v3, v1, Lcom/android/settings/CertFileListAdapter$ViewHolder;->fileicon:Landroid/widget/ImageView;

    const v4, 0x7f02005e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public sortImpl(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/CertFileListAdapter;->mCurrentDir:Ljava/io/File;

    .line 234
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    const-string v3, "^.+\\.(crt|cer|p12|pfx|)$"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 240
    .local v2, "pattern":Ljava/util/regex/Pattern;
    new-instance v3, Lcom/android/settings/CertFileListAdapter$2;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/CertFileListAdapter$2;-><init>(Lcom/android/settings/CertFileListAdapter;Ljava/util/regex/Pattern;)V

    invoke-virtual {p1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "mFileNameArray":[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/settings/CertFileListAdapter;->getSortedFileNameArray(Ljava/io/File;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CertFileListAdapter;->mFileNameList:Ljava/util/ArrayList;

    .line 252
    iget-object v3, p0, Lcom/android/settings/CertFileListAdapter;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 253
    const-string v3, "sdcard0"

    iget-object v4, p0, Lcom/android/settings/CertFileListAdapter;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/android/settings/CertFileListAdapter;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 252
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    .end local v1    # "mFileNameArray":[Ljava/lang/String;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/CertFileListAdapter;->mFileNameList:Ljava/util/ArrayList;

    .line 260
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/CertFileListAdapter;->mCurrentDir:Ljava/io/File;

    .line 262
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 263
    return-void
.end method

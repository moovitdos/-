.class Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 348
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 320
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 330
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 350
    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private fileIsExits(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 746
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDownloadsFilePaths()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 671
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v7, v4

    .line 673
    .local v7, "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 675
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 676
    .local v1, "downloadUri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    .line 677
    .local v2, "projection":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data like \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 681
    .local v6, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 683
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 684
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 685
    .local v10, "path":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 686
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 689
    .end local v10    # "path":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 690
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    if-eqz v6, :cond_2

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 696
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v9

    .line 692
    :cond_3
    if-eqz v6, :cond_2

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 692
    :catchall_0
    move-exception v4

    if-eqz v6, :cond_4

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method private getFilesListForMisc()V
    .locals 19

    .prologue
    .line 546
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v5, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v0, v5, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 548
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object v12, v5

    .line 549
    .local v12, "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 550
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 551
    .local v2, "audioUri":Landroid/net/Uri;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_data"

    aput-object v9, v3, v5

    const/4 v5, 0x1

    const-string v9, "_size"

    aput-object v9, v3, v5

    .line 554
    .local v3, "projection":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "storage_id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v9}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " AND "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "media_type"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "=?"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " AND "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "_data"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " not like \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v9}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/Android/%\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 564
    .local v4, "selection":Ljava/lang/String;
    const/4 v11, 0x0

    .line 566
    .local v11, "c":Landroid/database/Cursor;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 573
    if-eqz v11, :cond_1

    .line 574
    const/4 v13, 0x0

    .line 575
    .local v13, "counter":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->getDownloadsFilePaths()Ljava/util/List;

    move-result-object v15

    .line 576
    .local v15, "downsFilePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move v14, v13

    .end local v13    # "counter":I
    .local v14, "counter":I
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 577
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, "path":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 579
    .local v7, "size":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->fileIsExits(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 581
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v0, v5, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v5, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "counter":I
    .restart local v13    # "counter":I
    int-to-long v9, v14

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v14, v13

    .end local v13    # "counter":I
    .restart local v14    # "counter":I
    goto :goto_1

    .line 548
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "audioUri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "size":J
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "counter":I
    .end local v15    # "downsFilePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 589
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "audioUri":Landroid/net/Uri;
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "context":Landroid/content/Context;
    :cond_1
    if-eqz v11, :cond_2

    .line 590
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 592
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v5, v5, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 593
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    return-void

    .line 586
    :catch_0
    move-exception v16

    .line 587
    .local v16, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 589
    if-eqz v11, :cond_2

    .line 590
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 593
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "audioUri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "context":Landroid/content/Context;
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 589
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "audioUri":Landroid/net/Uri;
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v5

    if-eqz v11, :cond_3

    .line 590
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "size":J
    .restart local v14    # "counter":I
    .restart local v15    # "downsFilePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move v13, v14

    .end local v14    # "counter":I
    .restart local v13    # "counter":I
    goto :goto_2
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 9
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 411
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "path":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {p1, v3}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v4

    .line 415
    .local v4, "stats":[J
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    invoke-static {v5, v6, v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 417
    const-string v5, "Qin 1s"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    if-nez v5, :cond_3

    .line 418
    const-wide/32 v1, 0x20000000

    .line 419
    .local v1, "interalSize":J
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-gez v5, :cond_0

    .line 420
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 434
    .end local v1    # "interalSize":J
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    invoke-static {v5, v6, v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 436
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStoragePath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 437
    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 438
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 439
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v4    # "stats":[J
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)V

    .line 447
    return-void

    .line 411
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 423
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "stats":[J
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v5

    const-wide/32 v7, 0x20000000

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    .line 424
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide/32 v6, 0x20000000

    invoke-static {v5, v6, v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 442
    .end local v4    # "stats":[J
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "StorageMeasurement"

    const-string v6, "Problem in container service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "stats":[J
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v5

    const-wide v7, 0x100000000L

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 426
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide v6, 0x100000000L

    invoke-static {v5, v6, v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    goto/16 :goto_1

    .line 427
    :cond_5
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v5

    const-wide v7, 0x200000000L

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 428
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide v6, 0x200000000L

    invoke-static {v5, v6, v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    goto/16 :goto_1

    .line 429
    :cond_6
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v5

    const-wide v7, 0x400000000L

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 430
    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide v6, 0x400000000L

    invoke-static {v5, v6, v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private measureDownloads(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 12
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 642
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v7, v4

    .line 643
    .local v7, "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 644
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 645
    .local v1, "downloadUri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "sum(total_bytes)"

    aput-object v4, v2, v5

    .line 647
    .local v2, "projection":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data like \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 649
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 651
    .local v6, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 653
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 654
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 655
    .local v9, "size":J
    iget-object v4, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const-string v5, "DOWNLOAD"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    .end local v9    # "size":J
    :cond_1
    if-eqz v6, :cond_2

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_2
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v8

    .line 658
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    if-eqz v6, :cond_2

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 660
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v6, :cond_3

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method

.method private measureExactMedia(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 21
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 601
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    move-object v9, v6

    .line 602
    .local v9, "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 603
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 604
    .local v3, "uri":Landroid/net/Uri;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "sum(_size)"

    aput-object v7, v4, v6

    .line 606
    .local v4, "projection":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "media_type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 609
    .local v16, "selection":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-static {}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1100()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v12, v6, :cond_5

    .line 610
    const/4 v10, 0x0

    .line 612
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .local v15, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1200()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v12

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .local v8, "arr$":[Ljava/lang/String;
    array-length v14, v8

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    if-ge v13, v14, :cond_1

    aget-object v19, v8, v13

    .line 614
    .local v19, "type":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 601
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "selection":Ljava/lang/String;
    .end local v19    # "type":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 617
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "i":I
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "selection":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v7, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 620
    .local v5, "newSelection":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 622
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 623
    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 624
    .local v17, "size":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1100()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v12

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "measureExactMedia MEDIA_ITEMS = "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1100()[Ljava/lang/String;

    move-result-object v20

    aget-object v20, v20, v12

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " size = "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    .end local v17    # "size":J
    :cond_2
    if-eqz v10, :cond_3

    .line 631
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 609
    .end local v5    # "newSelection":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 627
    :catch_0
    move-exception v11

    .line 628
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "StorageMeasurement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "measureExactMedia find Exception : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    if-eqz v10, :cond_3

    .line 631
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 630
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v10, :cond_4

    .line 631
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v6

    .line 635
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-void
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 26
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v11, v4

    .line 451
    .local v11, "context":Landroid/content/Context;
    :goto_0
    if-nez v11, :cond_2

    .line 540
    :cond_0
    :goto_1
    return-void

    .line 450
    .end local v11    # "context":Landroid/content/Context;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 455
    .restart local v11    # "context":Landroid/content/Context;
    :cond_2
    new-instance v5, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 456
    .local v5, "details":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 458
    .local v7, "finished":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v23

    move-wide/from16 v0, v23

    iput-wide v0, v5, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$600(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v23

    move-wide/from16 v0, v23

    iput-wide v0, v5, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 461
    const-string v4, "user"

    invoke-virtual {v11, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    .line 463
    .local v21, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v21 .. v21}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v22

    .line 465
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 466
    .local v6, "currentUser":I
    new-instance v12, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v12, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 490
    .local v12, "currentEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v15, 0x1

    .line 491
    .local v15, "measureMedia":Z
    :goto_2
    iget-object v4, v5, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const-string v23, "DCIM"

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v4, v5, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const-string v23, "VIDEO"

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v4, v5, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const-string v23, "MUSIC"

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v4, v5, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const-string v23, "DOWNLOAD"

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    if-eqz v15, :cond_3

    .line 498
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureDownloads(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 501
    :cond_3
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    iput-wide v0, v5, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    .line 502
    if-eqz v15, :cond_4

    .line 503
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureMisc(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->getFilesListForMisc()V

    .line 511
    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/UserInfo;

    .line 512
    .local v19, "user":Landroid/content/pm/UserInfo;
    new-instance v20, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, v19

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 513
    .local v20, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual/range {v20 .. v20}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v17

    .line 514
    .local v17, "size":J
    iget-object v4, v5, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-wide/from16 v1, v17

    invoke-static {v4, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    goto :goto_3

    .line 490
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "measureMedia":Z
    .end local v17    # "size":J
    .end local v19    # "user":Landroid/content/pm/UserInfo;
    .end local v20    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 517
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "measureMedia":Z
    :cond_6
    if-eqz v15, :cond_7

    .line 518
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactMedia(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 521
    :cond_7
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 522
    .local v16, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 523
    :cond_8
    const/16 v4, 0x2200

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 527
    .local v10, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v23

    mul-int v8, v4, v23

    .line 528
    .local v8, "count":I
    new-instance v3, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    .line 531
    .local v3, "observer":Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/UserInfo;

    .line 532
    .restart local v19    # "user":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 533
    .local v9, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_4

    .line 538
    .end local v3    # "observer":Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v8    # "count":I
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v19    # "user":Landroid/content/pm/UserInfo;
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method

.method private measureMisc(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 16
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 705
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object v8, v5

    .line 706
    .local v8, "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 707
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 708
    .local v2, "audioUri":Landroid/net/Uri;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "_size"

    aput-object v6, v3, v5

    .line 711
    .local v3, "projection":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "media_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not like \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Android/%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 716
    .local v4, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 718
    .local v7, "c":Landroid/database/Cursor;
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 720
    if-eqz v7, :cond_3

    .line 721
    const/4 v9, 0x0

    .line 722
    .local v9, "counter":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->getDownloadsFilePaths()Ljava/util/List;

    move-result-object v10

    .line 723
    .local v10, "downsFilePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 724
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 725
    .local v12, "path":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 726
    .local v13, "size":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->fileIsExits(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 727
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    add-long/2addr v5, v13

    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    .line 723
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 731
    .end local v9    # "counter":I
    .end local v10    # "downsFilePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "size":J
    :catch_0
    move-exception v11

    .line 732
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    if-eqz v7, :cond_1

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 738
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 705
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "audioUri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "context":Landroid/content/Context;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 734
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v2    # "audioUri":Landroid/net/Uri;
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "context":Landroid/content/Context;
    :cond_3
    if-eqz v7, :cond_1

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 734
    :catchall_0
    move-exception v5

    if-eqz v7, :cond_4

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 354
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 356
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v3, :cond_1

    .line 357
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 362
    .local v0, "context":Landroid/content/Context;
    :cond_2
    if-eqz v0, :cond_0

    .line 366
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 367
    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    .line 368
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 371
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 372
    .local v2, "service":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 379
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "service":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 380
    .local v1, "imcs":Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 381
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 385
    .end local v1    # "imcs":Lcom/android/internal/app/IMediaContainerService;
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 386
    :try_start_2
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    .line 387
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 388
    .restart local v0    # "context":Landroid/content/Context;
    :cond_4
    if-nez v0, :cond_5

    .line 389
    monitor-exit v4

    goto :goto_0

    .line 395
    .end local v0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 392
    .restart local v0    # "context":Landroid/content/Context;
    :cond_5
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 393
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 395
    .end local v0    # "context":Landroid/content/Context;
    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 399
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 400
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    .line 404
    :pswitch_4
    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

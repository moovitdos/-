.class public Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# static fields
.field public static HIDE_BOTTOM_BUTTON:Ljava/lang/String;


# instance fields
.field private mCompressionRatio:F

.field private mFormatPreference:Landroid/preference/Preference;

.field private mIsCaculateTatal:Z

.field private mIsInternalStorage:Z

.field private mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemOthers:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mItemVideo:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private final mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "hide_bottom_button"

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->HIDE_BOTTOM_BUTTON:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 87
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsCaculateTatal:Z

    .line 88
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 94
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalStorage:Z

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mCompressionRatio:F

    .line 103
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 548
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 142
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 143
    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 146
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 147
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 149
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    .line 150
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsCaculateTatal:Z

    .line 158
    :cond_0
    if-eqz p2, :cond_2

    .line 159
    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    const-string v0, "baiyuliang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",internalPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getInternalStoragePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getInternalStoragePath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalStorage:Z

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    const v0, 0x7f090473

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setPrefencesEnable(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 136
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOtherTypesFilesSize(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)J
    .locals 20
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 658
    const-wide/16 v9, 0x0

    .line 659
    .local v9, "othersSize":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsCaculateTatal:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 660
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "DCIM"

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v2

    .line 662
    .local v2, "dcimSize":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "MUSIC"

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v7

    .line 665
    .local v7, "musicSize":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "VIDEO"

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v14

    .line 667
    .local v14, "videoSize":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "DOWNLOAD"

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 670
    .local v4, "downloadsSize":J
    const-wide/16 v12, 0x0

    .line 671
    .local v12, "userSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 672
    .local v11, "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v16, v0

    iget v0, v11, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    add-long v12, v12, v16

    goto :goto_0

    .line 675
    .end local v11    # "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v2

    sub-long v16, v16, v14

    sub-long v16, v16, v7

    sub-long v16, v16, v4

    sub-long v16, v16, v12

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v18, v0

    sub-long v9, v16, v18

    .line 680
    .end local v2    # "dcimSize":J
    .end local v4    # "downloadsSize":J
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "musicSize":J
    .end local v12    # "userSize":J
    .end local v14    # "videoSize":J
    :cond_1
    const-wide/16 v16, 0x0

    cmp-long v16, v9, v16

    if-lez v16, :cond_2

    .line 683
    .end local v9    # "othersSize":J
    :goto_1
    return-wide v9

    .restart local v9    # "othersSize":J
    :cond_2
    const-wide/16 v9, 0x0

    goto :goto_1
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .param p1, "excluding"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 644
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 645
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 646
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 647
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 650
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 513
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 514
    return-void
.end method

.method private setCompressionRatio(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;J)V
    .locals 19
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p2, "otherTypesFilesSize"    # J

    .prologue
    .line 692
    const-wide/16 v14, 0x0

    cmp-long v14, p2, v14

    if-lez v14, :cond_0

    .line 713
    :goto_0
    return-void

    .line 695
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "DCIM"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v2

    .line 696
    .local v2, "dcimSize":J
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "MUSIC"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v7

    .line 698
    .local v7, "musicSize":J
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "VIDEO"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v12

    .line 700
    .local v12, "videoSize":J
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "DOWNLOAD"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 703
    .local v4, "downloadsSize":J
    const-wide/16 v10, 0x0

    .line 704
    .local v10, "userSize":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 705
    .local v9, "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v15, v9, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v14, v15}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    add-long/2addr v10, v14

    goto :goto_1

    .line 708
    .end local v9    # "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    add-long v15, v15, p2

    add-long/2addr v15, v2

    add-long/2addr v15, v7

    add-long/2addr v15, v12

    add-long/2addr v15, v4

    add-long/2addr v15, v10

    long-to-float v15, v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mCompressionRatio:F

    goto/16 :goto_0
.end method

.method private setPrefencesEnable(Z)V
    .locals 1
    .param p1, "isEanble"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemOthers:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideo:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 311
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 440
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 441
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 442
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 440
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 5
    .param p1, "pref"    # Lcom/android/settings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 498
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "ro.storage.flash_type"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 500
    long-to-float v1, p2

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mCompressionRatio:F

    mul-float/2addr v1, v2

    float-to-long p2, v1

    .line 502
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_1

    .line 503
    invoke-direct {p0, p2, p3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    .line 505
    .local v0, "order":I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 509
    .end local v0    # "order":I
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 8

    .prologue
    const v7, 0x7f09034f

    const v4, 0x7f090349

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 318
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    const-string v2, "StorageVolumePreferenceCategory"

    const-string v3, "ignoring monkey\'s attempt to update preferences state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 333
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 336
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v3, 0x7f09033b

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 337
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    .line 341
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 347
    :cond_3
    :goto_1
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 352
    :cond_4
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 353
    .local v0, "mTeleMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_a

    .line 354
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 358
    :goto_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090346

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090347

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    .line 362
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 394
    .end local v0    # "mTeleMgr":Landroid/telephony/TelephonyManager;
    :cond_5
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v2, :cond_1

    const-string v2, "mtp"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ptp"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    :cond_6
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 397
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 399
    :cond_7
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 403
    :cond_8
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 405
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 344
    :cond_9
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v3, 0x7f09033a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 356
    .restart local v0    # "mTeleMgr":Landroid/telephony/TelephonyManager;
    :cond_a
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 366
    .end local v0    # "mTeleMgr":Landroid/telephony/TelephonyManager;
    :cond_b
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 368
    :cond_c
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 369
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f09034a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    :goto_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    .line 386
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 387
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 372
    :cond_d
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 373
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090348

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 389
    :cond_e
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3
.end method


# virtual methods
.method public getFormatPreference()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 21

    .prologue
    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 177
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 181
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 186
    .local v9, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v14

    .line 187
    .local v14, "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_1

    const/16 v16, 0x1

    .line 189
    .local v16, "showUsers":Z
    :goto_0
    new-instance v18, Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v18, v0

    const/16 v19, -0x2

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOrder(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 193
    const v18, 0x7f09033c

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 194
    const v18, 0x7f09033a

    const v19, 0x7f0d0004

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 198
    const v18, 0x7f09033e

    const v19, 0x7f0d0005

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 199
    const v18, 0x7f090341

    const v19, 0x7f0d0007

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 201
    const v18, 0x7f090895

    const v19, 0x7f0d000d

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideo:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 202
    const v18, 0x7f090342

    const v19, 0x7f0d0008

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 203
    const v18, 0x7f090340

    const v19, 0x7f0d0006

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 204
    const v18, 0x7f090345

    const v19, 0x7f0d0009

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 205
    const v18, 0x7f090343

    const v19, 0x7f0d000a

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 207
    const v18, 0x7f090014

    const v19, 0x7f0d0006

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemOthers:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    const-string v19, "cache"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 211
    if-eqz v16, :cond_0

    .line 212
    new-instance v18, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemOthers:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 230
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setPrefencesEnable(Z)V

    .line 232
    if-eqz v16, :cond_3

    .line 233
    new-instance v18, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v19, 0x7f090361

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 236
    const/4 v7, 0x0

    .line 237
    .local v7, "count":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 238
    .local v12, "info":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "count":I
    .local v8, "count":I
    rem-int/lit8 v18, v7, 0x2

    if-nez v18, :cond_2

    const v5, 0x7f0d000b

    .line 240
    .local v5, "colorRes":I
    :goto_2
    new-instance v17, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v18

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 242
    .local v17, "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 244
    .end local v8    # "count":I
    .restart local v7    # "count":I
    goto :goto_1

    .line 182
    .end local v5    # "colorRes":I
    .end local v7    # "count":I
    .end local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    .end local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16    # "showUsers":Z
    .end local v17    # "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 183
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Failed to get current user"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 187
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 238
    .restart local v8    # "count":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "info":Landroid/content/pm/UserInfo;
    .restart local v16    # "showUsers":Z
    :cond_2
    const v5, 0x7f0d000c

    goto :goto_2

    .line 247
    .end local v8    # "count":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    .line 249
    .local v13, "isRemovable":Z
    :goto_3
    new-instance v18, Landroid/preference/Preference;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 250
    if-eqz v13, :cond_4

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f090346

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f090347

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    const/4 v4, 0x1

    .line 262
    .local v4, "allowFormat":Z
    :goto_4
    if-eqz v4, :cond_5

    .line 263
    new-instance v18, Landroid/preference/Preference;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalStorage:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f090873

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f090874

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 273
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 276
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 277
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 279
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v15}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 280
    new-instance v18, Landroid/preference/Preference;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOrder(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f040090

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_6
    :goto_6
    return-void

    .line 247
    .end local v4    # "allowFormat":Z
    .end local v13    # "isRemovable":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 261
    .restart local v13    # "isRemovable":Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 269
    .restart local v4    # "allowFormat":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f09034b

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f09034c

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 288
    .restart local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 292
    :catch_1
    move-exception v18

    goto :goto_6
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 574
    const/4 v0, 0x0

    .line 579
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 580
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 583
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 585
    const-string v1, "storage_type"

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalStorage:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    :cond_0
    :goto_0
    return-object v0

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_2

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 590
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_3

    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_4

    .line 594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    const-string v1, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 596
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_5

    .line 597
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 600
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 602
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideo:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_6

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 605
    const-string v1, "vnd.android.cursor.dir/video"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 606
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_7

    .line 607
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 610
    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemOthers:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_0

    goto/16 :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 538
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 534
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 542
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 518
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 519
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 523
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 524
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUsbConnected"    # Z
    .param p2, "usbFunction"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 528
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 529
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 530
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 8
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 416
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 421
    sub-long v0, p1, p3

    .line 423
    .local v0, "usedSize":J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 424
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 425
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 427
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    cmp-long v2, v6, p1

    if-nez v2, :cond_0

    cmp-long v2, v6, p3

    if-nez v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 436
    return-void
.end method

.method public updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 22
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 456
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getOtherTypesFilesSize(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)J

    move-result-wide v11

    .line 459
    .local v11, "othersSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    const/16 v18, 0x1

    const-string v19, "ro.storage.flash_type"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setCompressionRatio(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;J)V

    .line 464
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemOthers:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v11, v12}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 469
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "DCIM"

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 470
    .local v4, "dcimSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 473
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "VIDEO"

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v16

    .line 474
    .local v16, "videoSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideo:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 477
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "MUSIC"

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v9

    .line 478
    .local v9, "musicSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9, v10}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 481
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "DOWNLOAD"

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 482
    .local v6, "downloadsSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6, v7}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 488
    .local v13, "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v18, v0

    iget v0, v13, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 489
    .local v14, "userSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_0

    .line 492
    .end local v13    # "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .end local v14    # "userSize":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 493
    return-void
.end method

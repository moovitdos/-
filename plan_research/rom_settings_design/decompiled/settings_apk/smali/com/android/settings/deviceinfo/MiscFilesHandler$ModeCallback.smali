.class Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataCount:I

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mHandler:Landroid/os/Handler;

    .line 131
    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 133
    return-void
.end method

.method private DeleteFileSelected()V
    .locals 6

    .prologue
    .line 269
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    .line 270
    .local v0, "checkedCount":I
    iget v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-le v0, v3, :cond_0

    .line 271
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checked item counts do not match. checkedCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dataSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :cond_0
    iget v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-lez v3, :cond_1

    .line 277
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1302(Lcom/android/settings/deviceinfo/MiscFilesHandler;Z)Z

    .line 278
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$802(Lcom/android/settings/deviceinfo/MiscFilesHandler;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 279
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v2, v3, :cond_6

    .line 281
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 284
    .restart local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 279
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_3
    sget-boolean v3, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v3, :cond_4

    .line 289
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 294
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    .line 298
    :goto_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 299
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$800(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 296
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 302
    .end local v1    # "file":Ljava/io/File;
    :cond_6
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1302(Lcom/android/settings/deviceinfo/MiscFilesHandler;Z)Z

    goto :goto_1
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->DeleteFileSelected()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->createDeleteDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteFiles()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->updateAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method private createDeleteDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$202(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 182
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$302(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 183
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09088f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090890

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 190
    :cond_0
    return-void
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 324
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 334
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 335
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 336
    const/4 v3, 0x0

    .line 343
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :goto_1
    return v3

    .line 333
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method private deleteFiles()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$1;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method

.method private updateAdapter(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->removeAll(Ljava/util/List;)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 315
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 317
    :cond_0
    return-void
.end method

.method private warnDeleteFileDialog(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090879

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$3;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$3;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$202(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 264
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return v2

    .line 149
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->warnDeleteFileDialog(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 155
    .local v7, "selectedSize":I
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-eq v7, v0, :cond_0

    move v5, v2

    .line 156
    .local v5, "isAllChecked":Z
    :goto_1
    if-eqz v5, :cond_1

    .line 157
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v6, v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 155
    .end local v5    # "isAllChecked":Z
    .end local v6    # "i":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 161
    .restart local v5    # "isAllChecked":Z
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 165
    :cond_2
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 166
    if-eqz v5, :cond_3

    .line 167
    const v0, 0x7f09088e

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 168
    const v0, 0x1080038

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x7f0b024d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 137
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 138
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 351
    :cond_0
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 356
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 358
    .local v3, "numChecked":I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1400(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    const-wide/16 v4, 0x0

    .line 362
    .local v4, "selectedDataSize":J
    if-lez v3, :cond_0

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 364
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 365
    .local v2, "itemPosition":I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v4, v6

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "i":I
    .end local v2    # "itemPosition":I
    :cond_0
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1500(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v10}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getDataSize()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 373
    iget v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-eq v3, v6, :cond_1

    const/4 v1, 0x1

    .line 374
    .local v1, "isAllChecked":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f0b024e

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v1, :cond_2

    const v6, 0x7f0906cf

    :goto_2
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 375
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f0b024e

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v1, :cond_3

    const v6, 0x1080033

    :goto_3
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 376
    return-void

    .line 373
    .end local v1    # "isAllChecked":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 374
    .restart local v1    # "isAllChecked":Z
    :cond_2
    const v6, 0x7f09088e

    goto :goto_2

    .line 375
    :cond_3
    const v6, 0x1080038

    goto :goto_3
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

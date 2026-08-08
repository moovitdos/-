.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field final synthetic val$listPosition:I

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;Lcom/android/settings/deviceinfo/FileItemInfoLayout;I)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    iput p4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 480
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 489
    :goto_0
    return v0

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 484
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listPosition:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 488
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listPosition:I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    move v0, v1

    .line 489
    goto :goto_0

    .line 486
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listPosition:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_1
.end method

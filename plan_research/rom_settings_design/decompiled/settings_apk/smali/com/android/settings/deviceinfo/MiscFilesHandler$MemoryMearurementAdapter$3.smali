.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Lcom/android/settings/deviceinfo/FileItemInfoLayout;ILandroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    iput p3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listPosition:I

    iput-object p4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 495
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listPosition:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 500
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listPosition:I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 501
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listPosition:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 500
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.class Lcom/android/settings/deviceinfo/MiscFilesHandler$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

.field final synthetic val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$1;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$1;->val$lv:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v0, 0x1

    .line 96
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$1;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->isChecked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$1;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$1;->val$lv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$1;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->isChecked(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, p3, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 102
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$1;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

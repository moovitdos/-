.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;ILandroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listPosition:I

    iput-object p3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 468
    if-eqz p2, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 473
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listPosition:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 474
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->val$listPosition:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0
.end method

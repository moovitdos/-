.class Lcom/android/settings/applications/MouseControlerFragment$1;
.super Ljava/lang/Object;
.source "MouseControlerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/MouseControlerFragment;->initialViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/MouseControlerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MouseControlerFragment;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/settings/applications/MouseControlerFragment$1;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/MouseControlViewHolder;

    .line 538
    .local v0, "holder":Lcom/android/settings/applications/MouseControlViewHolder;
    iget-object v2, v0, Lcom/android/settings/applications/MouseControlViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, v0, Lcom/android/settings/applications/MouseControlViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 539
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$1;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    iget-object v1, v1, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment$1;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    iget-object v2, v2, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/applications/MouseControlViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->setChecked(Ljava/lang/String;Z)V

    .line 541
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$1;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    iget-object v1, v1, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 543
    return-void

    .line 538
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

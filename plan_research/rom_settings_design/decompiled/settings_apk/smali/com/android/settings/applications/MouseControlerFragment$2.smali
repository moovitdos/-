.class Lcom/android/settings/applications/MouseControlerFragment$2;
.super Ljava/lang/Object;
.source "MouseControlerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/MouseControlerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/MouseControlerFragment;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 579
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment$2;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    iget-object v2, v2, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 580
    .local v0, "allNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 581
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment$2;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    iget-object v2, v2, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/MouseControlerFragment$2;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    iget-object v3, v3, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/MouseControlerFragment$2;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v4}, Lcom/android/settings/applications/MouseControlerFragment;->access$500(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->setChecked(Ljava/lang/String;Z)V

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment$2;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v2}, Lcom/android/settings/applications/MouseControlerFragment;->access$500(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment$2;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v2}, Lcom/android/settings/applications/MouseControlerFragment;->access$600(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0908a6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 588
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment$2;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    iget-object v2, v2, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 589
    return-void

    .line 586
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment$2;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v2}, Lcom/android/settings/applications/MouseControlerFragment;->access$600(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0906cf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

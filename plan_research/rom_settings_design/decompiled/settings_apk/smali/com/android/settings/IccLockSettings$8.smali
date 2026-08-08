.class Lcom/android/settings/IccLockSettings$8;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f090002

    const v2, 0x7f020058

    .line 781
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$1400(Lcom/android/settings/IccLockSettings;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 782
    .local v0, "selectedItem":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 783
    instance-of v1, v0, Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_2

    .line 785
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$1200(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 787
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    goto :goto_0

    .line 791
    :cond_2
    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$1600(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 794
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 795
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    goto :goto_0

    .line 797
    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$8;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 805
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

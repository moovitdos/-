.class Lcom/android/settings/sim/SimSettings$2;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const v5, 0x7f020058

    .line 437
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "selectedItem":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 439
    instance-of v3, v0, Lcom/android/settings/sim/SimSettings$DataPreference;

    if-eqz v3, :cond_1

    .line 440
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    check-cast v0, Lcom/android/settings/sim/SimSettings$DataPreference;

    .end local v0    # "selectedItem":Ljava/lang/Object;
    invoke-static {v3, v0}, Lcom/android/settings/sim/SimSettings;->access$200(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/sim/SimSettings$DataPreference;)V

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 441
    .restart local v0    # "selectedItem":Ljava/lang/Object;
    :cond_1
    instance-of v3, v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_5

    move-object v3, v0

    .line 442
    check-cast v3, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v2

    .local v2, "slotId":I
    move-object v3, v0

    .line 443
    check-cast v3, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$400(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/widget/Switch;

    move-result-object v1

    .line 444
    .local v1, "simEnable":Landroid/widget/Switch;
    if-eqz v1, :cond_0

    .line 450
    check-cast v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local v0    # "selectedItem":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    const v4, 0x7f020042

    invoke-virtual {v3, v4}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(I)V

    .line 452
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    const v4, 0x7f09099d

    invoke-virtual {v3, v4}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(I)V

    .line 456
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 457
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 458
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3, v2}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 460
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    const v4, 0x7f09099e

    invoke-virtual {v3, v4}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    goto :goto_1

    .line 463
    :cond_3
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    const v4, 0x7f09099f

    invoke-virtual {v3, v4}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    goto :goto_0

    .line 466
    :cond_4
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    goto :goto_0

    .line 472
    .end local v1    # "simEnable":Landroid/widget/Switch;
    .end local v2    # "slotId":I
    .restart local v0    # "selectedItem":Ljava/lang/Object;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 473
    check-cast v0, Landroid/preference/Preference;

    .end local v0    # "selectedItem":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 474
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 475
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    const v4, 0x7f0909a0

    invoke-virtual {v3, v4}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    goto/16 :goto_0

    .line 477
    :cond_6
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    goto/16 :goto_0
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
    .line 485
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.class Lcom/android/settings/fuelgauge/PowerUsageSummary$4;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 432
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 433
    if-eqz p3, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 435
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 437
    :cond_0
    return-void
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
    .line 441
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

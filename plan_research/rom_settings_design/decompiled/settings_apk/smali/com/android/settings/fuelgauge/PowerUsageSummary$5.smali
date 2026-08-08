.class Lcom/android/settings/fuelgauge/PowerUsageSummary$5;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 447
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 458
    if-nez p2, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 462
    :cond_0
    return-void
.end method

.class Lcom/android/settings/DataUsageSummary$15;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 2

    .prologue
    .line 1764
    const-string v0, "DataUsage"

    const-string v1, "onInspectRangeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2600(Lcom/android/settings/DataUsageSummary;)V

    .line 1766
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$2500(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1900(Lcom/android/settings/DataUsageSummary;J)V

    .line 1776
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$2500(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1700(Lcom/android/settings/DataUsageSummary;J)V

    .line 1771
    return-void
.end method

.method public requestLimitEdit()V
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1786
    return-void
.end method

.method public requestWarningEdit()V
    .locals 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$15;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1781
    return-void
.end method

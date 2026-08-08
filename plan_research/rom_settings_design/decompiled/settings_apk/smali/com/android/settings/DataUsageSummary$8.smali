.class Lcom/android/settings/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1486
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1489
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1490
    .local v0, "currentTime":J
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$1400(Lcom/android/settings/DataUsageSummary;)J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 1491
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5, v0, v1}, Lcom/android/settings/DataUsageSummary;->access$1402(Lcom/android/settings/DataUsageSummary;J)J

    .line 1492
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$900(Lcom/android/settings/DataUsageSummary;)V

    .line 1493
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$1500(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1494
    const-string v5, "DataUsage"

    const-string v6, "getPolicy == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0x100000

    mul-long v3, v5, v7

    .line 1498
    .local v3, "warningBytes":J
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5, v3, v4}, Lcom/android/settings/DataUsageSummary;->access$1700(Lcom/android/settings/DataUsageSummary;J)V

    .line 1501
    .end local v3    # "warningBytes":J
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$1800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 1502
    .local v2, "disableAtLimit":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 1505
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1510
    .end local v2    # "disableAtLimit":Z
    :cond_1
    :goto_1
    return-void

    .line 1501
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1507
    .restart local v2    # "disableAtLimit":Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$8;->this$0:Lcom/android/settings/DataUsageSummary;

    const-wide/16 v6, -0x1

    invoke-static {v5, v6, v7}, Lcom/android/settings/DataUsageSummary;->access$1900(Lcom/android/settings/DataUsageSummary;J)V

    goto :goto_1
.end method

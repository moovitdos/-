.class Lcom/android/settings/DataUsageSummary$7;
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
    .line 1463
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1466
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1483
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 1469
    .local v2, "dataEnabled":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1470
    .local v1, "currentTab":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5, v1}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I

    move-result v0

    .line 1471
    .local v0, "currentPhoneId":I
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDataEnabledListener---currentPhoneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",,dataEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1200(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1473
    if-eqz v2, :cond_3

    .line 1474
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5, v0, v3}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;IZ)V

    .line 1482
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0    # "currentPhoneId":I
    .end local v1    # "currentTab":Ljava/lang/String;
    .end local v2    # "dataEnabled":Z
    :cond_2
    move v2, v4

    .line 1468
    goto :goto_1

    .line 1478
    .restart local v0    # "currentPhoneId":I
    .restart local v1    # "currentTab":Ljava/lang/String;
    .restart local v2    # "dataEnabled":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3, v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings/DataUsageSummary;I)V

    goto :goto_2
.end method

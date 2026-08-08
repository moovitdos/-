.class Lcom/android/settings/DataUsageSummary$1;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


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
.method constructor <init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;Z)V

    .line 374
    return-void
.end method

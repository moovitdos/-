.class Lcom/android/settings/DataUsageSummary$DataUsageAdapter$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

.field final synthetic val$item:Lcom/android/settings/DataUsageSummary$AppItem;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$DataUsageAdapter;Lcom/android/settings/DataUsageSummary$AppItem;)V
    .locals 0

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter$1;->this$0:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter$1;->val$item:Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2064
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter$1;->this$0:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->access$3900(Lcom/android/settings/DataUsageSummary$DataUsageAdapter;)Lcom/android/settings/net/UidDetailProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter$1;->val$item:Lcom/android/settings/DataUsageSummary$AppItem;

    if-nez v1, :cond_1

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 2066
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter$1;->this$0:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->access$3900(Lcom/android/settings/DataUsageSummary$DataUsageAdapter;)Lcom/android/settings/net/UidDetailProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter$1;->val$item:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v2, v2, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v0

    .line 2067
    .local v0, "detail":Lcom/android/settings/net/UidDetail;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter$1;->this$0:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->access$4000(Lcom/android/settings/DataUsageSummary$DataUsageAdapter;)Lcom/android/settings/DataUsageSummary;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter$1;->val$item:Lcom/android/settings/DataUsageSummary$AppItem;

    iget-object v3, v0, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

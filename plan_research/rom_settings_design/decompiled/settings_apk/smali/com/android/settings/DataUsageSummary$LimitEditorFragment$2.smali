.class Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

.field final synthetic val$bytesEdit:Landroid/widget/EditText;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

.field final synthetic val$limitValue:I

.field final synthetic val$minValue:I

.field final synthetic val$target:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/EditText;Landroid/content/Context;IILcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2511
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->this$1:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$bytesEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$limitValue:I

    iput p5, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$minValue:I

    iput-object p6, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iput-object p7, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$template:Landroid/net/NetworkTemplate;

    iput-object p8, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$target:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/32 v8, 0x100000

    const/4 v7, 0x0

    .line 2519
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$bytesEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 2520
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$bytesEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2521
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$context:Landroid/content/Context;

    const v5, 0x7f09070f

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2540
    :goto_0
    return-void

    .line 2525
    :cond_0
    iget v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$limitValue:I

    int-to-long v4, v4

    mul-long v0, v4, v8

    .line 2527
    .local v0, "bytes":J
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$bytesEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2528
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    mul-long v0, v4, v8

    .line 2533
    .end local v3    # "value":Ljava/lang/String;
    :goto_1
    iget v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$minValue:I

    int-to-long v4, v4

    mul-long/2addr v4, v8

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 2534
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$context:Landroid/content/Context;

    const v5, 0x7f090948

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2529
    :catch_0
    move-exception v2

    .line 2530
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v4, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKey: e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2538
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 2539
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$2;->val$target:Lcom/android/settings/DataUsageSummary;

    invoke-static {v4, v7}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_0
.end method

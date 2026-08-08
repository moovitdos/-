.class Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2249
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2254
    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    .line 2256
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearFocus()V

    .line 2257
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 2258
    .local v0, "cycleDay":I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2259
    .local v1, "cycleTimezone":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 2260
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_usage_cycle_start"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2261
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;Z)V

    .line 2262
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2264
    .end local v0    # "cycleDay":I
    .end local v1    # "cycleTimezone":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

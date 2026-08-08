.class Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

.field final synthetic val$isSubIdChecked:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;ZI)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iput-boolean p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->val$isSubIdChecked:Z

    iput p3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 713
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged isSubIdChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->val$isSubIdChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-boolean v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->val$isSubIdChecked:Z

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    invoke-static {v1}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->access$900(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    invoke-static {v2}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->access$1000(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)I

    move-result v2

    iget v3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->val$position:I

    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    invoke-static {v4}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->access$1100(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)[Landroid/sim/Sim;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/sim/SimDialogActivity;->access$000(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;II[Landroid/sim/Sim;)V

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    iget-object v0, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

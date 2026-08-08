.class Lcom/android/settings/sim/SimDialogActivity$1;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$subInfoList:[Landroid/sim/Sim;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;I[Landroid/sim/Sim;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$id:I

    iput-object p4, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$subInfoList:[Landroid/sim/Sim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$id:I

    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$subInfoList:[Landroid/sim/Sim;

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/settings/sim/SimDialogActivity;->access$000(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;II[Landroid/sim/Sim;)V

    .line 272
    return-void
.end method

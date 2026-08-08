.class Lcom/android/settings/sim/SimDialogActivity$6;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;I)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$6;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/settings/sim/SimDialogActivity$6;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$6;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v0}, Lcom/android/settings/sim/SimDialogActivity;->access$200(Lcom/android/settings/sim/SimDialogActivity;)[Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/settings/sim/SimDialogActivity$6;->val$phoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setPrimaryCard(I)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$6;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v0}, Lcom/android/settings/sim/SimDialogActivity;->access$300(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 398
    return-void
.end method

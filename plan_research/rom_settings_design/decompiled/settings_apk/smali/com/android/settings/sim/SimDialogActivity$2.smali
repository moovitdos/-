.class Lcom/android/settings/sim/SimDialogActivity$2;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 280
    if-ne p2, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v1}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    if-ne p2, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v1}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

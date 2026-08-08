.class Lcom/android/settings/sim/SimDialogActivity$4;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$statusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/app/StatusBarManager;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$4;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$statusBarManager:Landroid/app/StatusBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$4;->val$statusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 373
    return-void
.end method

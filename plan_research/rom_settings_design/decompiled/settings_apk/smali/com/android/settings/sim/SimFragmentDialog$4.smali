.class Lcom/android/settings/sim/SimFragmentDialog$4;
.super Ljava/lang/Object;
.source "SimFragmentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimFragmentDialog;->createEditDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimFragmentDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimFragmentDialog;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/settings/sim/SimFragmentDialog$4;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 392
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 393
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/sim/SimFragmentDialog;->access$102(Lcom/android/settings/sim/SimFragmentDialog;)Lcom/android/settings/sim/SimFragmentDialog;

    .line 394
    return-void
.end method

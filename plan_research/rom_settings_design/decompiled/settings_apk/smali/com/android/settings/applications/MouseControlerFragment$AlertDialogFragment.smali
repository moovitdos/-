.class Lcom/android/settings/applications/MouseControlerFragment$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "MouseControlerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/MouseControlerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlertDialogFragment"
.end annotation


# instance fields
.field private mPlaylistName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/applications/MouseControlerFragment;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 442
    packed-switch p2, :pswitch_data_0

    .line 448
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 451
    :goto_0
    return-void

    .line 444
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$AlertDialogFragment;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v0}, Lcom/android/settings/applications/MouseControlerFragment;->access$300(Lcom/android/settings/applications/MouseControlerFragment;)V

    .line 445
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 429
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment$AlertDialogFragment;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v2}, Lcom/android/settings/applications/MouseControlerFragment;->access$200(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 430
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 431
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 432
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0908f9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/applications/MouseControlerFragment$AlertDialogFragment;->mPlaylistName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 435
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 436
    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.class public Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataDisableFragment"
.end annotation


# static fields
.field static mConfirmDialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2570
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;I)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "simId"    # I

    .prologue
    .line 2578
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2585
    :cond_0
    :goto_0
    return-void

    .line 2579
    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->mConfirmDialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->mConfirmDialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->mConfirmDialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2581
    :cond_2
    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->mConfirmDialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    .line 2582
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->mConfirmDialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v0, p0, p1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2583
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->mConfirmDialog:Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataDisable"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2589
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2591
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2592
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090713

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2594
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2605
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2607
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

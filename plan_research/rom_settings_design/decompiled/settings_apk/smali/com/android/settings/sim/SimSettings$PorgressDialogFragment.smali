.class public Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PorgressDialogFragment"
.end annotation


# instance fields
.field mMessageView:Landroid/widget/TextView;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1066
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1086
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sim/SimSettings;

    invoke-static {v0, p0}, Lcom/android/settings/sim/SimSettings;->access$2300(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;)V

    .line 1089
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1074
    const v1, 0x7f040079

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;->v:Landroid/view/View;

    .line 1075
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;->v:Landroid/view/View;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1076
    .local v0, "mProgress":Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;->v:Landroid/view/View;

    const v2, 0x7f0b0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;->mMessageView:Landroid/widget/TextView;

    .line 1077
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09098f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1080
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PorgressDialogFragment;->v:Landroid/view/View;

    return-object v1
.end method

.class public Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity;
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
    .line 790
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 796
    const v0, 0x7f040079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;->v:Landroid/view/View;

    .line 797
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;->v:Landroid/view/View;

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;->mMessageView:Landroid/widget/TextView;

    .line 798
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09098f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;->v:Landroid/view/View;

    return-object v0
.end method

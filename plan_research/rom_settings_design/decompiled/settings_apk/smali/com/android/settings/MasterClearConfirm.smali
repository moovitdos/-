.class public Lcom/android/settings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClearConfirm;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    return v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method

.method private setSoftKey()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    .line 155
    .local v0, "featureBar":Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 161
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 119
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 123
    const/4 v0, 0x1

    const v1, 0x7f090397

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const v0, 0x7f04004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->setSoftKey()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-nez v2, :cond_2

    .line 130
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    :goto_0
    return v1

    .line 134
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v2, :cond_1

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    const-string v2, "format_internal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string v2, "format_external"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 141
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "MasterClearConfirm"

    const-string v3, "MasterClearConfirm not Erase ExtSdCard"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    const-string v2, "format_internal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

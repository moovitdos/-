.class public Lcom/android/settings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalText:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInitiateText:Landroid/widget/TextView;

.field private mIsFinalView:Z

.field private mIsInternal:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsInternal:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsFinalView:Z

    .line 68
    new-instance v0, Lcom/android/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$1;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v0, Lcom/android/settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$2;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MediaFormat;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b00e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalText:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsInternal:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalText:Landroid/widget/TextView;

    const v1, 0x7f090878

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const v1, 0x7f090877

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->setSoftKey()V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsFinalView:Z

    .line 152
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateText:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsInternal:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateText:Landroid/widget/TextView;

    const v1, 0x7f090876

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f090877

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->setSoftKey()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsFinalView:Z

    .line 187
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 90
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0903a2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0903a3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setSoftKey()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    .line 263
    .local v0, "featureBar":Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 269
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 108
    :cond_1
    if-nez p2, :cond_2

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 194
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 195
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storage_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsInternal:Z

    .line 199
    iget-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsInternal:Z

    if-eqz v0, :cond_0

    .line 200
    const v0, 0x7f090875

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 205
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    const v0, 0x7f09039f

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 225
    const v0, 0x7f0903a1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 227
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 238
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 240
    :pswitch_0
    const/16 v4, 0x37

    invoke-direct {p0, v4}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "storage_volume"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 252
    .local v2, "storageVolume":Landroid/os/storage/StorageVolume;
    const-string v4, "storage_volume"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 231
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/MediaFormat;->mIsFinalView:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/MediaFormat;->mIsFinalView:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    return v1
.end method

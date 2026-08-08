.class public Lcom/android/settings/ConfirmLockPassword;
.super Landroid/preference/PreferenceActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;
    }
.end annotation


# static fields
.field private static mCancelButton:Landroid/widget/Button;

.field private static mContinueButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$002(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Button;

    .prologue
    .line 49
    sput-object p0, Lcom/android/settings/ConfirmLockPassword;->mCancelButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings/ConfirmLockPassword;->mContinueButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Button;

    .prologue
    .line 49
    sput-object p0, Lcom/android/settings/ConfirmLockPassword;->mContinueButton:Landroid/widget/Button;

    return-object p0
.end method

.method private setupFetureBar()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    .line 85
    .local v0, "mHelperBar":Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 86
    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 94
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 59
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v1, 0x7f09040e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 77
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->setupFetureBar()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 273
    sput-object v0, Lcom/android/settings/ConfirmLockPassword;->mContinueButton:Landroid/widget/Button;

    .line 274
    sput-object v0, Lcom/android/settings/ConfirmLockPassword;->mCancelButton:Landroid/widget/Button;

    .line 275
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 253
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 254
    sget-object v1, Lcom/android/settings/ConfirmLockPassword;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/android/settings/ConfirmLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 266
    :goto_0
    return v0

    .line 258
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 259
    :cond_1
    const/16 v1, 0x17

    if-ne p1, v1, :cond_3

    .line 260
    sget-object v1, Lcom/android/settings/ConfirmLockPassword;->mContinueButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 261
    sget-object v1, Lcom/android/settings/ConfirmLockPassword;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 264
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 266
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

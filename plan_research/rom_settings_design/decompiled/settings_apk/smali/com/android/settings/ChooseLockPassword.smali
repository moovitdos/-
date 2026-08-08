.class public Lcom/android/settings/ChooseLockPassword;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    }
.end annotation


# static fields
.field private static mCancelButton:Landroid/widget/Button;

.field private static mCenterTV:Landroid/widget/TextView;

.field private static mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private static mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic access$000()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Button;

    .prologue
    .line 54
    sput-object p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Button;

    .prologue
    .line 54
    sput-object p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200()Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    return-object v0
.end method

.method private setupFetureBar()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 101
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 102
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 103
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 111
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 82
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
    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v1, 0x7f09040b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->setupFetureBar()V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 578
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 579
    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    .line 580
    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    .line 581
    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mCenterTV:Landroid/widget/TextView;

    .line 582
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 559
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 560
    sget-object v1, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 561
    sget-object v1, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 572
    :goto_0
    return v0

    .line 564
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 565
    :cond_1
    const/16 v1, 0x17

    if-ne p1, v1, :cond_3

    .line 566
    sget-object v1, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 567
    sget-object v1, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 570
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 572
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

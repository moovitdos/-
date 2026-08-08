.class public Lcom/android/settings/applications/InstalledAppDetailsTop;
.super Landroid/preference/PreferenceActivity;
.source "InstalledAppDetailsTop.java"


# instance fields
.field public mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setSoftKey()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsTop;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 29
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsTop;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(I)V

    .line 30
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsTop;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(I)V

    .line 31
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsTop;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(I)V

    .line 32
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsTop;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(I)V

    .line 33
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsTop;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 34
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsTop;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 50
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsTop;->setSoftKey()V

    .line 25
    return-void
.end method

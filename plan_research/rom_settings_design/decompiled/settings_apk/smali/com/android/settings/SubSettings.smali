.class public Lcom/android/settings/SubSettings;
.super Lcom/android/settings/Settings;
.source "SubSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "SubSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "paramInt"    # I
    .param p2, "paramKeyEvent"    # Landroid/view/KeyEvent;

    .line 85
    goto :goto_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "itapiatu12@gmail.com--"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 87
    .local v0, "list":Landroid/widget/ListView;
    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    const-string v1, "itapi- settings selecting"

    invoke-static {v1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_0
    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 95
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 33
    const/4 v0, 0x1

    return v0
.end method

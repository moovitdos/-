.class public Lcom/sprd/settings/RecoverySystemUpdatePreference;
.super Landroid/preference/DialogPreference;
.source "RecoverySystemUpdatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;
    }
.end annotation


# instance fields
.field cont:Landroid/content/Context;

.field private mCallBack:Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/sprd/settings/RecoverySystemUpdatePreference;->cont:Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 34
    const v0, 0x7f0907e5

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 35
    return-void
.end method

.method private getBacBatteryCallBack()Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sprd/settings/RecoverySystemUpdatePreference;->mCallBack:Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mCallBack is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/RecoverySystemUpdatePreference;->mCallBack:Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 8
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v7, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const-string v4, ""

    .line 47
    .local v4, "storageState":Ljava/lang/String;
    const-string v3, ""

    .line 49
    .local v3, "storageDirectory":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStoragePath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 54
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/update.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    invoke-direct {p0}, Lcom/sprd/settings/RecoverySystemUpdatePreference;->getBacBatteryCallBack()Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;

    move-result-object v5

    invoke-interface {v5}, Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;->getBatteryLevel()I

    move-result v2

    .line 57
    .local v2, "levelPower":I
    const/16 v5, 0x23

    if-lt v2, v5, :cond_1

    .line 74
    :try_start_0
    iget-object v5, p0, Lcom/sprd/settings/RecoverySystemUpdatePreference;->cont:Landroid/content/Context;

    invoke-static {v5, v1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "levelPower":I
    .end local v3    # "storageDirectory":Ljava/lang/String;
    .end local v4    # "storageState":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "levelPower":I
    .restart local v3    # "storageDirectory":Ljava/lang/String;
    .restart local v4    # "storageState":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v5, p0, Lcom/sprd/settings/RecoverySystemUpdatePreference;->cont:Landroid/content/Context;

    const v6, 0x7f0907e8

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 82
    .end local v2    # "levelPower":I
    :cond_2
    iget-object v5, p0, Lcom/sprd/settings/RecoverySystemUpdatePreference;->cont:Landroid/content/Context;

    const v6, 0x7f0907e9

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 86
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget-object v5, p0, Lcom/sprd/settings/RecoverySystemUpdatePreference;->cont:Landroid/content/Context;

    const v6, 0x7f0907e6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setBatteryCallBack(Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sprd/settings/RecoverySystemUpdatePreference;->mCallBack:Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;

    .line 100
    return-void
.end method

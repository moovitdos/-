.class public Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mEnableOnly:Z

.field private mIsAirPlanModeOn:Z

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private final isBluetoothAllowed()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 190
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 193
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v8, "airplane_mode_on"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    move v2, v6

    .line 195
    .local v2, "isAirplaneModeOn":Z
    :goto_0
    if-nez v2, :cond_2

    .line 218
    :cond_0
    :goto_1
    return v6

    .end local v2    # "isAirplaneModeOn":Z
    :cond_1
    move v2, v7

    .line 193
    goto :goto_0

    .line 200
    .restart local v2    # "isAirplaneModeOn":Z
    :cond_2
    const-string v8, "airplane_mode_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-nez v0, :cond_3

    move v3, v6

    .line 204
    .local v3, "isAirplaneSensitive":Z
    :goto_2
    if-eqz v3, :cond_0

    .line 209
    const-string v8, "airplane_mode_toggleable_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "airplaneModeToggleableRadios":Ljava/lang/String;
    if-nez v1, :cond_4

    move v4, v7

    .line 213
    .local v4, "isAirplaneToggleable":Z
    :goto_3
    if-nez v4, :cond_0

    move v6, v7

    .line 218
    goto :goto_1

    .line 202
    .end local v1    # "airplaneModeToggleableRadios":Ljava/lang/String;
    .end local v3    # "isAirplaneSensitive":Z
    .end local v4    # "isAirplaneToggleable":Z
    :cond_3
    const-string v8, "bluetooth"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_2

    .line 211
    .restart local v1    # "airplaneModeToggleableRadios":Ljava/lang/String;
    .restart local v3    # "isAirplaneSensitive":Z
    :cond_4
    const-string v8, "bluetooth"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_3
.end method

.method private parseIntent()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 163
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 164
    .local v1, "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_2

    .line 165
    const-string v4, "RequestPermissionHelperActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 171
    .end local v1    # "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 152
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 156
    const-string v4, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v5, 0x78

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 169
    .restart local v1    # "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 171
    goto :goto_1
.end method


# virtual methods
.method createDialog()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 78
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 79
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->isBluetoothAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    if-eqz v1, :cond_0

    .line 81
    const v1, 0x7f09008b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 90
    :goto_0
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 91
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    const v1, 0x7f09000f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 93
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 101
    return-void

    .line 83
    :cond_0
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-nez v1, :cond_1

    .line 84
    const v1, 0x7f09008f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 86
    :cond_1
    const v1, 0x7f09008e

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 95
    :cond_2
    const v1, 0x7f090894

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 96
    const v1, 0x7f090898

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 97
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mIsAirPlanModeOn:Z

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 178
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 106
    packed-switch p2, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mIsAirPlanModeOn:Z

    if-eqz v3, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "returnCode":I
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 136
    .end local v2    # "returnCode":I
    :pswitch_1
    const/4 v2, 0x0

    .line 141
    .restart local v2    # "returnCode":I
    :goto_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 113
    .end local v2    # "returnCode":I
    :cond_0
    const/4 v0, 0x0

    .line 117
    .local v0, "btState":I
    const/16 v1, 0x1e

    .line 119
    .local v1, "retryCount":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 120
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 126
    :cond_2
    :goto_2
    const/16 v3, 0xb

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    :cond_3
    const/16 v2, -0x3e8

    .restart local v2    # "returnCode":I
    goto :goto_1

    .line 131
    .end local v2    # "returnCode":I
    :cond_4
    const/4 v2, 0x0

    .line 133
    .restart local v2    # "returnCode":I
    goto :goto_1

    .line 123
    .end local v2    # "returnCode":I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 106
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    .line 70
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 182
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

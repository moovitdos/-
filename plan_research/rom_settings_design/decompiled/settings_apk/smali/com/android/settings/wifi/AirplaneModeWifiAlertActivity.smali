.class public Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AirplaneModeWifiAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private noButton:Landroid/widget/Button;

.field private yesButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;->yesButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_wifi_notification_flag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;->noButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 25
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0908c9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 26
    const v1, 0x7f0908ca

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 30
    const v1, 0x7f0b0009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;->checkBox:Landroid/widget/CheckBox;

    .line 31
    iget-object v1, p0, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;->yesButton:Landroid/widget/Button;

    .line 33
    iget-object v1, p0, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;->yesButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;->noButton:Landroid/widget/Button;

    .line 35
    iget-object v1, p0, Lcom/android/settings/wifi/AirplaneModeWifiAlertActivity;->noButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

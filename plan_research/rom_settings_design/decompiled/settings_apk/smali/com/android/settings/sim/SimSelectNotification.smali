.class public Lcom/android/settings/sim/SimSelectNotification;
.super Landroid/content/BroadcastReceiver;
.source "SimSelectNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 32
    const-string v0, "android.intent.action.SHOW_SELECT_PRIMARY_CARD_DIALOG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "SimSelectNotification"

    const-string v1, "receive broadcast : SHOW_SELECT_PRIMARY_CARD_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    const/high16 v0, 0x8000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isDualLteModem()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string v0, "show_after_boot"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    :cond_0
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

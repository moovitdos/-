.class Lcom/android/settings/bluetooth/BluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 76
    .end local v1    # "state":I
    :cond_0
    return-void
.end method

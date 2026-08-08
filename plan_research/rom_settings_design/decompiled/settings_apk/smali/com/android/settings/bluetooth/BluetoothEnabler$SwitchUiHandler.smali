.class Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;
.super Landroid/os/Handler;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$000(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 271
    return-void
.end method

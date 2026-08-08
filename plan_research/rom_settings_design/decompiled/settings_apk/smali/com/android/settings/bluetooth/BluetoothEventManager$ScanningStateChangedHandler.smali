.class Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanningStateChangedHandler"
.end annotation


# instance fields
.field private final mStarted:Z

.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Z)V
    .locals 0
    .param p2, "started"    # Z

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    .line 178
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 181
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    .line 182
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 183
    .local v0, "callback":Lcom/android/settings/bluetooth/BluetoothCallback;
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v3}, Lcom/android/settings/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 185
    .end local v0    # "callback":Lcom/android/settings/bluetooth/BluetoothCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    invoke-static {}, Landroid/util/Log;->isIloggable()Z

    move-result v2

    .line 187
    .local v2, "isIloggable":Z
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    if-eqz v3, :cond_2

    .line 188
    if-eqz v2, :cond_1

    .line 189
    const-string v3, "Bluetooth : DISCOVERY start"

    invoke-static {v3}, Landroid/util/Log;->startPerfTracking(Ljava/lang/String;)V

    .line 196
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 197
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistDiscoveringTimestamp(Landroid/content/Context;)V

    .line 198
    return-void

    .line 192
    :cond_2
    if-eqz v2, :cond_1

    .line 193
    const-string v3, "Bluetooth : DISCOVERY end "

    invoke-static {v3}, Landroid/util/Log;->stopPerfTracking(Ljava/lang/String;)V

    goto :goto_1
.end method

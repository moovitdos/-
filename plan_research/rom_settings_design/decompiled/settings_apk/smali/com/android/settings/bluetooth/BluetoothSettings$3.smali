.class Lcom/android/settings/bluetooth/BluetoothSettings$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 601
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$500(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 602
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$602(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 603
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v8, v8, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 605
    .local v1, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 606
    .local v0, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v8

    const/16 v10, 0xb

    if-ne v8, v10, :cond_3

    .line 607
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$602(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 620
    .end local v0    # "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 623
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 628
    :cond_2
    :goto_1
    return-void

    .line 610
    .restart local v0    # "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_3
    :try_start_2
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 611
    .local v7, "safeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 612
    .local v6, "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v0, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 614
    .local v2, "connectionStatus":I
    if-ne v2, v11, :cond_4

    .line 615
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$602(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 620
    .end local v0    # "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    .end local v2    # "connectionStatus":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v7    # "safeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 625
    .restart local v1    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    :catch_0
    move-exception v3

    .line 626
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v8, "BluetoothSettings"

    const-string v9, "getActivity() is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/TetherSettings;
    .param p2, "x1"    # Lcom/android/settings/TetherSettings$1;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 236
    const-string v7, "availableArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 238
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "activeArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 240
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "erroredArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 242
    .local v4, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-static {v10, v7, v8, v9}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 304
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v9, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 246
    iget-object v8, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v8, v7}, Lcom/android/settings/TetherSettings;->access$202(Lcom/android/settings/TetherSettings;Z)Z

    .line 247
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 248
    :cond_2
    const-string v9, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 249
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$202(Lcom/android/settings/TetherSettings;Z)Z

    .line 250
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 251
    :cond_3
    const-string v9, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 252
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v9, "connected"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$402(Lcom/android/settings/TetherSettings;Z)Z

    .line 253
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 254
    :cond_4
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 255
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 256
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x80000000

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 275
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 259
    :sswitch_0
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 260
    .local v3, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v3, :cond_5

    .line 261
    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 262
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$502(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    .line 268
    .end local v3    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$502(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    .line 282
    :cond_6
    const-string v9, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 283
    const-string v9, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 284
    .local v6, "localRole":I
    if-ne v6, v7, :cond_0

    .line 285
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    .line 294
    .end local v6    # "localRole":I
    :cond_7
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 295
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v9}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    move v5, v7

    .line 297
    .local v5, "isAirplaneMode":Z
    :goto_2
    if-ne v5, v7, :cond_9

    .line 298
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v5    # "isAirplaneMode":Z
    :cond_8
    move v5, v8

    .line 295
    goto :goto_2

    .line 300
    .restart local v5    # "isAirplaneMode":Z
    :cond_9
    iget-object v8, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v8}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/preference/SwitchPreference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 88
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 223
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-static {}, Landroid/util/Log;->isIloggable()Z

    move-result v0

    .line 173
    .local v0, "isIloggable":Z
    packed-switch p1, :pswitch_data_0

    .line 195
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 178
    :pswitch_1
    if-eqz v0, :cond_0

    .line 179
    const-string v1, "WLAN: trun on. "

    invoke-static {v1}, Landroid/util/Log;->stopPerfTracking(Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 188
    :pswitch_3
    if-eqz v0, :cond_1

    .line 189
    const-string v1, "WLAN: trun off. "

    invoke-static {v1}, Landroid/util/Log;->stopPerfTracking(Ljava/lang/String;)V

    .line 191
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0901f2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 152
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 158
    .local v0, "wifiApState":I
    if-eqz p2, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0901f1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 260
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v2

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    move-object v2, p2

    .line 234
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-ne v2, v5, :cond_1

    move v2, v4

    .line 235
    goto :goto_0

    .line 238
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 240
    .local v0, "isChecked":Z
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-static {v2, v5}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0901f2

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v3

    .line 244
    goto :goto_0

    .line 248
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 249
    .local v1, "wifiApState":I
    if-eqz v0, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 251
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 254
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 255
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 257
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 258
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0901f1

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_5
    move v2, v4

    .line 260
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v4, :cond_0

    .line 292
    :goto_0
    return v2

    .line 270
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 272
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-static {v4, v5}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0901f2

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 281
    .local v1, "wifiApState":I
    if-eqz v0, :cond_3

    const/16 v4, 0xc

    if-eq v1, v4, :cond_2

    const/16 v4, 0xd

    if-ne v1, v4, :cond_3

    .line 283
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 286
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 289
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0901f1

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_4
    move v2, v3

    .line 292
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    return-void
.end method

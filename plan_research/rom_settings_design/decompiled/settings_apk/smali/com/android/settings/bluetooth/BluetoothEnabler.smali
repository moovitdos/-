.class public final Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final MSG_RECOVER_STATE:I

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSwitchHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mValidListener:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private supportBtWifiSoftApCoexit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "BluetoothEnabler"

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->supportBtWifiSoftApCoexit:Z

    .line 57
    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->MSG_RECOVER_STATE:I

    .line 63
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 82
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 83
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 85
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 86
    .local v0, "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_3

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 89
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 93
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    const-string v1, "ro.btwifisoftap.coexist"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 100
    :cond_0
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;

    .line 101
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->supportBtWifiSoftApCoexit:Z

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 109
    :cond_2
    return-void

    .line 91
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 300
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 304
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 308
    :cond_1
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 275
    packed-switch p1, :pswitch_data_0

    .line 291
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 294
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 284
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 287
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 214
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 264
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 218
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 220
    .local v0, "isChecked":Z
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0901f2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 227
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->supportBtWifiSoftApCoexit:Z

    if-nez v1, :cond_4

    .line 228
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isSoftapEnablingOrEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f09089a

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 234
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isSoftapEnablingOrEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    :cond_4
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Check bluetooth enable change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_6

    .line 243
    if-eqz v0, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5

    .line 244
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Tell LTE BT opened!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->switchBT(Z)V

    .line 246
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Tell LTE BT opened END!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    :cond_5
    :goto_1
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 255
    if-nez v0, :cond_6

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_6

    .line 256
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Tell LTE BT closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->switchBT(Z)V

    .line 258
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Tell LTE BT closed END!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 260
    :catch_0
    move-exception v1

    goto :goto_2

    .line 248
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 163
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 164
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0901f2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 171
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->supportBtWifiSoftApCoexit:Z

    if-nez v1, :cond_3

    .line 172
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isSoftapEnablingOrEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchHandler:Lcom/android/settings/bluetooth/BluetoothEnabler$SwitchUiHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f09089a

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 208
    :cond_1
    :goto_0
    return v4

    .line 178
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isSoftapEnablingOrEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_3
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Check bluetooth enable change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_5

    .line 187
    if-eqz v0, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_4

    .line 188
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Tell LTE BT opened!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->switchBT(Z)V

    .line 190
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Tell LTE BT opened END!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :cond_4
    :goto_1
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 199
    if-nez v0, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5

    .line 200
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Tell LTE BT closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->switchBT(Z)V

    .line 202
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Tell LTE BT closed END!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    goto :goto_2

    .line 192
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

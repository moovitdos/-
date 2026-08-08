.class public Lcom/android/settings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;
    }
.end annotation


# instance fields
.field private mAirplanModeChange:Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mRadioBusyObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeCheckBoxPreference"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeEnabler$1;-><init>(Lcom/android/settings/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mRadioBusyObserver:Landroid/database/ContentObserver;

    .line 157
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeEnabler$2;-><init>(Lcom/android/settings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 51
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;-><init>(Lcom/android/settings/AirplaneModeEnabler;Lcom/android/settings/AirplaneModeEnabler$1;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplanModeChange:Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AirplaneModeEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeEnabler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeEnabler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirplaneModeEnabler;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v3, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "radio_operation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 108
    .local v0, "isRadioBusy":Z
    :goto_0
    const-string v3, "AirplaneModeEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAirplaneModeChanged:isRadioBusy->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v3, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 110
    iget-object v3, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 111
    return-void

    .end local v0    # "isRadioBusy":Z
    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    .restart local v0    # "isRadioBusy":Z
    :cond_1
    move v1, v2

    .line 110
    goto :goto_1
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    .line 88
    const-string v1, "riq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAirplaneModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplanModeChange:Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 117
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 121
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio_operation"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/AirplaneModeEnabler;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    .line 74
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0, p2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

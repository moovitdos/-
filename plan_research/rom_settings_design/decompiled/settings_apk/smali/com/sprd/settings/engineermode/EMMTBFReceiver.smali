.class public Lcom/sprd/settings/engineermode/EMMTBFReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EMMTBFReceiver.java"


# instance fields
.field final HOURS_12:Ljava/lang/String;

.field final KEY_PACKAGE_NAME:Ljava/lang/String;

.field final KEY_RESULT:Ljava/lang/String;

.field final KEY_SETITEM:Ljava/lang/String;

.field final SETTINGS_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const-string v0, "12"

    iput-object v0, p0, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->HOURS_12:Ljava/lang/String;

    .line 33
    const-string v0, "PACKAGE NAME"

    iput-object v0, p0, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->KEY_PACKAGE_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->SETTINGS_PACKAGE_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "SETITEM"

    iput-object v0, p0, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->KEY_SETITEM:Ljava/lang/String;

    .line 36
    const-string v0, "RESULT"

    iput-object v0, p0, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->KEY_RESULT:Ljava/lang/String;

    return-void
.end method

.method private getApnIdByPhoneId(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 203
    packed-switch p1, :pswitch_data_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn_id_sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    const-string v0, "apn_id"

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setDefaultIme(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 120
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v2, "intentResult":Landroid/content/Intent;
    const-string v3, "com.sprd.engineermode.action.MTBFRSP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "PACKAGE NAME"

    const-string v4, "com.android.settings"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "com.android.inputmethod.latin/.LatinIME"

    .line 126
    .local v1, "imeId":Ljava/lang/String;
    const-string v3, "default_input_method"

    const-string v4, "com.android.inputmethod.latin/.LatinIME"

    invoke-static {p2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    const-string v3, "SETITEM"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string v3, "RESULT"

    const-string v4, "Ok"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method private setGprsData(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/ContentResolver;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cnManager"    # Landroid/net/ConnectivityManager;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 171
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v2, "intentResult":Landroid/content/Intent;
    const-string v5, "com.sprd.engineermode.action.MTBFRSP"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "PACKAGE NAME"

    const-string v6, "com.android.settings"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 178
    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabledByPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    invoke-virtual {p2, v1, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabledByPhoneId(IZ)V

    .line 177
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 186
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 188
    .local v3, "phoneCount":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 190
    invoke-direct {p0, v1}, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->getApnIdByPhoneId(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "8"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v5, "preferapn"

    invoke-static {v1, v5}, Landroid/provider/Telephony$Carriers;->getContentUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p3, v5, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_3
    const-string v5, "SETITEM"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v5, "RESULT"

    const-string v6, "Ok"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method private setScreenItems(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x0

    .line 77
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v3, "intentResult":Landroid/content/Intent;
    const-string v7, "com.sprd.engineermode.action.MTBFRSP"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "PACKAGE NAME"

    const-string v8, "com.android.settings"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v6, "Ok"

    .line 84
    .local v6, "result":Ljava/lang/String;
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 85
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v4

    .line 86
    .local v4, "minimumBacklight":I
    const-string v7, "screen_brightness_mode"

    invoke-static {p2, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    const-string v7, "screen_brightness"

    invoke-static {p2, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    const-string v7, "screen_brightness_mode"

    invoke-static {p2, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    add-int/lit8 v0, v7, 0x0

    .line 101
    .local v0, "brightness":I
    const/4 v7, 0x1

    invoke-static {p1, v7}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 106
    :try_start_0
    const-string v7, "screen_off_timeout"

    const v8, 0x1b7740

    invoke-static {p2, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    const-string v7, "SETITEM"

    const/4 v8, 0x4

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v7, "RESULT"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v7, "EngineerModeReceiver"

    const-string v8, "could not persist screen timeout setting"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const-string v6, "Fail"

    goto :goto_0
.end method

.method private setSystemTime(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x1

    .line 152
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v1, "intentResult":Landroid/content/Intent;
    const-string v2, "com.sprd.engineermode.action.MTBFRSP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PACKAGE NAME"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "auto_time"

    invoke-static {p2, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    const-string v2, "auto_time_zone"

    invoke-static {p2, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    const-string v2, "time_12_24"

    const-string v3, "12"

    invoke-static {p2, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    const-string v2, "date_format"

    const-string v3, "yyyy-MM-dd"

    invoke-static {p2, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    invoke-direct {p0, p1}, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->timeUpdated(Landroid/content/Context;)V

    .line 163
    const-string v2, "SETITEM"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v2, "RESULT"

    const-string v3, "Ok"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method private setUSBItems(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cnManager"    # Landroid/net/ConnectivityManager;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 136
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v1, "intentResult":Landroid/content/Intent;
    const-string v2, "com.sprd.engineermode.action.MTBFRSP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PACKAGE NAME"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "stay_on_while_plugged_in"

    const/4 v3, 0x3

    invoke-static {p3, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    const-string v2, "adb_enabled"

    const/4 v3, 0x1

    invoke-static {p3, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    const-string v2, "SETITEM"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v2, "RESULT"

    const-string v3, "Ok"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method private timeUpdated(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "timeChanged":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 53
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 55
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sprd.engineermode.action.MTBF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const-string v4, "EngineerModeReceiver"

    const-string v5, "receive engapp MTBF action"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0, p1, v3}, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->setDefaultIme(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 58
    invoke-direct {p0, p1, v3}, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->setScreenItems(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 59
    invoke-direct {p0, p1, v3}, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->setSystemTime(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 60
    invoke-direct {p0, p1, v0, v3}, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->setUSBItems(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/ContentResolver;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sprd.engineermode.action.MTBFRSP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "PACKAGE NAME"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "com.android.email"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    const-string v4, "EngineerModeReceiver"

    const-string v5, "receive email MTBF complete action"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0, p1, v0, v3}, Lcom/sprd/settings/engineermode/EMMTBFReceiver;->setGprsData(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

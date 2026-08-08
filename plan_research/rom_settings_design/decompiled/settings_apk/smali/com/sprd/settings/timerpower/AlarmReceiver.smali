.class public Lcom/sprd/settings/timerpower/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlarmReceiver ----------- intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 24
    const-string v6, "com.android.settings.timerpower.SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 31
    .local v0, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    const-string v6, "intent.extra.alarm_raw"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 32
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 34
    .local v2, "in":Landroid/os/Parcel;
    array-length v6, v1

    invoke-virtual {v2, v1, v8, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 35
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    sget-object v6, Lcom/sprd/settings/timerpower/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    check-cast v0, Lcom/sprd/settings/timerpower/Alarm;

    .line 39
    .end local v2    # "in":Landroid/os/Parcel;
    .restart local v0    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    :cond_0
    if-nez v0, :cond_2

    .line 40
    const-string v6, "Failed to parse the alarm from the intent"

    invoke-static {v6}, Lcom/sprd/settings/timerpower/Log;->wtf(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/sprd/settings/timerpower/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 101
    .end local v0    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    .end local v1    # "data":[B
    :cond_1
    :goto_0
    return-void

    .line 47
    .restart local v0    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    .restart local v1    # "data":[B
    :cond_2
    iget-object v6, v0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    const-string v7, "on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 49
    const-string v6, "alarm.label = on"

    invoke-static {v6}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v6, v0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v6}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v6

    if-nez v6, :cond_4

    .line 57
    iget v6, v0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    invoke-static {p1, v6, v8}, Lcom/sprd/settings/timerpower/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 66
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 67
    .local v3, "now":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recevied alarm set for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-static {v7, v8}, Lcom/sprd/settings/timerpower/Log;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 69
    iget-wide v6, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    const-wide/32 v8, 0x1b7740

    add-long/2addr v6, v8

    cmp-long v6, v3, v6

    if-lez v6, :cond_5

    .line 70
    const-string v6, "Ignoring stale timer power shutdown"

    invoke-static {v6}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v3    # "now":J
    :cond_4
    invoke-static {p1}, Lcom/sprd/settings/timerpower/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_1

    .line 75
    .restart local v3    # "now":J
    :cond_5
    invoke-static {p1}, Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 85
    const-string v6, "AlarmReceiver startService"

    invoke-static {v6}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 86
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.timerpower.ALARM_ALERT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v5, "playAlarm":Landroid/content/Intent;
    const-string v6, "intent.extra.alarm"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    invoke-static {p1}, Lcom/sprd/settings/timerpower/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

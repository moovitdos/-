.class public Lcom/sprd/settings/timerpower/AlarmInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmInitReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static mHanderThread:Landroid/os/HandlerThread;

.field private static mThreadHander:Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;


# instance fields
.field private isBoot:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->isBoot:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/timerpower/AlarmInitReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->isBoot:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/timerpower/AlarmInitReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/timerpower/AlarmInitReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/AlarmInitReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->updateAlarmEnabled(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sprd/settings/timerpower/AlarmInitReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/AlarmInitReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->updateAlarmTime(Landroid/content/Context;)V

    return-void
.end method

.method private updateAlarmEnabled(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/sprd/settings/timerpower/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    .line 109
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 110
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    :cond_0
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm;

    invoke-direct {v0, p1, v2}, Lcom/sprd/settings/timerpower/Alarm;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 113
    .local v0, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 114
    .local v4, "values":Landroid/content/ContentValues;
    iget v5, v0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    iget v6, v0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    iget-object v7, v0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-static {v5, v6, v7}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    .line 116
    const-string v5, "daysofweek"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 117
    .local v3, "repete":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repete = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 119
    .local v1, "currentTime":Ljava/util/Calendar;
    iget-wide v5, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    .line 120
    const-string v5, "no use alarm"

    invoke-static {v5}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 121
    iput-boolean v9, v0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    .line 123
    :cond_1
    const-string v5, "enabled"

    iget-boolean v6, v0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sprd/settings/timerpower/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v7, v0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    .end local v0    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    .end local v1    # "currentTime":Ljava/util/Calendar;
    .end local v3    # "repete":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_3
    iput-boolean v9, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->isBoot:Z

    .line 133
    return-void
.end method

.method private updateAlarmTime(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 89
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :cond_0
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm;

    invoke-direct {v0, p1, v1}, Lcom/sprd/settings/timerpower/Alarm;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 93
    .local v0, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 94
    .local v2, "values":Landroid/content/ContentValues;
    iget v3, v0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    iget v4, v0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    iget-object v5, v0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-static {v3, v4, v5}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    .line 96
    const-string v3, "alarmtime"

    iget-wide v4, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sprd/settings/timerpower/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, v0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    .end local v0    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->isBoot:Z

    .line 106
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->mContext:Landroid/content/Context;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmInitReceiver ---- intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->isBoot:Z

    .line 50
    :cond_0
    sget-object v1, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->mHanderThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 51
    const-string v1, "onReceive mHanderThread is null."

    invoke-static {v1}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 52
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HandlerThreadAlarmInitReceiver"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->mHanderThread:Landroid/os/HandlerThread;

    .line 53
    sget-object v1, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->mHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 55
    sget-object v1, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->mHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 56
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;

    invoke-direct {v1, p0, v0}, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;-><init>(Lcom/sprd/settings/timerpower/AlarmInitReceiver;Landroid/os/Looper;)V

    sput-object v1, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->mThreadHander:Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;

    .line 59
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    sget-object v1, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->mThreadHander:Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 60
    return-void
.end method

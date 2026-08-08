.class public Lcom/sprd/settings/timerpower/AlarmKlaxon;
.super Landroid/app/Service;
.source "AlarmKlaxon.java"


# instance fields
.field private isVTCall:Z

.field private mCurrentAlarm:Lcom/sprd/settings/timerpower/Alarm;

.field private mInitialCallState:I

.field private mInitialCallState1:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStartTime:J

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;

    invoke-direct {v0, p0}, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;-><init>(Lcom/sprd/settings/timerpower/AlarmKlaxon;)V

    iput-object v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/timerpower/AlarmKlaxon;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/AlarmKlaxon;

    .prologue
    .line 28
    iget v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mInitialCallState:I

    return v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/timerpower/AlarmKlaxon;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/AlarmKlaxon;

    .prologue
    .line 28
    iget v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mInitialCallState1:I

    return v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/timerpower/AlarmKlaxon;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/AlarmKlaxon;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private play(Lcom/sprd/settings/timerpower/Alarm;)V
    .locals 2
    .param p1, "alarm"    # Lcom/sprd/settings/timerpower/Alarm;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->checkCallIsUsing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->checkisVTCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const-string v0, "in-call , AlarmKlaxon don\'t play alarm"

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->startActivityForShutdown()V

    .line 132
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 135
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mStartTime:J

    goto :goto_0
.end method


# virtual methods
.method public checkCallIsUsing()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 196
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 197
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 198
    .local v2, "callstate0":I
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    .line 199
    .local v3, "callstate1":I
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 211
    .end local v2    # "callstate0":I
    .end local v3    # "callstate1":I
    :cond_0
    :goto_0
    return v4

    .restart local v2    # "callstate0":I
    .restart local v3    # "callstate1":I
    :cond_1
    move v4, v5

    .line 203
    goto :goto_0

    .line 206
    .end local v2    # "callstate0":I
    .end local v3    # "callstate1":I
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 207
    .local v0, "callState":I
    if-nez v0, :cond_3

    move v1, v5

    .line 208
    .local v1, "callstate":Z
    :goto_1
    if-eqz v0, :cond_0

    move v4, v5

    .line 211
    goto :goto_0

    .end local v1    # "callstate":Z
    :cond_3
    move v1, v4

    .line 207
    goto :goto_1
.end method

.method public checkisVTCall()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVTCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->isVTCall:Z

    .line 187
    iget-boolean v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->isVTCall:Z

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 73
    const-string v0, "service onCreate"

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 75
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 76
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 87
    invoke-static {p0}, Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v0, "service onDestroy"

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 141
    sput-boolean v2, Lcom/sprd/settings/timerpower/Alarms;->FIRST_ALERT:Z

    .line 143
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 149
    invoke-static {}, Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;->releaseCpuLock()V

    .line 150
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 92
    const-string v3, "service onStartCommand"

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 94
    if-nez p1, :cond_0

    .line 95
    const-string v2, "AlarmKlaxon intent is null"

    invoke-static {v2}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 117
    :goto_0
    return v1

    .line 100
    :cond_0
    const-string v3, "intent.extra.alarm"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sprd/settings/timerpower/Alarm;

    .line 103
    .local v0, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    if-nez v0, :cond_1

    .line 104
    const-string v2, "AlarmKlaxon failed to parse the alarm from the intent"

    invoke-static {v2}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0, v0}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->play(Lcom/sprd/settings/timerpower/Alarm;)V

    .line 110
    iput-object v0, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mCurrentAlarm:Lcom/sprd/settings/timerpower/Alarm;

    .line 113
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mInitialCallState:I

    .line 114
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 115
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon;->mInitialCallState1:I

    :cond_2
    move v1, v2

    .line 117
    goto :goto_0
.end method

.method public startActivityForShutdown()V
    .locals 3

    .prologue
    .line 217
    const-string v1, "AlarmKlaxon startActivityForShutdown"

    invoke-static {v1}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    const-string v1, "shutdown_mode"

    const-string v2, "timer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

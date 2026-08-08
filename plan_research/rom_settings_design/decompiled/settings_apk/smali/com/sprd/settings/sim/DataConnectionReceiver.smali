.class public Lcom/sprd/settings/sim/DataConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionReceiver.java"


# static fields
.field private static final DEBUG:Z

.field private static isShowDialog:I


# instance fields
.field private lock:[B

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private oldSetPhoneId:I

.field private setPhoneId:I

.field private timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/sprd/settings/sim/DataConnectionReceiver;->DEBUG:Z

    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/sprd/settings/sim/DataConnectionReceiver;->isShowDialog:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    iput v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    .line 44
    iput v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->oldSetPhoneId:I

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->lock:[B

    .line 82
    iput-object v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 83
    iput-object v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timerTask:Ljava/util/TimerTask;

    .line 115
    new-instance v0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;

    invoke-direct {v0, p0}, Lcom/sprd/settings/sim/DataConnectionReceiver$2;-><init>(Lcom/sprd/settings/sim/DataConnectionReceiver;)V

    iput-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/sim/DataConnectionReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/DataConnectionReceiver;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/sprd/settings/sim/DataConnectionReceiver;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/sim/DataConnectionReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/DataConnectionReceiver;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sprd/settings/sim/DataConnectionReceiver;->finishSettingsWait()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprd/settings/sim/DataConnectionReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/DataConnectionReceiver;

    .prologue
    .line 34
    iget v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sprd/settings/sim/DataConnectionReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/DataConnectionReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sprd/settings/sim/DataConnectionReceiver;->startTimer(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sprd/settings/sim/DataConnectionReceiver;)[B
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/DataConnectionReceiver;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->lock:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/sprd/settings/sim/DataConnectionReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/sim/DataConnectionReceiver;

    .prologue
    .line 34
    iget v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->oldSetPhoneId:I

    return v0
.end method

.method static synthetic access$602(Lcom/sprd/settings/sim/DataConnectionReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/sim/DataConnectionReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->oldSetPhoneId:I

    return p1
.end method

.method private closeTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    sget-boolean v0, Lcom/sprd/settings/sim/DataConnectionReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataConnectionReceiver"

    const-string v1, "closeTimer,timer end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 102
    iput-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timerTask:Ljava/util/TimerTask;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 106
    iput-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 108
    :cond_2
    return-void
.end method

.method private finishSettingsWait()V
    .locals 2

    .prologue
    .line 111
    sget-boolean v0, Lcom/sprd/settings/sim/DataConnectionReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataConnectionReceiver"

    const-string v1, "Finish dual settings wait."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/sprd/settings/sim/DataConnectionReceiver;->closeTimer()V

    .line 113
    return-void
.end method

.method private restoreDataSettings(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 77
    sget-boolean v0, Lcom/sprd/settings/sim/DataConnectionReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataConnectionReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreDataSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/TelephonyManager;->setAutoDefaultPhoneId(Landroid/content/Context;I)V

    .line 79
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->updateDefaultPhoneId(I)Z

    .line 80
    return-void
.end method

.method private startTimer(I)V
    .locals 5
    .param p1, "time"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sprd/settings/sim/DataConnectionReceiver;->closeTimer()V

    .line 87
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 88
    new-instance v0, Lcom/sprd/settings/sim/DataConnectionReceiver$1;

    invoke-direct {v0, p0}, Lcom/sprd/settings/sim/DataConnectionReceiver$1;-><init>(Lcom/sprd/settings/sim/DataConnectionReceiver;)V

    iput-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timerTask:Ljava/util/TimerTask;

    .line 94
    sget-boolean v0, Lcom/sprd/settings/sim/DataConnectionReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataConnectionReceiver"

    const-string v1, "startTimer,timer start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->timerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 96
    return-void
.end method

.method private startUpdateDataSettings(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 52
    iget v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 53
    iget v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    iput v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->oldSetPhoneId:I

    .line 57
    :goto_0
    sget-boolean v1, Lcom/sprd/settings/sim/DataConnectionReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DataConnectionReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUpdateDataSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->oldSetPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iput p1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    .line 61
    iget v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/MsmsDcTrackerProxy;->isActivePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    sget-boolean v1, Lcom/sprd/settings/sim/DataConnectionReceiver;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DataConnectionReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "already active phone, just start timer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    const/16 v1, 0x1388

    invoke-direct {p0, v1}, Lcom/sprd/settings/sim/DataConnectionReceiver;->startTimer(I)V

    .line 74
    :goto_1
    return-void

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->oldSetPhoneId:I

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/MsmsDcTrackerProxy;->getActivePhoneId()I

    move-result v0

    .line 67
    .local v0, "activePhoneId":I
    sget-boolean v1, Lcom/sprd/settings/sim/DataConnectionReceiver;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DataConnectionReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is active phone, register for GprsDetached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_4
    if-gez v0, :cond_5

    iget v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    .end local v0    # "activePhoneId":I
    :cond_5
    iput v0, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->oldSetPhoneId:I

    .line 69
    iget v1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->oldSetPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/sprd/settings/sim/DataConnectionReceiver;->restoreDataSettings(I)V

    .line 73
    const/16 v1, 0x7530

    invoke-direct {p0, v1}, Lcom/sprd/settings/sim/DataConnectionReceiver;->startTimer(I)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 164
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iput-object p1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "action":Ljava/lang/String;
    const-string v2, "SIM_ID"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 171
    .local v1, "sim_id":I
    const-string v2, "SETTING_ID"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver;->setPhoneId:I

    .line 172
    const-string v2, "DataConnectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v2, "DataConnectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v2, "android.intent.action.DATA_CONNECTION_CHANGE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-direct {p0, v1}, Lcom/sprd/settings/sim/DataConnectionReceiver;->startUpdateDataSettings(I)V

    goto :goto_0
.end method

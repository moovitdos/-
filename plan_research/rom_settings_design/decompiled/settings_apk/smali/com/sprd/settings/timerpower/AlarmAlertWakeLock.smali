.class Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;
.super Ljava/lang/Object;
.source "AlarmAlertWakeLock.java"


# static fields
.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-object v1, Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 20
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 23
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "TimerPower"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 27
    sget-object v1, Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static releaseCpuLock()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/sprd/settings/timerpower/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 35
    :cond_0
    return-void
.end method

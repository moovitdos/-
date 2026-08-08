.class Lcom/sprd/settings/timerpower/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/sprd/settings/timerpower/Log;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "TimerPower"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-boolean v0, Lcom/sprd/settings/timerpower/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerPower"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method

.method static wtf(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMe"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "TimerPower"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

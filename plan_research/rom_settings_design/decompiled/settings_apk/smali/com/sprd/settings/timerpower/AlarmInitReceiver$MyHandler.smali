.class Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;
.super Landroid/os/Handler;
.source "AlarmInitReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/timerpower/AlarmInitReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/timerpower/AlarmInitReceiver;


# direct methods
.method public constructor <init>(Lcom/sprd/settings/timerpower/AlarmInitReceiver;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;->this$0:Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;->this$0:Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    invoke-static {v0}, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->access$000(Lcom/sprd/settings/timerpower/AlarmInitReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;->this$0:Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;->this$0:Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    invoke-static {v1}, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->access$100(Lcom/sprd/settings/timerpower/AlarmInitReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->access$200(Lcom/sprd/settings/timerpower/AlarmInitReceiver;Landroid/content/Context;)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;->this$0:Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    invoke-static {v0}, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->access$100(Lcom/sprd/settings/timerpower/AlarmInitReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Alarms;->disableAlert(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;->this$0:Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    invoke-static {v0}, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->access$100(Lcom/sprd/settings/timerpower/AlarmInitReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 81
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;->this$0:Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/AlarmInitReceiver$MyHandler;->this$0:Lcom/sprd/settings/timerpower/AlarmInitReceiver;

    invoke-static {v1}, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->access$100(Lcom/sprd/settings/timerpower/AlarmInitReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/settings/timerpower/AlarmInitReceiver;->access$300(Lcom/sprd/settings/timerpower/AlarmInitReceiver;Landroid/content/Context;)V

    goto :goto_0
.end method

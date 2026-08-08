.class Lcom/sprd/settings/sim/DataConnectionReceiver$2;
.super Landroid/os/Handler;
.source "DataConnectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/sim/DataConnectionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;


# direct methods
.method constructor <init>(Lcom/sprd/settings/sim/DataConnectionReceiver;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x1388

    .line 120
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    invoke-static {}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DataConnectionReceiver"

    const-string v3, "EVENT_SET_SUBSCRIPTION_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v1, "intentDettach":Landroid/content/Intent;
    const-string v2, "android.intent.action.DATA_DETTACH_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    iget-object v2, v2, Lcom/sprd/settings/sim/DataConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v2}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$200(Lcom/sprd/settings/sim/DataConnectionReceiver;)V

    goto :goto_0

    .line 129
    .end local v1    # "intentDettach":Landroid/content/Intent;
    :pswitch_2
    invoke-static {}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DataConnectionReceiver"

    const-string v3, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 131
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v2}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$300(Lcom/sprd/settings/sim/DataConnectionReceiver;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v2}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$300(Lcom/sprd/settings/sim/DataConnectionReceiver;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v3}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$000(Lcom/sprd/settings/sim/DataConnectionReceiver;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 134
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v2, v4}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$400(Lcom/sprd/settings/sim/DataConnectionReceiver;I)V

    goto :goto_0

    .line 139
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v2}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$500(Lcom/sprd/settings/sim/DataConnectionReceiver;)[B

    move-result-object v3

    monitor-enter v3

    .line 140
    :try_start_0
    invoke-static {}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$100()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "DataConnectionReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_TARGET_GPRS_ATTACH_DONE oldSetPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v5}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$600(Lcom/sprd/settings/sim/DataConnectionReceiver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v5}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$300(Lcom/sprd/settings/sim/DataConnectionReceiver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_4
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v2}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$600(Lcom/sprd/settings/sim/DataConnectionReceiver;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 143
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v2}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$600(Lcom/sprd/settings/sim/DataConnectionReceiver;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v4, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v4}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$000(Lcom/sprd/settings/sim/DataConnectionReceiver;)Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 145
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v2}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$300(Lcom/sprd/settings/sim/DataConnectionReceiver;)I

    move-result v2

    if-ltz v2, :cond_5

    .line 146
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v2}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$300(Lcom/sprd/settings/sim/DataConnectionReceiver;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v4, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    invoke-static {v4}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$000(Lcom/sprd/settings/sim/DataConnectionReceiver;)Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->unregisterForGprsAttached(Landroid/os/Handler;)V

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    const/4 v4, -0x1

    invoke-static {v2, v4}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$602(Lcom/sprd/settings/sim/DataConnectionReceiver;I)I

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 151
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    .line 152
    iget-object v2, p0, Lcom/sprd/settings/sim/DataConnectionReceiver$2;->this$0:Lcom/sprd/settings/sim/DataConnectionReceiver;

    const/16 v4, 0x1388

    invoke-static {v2, v4}, Lcom/sprd/settings/sim/DataConnectionReceiver;->access$400(Lcom/sprd/settings/sim/DataConnectionReceiver;I)V

    .line 155
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_6
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

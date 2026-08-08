.class Lcom/sprd/settings/networkrate/NetworkRateManager$1;
.super Landroid/os/Handler;
.source "NetworkRateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/networkrate/NetworkRateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;


# direct methods
.method constructor <init>(Lcom/sprd/settings/networkrate/NetworkRateManager;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v0}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$000(Lcom/sprd/settings/networkrate/NetworkRateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v7

    .line 64
    .local v7, "dataPhoneId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;

    move-object v9, v0

    .line 66
    .local v9, "rateData":Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;
    :goto_1
    if-eqz v9, :cond_4

    .line 67
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v0}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$100(Lcom/sprd/settings/networkrate/NetworkRateManager;)I

    move-result v0

    if-eq v7, v0, :cond_1

    const-string v0, "wifi"

    iget-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v1}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$200(Lcom/sprd/settings/networkrate/NetworkRateManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$300(Lcom/sprd/settings/networkrate/NetworkRateManager;Z)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    iget-object v1, v9, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->upLinkTheoryPeak:Ljava/lang/String;

    iget-object v2, v9, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->downLinkTheoryPeak:Ljava/lang/String;

    iget-wide v3, v9, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->upLinkRate:J

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v9, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->downLinkRate:J

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$400(Lcom/sprd/settings/networkrate/NetworkRateManager;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 74
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    iget-wide v1, v9, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->totalSend:J

    iget-wide v3, v9, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->totalReceive:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$500(Lcom/sprd/settings/networkrate/NetworkRateManager;JJ)V

    goto :goto_0

    .end local v9    # "rateData":Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;
    :cond_3
    move-object v9, v8

    .line 64
    goto :goto_1

    .line 76
    .restart local v9    # "rateData":Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;
    :cond_4
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v0, v1}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$300(Lcom/sprd/settings/networkrate/NetworkRateManager;Z)V

    goto :goto_0

    .line 82
    .end local v7    # "dataPhoneId":I
    .end local v9    # "rateData":Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v0, v1}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$300(Lcom/sprd/settings/networkrate/NetworkRateManager;Z)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    move-object v8, v0

    .line 89
    .local v8, "networkTrafficCurrentRate":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    :cond_5
    if-eqz v8, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    iget-wide v1, v8, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->upLinkRate:J

    iget-wide v3, v8, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->downLinkRate:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$500(Lcom/sprd/settings/networkrate/NetworkRateManager;JJ)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

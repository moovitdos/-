.class Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;
.super Landroid/os/Handler;
.source "NetworkRateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/networkrate/NetworkRateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RateHandler"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDataNetworkRate:Lcom/sprd/settings/networkrate/DataNetworkRate;

.field private mIsMobileDataUsage:Z

.field private mNetworkTrafficCurrentRate:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

.field private mNetworkTrafficTheoryPeak:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

.field final synthetic this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;


# direct methods
.method public constructor <init>(Lcom/sprd/settings/networkrate/NetworkRateManager;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 108
    iput-object p1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    .line 109
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mIsMobileDataUsage:Z

    .line 116
    iput-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mDataNetworkRate:Lcom/sprd/settings/networkrate/DataNetworkRate;

    .line 119
    iput-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficTheoryPeak:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    .line 120
    iput-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficCurrentRate:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 111
    new-instance v0, Lcom/sprd/settings/networkrate/DataNetworkRate;

    invoke-direct {v0, p2}, Lcom/sprd/settings/networkrate/DataNetworkRate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mDataNetworkRate:Lcom/sprd/settings/networkrate/DataNetworkRate;

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 124
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 174
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 175
    return-void

    .line 128
    :pswitch_0
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v2}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$600(Lcom/sprd/settings/networkrate/NetworkRateManager;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mIsMobileDataUsage:Z

    .line 130
    iget-object v4, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mDataNetworkRate:Lcom/sprd/settings/networkrate/DataNetworkRate;

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    :goto_1
    iget-boolean v5, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mIsMobileDataUsage:Z

    invoke-virtual {v4, v2, v5}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getCurrentNetworkTrafficTheoryPeak(Landroid/content/Context;Z)Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficTheoryPeak:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    .line 134
    iget-object v4, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mDataNetworkRate:Lcom/sprd/settings/networkrate/DataNetworkRate;

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    :goto_2
    iget-boolean v3, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mIsMobileDataUsage:Z

    invoke-virtual {v4, v2, v3}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getCurrentNetworkTrafficRate(Landroid/content/Context;Z)Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficCurrentRate:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    .line 138
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v2}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$700(Lcom/sprd/settings/networkrate/NetworkRateManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v3}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$700(Lcom/sprd/settings/networkrate/NetworkRateManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mDataNetworkRate:Lcom/sprd/settings/networkrate/DataNetworkRate;

    iget-boolean v6, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mIsMobileDataUsage:Z

    invoke-virtual {v5, v6}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getCurrentNetworkTrafficTotal(Z)Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v2, v7}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$800(Lcom/sprd/settings/networkrate/NetworkRateManager;Z)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 130
    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 134
    goto :goto_2

    .line 147
    :pswitch_1
    iget-object v4, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mDataNetworkRate:Lcom/sprd/settings/networkrate/DataNetworkRate;

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    :goto_3
    iget-boolean v3, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mIsMobileDataUsage:Z

    invoke-virtual {v4, v2, v3}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getCurrentNetworkTrafficRate(Landroid/content/Context;Z)Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    move-result-object v0

    .line 151
    .local v0, "netWorkTrafficStatus":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficCurrentRate:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficTheoryPeak:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    if-eqz v2, :cond_3

    .line 153
    new-instance v1, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-direct {v1, v2}, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;-><init>(Lcom/sprd/settings/networkrate/NetworkRateManager;)V

    .line 154
    .local v1, "rateData":Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficTheoryPeak:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    iget-object v2, v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->upLinkTheoryPeak:Ljava/lang/String;

    iput-object v2, v1, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->upLinkTheoryPeak:Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficTheoryPeak:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    iget-object v2, v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->downLinkTheoryPeak:Ljava/lang/String;

    iput-object v2, v1, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->downLinkTheoryPeak:Ljava/lang/String;

    .line 156
    iget-wide v2, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->upLinkRate:J

    iget-object v4, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficCurrentRate:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    iget-wide v4, v4, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->upLinkRate:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->upLinkRate:J

    .line 158
    iget-wide v2, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->downLinkRate:J

    iget-object v4, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficCurrentRate:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    iget-wide v4, v4, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->downLinkRate:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->downLinkRate:J

    .line 160
    iget-wide v2, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->upLinkRate:J

    iput-wide v2, v1, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->totalSend:J

    .line 161
    iget-wide v2, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->downLinkRate:J

    iput-wide v2, v1, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->totalReceive:J

    .line 163
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v2}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$700(Lcom/sprd/settings/networkrate/NetworkRateManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v3}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$700(Lcom/sprd/settings/networkrate/NetworkRateManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    .end local v1    # "rateData":Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;
    :goto_4
    iput-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->mNetworkTrafficCurrentRate:Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    .line 170
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v2, v6}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$800(Lcom/sprd/settings/networkrate/NetworkRateManager;Z)V

    goto/16 :goto_0

    .end local v0    # "netWorkTrafficStatus":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    :cond_2
    move-object v2, v3

    .line 147
    goto :goto_3

    .line 166
    .restart local v0    # "netWorkTrafficStatus":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    :cond_3
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-static {v2}, Lcom/sprd/settings/networkrate/NetworkRateManager;->access$700(Lcom/sprd/settings/networkrate/NetworkRateManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

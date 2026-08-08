.class final Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo$RadioInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo$RadioInteraction;


# direct methods
.method public constructor <init>(Lcom/android/settings/RadioInfo$RadioInteraction;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;->this$0:Lcom/android/settings/RadioInfo$RadioInteraction;

    .line 1593
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1594
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1598
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageHandler handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1600
    .local v0, "timeout":I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1614
    :goto_0
    return-void

    .line 1602
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;->this$0:Lcom/android/settings/RadioInfo$RadioInteraction;

    invoke-static {v1, v0}, Lcom/android/settings/RadioInfo$RadioInteraction;->access$5400(Lcom/android/settings/RadioInfo$RadioInteraction;I)V

    goto :goto_0

    .line 1605
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;->this$0:Lcom/android/settings/RadioInfo$RadioInteraction;

    invoke-static {v1, v0}, Lcom/android/settings/RadioInfo$RadioInteraction;->access$5500(Lcom/android/settings/RadioInfo$RadioInteraction;I)V

    goto :goto_0

    .line 1608
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;->this$0:Lcom/android/settings/RadioInfo$RadioInteraction;

    invoke-virtual {v1, v0}, Lcom/android/settings/RadioInfo$RadioInteraction;->powerOnRadioInner(I)V

    goto :goto_0

    .line 1600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

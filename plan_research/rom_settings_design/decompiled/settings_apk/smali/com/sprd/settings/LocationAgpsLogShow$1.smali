.class Lcom/sprd/settings/LocationAgpsLogShow$1;
.super Landroid/os/Handler;
.source "LocationAgpsLogShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/LocationAgpsLogShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/LocationAgpsLogShow;


# direct methods
.method constructor <init>(Lcom/sprd/settings/LocationAgpsLogShow;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sprd/settings/LocationAgpsLogShow$1;->this$0:Lcom/sprd/settings/LocationAgpsLogShow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 58
    const-string v0, "LocationAgpsLogShow"

    const-string v1, "handleMesage default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsLogShow$1;->this$0:Lcom/sprd/settings/LocationAgpsLogShow;

    invoke-static {v0}, Lcom/sprd/settings/LocationAgpsLogShow;->access$000(Lcom/sprd/settings/LocationAgpsLogShow;)V

    .line 52
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsLogShow$1;->this$0:Lcom/sprd/settings/LocationAgpsLogShow;

    invoke-static {v0}, Lcom/sprd/settings/LocationAgpsLogShow;->access$100(Lcom/sprd/settings/LocationAgpsLogShow;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsLogShow$1;->this$0:Lcom/sprd/settings/LocationAgpsLogShow;

    invoke-static {v0}, Lcom/sprd/settings/LocationAgpsLogShow;->access$200(Lcom/sprd/settings/LocationAgpsLogShow;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

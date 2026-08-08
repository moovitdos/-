.class Lcom/sprd/settings/LocationAgpsLogShow$2;
.super Landroid/os/FileObserver;
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
.method constructor <init>(Lcom/sprd/settings/LocationAgpsLogShow;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sprd/settings/LocationAgpsLogShow$2;->this$0:Lcom/sprd/settings/LocationAgpsLogShow;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v1, "LocationAgpsLogShow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <-event  ;  path -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 86
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow$2;->this$0:Lcom/sprd/settings/LocationAgpsLogShow;

    invoke-static {v1}, Lcom/sprd/settings/LocationAgpsLogShow;->access$300(Lcom/sprd/settings/LocationAgpsLogShow;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

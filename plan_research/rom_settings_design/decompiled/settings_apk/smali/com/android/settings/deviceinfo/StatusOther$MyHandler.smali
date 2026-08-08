.class Lcom/android/settings/deviceinfo/StatusOther$MyHandler;
.super Landroid/os/Handler;
.source "StatusOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StatusOther;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StatusOther;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StatusOther;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settings/deviceinfo/StatusOther;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusOther$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusOther$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StatusOther;

    .line 120
    .local v0, "status":Lcom/android/settings/deviceinfo/StatusOther;
    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StatusOther;->updateTimes()V

    .line 127
    const/16 v1, 0x1f4

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

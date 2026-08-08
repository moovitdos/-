.class Lcom/android/settings/deviceinfo/StatusSim$MyHandler;
.super Landroid/os/Handler;
.source "StatusSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StatusSim;
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
            "Lcom/android/settings/deviceinfo/StatusSim;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StatusSim;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settings/deviceinfo/StatusSim;

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 127
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StatusSim;

    .line 132
    .local v1, "status":Lcom/android/settings/deviceinfo/StatusSim;
    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 136
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 138
    :sswitch_0
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StatusSim;->updateSignalStrength()V

    goto :goto_0

    .line 142
    :sswitch_1
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StatusSim;->updateSignalStrength()V

    .line 143
    invoke-static {v1}, Lcom/android/settings/deviceinfo/StatusSim;->access$000(Lcom/android/settings/deviceinfo/StatusSim;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 144
    .local v0, "serviceState":Landroid/telephony/ServiceState;
    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/StatusSim;->access$100(Lcom/android/settings/deviceinfo/StatusSim;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 136
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

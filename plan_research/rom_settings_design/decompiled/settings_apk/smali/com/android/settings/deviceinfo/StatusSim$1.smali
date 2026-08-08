.class Lcom/android/settings/deviceinfo/StatusSim$1;
.super Landroid/telephony/PhoneStateListener;
.source "StatusSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StatusSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StatusSim;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StatusSim;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusSim$1;->this$0:Lcom/android/settings/deviceinfo/StatusSim;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim$1;->this$0:Lcom/android/settings/deviceinfo/StatusSim;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StatusSim;->access$200(Lcom/android/settings/deviceinfo/StatusSim;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim$1;->this$0:Lcom/android/settings/deviceinfo/StatusSim;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StatusSim;->access$300(Lcom/android/settings/deviceinfo/StatusSim;)V

    .line 155
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim$1;->this$0:Lcom/android/settings/deviceinfo/StatusSim;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StatusSim;->access$300(Lcom/android/settings/deviceinfo/StatusSim;)V

    .line 161
    return-void
.end method

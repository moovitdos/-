.class Lcom/sprd/settings/timerpower/AlarmKlaxon$1;
.super Landroid/telephony/PhoneStateListener;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/timerpower/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/sprd/settings/timerpower/AlarmKlaxon;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;->this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "ignored"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kc  state-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ignored-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 49
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 50
    .local v0, "state0":I
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 54
    .local v1, "state1":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;->this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;

    invoke-static {v2}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->access$000(Lcom/sprd/settings/timerpower/AlarmKlaxon;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;->this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;

    invoke-static {v2}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->access$100(Lcom/sprd/settings/timerpower/AlarmKlaxon;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;->this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;

    invoke-virtual {v2}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->startActivityForShutdown()V

    .line 57
    iget-object v2, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;->this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;

    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V

    .line 68
    .end local v1    # "state1":I
    :cond_1
    :goto_0
    return-void

    .line 61
    .end local v0    # "state0":I
    :cond_2
    iget-object v2, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;->this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;

    invoke-static {v2}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->access$200(Lcom/sprd/settings/timerpower/AlarmKlaxon;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 62
    .restart local v0    # "state0":I
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;->this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;

    invoke-static {v2}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->access$000(Lcom/sprd/settings/timerpower/AlarmKlaxon;)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;->this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;

    invoke-virtual {v2}, Lcom/sprd/settings/timerpower/AlarmKlaxon;->startActivityForShutdown()V

    .line 65
    iget-object v2, p0, Lcom/sprd/settings/timerpower/AlarmKlaxon$1;->this$0:Lcom/sprd/settings/timerpower/AlarmKlaxon;

    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V

    goto :goto_0
.end method

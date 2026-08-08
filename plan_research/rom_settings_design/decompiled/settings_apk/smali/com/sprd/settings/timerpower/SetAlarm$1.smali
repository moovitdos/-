.class Lcom/sprd/settings/timerpower/SetAlarm$1;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/timerpower/SetAlarm;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/timerpower/SetAlarm;


# direct methods
.method constructor <init>(Lcom/sprd/settings/timerpower/SetAlarm;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sprd/settings/timerpower/SetAlarm$1;->this$0:Lcom/sprd/settings/timerpower/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    const-string v0, "timerpower SetAlarm    setAlarm      onPreferenceChange"

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm$1;->this$0:Lcom/sprd/settings/timerpower/SetAlarm;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm$1;->this$0:Lcom/sprd/settings/timerpower/SetAlarm;

    invoke-static {v1}, Lcom/sprd/settings/timerpower/SetAlarm;->access$000(Lcom/sprd/settings/timerpower/SetAlarm;)I

    move-result v1

    iget-object v2, p0, Lcom/sprd/settings/timerpower/SetAlarm$1;->this$0:Lcom/sprd/settings/timerpower/SetAlarm;

    invoke-static {v2}, Lcom/sprd/settings/timerpower/SetAlarm;->access$100(Lcom/sprd/settings/timerpower/SetAlarm;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sprd/settings/timerpower/SetAlarm;->access$200(Lcom/sprd/settings/timerpower/SetAlarm;II)V

    .line 229
    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm$1;->this$0:Lcom/sprd/settings/timerpower/SetAlarm;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm$1;->this$0:Lcom/sprd/settings/timerpower/SetAlarm;

    invoke-static {v1}, Lcom/sprd/settings/timerpower/SetAlarm;->access$300(Lcom/sprd/settings/timerpower/SetAlarm;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/timerpower/SetAlarm$1;->this$0:Lcom/sprd/settings/timerpower/SetAlarm;

    invoke-static {v2}, Lcom/sprd/settings/timerpower/SetAlarm;->access$400(Lcom/sprd/settings/timerpower/SetAlarm;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sprd/settings/timerpower/SetAlarm;->access$500(Lcom/sprd/settings/timerpower/SetAlarm;Ljava/lang/String;Z)J

    .line 230
    return-void
.end method

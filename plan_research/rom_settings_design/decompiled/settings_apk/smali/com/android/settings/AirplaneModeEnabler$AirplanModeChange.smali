.class Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;
.super Landroid/os/Handler;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplanModeChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AirplaneModeEnabler;Lcom/android/settings/AirplaneModeEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/AirplaneModeEnabler;
    .param p2, "x1"    # Lcom/android/settings/AirplaneModeEnabler$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;-><init>(Lcom/android/settings/AirplaneModeEnabler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    const-string v4, "riq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AirplanModeChange: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->access$100(Lcom/android/settings/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/telephony/TelephonyManager;->setRadioBusy(Landroid/content/Context;Z)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->access$100(Lcom/android/settings/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->access$200(Lcom/android/settings/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "state"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler$AirplanModeChange;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeEnabler;->access$100(Lcom/android/settings/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 154
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 147
    goto :goto_0
.end method

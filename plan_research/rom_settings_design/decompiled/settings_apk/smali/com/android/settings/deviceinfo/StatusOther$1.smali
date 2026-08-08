.class Lcom/android/settings/deviceinfo/StatusOther$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StatusOther;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StatusOther;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StatusOther;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusOther$1;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusOther$1;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StatusOther;->access$000(Lcom/android/settings/deviceinfo/StatusOther;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusOther$1;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StatusOther;->access$100(Lcom/android/settings/deviceinfo/StatusOther;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusOther$1;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusOther$1;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StatusOther;->access$200(Lcom/android/settings/deviceinfo/StatusOther;)V

    .line 146
    :cond_1
    return-void
.end method

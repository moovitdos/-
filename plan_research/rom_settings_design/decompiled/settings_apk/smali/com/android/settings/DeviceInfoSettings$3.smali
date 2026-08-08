.class Lcom/android/settings/DeviceInfoSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->monitorBatteryState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$3;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 670
    const-string v3, "level"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 671
    .local v1, "rawlevel":I
    const-string v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 672
    .local v2, "scale":I
    const/4 v0, -0x1

    .line 673
    .local v0, "level":I
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    .line 674
    mul-int/lit8 v3, v1, 0x64

    div-int v0, v3, v2

    .line 676
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$3;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3, v0}, Lcom/android/settings/DeviceInfoSettings;->access$102(Lcom/android/settings/DeviceInfoSettings;I)I

    .line 677
    return-void
.end method

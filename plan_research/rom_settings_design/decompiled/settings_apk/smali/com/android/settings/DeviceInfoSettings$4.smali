.class Lcom/android/settings/DeviceInfoSettings$4;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->initRecoverySystemUpdatePreference()V
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
    .line 689
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->access$100(Lcom/android/settings/DeviceInfoSettings;)I

    move-result v0

    return v0
.end method

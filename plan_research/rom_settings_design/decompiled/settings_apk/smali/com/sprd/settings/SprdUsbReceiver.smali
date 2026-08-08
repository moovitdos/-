.class public Lcom/sprd/settings/SprdUsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SprdUsbReceiver.java"


# static fields
.field private static powerOff:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mConnected:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprd/settings/SprdUsbReceiver;->powerOff:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const-string v0, "SprdUsbReceiver"

    iput-object v0, p0, Lcom/sprd/settings/SprdUsbReceiver;->LOG_TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/settings/SprdUsbReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/settings/SprdUsbReceiver;->mConnected:Z

    return-void
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 21
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPowerOff()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/sprd/settings/SprdUsbReceiver;->powerOff:Z

    return v0
.end method

.method private recoverFunction()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprd.settings.APPLICATION_SPRD_USB_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbReceiver;->context:Landroid/content/Context;

    const-class v2, Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    iput-object p1, p0, Lcom/sprd/settings/SprdUsbReceiver;->context:Landroid/content/Context;

    .line 29
    const-string v1, "usb"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SprdUsbReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    const-string v1, "connected"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iput-boolean v5, p0, Lcom/sprd/settings/SprdUsbReceiver;->mConnected:Z

    .line 37
    sput-boolean v4, Lcom/sprd/settings/SprdUsbReceiver;->powerOff:Z

    .line 39
    const-string v1, "persist.sys.sprd.mtbf"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbReceiver;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbReceiver;->recoverFunction()V

    goto :goto_0

    .line 46
    :cond_2
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-boolean v1, p0, Lcom/sprd/settings/SprdUsbReceiver;->mConnected:Z

    if-eqz v1, :cond_3

    .line 48
    sput-boolean v5, Lcom/sprd/settings/SprdUsbReceiver;->powerOff:Z

    .line 49
    iput-boolean v4, p0, Lcom/sprd/settings/SprdUsbReceiver;->mConnected:Z

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mass_storage"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remember_usb_choice"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_function"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

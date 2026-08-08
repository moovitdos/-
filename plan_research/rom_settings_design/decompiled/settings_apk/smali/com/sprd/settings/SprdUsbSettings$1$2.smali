.class Lcom/sprd/settings/SprdUsbSettings$1$2;
.super Ljava/lang/Thread;
.source "SprdUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/SprdUsbSettings$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/settings/SprdUsbSettings$1;


# direct methods
.method constructor <init>(Lcom/sprd/settings/SprdUsbSettings$1;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sprd/settings/SprdUsbSettings$1$2;->this$1:Lcom/sprd/settings/SprdUsbSettings$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings$1$2;->this$1:Lcom/sprd/settings/SprdUsbSettings$1;

    iget-object v0, v0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v0}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 186
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings$1$2;->this$1:Lcom/sprd/settings/SprdUsbSettings$1;

    iget-object v0, v0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/sprd/settings/SprdUsbSettings;->access$1200(Lcom/sprd/settings/SprdUsbSettings;Ljava/lang/String;)Z

    .line 188
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings$1$2;->this$1:Lcom/sprd/settings/SprdUsbSettings$1;

    iget-object v0, v0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v0}, Lcom/sprd/settings/SprdUsbSettings;->access$1100(Lcom/sprd/settings/SprdUsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 190
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings$1$2;->this$1:Lcom/sprd/settings/SprdUsbSettings$1;

    iget-object v0, v0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v0}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 191
    return-void
.end method

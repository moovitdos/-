.class Lcom/sprd/settings/SprdUsbSettings$1$1;
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
    .line 176
    iput-object p1, p0, Lcom/sprd/settings/SprdUsbSettings$1$1;->this$1:Lcom/sprd/settings/SprdUsbSettings$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings$1$1;->this$1:Lcom/sprd/settings/SprdUsbSettings$1;

    iget-object v0, v0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v0}, Lcom/sprd/settings/SprdUsbSettings;->access$1100(Lcom/sprd/settings/SprdUsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 179
    return-void
.end method

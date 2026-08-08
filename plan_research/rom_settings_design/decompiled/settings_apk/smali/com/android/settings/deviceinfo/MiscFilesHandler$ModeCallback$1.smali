.class Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$1;
.super Ljava/lang/Thread;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->access$400(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V

    .line 199
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 200
    .local v0, "msgCancleDialog":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 201
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->access$500(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

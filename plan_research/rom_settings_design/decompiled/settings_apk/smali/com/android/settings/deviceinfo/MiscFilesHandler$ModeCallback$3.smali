.class Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$3;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->warnDeleteFileDialog(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$3;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$3;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 257
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 258
    .local v0, "msgDeleteFile":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 259
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$3;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$3;->val$mode:Landroid/view/ActionMode;

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1002(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 260
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$3;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->access$500(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    return-void
.end method

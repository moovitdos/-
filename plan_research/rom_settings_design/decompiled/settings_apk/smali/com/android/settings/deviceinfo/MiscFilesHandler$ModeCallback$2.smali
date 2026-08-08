.class Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;
.super Landroid/os/Handler;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;
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
    .line 206
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->access$600(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->access$700(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$800(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$800(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->access$900(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;Ljava/util/ArrayList;)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$302(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->access$1100(Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback$2;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$1200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

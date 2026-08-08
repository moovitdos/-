.class Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$UpdateHandler;
.super Landroid/os/Handler;
.source "WifiConnectionPolicyDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$UpdateHandler;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;
    .param p2, "x1"    # Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$UpdateHandler;-><init>(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$UpdateHandler;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

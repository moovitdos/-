.class Lcom/sprd/settings/SprdUsbSettings$1;
.super Landroid/os/Handler;
.source "SprdUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/SprdUsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/SprdUsbSettings;


# direct methods
.method constructor <init>(Lcom/sprd/settings/SprdUsbSettings;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 89
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$000(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    invoke-static {}, Lcom/sprd/settings/SprdUsbSettings;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const-string v3, "SprdUsbSettings"

    const-string v4, "keyguard locked and do nothing."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/sprd/settings/SprdUsbSettings;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    const-string v5, "SprdUsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg.what = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg.arg1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_3

    .line 100
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v5, "none"

    invoke-virtual {v3, v5, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v5, "mass_storage"

    invoke-virtual {v3, v5, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$300(Lcom/sprd/settings/SprdUsbSettings;)Landroid/net/ConnectivityManager;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    const v5, 0x7f0903b1

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 112
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v5, "mass_storage"

    invoke-virtual {v3, v5, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 114
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "current_function"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 108
    goto :goto_1

    .line 119
    :pswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_5

    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$400(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$500(Lcom/sprd/settings/SprdUsbSettings;)V

    goto/16 :goto_0

    .line 125
    :cond_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_8

    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$600(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 126
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5, v4}, Lcom/sprd/settings/SprdUsbSettings;->access$602(Lcom/sprd/settings/SprdUsbSettings;Z)Z

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 128
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    const-string v6, "phone"

    invoke-static {v6, v0}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 130
    .local v1, "mTeleMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_7

    .line 133
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5, v3}, Lcom/sprd/settings/SprdUsbSettings;->access$602(Lcom/sprd/settings/SprdUsbSettings;Z)Z

    .line 137
    .end local v1    # "mTeleMgr":Landroid/telephony/TelephonyManager;
    :cond_6
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$600(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 138
    invoke-virtual {p0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 140
    .local v2, "message":Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->what:I

    .line 141
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 142
    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 127
    .end local v2    # "message":Landroid/os/Message;
    .restart local v1    # "mTeleMgr":Landroid/telephony/TelephonyManager;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 147
    .end local v0    # "i":I
    .end local v1    # "mTeleMgr":Landroid/telephony/TelephonyManager;
    :cond_8
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v5}, Landroid/app/Activity;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 148
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    new-instance v6, Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lcom/sprd/settings/SprdUsbSettings;->access$702(Lcom/sprd/settings/SprdUsbSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 149
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    const v6, 0x7f09086c

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setTitle(I)V

    .line 150
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 151
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 152
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_c

    .line 153
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    const v7, 0x7f09086d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    :goto_3
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 161
    :cond_a
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_d

    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$800(Lcom/sprd/settings/SprdUsbSettings;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 162
    const-string v5, "mass_storage"

    iget-object v6, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v6}, Lcom/sprd/settings/SprdUsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 163
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    const-string v6, "mass_storage"

    invoke-virtual {v5, v6, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 164
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$900(Lcom/sprd/settings/SprdUsbSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 166
    :cond_b
    invoke-virtual {p0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 168
    .restart local v2    # "message":Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->what:I

    .line 169
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 170
    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v4, v3}, Lcom/sprd/settings/SprdUsbSettings;->access$1002(Lcom/sprd/settings/SprdUsbSettings;Z)Z

    goto/16 :goto_0

    .line 155
    .end local v2    # "message":Landroid/os/Message;
    :cond_c
    iget-object v5, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v5}, Lcom/sprd/settings/SprdUsbSettings;->access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    const v7, 0x7f09086e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 175
    :cond_d
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_e

    .line 176
    new-instance v3, Lcom/sprd/settings/SprdUsbSettings$1$1;

    invoke-direct {v3, p0}, Lcom/sprd/settings/SprdUsbSettings$1$1;-><init>(Lcom/sprd/settings/SprdUsbSettings$1;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 182
    :cond_e
    new-instance v3, Lcom/sprd/settings/SprdUsbSettings$1$2;

    invoke-direct {v3, p0}, Lcom/sprd/settings/SprdUsbSettings$1$2;-><init>(Lcom/sprd/settings/SprdUsbSettings$1;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 196
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_f

    .line 197
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v5, "cdrom"

    invoke-virtual {v3, v5, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 200
    :cond_f
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v5, "mass_storage"

    invoke-virtual {v3, v5, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 202
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$500(Lcom/sprd/settings/SprdUsbSettings;)V

    goto/16 :goto_0

    .line 207
    :pswitch_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_10

    .line 208
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v5, "mtp"

    invoke-virtual {v3, v5, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 211
    :cond_10
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v5, "mass_storage"

    invoke-virtual {v3, v5, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 213
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "current_function"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 219
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_11

    .line 220
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v5, "ptp"

    invoke-virtual {v3, v5, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 223
    :cond_11
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-static {v3}, Lcom/sprd/settings/SprdUsbSettings;->access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    const-string v5, "mass_storage"

    invoke-virtual {v3, v5, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 225
    iget-object v3, p0, Lcom/sprd/settings/SprdUsbSettings$1;->this$0:Lcom/sprd/settings/SprdUsbSettings;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "current_function"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.class Lcom/android/settings/DualSimSettings$4;
.super Landroid/os/Handler;
.source "DualSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DualSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DualSimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DualSimSettings;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 498
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 500
    :pswitch_0
    invoke-static {}, Lcom/android/settings/DualSimSettings;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DualSimSettings"

    const-string v3, "EVENT_SET_SUBSCRIPTION_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$600(Lcom/android/settings/DualSimSettings;)V

    .line 502
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$000(Lcom/android/settings/DualSimSettings;)V

    .line 503
    invoke-static {}, Lcom/android/settings/DualSimSettings;->access$700()I

    move-result v2

    if-nez v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09096a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 506
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 516
    .end local v1    # "toast":Landroid/widget/Toast;
    :pswitch_1
    invoke-static {}, Lcom/android/settings/DualSimSettings;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DualSimSettings"

    const-string v3, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$800(Lcom/android/settings/DualSimSettings;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 518
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$800(Lcom/android/settings/DualSimSettings;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v3}, Lcom/android/settings/DualSimSettings;->access$100(Lcom/android/settings/DualSimSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 520
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 523
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$900(Lcom/android/settings/DualSimSettings;)V

    goto :goto_0

    .line 553
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    invoke-static {}, Lcom/android/settings/DualSimSettings;->access$500()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "DualSimSettings"

    const-string v3, "EVENT_ACTION_AIRPLANE_MODE_BROAD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$800(Lcom/android/settings/DualSimSettings;)I

    move-result v2

    if-ltz v2, :cond_5

    .line 555
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$800(Lcom/android/settings/DualSimSettings;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v3}, Lcom/android/settings/DualSimSettings;->access$100(Lcom/android/settings/DualSimSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 557
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$600(Lcom/android/settings/DualSimSettings;)V

    .line 563
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1000(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 564
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1000(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 565
    :cond_6
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1100(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 566
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1100(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 567
    :cond_7
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1200(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 568
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1200(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 569
    :cond_8
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1300(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 570
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1300(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 571
    :cond_9
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1400(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/settings/DualSimSettings$4;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v2}, Lcom/android/settings/DualSimSettings;->access$1400(Lcom/android/settings/DualSimSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

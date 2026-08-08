.class Lcom/sprd/settings/sim/SimManagerActivity$8;
.super Landroid/os/Handler;
.source "SimManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/sim/SimManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/sim/SimManagerActivity;


# direct methods
.method constructor <init>(Lcom/sprd/settings/sim/SimManagerActivity;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 664
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 666
    :pswitch_0
    const-string v2, "SimManagerActivity"

    const-string v3, "EVENT_SET_SUBSCRIPTION_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1800(Lcom/sprd/settings/sim/SimManagerActivity;)V

    .line 669
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 670
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1200(Lcom/sprd/settings/sim/SimManagerActivity;)V

    .line 671
    invoke-static {}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1900()I

    move-result v2

    if-nez v2, :cond_0

    .line 673
    invoke-static {}, Lcom/sprd/internal/telephony/CpSupportUtils;->getLTEPhoneId()I

    move-result v1

    .line 674
    .local v1, "ltePhoneId":I
    if-eq v1, v4, :cond_0

    .line 675
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$400(Lcom/sprd/settings/sim/SimManagerActivity;)I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$400(Lcom/sprd/settings/sim/SimManagerActivity;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 676
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09096b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 679
    :cond_1
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09096a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 686
    .end local v1    # "ltePhoneId":I
    :pswitch_1
    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SET_DATA_SUBSCRIPTION_DONE: oldSetPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v4}, Lcom/sprd/settings/sim/SimManagerActivity;->access$2000(Lcom/sprd/settings/sim/SimManagerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$2000(Lcom/sprd/settings/sim/SimManagerActivity;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 688
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$2000(Lcom/sprd/settings/sim/SimManagerActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v3}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1400(Lcom/sprd/settings/sim/SimManagerActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 690
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 691
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 692
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    const/16 v3, 0x1388

    invoke-static {v2, v3}, Lcom/sprd/settings/sim/SimManagerActivity;->access$2100(Lcom/sprd/settings/sim/SimManagerActivity;I)V

    goto/16 :goto_0

    .line 696
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "SimManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_ACTION_AIRPLANE_MODE_BROAD: oldSetPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v4}, Lcom/sprd/settings/sim/SimManagerActivity;->access$2000(Lcom/sprd/settings/sim/SimManagerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$2000(Lcom/sprd/settings/sim/SimManagerActivity;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 698
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$2000(Lcom/sprd/settings/sim/SimManagerActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v3}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1400(Lcom/sprd/settings/sim/SimManagerActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 700
    :cond_3
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$8;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1800(Lcom/sprd/settings/sim/SimManagerActivity;)V

    goto/16 :goto_0

    .line 664
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

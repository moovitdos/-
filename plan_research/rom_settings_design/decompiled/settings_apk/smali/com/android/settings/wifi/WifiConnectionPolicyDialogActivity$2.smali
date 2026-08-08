.class Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;
.super Ljava/lang/Object;
.source "WifiConnectionPolicyDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelListener mDialogType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$100(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$200(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$100(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 251
    return-void

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$500(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_wlan_to_wlan"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setWlanToWLanDialogCancleFlag(Z)V

    .line 213
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDialogShowing(Z)V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$500(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_mobile_to_wlan_manual"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setTimer(J)V

    .line 223
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDialogShowing(Z)V

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$500(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_mobile_to_wlan_always_ask"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setTimer(J)V

    .line 235
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDialogShowing(Z)V

    goto :goto_0

    .line 238
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$500(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_wlan_to_mobile"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    :cond_3
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDialogShowing(Z)V

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

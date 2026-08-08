.class Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;
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
    .line 137
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "okListener mDialogType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$100(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$200(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$100(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 196
    return-void

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$300(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$400(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$300(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 146
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setManulConnectFlags(Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$500(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_wlan_to_wlan"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    :cond_1
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDialogShowing(Z)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$300(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$400(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$300(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 158
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setManulConnectFlags(Z)V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$500(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_mobile_to_wlan_manual"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :cond_3
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDialogShowing(Z)V

    goto :goto_0

    .line 171
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$300(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$400(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$300(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 173
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setManulConnectFlags(Z)V

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$500(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_mobile_to_wlan_always_ask"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    :cond_5
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDialogShowing(Z)V

    goto/16 :goto_0

    .line 183
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$500(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_wlan_to_mobile"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->access$600(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 189
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDialogShowing(Z)V

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

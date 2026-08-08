.class Lcom/android/settings/RadioInfo$22;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1193
    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->access$4600(Lcom/android/settings/RadioInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1194
    iget-object v5, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v5, v1}, Lcom/android/settings/RadioInfo;->access$4602(Lcom/android/settings/RadioInfo;Z)Z

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->access$4700(Lcom/android/settings/RadioInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1198
    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getRadioCapbility()Landroid/telephony/TelephonyManager$RadioCapbility;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/RadioInfo;->access$4802(Lcom/android/settings/RadioInfo;Landroid/telephony/TelephonyManager$RadioCapbility;)Landroid/telephony/TelephonyManager$RadioCapbility;

    .line 1199
    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getRadioFeatures()Landroid/telephony/TelephonyManager$RadioFeatures;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/RadioInfo;->access$4902(Lcom/android/settings/RadioInfo;Landroid/telephony/TelephonyManager$RadioFeatures;)Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1200
    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v7, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v7}, Lcom/android/settings/RadioInfo;->access$4800(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioCapbility;

    move-result-object v7

    invoke-static {v6, v7, p3}, Lcom/android/settings/RadioInfo;->access$5000(Lcom/android/settings/RadioInfo;Landroid/telephony/TelephonyManager$RadioCapbility;I)Landroid/telephony/TelephonyManager$RadioFeatures;

    move-result-object v4

    .line 1201
    .local v4, "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    const-string v6, "phone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemSelected\nmCurrentRadioCapbility is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v8}, Lcom/android/settings/RadioInfo;->access$4800(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioCapbility;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentRadioFeatures is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v8}, Lcom/android/settings/RadioInfo;->access$4900(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioFeatures;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->access$4800(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioCapbility;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TDD_SVLTE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->access$4900(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioFeatures;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SVLET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1207
    .local v1, "isSwitchOutLTE":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->access$4900(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioFeatures;

    move-result-object v6

    if-eq v4, v6, :cond_0

    .line 1208
    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->access$4800(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioCapbility;

    move-result-object v6

    sget-object v7, Landroid/telephony/TelephonyManager$RadioCapbility;->TDD_SVLTE:Landroid/telephony/TelephonyManager$RadioCapbility;

    if-ne v6, v7, :cond_4

    .line 1209
    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v6, v4}, Lcom/android/settings/RadioInfo;->setRadioFeatures(Landroid/telephony/TelephonyManager$RadioFeatures;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1210
    if-eqz v1, :cond_0

    .line 1211
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_LTE_READY"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "lte"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1213
    iget-object v5, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v5, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isSwitchOutLTE":Z
    :cond_2
    move v1, v5

    .line 1204
    goto :goto_1

    .line 1216
    .restart local v1    # "isSwitchOutLTE":Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v6, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->access$4800(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioCapbility;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v7}, Lcom/android/settings/RadioInfo;->access$5100(Lcom/android/settings/RadioInfo;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/RadioInfo;->access$5200(Lcom/android/settings/RadioInfo;Landroid/telephony/TelephonyManager$RadioCapbility;I)V

    goto/16 :goto_0

    .line 1219
    :cond_4
    new-instance v3, Lcom/android/settings/RadioInfo$RadioInteraction;

    iget-object v5, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhoneId()I

    move-result v6

    invoke-direct {v3, v5, v6}, Lcom/android/settings/RadioInfo$RadioInteraction;-><init>(Landroid/content/Context;I)V

    .line 1221
    .local v3, "radioInteraction":Lcom/android/settings/RadioInfo$RadioInteraction;
    new-instance v5, Lcom/android/settings/RadioInfo$22$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/settings/RadioInfo$22$1;-><init>(Lcom/android/settings/RadioInfo$22;Lcom/android/settings/RadioInfo$RadioInteraction;Landroid/telephony/TelephonyManager$RadioFeatures;)V

    invoke-virtual {v3, v5}, Lcom/android/settings/RadioInfo$RadioInteraction;->setCallBack(Ljava/lang/Runnable;)V

    .line 1243
    const v5, 0xfde8

    invoke-virtual {v3, v5}, Lcom/android/settings/RadioInfo$RadioInteraction;->powerOffRadio(I)V

    goto/16 :goto_0

    .line 1247
    .end local v1    # "isSwitchOutLTE":Z
    .end local v3    # "radioInteraction":Lcom/android/settings/RadioInfo$RadioInteraction;
    .end local v4    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v5}, Lcom/android/settings/RadioInfo;->access$4400(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1248
    .local v2, "msg":Landroid/os/Message;
    if-ltz p3, :cond_0

    iget-object v5, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v5}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    if-gt p3, v5, :cond_0

    .line 1249
    iget-object v5, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v5}, Lcom/android/settings/RadioInfo;->access$1800(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, p3, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 1255
    return-void
.end method

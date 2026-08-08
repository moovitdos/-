.class Lcom/sprd/settings/sim/SimManagerActivity$5;
.super Landroid/content/BroadcastReceiver;
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
    .line 319
    iput-object p1, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.DEFAULT_PHONE_CHANGE_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1200(Lcom/sprd/settings/sim/SimManagerActivity;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 327
    iget-object v3, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    iget-object v4, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1302(Lcom/sprd/settings/sim/SimManagerActivity;Z)Z

    .line 329
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1300(Lcom/sprd/settings/sim/SimManagerActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 330
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1400(Lcom/sprd/settings/sim/SimManagerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1500(Lcom/sprd/settings/sim/SimManagerActivity;)V

    goto :goto_0

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 334
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 340
    :cond_5
    const-string v2, "android.intent.action.MMS_REQUEST_DATA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    const-string v2, "SimManagerActivity"

    const-string v3, "receive action :ACTION_MMS_REQUEST_DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    const-string v3, "networkUnvailable"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1602(Lcom/sprd/settings/sim/SimManagerActivity;Z)Z

    .line 343
    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    const-string v3, "phone_id"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1702(Lcom/sprd/settings/sim/SimManagerActivity;I)I

    .line 344
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$5;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1200(Lcom/sprd/settings/sim/SimManagerActivity;)V

    goto :goto_0
.end method

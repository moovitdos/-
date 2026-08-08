.class public Lcom/android/settings/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;,
        Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;,
        Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private mIsForeground:Z

.field private mIsPrimaryCardCancelable:Z

.field private mProgerssDialogFragment:Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

.field private mRadioBusyObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimChooseDialog:Landroid/app/Dialog;

.field mSimInfoChanged:Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;

.field private mSimManager:Landroid/sim/SimManager;

.field private mTelephonyManager:[Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 84
    const-string v0, "dialog_type"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialogType:I

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsForeground:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsPrimaryCardCancelable:Z

    .line 97
    iput-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mProgerssDialogFragment:Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

    .line 99
    iput-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    .line 503
    new-instance v0, Lcom/android/settings/sim/SimDialogActivity$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/SimDialogActivity$8;-><init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mRadioBusyObserver:Landroid/database/ContentObserver;

    .line 805
    new-instance v0, Lcom/android/settings/sim/SimDialogActivity$9;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimDialogActivity$9;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;II[Landroid/sim/Sim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [Landroid/sim/Sim;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/sim/SimDialogActivity;->setDefaltSubIdByDialogId(Landroid/content/Context;II[Landroid/sim/Sim;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimDialogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsPrimaryCardCancelable:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/sim/SimDialogActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->isStandby(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->dismissSimChooseDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/sim/SimDialogActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimDialogActivity;)[Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->showProgressingDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimDialogActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/sim/SimDialogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private disableDataForOtherSubscriptions(I)V
    .locals 8
    .param p1, "defaultDataPhoneId"    # I

    .prologue
    .line 232
    iget-object v5, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v5}, Landroid/sim/SimManager;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v4

    .line 233
    .local v4, "subInfoList":[Landroid/sim/Sim;
    if-eqz v4, :cond_1

    .line 234
    move-object v0, v4

    .local v0, "arr$":[Landroid/sim/Sim;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 235
    .local v3, "subInfo":Landroid/sim/Sim;
    invoke-virtual {v3}, Landroid/sim/Sim;->getPhoneId()I

    move-result v5

    if-eq v5, p1, :cond_0

    .line 236
    iget-object v5, p0, Lcom/android/settings/sim/SimDialogActivity;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabledByPhoneId(IZ)V

    .line 234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "arr$":[Landroid/sim/Sim;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "subInfo":Landroid/sim/Sim;
    :cond_1
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mProgerssDialogFragment:Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mProgerssDialogFragment:Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss progressing dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mProgerssDialogFragment:Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 432
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 434
    :cond_0
    return-void
.end method

.method private dismissSimChooseDialog()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 501
    :cond_0
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isStandby(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_standby"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "tmpStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processIntent()V
    .locals 5

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 153
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 154
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v3, "invalid extras null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 179
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "dialogType":I
    const-string v2, "show_after_boot"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsPrimaryCardCancelable:Z

    .line 162
    packed-switch v0, :pswitch_data_0

    .line 177
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :pswitch_1
    iput v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialogType:I

    .line 169
    iget v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialogType:I

    invoke-virtual {p0, p0, v2}, Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    .line 170
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDefaltSubIdByDialogId(Landroid/content/Context;II[Landroid/sim/Sim;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogId"    # I
    .param p3, "chooseId"    # I
    .param p4, "subInfoList"    # [Landroid/sim/Sim;

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 442
    iput v5, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialogType:I

    .line 444
    packed-switch p2, :pswitch_data_0

    .line 489
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dialog type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in SIM dialog."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 446
    :pswitch_1
    aget-object v2, p4, p3

    .line 448
    .local v2, "sir":Landroid/sim/Sim;
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    .line 449
    .local v0, "currentDataPhoneId":I
    sget-object v4, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currentDataPhoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 452
    sget-object v4, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v5, "set defalut data connection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    .line 493
    .end local v0    # "currentDataPhoneId":I
    .end local v2    # "sir":Landroid/sim/Sim;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 495
    :goto_1
    return-void

    .line 458
    :pswitch_2
    sget-object v4, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSubscriberDesiredSim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Landroid/telephony/TelephonyManager;->getSubscriberDesiredSim(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v6, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    if-lez p3, :cond_2

    add-int/lit8 v4, p3, -0x1

    :goto_2
    invoke-static {v6, v8, v4}, Landroid/telephony/TelephonyManager;->setSubscriberDesiredSim(Landroid/content/Context;II)V

    .line 462
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    if-lez p3, :cond_1

    add-int/lit8 v5, p3, -0x1

    :cond_1
    invoke-static {v4, v8, v5}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    goto :goto_0

    :cond_2
    move v4, v5

    .line 460
    goto :goto_2

    .line 466
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    if-lez p3, :cond_4

    add-int/lit8 v4, p3, -0x1

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/telephony/TelephonyManager;->setSubscriberDesiredSim(Landroid/content/Context;II)V

    .line 468
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    if-lez p3, :cond_3

    add-int/lit8 v5, p3, -0x1

    :cond_3
    invoke-static {v4, v7, v5}, Landroid/telephony/TelephonyManager;->setDefaultSim(Landroid/content/Context;II)Z

    goto :goto_0

    :cond_4
    move v4, v5

    .line 466
    goto :goto_3

    .line 473
    :pswitch_4
    aget-object v2, p4, p3

    .line 474
    .restart local v2    # "sir":Landroid/sim/Sim;
    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v1

    .line 475
    .local v1, "selectPrimaryCard":I
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 476
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    sget-object v4, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRIMARY_PICK lastPrimaryCard = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPrimaryCard()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selectPrimaryCard = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-boolean v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsPrimaryCardCancelable:Z

    if-eqz v4, :cond_5

    .line 480
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v4, v4, v8

    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->setPrimaryCard(I)V

    goto/16 :goto_0

    .line 481
    :cond_5
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPrimaryCard()I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 482
    sget-object v4, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v5, "selectPrimaryCard != tm.getPrimaryCard()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimDialogActivity;->showAlertDialog(I)V

    goto/16 :goto_1

    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 221
    invoke-static {p1, p2}, Landroid/telephony/TelephonyManager;->setDefaultDataPhoneId(Landroid/content/Context;I)Z

    .line 225
    invoke-direct {p0, p2}, Lcom/android/settings/sim/SimDialogActivity;->disableDataForOtherSubscriptions(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledByPhoneId(IZ)V

    .line 228
    const v0, 0x7f0908ef

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->dismissSimChooseDialog()V

    .line 388
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v1

    .line 389
    .local v1, "currentDataPhoneId":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090983

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eq v1, p1, :cond_0

    const v2, 0x7f090997

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/sim/SimDialogActivity$6;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/sim/SimDialogActivity$6;-><init>(Lcom/android/settings/sim/SimDialogActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/sim/SimDialogActivity$5;

    invoke-direct {v4, p0}, Lcom/android/settings/sim/SimDialogActivity$5;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 407
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/sim/SimDialogActivity$7;

    invoke-direct {v2, p0}, Lcom/android/settings/sim/SimDialogActivity$7;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 414
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 415
    return-void

    .line 389
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :cond_0
    const v2, 0x7f090998

    goto :goto_0
.end method

.method private showProgressingDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 418
    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "show progressing dialog..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->dismissProgressDialog()V

    .line 420
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 421
    .local v0, "tr":Landroid/app/FragmentTransaction;
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 422
    new-instance v1, Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mProgerssDialogFragment:Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

    .line 423
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mProgerssDialogFragment:Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

    invoke-virtual {v1, v3, v3}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 424
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mProgerssDialogFragment:Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

    invoke-virtual {v1, v3}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 425
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mProgerssDialogFragment:Lcom/android/settings/sim/SimDialogActivity$PorgressDialogFragment;

    const-string v2, "progress_dialog"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 426
    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/sim/SimDialogActivity;->dismissSimChooseDialog()V

    .line 261
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/sim/SimDialogActivity;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v6}, Landroid/sim/SimManager;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v22

    .line 263
    .local v22, "subInfoList":[Landroid/sim/Sim;
    if-nez v22, :cond_1

    const/16 v18, 0x0

    .line 264
    .local v18, "selectableSubInfoLength":I
    :goto_0
    const-string v6, "statusbar"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/StatusBarManager;

    .line 265
    .local v21, "statusBarManager":Landroid/app/StatusBarManager;
    add-int/lit8 v6, v18, 0x1

    new-array v0, v6, [Landroid/sim/Sim;

    move-object/from16 v23, v0

    .line 266
    .local v23, "subInfoListForCallAndSms":[Landroid/sim/Sim;
    new-instance v19, Lcom/android/settings/sim/SimDialogActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/sim/SimDialogActivity$1;-><init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;I[Landroid/sim/Sim;)V

    .line 275
    .local v19, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v16, Lcom/android/settings/sim/SimDialogActivity$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/sim/SimDialogActivity$2;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 294
    .local v16, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    const/4 v6, 0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_0

    const/4 v6, 0x2

    move/from16 v0, p2

    if-ne v0, v6, :cond_2

    .line 295
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090991

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v23

    array-length v6, v0

    if-ge v15, v6, :cond_2

    .line 297
    add-int/lit8 v6, v15, -0x1

    aget-object v6, v22, v6

    aput-object v6, v23, v15

    .line 296
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 263
    .end local v15    # "i":I
    .end local v16    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v18    # "selectableSubInfoLength":I
    .end local v19    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v21    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v23    # "subInfoListForCallAndSms":[Landroid/sim/Sim;
    :cond_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    goto :goto_0

    .line 300
    .restart local v16    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .restart local v18    # "selectableSubInfoLength":I
    .restart local v19    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v21    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v23    # "subInfoListForCallAndSms":[Landroid/sim/Sim;
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 301
    aget-object v20, v22, v15

    .line 302
    .local v20, "sir":Landroid/sim/Sim;
    invoke-virtual/range {v20 .. v20}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v14

    .line 303
    .local v14, "displayName":Ljava/lang/CharSequence;
    if-nez v14, :cond_3

    .line 304
    const-string v14, ""

    .line 306
    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 308
    .end local v14    # "displayName":Ljava/lang/CharSequence;
    .end local v20    # "sir":Landroid/sim/Sim;
    :cond_4
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 311
    .local v10, "arr":[Ljava/lang/String;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 314
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    const/4 v6, 0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_5

    const/4 v6, 0x2

    move/from16 v0, p2

    if-ne v0, v6, :cond_6

    :cond_5
    move-object/from16 v7, v23

    :goto_3
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f040085

    move-object/from16 v6, p0

    move/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/settings/sim/SimDialogActivity;[Landroid/sim/Sim;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 320
    .local v5, "adapter":Landroid/widget/ListAdapter;
    packed-switch p2, :pswitch_data_0

    .line 353
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid dialog type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in SIM dialog."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    :cond_6
    move-object/from16 v7, v22

    .line 314
    goto :goto_3

    .line 322
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    :pswitch_1
    const v6, 0x7f090992

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 357
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v12, v5, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 358
    .local v13, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 360
    new-instance v6, Lcom/android/settings/sim/SimDialogActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/sim/SimDialogActivity$3;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v13, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 368
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings/sim/SimDialogActivity;->mIsPrimaryCardCancelable:Z

    if-eqz v6, :cond_7

    .line 369
    new-instance v6, Lcom/android/settings/sim/SimDialogActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/android/settings/sim/SimDialogActivity$4;-><init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/app/StatusBarManager;)V

    invoke-virtual {v13, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 375
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 376
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 377
    const/high16 v6, 0x10000

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 381
    :cond_7
    return-object v13

    .line 325
    .end local v13    # "dialog":Landroid/app/Dialog;
    :pswitch_2
    const v6, 0x7f090993

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 328
    :pswitch_3
    const v6, 0x7f090994

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 333
    :pswitch_4
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040086

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 335
    .local v25, "titleView":Landroid/view/View;
    const v6, 0x7f0b016a

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 337
    .local v24, "textview":Landroid/widget/TextView;
    invoke-static {}, Landroid/telephony/TelephonyManager;->isDeviceSupportLte()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 338
    sget-object v6, Landroid/telephony/TelephonyManager$RadioCapbility;->CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getRadioCapbility()Landroid/telephony/TelephonyManager$RadioCapbility;

    move-result-object v7

    if-ne v6, v7, :cond_a

    .line 339
    const v6, 0x7f090995

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_8
    :goto_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->isLteWcdmaModem()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 345
    const v6, 0x7f0909a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_9
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    .line 341
    :cond_a
    const v6, 0x7f090996

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    iput-object p0, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 111
    .local v2, "mNumSlots":I
    new-array v3, v2, [Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 113
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    const-string v3, "phone"

    invoke-static {v3, v0}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    aput-object v3, v4, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p0}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManager:Landroid/sim/SimManager;

    .line 118
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mConnService:Landroid/net/ConnectivityManager;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->processIntent()V

    .line 121
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "radio_operation"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/settings/sim/SimDialogActivity;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 572
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 574
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 576
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy,Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 137
    .local v2, "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "OldDialogType":I
    const-string v3, "show_after_boot"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsPrimaryCardCancelable:Z

    .line 140
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 142
    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "dialogType":I
    if-eq v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsPrimaryCardCancelable:Z

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->processIntent()V

    .line 148
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsForeground:Z

    .line 561
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 562
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManager:Landroid/sim/SimManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimInfoChanged:Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;

    invoke-virtual {v0, v1}, Landroid/sim/SimManager;->removeOnSimsUpdatedListener(Landroid/sim/SimManager$OnSimsUpdateListener;)V

    .line 563
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 522
    new-instance v1, Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimInfoChanged:Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;

    .line 523
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManager:Landroid/sim/SimManager;

    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimInfoChanged:Lcom/android/settings/sim/SimDialogActivity$SimInfoChanged;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/sim/SimManager;->addOnSimsUpdatedListener(Landroid/sim/SimManager$OnSimsUpdateListener;Landroid/os/Handler;Z)V

    .line 526
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v1}, Landroid/sim/SimManager;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v0

    .line 527
    .local v0, "availableSubInfoList":[Landroid/sim/Sim;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 529
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 533
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsForeground:Z

    .line 534
    iget v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialogType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 535
    iget-boolean v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mIsPrimaryCardCancelable:Z

    if-eqz v1, :cond_4

    .line 536
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialogType:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    .line 540
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->isRadioBusy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 544
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->dismissProgressDialog()V

    .line 546
    :cond_3
    return-void

    .line 538
    :cond_4
    iget v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialogType:I

    invoke-virtual {p0, p0, v1}, Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimChooseDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

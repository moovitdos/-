.class public Lcom/android/settings/RadioInfo$RadioInteraction;
.super Ljava/lang/Object;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioInteraction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;
    }
.end annotation


# instance fields
.field private isRadioOn:Ljava/lang/Boolean;

.field private volatile mMsgHandler:Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;

.field private volatile mMsgLooper:Landroid/os/Looper;

.field private mPhoneId:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .prologue
    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1571
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->isRadioOn:Ljava/lang/Boolean;

    .line 1574
    iput p2, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mPhoneId:I

    .line 1575
    const-string v1, "phone"

    invoke-static {v1, p2}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1582
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioInteraction["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1583
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mMsgLooper:Landroid/os/Looper;

    .line 1585
    new-instance v1, Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;

    iget-object v2, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mMsgLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;-><init>(Lcom/android/settings/RadioInfo$RadioInteraction;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mMsgHandler:Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;

    .line 1586
    return-void
.end method

.method static synthetic access$5400(Lcom/android/settings/RadioInfo$RadioInteraction;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo$RadioInteraction;
    .param p1, "x1"    # I

    .prologue
    .line 1559
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo$RadioInteraction;->powerOffRadioInner(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/settings/RadioInfo$RadioInteraction;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo$RadioInteraction;
    .param p1, "x1"    # I

    .prologue
    .line 1559
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo$RadioInteraction;->powerOffIccCardInner(I)V

    return-void
.end method

.method private powerOffIccCardInner(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1684
    const-string v8, "phone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "powerOffIccCardInner for Phone"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mPhoneId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v2, v8, v10

    .line 1686
    .local v2, "endTime":J
    const/4 v0, 0x0

    .line 1688
    .local v0, "IccOff":Z
    const-string v8, "sprd_phone"

    iget v9, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mPhoneId:I

    invoke-static {v8, v9}, Landroid/telephony/SprdPhoneSupport;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ISprdTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISprdTelephony;

    move-result-object v5

    .line 1692
    .local v5, "phone":Lcom/android/internal/telephony/ISprdTelephony;
    if-eqz v5, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_0
    move v0, v7

    .line 1693
    :goto_0
    const-string v8, "phone"

    const-string v9, "Powering off IccCard..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    if-nez v0, :cond_1

    .line 1695
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Lcom/android/internal/telephony/ISprdTelephony;->setIccCard(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1702
    :cond_1
    :goto_1
    const-string v8, "phone"

    const-string v9, "Waiting for radio poweroff..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-gez v8, :cond_3

    .line 1705
    if-nez v0, :cond_7

    .line 1706
    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    move v0, v7

    .line 1707
    :goto_3
    if-eqz v0, :cond_7

    .line 1708
    const-string v6, "phone"

    const-string v7, "IccCard turned off."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_3
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1720
    iget-object v6, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_4

    .line 1721
    const-string v6, "phone"

    const-string v7, "Run the callback."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-object v6, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 1724
    :cond_4
    return-void

    :cond_5
    move v0, v6

    .line 1692
    goto :goto_0

    .line 1697
    :catch_0
    move-exception v4

    .line 1698
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v8, "phone"

    const-string v9, "RemoteException during IccCard poweroff"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1699
    const/4 v0, 0x1

    goto :goto_1

    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_6
    move v0, v6

    .line 1706
    goto :goto_3

    .line 1714
    :cond_7
    const-wide/16 v8, 0xc8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1715
    :catch_1
    move-exception v1

    .line 1716
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private powerOffRadioInner(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1630
    const-string v8, "phone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "powerOffRadioInner for Phone"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mPhoneId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v1, v8, v10

    .line 1632
    .local v1, "endTime":J
    const/4 v5, 0x0

    .line 1633
    .local v5, "radioOff":Z
    const-string v8, "phone"

    iget v9, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mPhoneId:I

    invoke-static {v8, v9}, Landroid/telephony/SprdPhoneSupport;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1637
    .local v4, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_0
    move v5, v7

    .line 1638
    :goto_0
    const-string v8, "phone"

    const-string v9, "Powering off radio..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    if-nez v5, :cond_1

    .line 1640
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    :cond_1
    :goto_1
    const-string v8, "phone"

    const-string v9, "Waiting for radio poweroff..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v8, v8, v1

    if-gez v8, :cond_3

    .line 1648
    if-nez v5, :cond_7

    .line 1650
    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    move v5, v7

    .line 1655
    :goto_3
    if-eqz v5, :cond_7

    .line 1656
    const-string v6, "phone"

    const-string v7, "Radio turned off."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_3
    iget-object v6, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_4

    .line 1668
    const-string v6, "phone"

    const-string v7, "Run the callback."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v6, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 1671
    :cond_4
    return-void

    :cond_5
    move v5, v6

    .line 1637
    goto :goto_0

    .line 1642
    :catch_0
    move-exception v3

    .line 1643
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v8, "phone"

    const-string v9, "RemoteException during radio poweroff"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1644
    const/4 v5, 0x1

    goto :goto_1

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_6
    move v5, v6

    .line 1650
    goto :goto_3

    .line 1651
    :catch_1
    move-exception v3

    .line 1652
    .restart local v3    # "ex":Landroid/os/RemoteException;
    const-string v8, "phone"

    const-string v9, "RemoteException during radio poweroff"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1653
    const/4 v5, 0x1

    goto :goto_3

    .line 1662
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_7
    const-wide/16 v8, 0xc8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1663
    :catch_2
    move-exception v0

    .line 1664
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public RunnablesetBack()V
    .locals 2

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1727
    const-string v0, "phone"

    const-string v1, "Run the callback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1730
    :cond_0
    return-void
.end method

.method public powerOffRadio(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 1626
    const-string v0, "phone"

    const-string v1, "powerOffRadio for Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mMsgHandler:Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mMsgHandler:Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1628
    return-void
.end method

.method public powerOnRadio(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 1764
    const-string v0, "phone"

    const-string v1, "powerOnIRadio for Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mMsgHandler:Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mMsgHandler:Lcom/android/settings/RadioInfo$RadioInteraction$MessageHandler;

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1766
    return-void
.end method

.method public powerOnRadioInner(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1769
    const-string v8, "phone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "powerOnRadioInner for Phone"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mPhoneId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v1, v8, v10

    .line 1771
    .local v1, "endTime":J
    const-string v8, "phone"

    iget v9, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mPhoneId:I

    invoke-static {v8, v9}, Landroid/telephony/SprdPhoneSupport;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1774
    .local v4, "phone":Lcom/android/internal/telephony/ITelephony;
    const/4 v5, 0x0

    .line 1776
    .local v5, "radioOn":Z
    if-eqz v4, :cond_3

    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v6

    .line 1777
    :goto_0
    const-string v8, "phone"

    const-string v9, "Powering on radio..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    .line 1779
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :cond_0
    :goto_1
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1785
    const-string v8, "phone"

    const-string v9, "Waiting for radio power on..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v8, v8, v1

    if-gez v8, :cond_1

    .line 1787
    if-eqz v5, :cond_4

    .line 1788
    const-string v8, "phone"

    const-string v9, "Radio turned on."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->isRadioOn:Ljava/lang/Boolean;

    .line 1806
    :cond_1
    if-nez v5, :cond_2

    .line 1807
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->isRadioOn:Ljava/lang/Boolean;

    .line 1809
    :cond_2
    return-void

    :cond_3
    move v5, v7

    .line 1776
    goto :goto_0

    .line 1781
    :catch_0
    move-exception v3

    .line 1782
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v8, "phone"

    const-string v9, "RemoteException during IccCard powerOn"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1793
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4
    if-eqz v4, :cond_5

    :try_start_1
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    if-eqz v8, :cond_5

    move v5, v6

    .line 1801
    :goto_3
    const-wide/16 v8, 0xc8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1802
    :catch_1
    move-exception v0

    .line 1803
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    move v5, v7

    .line 1793
    goto :goto_3

    .line 1794
    :catch_2
    move-exception v3

    .line 1795
    .restart local v3    # "ex":Landroid/os/RemoteException;
    const-string v8, "phone"

    const-string v9, "RemoteException during radio power on"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1796
    const/4 v5, 0x1

    goto :goto_3
.end method

.method public setCallBack(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/settings/RadioInfo$RadioInteraction;->mRunnable:Ljava/lang/Runnable;

    .line 1589
    return-void
.end method

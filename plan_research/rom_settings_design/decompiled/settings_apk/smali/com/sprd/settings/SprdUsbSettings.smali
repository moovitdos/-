.class public Lcom/sprd/settings/SprdUsbSettings;
.super Landroid/preference/PreferenceActivity;
.source "SprdUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;,
        Lcom/sprd/settings/SprdUsbSettings$PowerDisconnectReceiver;,
        Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;,
        Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private isTalking:Z

.field private mCdrom:Landroid/preference/CheckBoxPreference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDelayDoUms:Z

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastRememberStatus:Z

.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mPowerDisconnectReceiver:Landroid/content/BroadcastReceiver;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private mRememberChoice:Landroid/preference/CheckBoxPreference;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUms:Landroid/preference/CheckBoxPreference;

.field private mUmsReceiver:Landroid/content/BroadcastReceiver;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbAccessoryMode:Z

.field private mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

.field private mUsbConnected:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private selectedItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/sprd/settings/SprdUsbSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    const-string v0, "SprdUsbSettings"

    iput-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->LOG_TAG:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 66
    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 67
    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 68
    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 70
    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUmsReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPowerDisconnectReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 80
    iput-boolean v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbConnected:Z

    .line 81
    iput-boolean v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mLastRememberStatus:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/settings/SprdUsbSettings;->isTalking:Z

    .line 83
    iput v2, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    .line 84
    iput-boolean v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mDelayDoUms:Z

    .line 85
    iput-boolean v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbAccessoryMode:Z

    .line 87
    new-instance v0, Lcom/sprd/settings/SprdUsbSettings$1;

    invoke-direct {v0, p0}, Lcom/sprd/settings/SprdUsbSettings$1;-><init>(Lcom/sprd/settings/SprdUsbSettings;)V

    iput-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    .line 937
    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/sprd/settings/SprdUsbSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sprd/settings/SprdUsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mDelayDoUms:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sprd/settings/SprdUsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sprd/settings/SprdUsbSettings;->mDelayDoUms:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sprd/settings/SprdUsbSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sprd/settings/SprdUsbSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sprd/settings/SprdUsbSettings;->waitForState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sprd/settings/SprdUsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->mountSuccess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sprd/settings/SprdUsbSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sprd/settings/SprdUsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isSdcardAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/SprdUsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sprd/settings/SprdUsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isInternalSdcardAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sprd/settings/SprdUsbSettings;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/settings/SprdUsbSettings;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sprd/settings/SprdUsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sprd/settings/SprdUsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sprd/settings/SprdUsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sprd/settings/SprdUsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sprd/settings/SprdUsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->disableAllUI()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sprd/settings/SprdUsbSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget v0, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    return v0
.end method

.method static synthetic access$2502(Lcom/sprd/settings/SprdUsbSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/sprd/settings/SprdUsbSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sprd/settings/SprdUsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->umsSuccess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sprd/settings/SprdUsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->updateUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/sprd/settings/SprdUsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sprd/settings/SprdUsbSettings;->isTalking:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sprd/settings/SprdUsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sprd/settings/SprdUsbSettings;->isTalking:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sprd/settings/SprdUsbSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sprd/settings/SprdUsbSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sprd/settings/SprdUsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isUmsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sprd/settings/SprdUsbSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/SprdUsbSettings;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private disableAllUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 822
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 823
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 824
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 825
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 827
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 828
    return-void
.end method

.method private getInternalSdcardState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    invoke-static {}, Landroid/os/Environment;->getInternalStoragePathState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSdcardState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInternalSdcardAvailable()Z
    .locals 4

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getInternalSdcardState()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "interSdcardState":Ljava/lang/String;
    sget-boolean v1, Lcom/sprd/settings/SprdUsbSettings;->DBG:Z

    if-eqz v1, :cond_0

    .line 560
    const-string v1, "SprdUsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interSdcardState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isEmulated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->internalIsEmulated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    const-string v1, "removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bad_removal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->internalIsEmulated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    const/4 v1, 0x1

    .line 571
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSdcardAvailable()Z
    .locals 2

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getSdcardState()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "mSdcardState":Ljava/lang/String;
    const-string v1, "removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bad_removal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    const/4 v1, 0x1

    .line 544
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUmsAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-boolean v3, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbConnected:Z

    if-nez v3, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v2

    .line 512
    :cond_1
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isSdcardAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 513
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getSdcardState()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "mSdcardState":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unmounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    .end local v1    # "mSdcardState":Ljava/lang/String;
    :cond_2
    const-string v3, "mass_storage"

    invoke-virtual {p0}, Lcom/sprd/settings/SprdUsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    const/4 v2, 0x1

    goto :goto_0

    .line 518
    :cond_3
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isInternalSdcardAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getInternalSdcardState()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "mInternalSdcardState":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unmounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method private mountSuccess()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getSdcardState()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "mSdcardState":Ljava/lang/String;
    const-string v2, "removed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "bad_removal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v1

    .line 487
    :cond_1
    const-string v2, "mounted"

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getInternalSdcardState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private umsSuccess()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 464
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getSdcardState()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "mSdcardState":Ljava/lang/String;
    const-string v2, "removed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "bad_removal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "nofs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shared"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v1

    .line 470
    :cond_1
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isInternalSdcardAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "shared"

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getInternalSdcardState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 18
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 743
    sget-boolean v15, Lcom/sprd/settings/SprdUsbSettings;->DBG:Z

    if-eqz v15, :cond_0

    .line 744
    const-string v15, "SprdUsbSettings"

    const-string v16, "updateStatus"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v15, v15

    if-nez v15, :cond_1

    .line 746
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v15}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 747
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sprd/settings/SprdUsbSettings;->umsSuccess()Z

    move-result v7

    .line 748
    .local v7, "mMassStorageActive":Z
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbConnected:Z

    .line 749
    .local v11, "usbAvailable":Z
    const/4 v12, 0x0

    .line 750
    .local v12, "usbError":I
    move-object/from16 v1, p1

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v8, v1, v4

    .local v8, "o":Ljava/lang/Object;
    move-object v10, v8

    .line 751
    check-cast v10, Ljava/lang/String;

    .line 752
    .local v10, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v9, v2, v3

    .line 753
    .local v9, "regex":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 754
    const/4 v11, 0x1

    .line 755
    if-nez v12, :cond_2

    .line 756
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v15, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v12

    .line 752
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 750
    .end local v9    # "regex":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 761
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "o":Ljava/lang/Object;
    .end local v10    # "s":Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    .line 762
    .local v14, "usbTethered":Z
    move-object/from16 v1, p2

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v5, :cond_7

    aget-object v8, v1, v4

    .restart local v8    # "o":Ljava/lang/Object;
    move-object v10, v8

    .line 763
    check-cast v10, Ljava/lang/String;

    .line 764
    .restart local v10    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v6, :cond_6

    aget-object v9, v2, v3

    .line 765
    .restart local v9    # "regex":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 766
    const/4 v14, 0x1

    .line 764
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 762
    .end local v9    # "regex":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_2

    .line 769
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "o":Ljava/lang/Object;
    .end local v10    # "s":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    .line 770
    .local v13, "usbErrored":Z
    move-object/from16 v1, p3

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v5, :cond_a

    aget-object v8, v1, v4

    .restart local v8    # "o":Ljava/lang/Object;
    move-object v10, v8

    .line 771
    check-cast v10, Ljava/lang/String;

    .line 772
    .restart local v10    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_5
    if-ge v3, v6, :cond_9

    aget-object v9, v2, v3

    .line 773
    .restart local v9    # "regex":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 774
    const/4 v13, 0x1

    .line 772
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 770
    .end local v9    # "regex":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_4

    .line 778
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "o":Ljava/lang/Object;
    .end local v10    # "s":Ljava/lang/String;
    :cond_a
    sget-boolean v15, Lcom/sprd/settings/SprdUsbSettings;->DBG:Z

    if-eqz v15, :cond_b

    .line 779
    const-string v15, "SprdUsbSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateStatus usbTethered = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", usbAvailable = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", usbErrored = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", mMassStorageActive = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_b
    if-eqz v14, :cond_e

    .line 786
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0903ae

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    .line 801
    :goto_6
    if-eqz v14, :cond_13

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "current_function"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    const-string v15, "rndis"

    invoke-virtual/range {p0 .. p0}, Lcom/sprd/settings/SprdUsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 804
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "current_function"

    const/16 v17, 0x2

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 807
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/sprd/settings/SprdUsbSettings;->updateUI()V

    .line 815
    :cond_d
    :goto_7
    return-void

    .line 787
    :cond_e
    if-eqz v11, :cond_10

    .line 788
    if-nez v12, :cond_f

    .line 789
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0903ad

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 791
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0903b1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 793
    :cond_10
    if-eqz v13, :cond_11

    .line 794
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0903b1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 795
    :cond_11
    if-eqz v7, :cond_12

    .line 796
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0903af

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 799
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0903b0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 808
    :cond_13
    if-nez v13, :cond_14

    const-string v15, "mass_storage"

    invoke-virtual/range {p0 .. p0}, Lcom/sprd/settings/SprdUsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "current_function"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 811
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "current_function"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 813
    invoke-direct/range {p0 .. p0}, Lcom/sprd/settings/SprdUsbSettings;->updateUI()V

    goto :goto_7
.end method

.method private updateUI()V
    .locals 7

    .prologue
    const v6, 0x7f0903ad

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 576
    invoke-static {}, Lcom/sprd/settings/SprdUsbReceiver;->isPowerOff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/sprd/settings/SprdUsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "mCurrentfunction":Ljava/lang/String;
    const-string v1, "mtp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 584
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->disableAllUI()V

    .line 585
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 586
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 587
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 588
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 589
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 590
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 591
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 593
    :cond_2
    const-string v1, "ptp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 594
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->disableAllUI()V

    .line 595
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 596
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 597
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 598
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 599
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 600
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 601
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 605
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "current_function"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    .line 607
    const-string v1, "SprdUsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentfunction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selectedItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget v1, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    if-ne v2, v1, :cond_4

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 610
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 611
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 612
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 613
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 614
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 615
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 616
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 617
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 618
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 623
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 624
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 625
    :cond_4
    iget-boolean v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbConnected:Z

    if-eqz v1, :cond_b

    .line 626
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "remember_usb_choice"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mLastRememberStatus:Z

    .line 628
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mRememberChoice:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mLastRememberStatus:Z

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 629
    iget v1, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 631
    :pswitch_1
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 632
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 633
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090867

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 634
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 635
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 636
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 637
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 638
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 639
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090870

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 640
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 641
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 642
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f09035d

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 643
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 644
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 645
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f09035f

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 646
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isSdcardAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isInternalSdcardAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 647
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 651
    :goto_2
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 652
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f09086b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 626
    goto/16 :goto_1

    .line 649
    :cond_6
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/sprd/settings/SprdUsbSettings;->isTalking:Z

    if-nez v4, :cond_8

    const-string v4, "mounted"

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getSdcardState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "mounted"

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->getInternalSdcardState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_3

    .line 655
    :pswitch_2
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 656
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 657
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 658
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 659
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 660
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 661
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 662
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 663
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 664
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 665
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 666
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 669
    :pswitch_3
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 670
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 671
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 672
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 673
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 674
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 675
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 676
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 677
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 678
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 679
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 680
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 683
    :pswitch_4
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mRememberChoice:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 684
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isSdcardAvailable()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isInternalSdcardAvailable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 685
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 686
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 692
    :goto_4
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 694
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 695
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090868

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 697
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 698
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 699
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0903af

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 701
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 702
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 707
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 708
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 688
    :cond_9
    const-string v1, "SprdUsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "umsSuccess() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->umsSuccess()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/sprd/settings/SprdUsbSettings;->isTalking:Z

    if-nez v4, :cond_a

    :goto_5
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 690
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->umsSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    :cond_a
    move v2, v3

    .line 689
    goto :goto_5

    .line 713
    :cond_b
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->disableAllUI()V

    goto/16 :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private waitForState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 721
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    .line 723
    const-string v1, "sys.usb.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 727
    :goto_1
    return v1

    .line 724
    :cond_0
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_1
    const-string v1, "SprdUsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCurrentFunction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 831
    const-string v2, "sys.usb.config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "functions":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 833
    .local v0, "commaIndex":I
    if-lez v0, :cond_0

    .line 834
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 836
    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 238
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 239
    sget-boolean v1, Lcom/sprd/settings/SprdUsbSettings;->DBG:Z

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "SprdUsbSettings"

    const-string v2, "on Create"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    const v1, 0x7f050039

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 243
    const-string v1, "usb_charge_only"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    .line 244
    const-string v1, "usb_tether_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 245
    const-string v1, "usb_storage"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    .line 246
    const-string v1, "usb_virtual_drive"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    .line 247
    const-string v1, "remember_choice"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mRememberChoice:Landroid/preference/CheckBoxPreference;

    .line 249
    const-string v1, "usb_mtp"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 250
    const-string v1, "usb_ptp"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 252
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 253
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 254
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 256
    const-string v1, "usb"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 257
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 259
    const-string v1, "ro.device.support.cdrom"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "device":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    :cond_1
    new-instance v1, Lcom/sprd/settings/SprdUsbSettings$PowerDisconnectReceiver;

    invoke-direct {v1, p0, v4}, Lcom/sprd/settings/SprdUsbSettings$PowerDisconnectReceiver;-><init>(Lcom/sprd/settings/SprdUsbSettings;Lcom/sprd/settings/SprdUsbSettings$1;)V

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPowerDisconnectReceiver:Landroid/content/BroadcastReceiver;

    .line 265
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mPowerDisconnectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    new-instance v1, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;

    invoke-direct {v1, p0, v4}, Lcom/sprd/settings/SprdUsbSettings$UnlockReceiver;-><init>(Lcom/sprd/settings/SprdUsbSettings;Lcom/sprd/settings/SprdUsbSettings$1;)V

    iput-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/SprdUsbSettings;->mRememberChoice:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 389
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mPowerDisconnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 391
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 376
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 377
    iget-object v0, p0, Lcom/sprd/settings/SprdUsbSettings;->mUmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 378
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 397
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 398
    const/4 v7, 0x0

    .line 460
    :goto_0
    return v7

    .line 401
    :cond_0
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mRememberChoice:Landroid/preference/CheckBoxPreference;

    if-eq p2, v7, :cond_1

    .line 402
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->disableAllUI()V

    .line 411
    :cond_1
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mRememberChoice:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_3

    .line 412
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mRememberChoice:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    iput-boolean v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mLastRememberStatus:Z

    .line 413
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "remember_usb_choice"

    iget-boolean v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mLastRememberStatus:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    const/4 v7, 0x1

    goto :goto_0

    .line 413
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 417
    :cond_3
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_7

    .line 418
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    .line 419
    .local v4, "mUsbCharged":Z
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 420
    .local v6, "msg":Landroid/os/Message;
    if-eqz v4, :cond_5

    const/4 v7, 0x1

    :goto_2
    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 421
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 422
    const-string v7, "SprdUsbSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUsbCharged = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbChargeOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", msg.arg1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eqz v4, :cond_6

    const/4 v7, 0x1

    :goto_3
    iput v7, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    .line 458
    .end local v4    # "mUsbCharged":Z
    .end local v6    # "msg":Landroid/os/Message;
    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "current_function"

    iget v9, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 420
    .restart local v4    # "mUsbCharged":Z
    .restart local v6    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 424
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 425
    .end local v4    # "mUsbCharged":Z
    .end local v6    # "msg":Landroid/os/Message;
    :cond_7
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_b

    .line 426
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    .line 427
    .local v5, "mUsbTethered":Z
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 428
    .restart local v6    # "msg":Landroid/os/Message;
    if-eqz v5, :cond_8

    const/4 v7, 0x1

    :goto_5
    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 429
    iget-object v9, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_9

    const-wide/16 v7, 0x12c

    :goto_6
    invoke-virtual {v9, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 430
    if-eqz v5, :cond_a

    const/4 v7, 0x2

    :goto_7
    iput v7, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    goto :goto_4

    .line 428
    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    .line 429
    :cond_9
    const-wide/16 v7, 0x0

    goto :goto_6

    .line 430
    :cond_a
    const/4 v7, 0x0

    goto :goto_7

    .line 431
    .end local v5    # "mUsbTethered":Z
    .end local v6    # "msg":Landroid/os/Message;
    :cond_b
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_e

    .line 432
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    .line 433
    .local v3, "mUmsSelected":Z
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 434
    .restart local v6    # "msg":Landroid/os/Message;
    if-eqz v3, :cond_c

    const/4 v7, 0x1

    :goto_8
    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 435
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 436
    const-string v7, "SprdUsbSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UMS = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sprd/settings/SprdUsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", msg.arg1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-eqz v3, :cond_d

    const/4 v7, 0x4

    :goto_9
    iput v7, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    goto/16 :goto_4

    .line 434
    :cond_c
    const/4 v7, 0x0

    goto :goto_8

    .line 438
    :cond_d
    const/4 v7, 0x0

    goto :goto_9

    .line 439
    .end local v3    # "mUmsSelected":Z
    .end local v6    # "msg":Landroid/os/Message;
    :cond_e
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_12

    .line 440
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mCdrom:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 441
    .local v0, "mCdromSelected":Z
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 442
    .restart local v6    # "msg":Landroid/os/Message;
    if-eqz v0, :cond_f

    const/4 v7, 0x1

    :goto_a
    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 443
    iget-object v9, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    const-wide/16 v7, 0x1f4

    :goto_b
    invoke-virtual {v9, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 444
    if-eqz v0, :cond_11

    const/4 v7, 0x3

    :goto_c
    iput v7, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    goto/16 :goto_4

    .line 442
    :cond_f
    const/4 v7, 0x0

    goto :goto_a

    .line 443
    :cond_10
    const-wide/16 v7, 0x0

    goto :goto_b

    .line 444
    :cond_11
    const/4 v7, 0x0

    goto :goto_c

    .line 445
    .end local v0    # "mCdromSelected":Z
    .end local v6    # "msg":Landroid/os/Message;
    :cond_12
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_15

    .line 446
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 447
    .local v1, "mMtpSelected":Z
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 448
    .restart local v6    # "msg":Landroid/os/Message;
    if-eqz v1, :cond_13

    const/4 v7, 0x1

    :goto_d
    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 449
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 450
    if-eqz v1, :cond_14

    const/4 v7, 0x5

    :goto_e
    iput v7, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    goto/16 :goto_4

    .line 448
    :cond_13
    const/4 v7, 0x0

    goto :goto_d

    .line 450
    :cond_14
    const/4 v7, 0x0

    goto :goto_e

    .line 451
    .end local v1    # "mMtpSelected":Z
    .end local v6    # "msg":Landroid/os/Message;
    :cond_15
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_4

    .line 452
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 453
    .local v2, "mPtpSelected":Z
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 454
    .restart local v6    # "msg":Landroid/os/Message;
    if-eqz v2, :cond_16

    const/4 v7, 0x1

    :goto_f
    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 455
    iget-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 456
    if-eqz v2, :cond_17

    const/4 v7, 0x6

    :goto_10
    iput v7, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    goto/16 :goto_4

    .line 454
    :cond_16
    const/4 v7, 0x0

    goto :goto_f

    .line 456
    :cond_17
    const/4 v7, 0x0

    goto :goto_10
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 313
    sget-boolean v4, Lcom/sprd/settings/SprdUsbSettings;->DBG:Z

    if-eqz v4, :cond_0

    .line 314
    const-string v4, "SprdUsbSettings"

    const-string v5, "on Resume"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_function"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    .line 318
    iget v4, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    if-ne v4, v8, :cond_2

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isSdcardAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isInternalSdcardAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 319
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_function"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_1

    .line 322
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 323
    iput-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 325
    :cond_1
    iput v6, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    .line 330
    :cond_2
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    if-ne v4, v8, :cond_3

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->umsSuccess()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->umsSuccess()Z

    move-result v4

    if-nez v4, :cond_5

    .line 333
    :cond_4
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 334
    iput-object v7, p0, Lcom/sprd/settings/SprdUsbSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 337
    :cond_5
    iput-boolean v6, p0, Lcom/sprd/settings/SprdUsbSettings;->isTalking:Z

    .line 338
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 343
    const-string v4, "phone"

    invoke-static {v4, v1}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 345
    .local v2, "mTeleMgr":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_7

    .line 348
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sprd/settings/SprdUsbSettings;->isTalking:Z

    .line 353
    .end local v2    # "mTeleMgr":Landroid/telephony/TelephonyManager;
    :cond_6
    new-instance v4, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;

    invoke-direct {v4, p0, v7}, Lcom/sprd/settings/SprdUsbSettings$TetherChangeReceiver;-><init>(Lcom/sprd/settings/SprdUsbSettings;Lcom/sprd/settings/SprdUsbSettings$1;)V

    iput-object v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    new-instance v4, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;

    invoke-direct {v4, p0, v7}, Lcom/sprd/settings/SprdUsbSettings$UmsReceiver;-><init>(Lcom/sprd/settings/SprdUsbSettings;Lcom/sprd/settings/SprdUsbSettings$1;)V

    iput-object v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mUmsReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v3, "ums_filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v4, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v4, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v4, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lcom/sprd/settings/SprdUsbSettings;->mUmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 370
    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->updateUI()V

    .line 371
    return-void

    .line 338
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "ums_filter":Landroid/content/IntentFilter;
    .restart local v2    # "mTeleMgr":Landroid/telephony/TelephonyManager;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 285
    sget-boolean v1, Lcom/sprd/settings/SprdUsbSettings;->DBG:Z

    if-eqz v1, :cond_0

    .line 286
    const-string v1, "SprdUsbSettings"

    const-string v2, "on onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remember_usb_choice"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_function"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    .line 296
    iget v1, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isSdcardAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sprd/settings/SprdUsbSettings;->isInternalSdcardAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_function"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sprd/settings/SprdUsbSettings;->selectedItem:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 302
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 303
    iget-object v1, p0, Lcom/sprd/settings/SprdUsbSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 307
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 383
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 384
    return-void
.end method

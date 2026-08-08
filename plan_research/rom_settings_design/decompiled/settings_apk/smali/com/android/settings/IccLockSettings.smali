.class public Lcom/android/settings/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private isSimStandby:Z

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mCursorPosition:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogState:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mError:Ljava/lang/String;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mHandler:Landroid/os/Handler;

.field mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mListView:Landroid/widget/ListView;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRadioBusyObserver:Landroid/database/ContentObserver;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToState:Z

.field private times:I

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 112
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 126
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mDialog:Landroid/app/AlertDialog;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/IccLockSettings;->times:I

    .line 140
    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->isSimStandby:Z

    .line 151
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    new-instance v0, Lcom/android/settings/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTextWatcher:Landroid/text/TextWatcher;

    .line 705
    new-instance v0, Lcom/android/settings/IccLockSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 714
    new-instance v0, Lcom/android/settings/IccLockSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/IccLockSettings$5;-><init>(Lcom/android/settings/IccLockSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mRadioBusyObserver:Landroid/database/ContentObserver;

    .line 749
    new-instance v0, Lcom/android/settings/IccLockSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$6;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 764
    new-instance v0, Lcom/android/settings/IccLockSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$7;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 777
    new-instance v0, Lcom/android/settings/IccLockSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$8;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/settings/IccLockSettings;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->tm:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/IccLockSettings;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/IccLockSettings;)Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/IccLockSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/IccLockSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/IccLockSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/IccLockSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/IccLockSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->updatePreferences(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/IccLockSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isRadioBusy()Z

    move-result v0

    return v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09030d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-object v0

    .line 664
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0008

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 669
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09030e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private getRemainTimes()I
    .locals 3

    .prologue
    .line 484
    const/4 v0, -0x1

    .line 485
    .local v0, "remainTimes":I
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->tm:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getRemainTimes(I)I

    move-result v0

    .line 486
    return v0
.end method

.method private iccLockChanged(ZI)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x1

    .line 606
    if-eqz p1, :cond_2

    .line 607
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 608
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09097c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 622
    .end local v0    # "msg":Ljava/lang/String;
    :goto_1
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccLockChanged attemptsRemaining : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    if-eqz p2, :cond_0

    .line 624
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 626
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 627
    return-void

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09097d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 612
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private iccPinChanged(ZI)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 630
    if-nez p1, :cond_0

    .line 631
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 646
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 647
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 724
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isRadioBusy()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 729
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "radio_operation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isStandby(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_standby"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
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

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 677
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 678
    :cond_0
    const/4 v0, 0x0

    .line 680
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 686
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 687
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 688
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 690
    return-void
.end method

.method private setDialogValues()V
    .locals 9

    .prologue
    const v5, 0x7f090305

    .line 490
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 491
    const-string v0, ""

    .line 494
    .local v0, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090972

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "showInputMsg":Ljava/lang/String;
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v3, :pswitch_data_0

    .line 517
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->getRemainTimes()I

    move-result v1

    .line 518
    .local v1, "remainTimes":I
    if-ltz v1, :cond_0

    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0909a6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    :cond_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 526
    :cond_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 527
    return-void

    .line 497
    .end local v1    # "remainTimes":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0902ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090300

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090301

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 504
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090302

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 509
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090303

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 513
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090304

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 3

    .prologue
    .line 467
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 473
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->showPinDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    check-cast v1, Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mDialog:Landroid/app/AlertDialog;

    .line 474
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 475
    .local v0, "btn":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    .line 477
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 479
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 596
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 599
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 603
    .end local v0    # "callback":Landroid/os/Message;
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 652
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 657
    .end local v0    # "callback":Landroid/os/Message;
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 381
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isStandby : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    invoke-direct {p0, v2}, Lcom/android/settings/IccLockSettings;->isStandby(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->isStandby(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updatePreferences(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 735
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 739
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 204
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    const-string v7, "IccLockSettings"

    const-string v8, "oncreate"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 349
    :goto_0
    return-void

    .line 211
    :cond_0
    const v7, 0x7f050035

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 213
    const-string v7, "sim_pin"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/EditPinPreference;

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 214
    const-string v7, "sim_toggle"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "prevTabId":I
    if-eqz p1, :cond_1

    const-string v7, "dialogState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    const-string v7, "dialogState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 218
    const-string v7, "dialogPin"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 219
    const-string v7, "dialogError"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 220
    const-string v7, "enableState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 222
    const-string v7, "slotId"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 224
    const-string v7, "cursorPosition"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/IccLockSettings;->mCursorPosition:I

    .line 227
    iget v7, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v7, :pswitch_data_0

    .line 244
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v7, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 245
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/IccLockSettings;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    new-array v8, v13, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v8, v12

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 249
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "sub_id"

    invoke-virtual {v7, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    .line 252
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 254
    iget v7, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->tm:Landroid/telephony/TelephonyManager;

    .line 255
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 259
    const v7, 0x7f04003f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 261
    const v7, 0x1020012

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TabHost;

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    .line 262
    const v7, 0x1020013

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TabWidget;

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mTabWidget:Landroid/widget/TabWidget;

    .line 263
    const v7, 0x102000a

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mListView:Landroid/widget/ListView;

    .line 265
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 266
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/settings/IccLockSettings;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 269
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->setup()V

    .line 270
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 271
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 273
    invoke-static {p0}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v3

    .line 275
    .local v3, "sm":Landroid/sim/SimManager;
    invoke-virtual {v3}, Landroid/sim/SimManager;->getSims()[Landroid/sim/Sim;

    move-result-object v2

    .line 276
    .local v2, "sims":[Landroid/sim/Sim;
    const-string v7, "IccLockSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sims = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v7, v2

    if-ge v0, v7, :cond_5

    .line 278
    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->isStandby(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 279
    iput-boolean v13, p0, Lcom/android/settings/IccLockSettings;->isSimStandby:Z

    .line 277
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 229
    .end local v0    # "i":I
    .end local v2    # "sims":[Landroid/sim/Sim;
    .end local v3    # "sm":Landroid/sim/SimManager;
    :pswitch_0
    const-string v7, "oldPinCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto/16 :goto_1

    .line 233
    :pswitch_1
    const-string v7, "oldPinCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 234
    const-string v7, "newPinCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto/16 :goto_1

    .line 282
    .restart local v0    # "i":I
    .restart local v2    # "sims":[Landroid/sim/Sim;
    .restart local v3    # "sm":Landroid/sim/SimManager;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aget-object v7, v2, v0

    if-nez v7, :cond_4

    const v7, 0x7f0908d9

    new-array v10, v13, [Ljava/lang/Object;

    add-int/lit8 v11, v0, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7}, Lcom/android/settings/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 286
    iget-boolean v7, p0, Lcom/android/settings/IccLockSettings;->isSimStandby:Z

    if-eqz v7, :cond_2

    .line 287
    aget-object v7, v2, v0

    invoke-virtual {v7}, Landroid/sim/Sim;->getPhoneId()I

    move-result v7

    iput v7, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    .line 288
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    aget-object v8, v2, v0

    invoke-virtual {v8}, Landroid/sim/Sim;->getPhoneId()I

    move-result v8

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_3

    .line 282
    :cond_4
    aget-object v7, v2, v0

    invoke-virtual {v7}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 291
    :cond_5
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    .line 292
    .local v4, "tabWidget":Landroid/widget/TabWidget;
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 293
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 294
    .local v6, "view":Landroid/view/View;
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 295
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1060053

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 299
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    array-length v7, v2

    if-ne v7, v13, :cond_9

    .line 300
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    aget-object v8, v2, v12

    invoke-virtual {v8}, Landroid/sim/Sim;->getPhoneId()I

    move-result v8

    aget-object v7, v7, v8

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 302
    aget-object v7, v2, v12

    invoke-virtual {v7}, Landroid/sim/Sim;->getPhoneId()I

    move-result v7

    iput v7, p0, Lcom/android/settings/IccLockSettings;->mPhoneId:I

    .line 309
    :cond_7
    :goto_6
    if-lez v1, :cond_8

    .line 311
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 314
    :cond_8
    iput-boolean v12, p0, Lcom/android/settings/IccLockSettings;->isSimStandby:Z

    .line 319
    .end local v0    # "i":I
    .end local v2    # "sims":[Landroid/sim/Sim;
    .end local v3    # "sm":Landroid/sim/SimManager;
    .end local v4    # "tabWidget":Landroid/widget/TabWidget;
    :goto_7
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 320
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    .line 323
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/IccLockSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v13, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 326
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "radio_operation"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/IccLockSettings;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v13, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 332
    new-instance v7, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v7, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 333
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v7}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 334
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v8, 0x7f020039

    invoke-virtual {v7, v8}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(I)V

    .line 335
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v8, 0x7f090001

    invoke-virtual {v7, v8}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(I)V

    .line 336
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v8, 0x7f020058

    invoke-virtual {v7, v8}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 337
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v8, 0x7f090002

    invoke-virtual {v7, v8}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    goto/16 :goto_0

    .line 304
    .restart local v0    # "i":I
    .restart local v2    # "sims":[Landroid/sim/Sim;
    .restart local v3    # "sm":Landroid/sim/SimManager;
    .restart local v4    # "tabWidget":Landroid/widget/TabWidget;
    :cond_9
    iget-boolean v7, p0, Lcom/android/settings/IccLockSettings;->isSimStandby:Z

    if-nez v7, :cond_7

    .line 305
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    aget-object v7, v7, v1

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_6

    .line 316
    .end local v0    # "i":I
    .end local v2    # "sims":[Landroid/sim/Sim;
    .end local v3    # "sm":Landroid/sim/SimManager;
    .end local v4    # "tabWidget":Landroid/widget/TabWidget;
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_7

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 743
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 744
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 745
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 746
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const v3, 0x7f090002

    const v2, 0x7f020058

    .line 811
    if-eqz p2, :cond_4

    .line 812
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 813
    .local v0, "selectedItem":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_2

    .line 815
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 817
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1, v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 835
    .end local v0    # "selectedItem":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 819
    .restart local v0    # "selectedItem":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    goto :goto_0

    .line 821
    :cond_2
    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 824
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 825
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1, v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    goto :goto_0

    .line 827
    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    goto :goto_0

    .line 832
    .end local v0    # "selectedItem":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 833
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1, v3}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 695
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 696
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 697
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 698
    const/4 v1, 0x1

    .line 700
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 428
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 429
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 430
    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 530
    if-nez p2, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 571
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 539
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 542
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 544
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 547
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 548
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 549
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 550
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 551
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 554
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 555
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 556
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 557
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 560
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090307

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 562
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 563
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 564
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 566
    :cond_2
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 567
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 574
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 576
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 578
    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 579
    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 580
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    :cond_0
    move v3, v2

    .line 588
    :goto_1
    return v3

    :cond_1
    move v1, v3

    .line 578
    goto :goto_0

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p2, v1, :cond_0

    .line 582
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 583
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->showPinDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    check-cast v1, Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mDialog:Landroid/app/AlertDialog;

    .line 584
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 585
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 404
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 407
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_3

    .line 408
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 410
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mCursorPosition:I

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/IccLockSettings;->mCursorPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 412
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mCursorPosition:I

    .line 420
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isRadioBusy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/IccLockSettings;->updatePreferences(Z)V

    .line 424
    :cond_2
    return-void

    .line 416
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 448
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

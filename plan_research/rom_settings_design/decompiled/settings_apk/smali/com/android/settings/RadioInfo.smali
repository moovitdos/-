.class public Lcom/android/settings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RadioInfo$23;,
        Lcom/android/settings/RadioInfo$RadioInteraction;,
        Lcom/android/settings/RadioInfo$CellInfoListRateHandler;
    }
.end annotation


# instance fields
.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private cellInfoListRateButton:Landroid/widget/Button;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private ipb:Lcom/android/internal/telephony/IIccPhoneBook;

.field private isSupportLTE:Z

.field private isSupportTDD:Z

.field private isUsim:Z

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoListRateHandler:Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

.field private mCellInfoValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mCurrentRadioCapbility:Landroid/telephony/TelephonyManager$RadioCapbility;

.field private mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

.field private mDefaultPhoneId:I

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mFirstCreate:Z

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field private mPreferredNetworkCsfbLabels:[Ljava/lang/String;

.field private mPreferredNetworkFddLabels:[Ljava/lang/String;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field private mPreferredNetworkSvLteLabels:[Ljava/lang/String;

.field private mPreferredNetworkTddLabels:[Ljava/lang/String;

.field private mPreferredNetworkTddUsimLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mSharePref:Landroid/content/SharedPreferences;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mUiThread:Landroid/os/Handler;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;

.field private valueIndex:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    const-string v0, "persist.radio.ssda.mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "tdd-csfb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RadioInfo;->isSupportTDD:Z

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mUiThread:Landroid/os/Handler;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 172
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->isUsim:Z

    .line 177
    const-string v0, "persist.radio.ssda.mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "svlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.radio.ssda.mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "tdd-csfb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.radio.ssda.mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "fdd-csfb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.radio.ssda.mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "csfb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/RadioInfo;->isSupportLTE:Z

    .line 181
    iput v1, p0, Lcom/android/settings/RadioInfo;->valueIndex:I

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/RadioInfo;->mDefaultPhoneId:I

    .line 184
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->mFirstCreate:Z

    .line 187
    new-instance v0, Lcom/android/settings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$1;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 225
    new-instance v0, Lcom/android/settings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$2;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 963
    new-instance v0, Lcom/android/settings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$7;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 978
    new-instance v0, Lcom/android/settings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$8;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 995
    new-instance v0, Lcom/android/settings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$9;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1011
    new-instance v0, Lcom/android/settings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$10;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1018
    new-instance v0, Lcom/android/settings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$11;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1027
    new-instance v0, Lcom/android/settings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$12;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1047
    new-instance v0, Lcom/android/settings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$13;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 1072
    new-instance v0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

    .line 1076
    new-instance v0, Lcom/android/settings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$14;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 1102
    new-instance v0, Lcom/android/settings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$15;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 1127
    new-instance v0, Lcom/android/settings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$16;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 1150
    new-instance v0, Lcom/android/settings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$17;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1157
    new-instance v0, Lcom/android/settings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$18;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1170
    new-instance v0, Lcom/android/settings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$19;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1176
    new-instance v0, Lcom/android/settings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$20;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1184
    new-instance v0, Lcom/android/settings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$21;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1190
    new-instance v0, Lcom/android/settings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$22;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1258
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "WCDMA preferred"

    aput-object v3, v0, v1

    const-string v3, "GSM only"

    aput-object v3, v0, v2

    const-string v3, "WCDMA only"

    aput-object v3, v0, v5

    const-string v3, "GSM auto (PRL)"

    aput-object v3, v0, v6

    const-string v3, "CDMA auto (PRL)"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "CDMA only"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "EvDo only"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "GSM/CDMA auto (PRL)"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "LTE/CDMA auto (PRL)"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "LTE/GSM auto (PRL)"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "LTE/GSM/CDMA auto (PRL)"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "LTE only"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "Unknown"

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    .line 1273
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "TD-LTE/TD/GSM CSFB Multimode"

    aput-object v3, v0, v1

    const-string v3, "TD-LTE Singlemode"

    aput-object v3, v0, v2

    const-string v3, "GSM Singlemode"

    aput-object v3, v0, v5

    const-string v3, "TD Singlemode"

    aput-object v3, v0, v6

    const-string v3, "TG Dualmode"

    aput-object v3, v0, v7

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTddUsimLabels:[Ljava/lang/String;

    .line 1280
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "TD-LTE/TD/GSM CSFB Multimode"

    aput-object v3, v0, v1

    const-string v3, "GSM Singlemode"

    aput-object v3, v0, v2

    const-string v3, "TD Singlemode"

    aput-object v3, v0, v5

    const-string v3, "TG Dualmode"

    aput-object v3, v0, v6

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTddLabels:[Ljava/lang/String;

    .line 1286
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "LTE FDD/W/GSM CSFB Multimode"

    aput-object v3, v0, v1

    const-string v3, "TD-LTE/W/GSM CSFB Multimode"

    aput-object v3, v0, v2

    const-string v3, "TD-LTE Singlemode"

    aput-object v3, v0, v5

    const-string v3, "LTE FDD Singlemode"

    aput-object v3, v0, v6

    const-string v3, "TD-LTE/LTE FDD Multimode"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "TD-LTE/LTE FDD/W/GSM CSFB Multimode"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "GSM Singlemode"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "W Singlemode"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "WG Dualmode"

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkFddLabels:[Ljava/lang/String;

    .line 1297
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "SVLTE"

    aput-object v3, v0, v1

    const-string v3, "GSM Singlemode"

    aput-object v3, v0, v2

    const-string v3, "TD Singlemode"

    aput-object v3, v0, v5

    const-string v3, "WG Dualmode"

    aput-object v3, v0, v6

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkSvLteLabels:[Ljava/lang/String;

    .line 1303
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "TD-LTE Single-mode"

    aput-object v3, v0, v1

    const-string v1, "LTE FDD Single-mode"

    aput-object v1, v0, v2

    const-string v1, "TD-LTE/LTE FDD Dual-mode"

    aput-object v1, v0, v5

    const-string v1, "TD-LTE/LTE FDD/GSM Multi-mode"

    aput-object v1, v0, v6

    const-string v1, "GSM Single-mode"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkCsfbLabels:[Ljava/lang/String;

    .line 1559
    return-void

    :cond_1
    move v0, v1

    .line 177
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings/RadioInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/settings/RadioInfo;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCellInfoListRate()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->mFirstCreate:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mFirstCreate:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->isSupportLTE:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioCapbility;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioCapbility:Landroid/telephony/TelephonyManager$RadioCapbility;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/settings/RadioInfo;Landroid/telephony/TelephonyManager$RadioCapbility;)Landroid/telephony/TelephonyManager$RadioCapbility;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/TelephonyManager$RadioCapbility;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioCapbility:Landroid/telephony/TelephonyManager$RadioCapbility;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager$RadioFeatures;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/settings/RadioInfo;Landroid/telephony/TelephonyManager$RadioFeatures;)Landroid/telephony/TelephonyManager$RadioFeatures;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/TelephonyManager$RadioFeatures;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/CellLocation;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/settings/RadioInfo;Landroid/telephony/TelephonyManager$RadioCapbility;I)Landroid/telephony/TelephonyManager$RadioFeatures;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/TelephonyManager$RadioCapbility;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RadioInfo;->changeIndexToValue(Landroid/telephony/TelephonyManager$RadioCapbility;I)Landroid/telephony/TelephonyManager$RadioFeatures;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/settings/RadioInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/settings/RadioInfo;->valueIndex:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/settings/RadioInfo;Landroid/telephony/TelephonyManager$RadioCapbility;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/TelephonyManager$RadioCapbility;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RadioInfo;->retrievePrefIndex(Landroid/telephony/TelephonyManager$RadioCapbility;I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private changeIndexToValue(Landroid/telephony/TelephonyManager$RadioCapbility;I)Landroid/telephony/TelephonyManager$RadioFeatures;
    .locals 3
    .param p1, "radio"    # Landroid/telephony/TelephonyManager$RadioCapbility;
    .param p2, "setValueIndex"    # I

    .prologue
    .line 1430
    const/4 v0, 0x0

    .line 1431
    .local v0, "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    sget-object v2, Landroid/telephony/TelephonyManager$RadioCapbility;->TDD_SVLTE:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1432
    packed-switch p2, :pswitch_data_0

    :goto_0
    move-object v1, v0

    .line 1535
    .end local v0    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    .local v1, "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    :goto_1
    return-object v1

    .line 1434
    .end local v1    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    .restart local v0    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    :pswitch_0
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->SVLET:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1435
    goto :goto_0

    .line 1437
    :pswitch_1
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->GSM_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1438
    goto :goto_0

    .line 1440
    :pswitch_2
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1441
    goto :goto_0

    .line 1443
    :pswitch_3
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_AND_GSM:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_0

    .line 1447
    :cond_0
    sget-object v2, Landroid/telephony/TelephonyManager$RadioCapbility;->FDD_CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1448
    packed-switch p2, :pswitch_data_1

    :goto_2
    move-object v1, v0

    .line 1477
    .end local v0    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    .restart local v1    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    goto :goto_1

    .line 1450
    .end local v1    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    .restart local v0    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    :pswitch_4
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->LTE_FDD_AND_W_AND_GSM_CSFB:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1451
    goto :goto_2

    .line 1453
    :pswitch_5
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE_AND_W_AND_GSM_CSFB:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1454
    goto :goto_2

    .line 1456
    :pswitch_6
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1457
    goto :goto_2

    .line 1459
    :pswitch_7
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->LTE_FDD:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1460
    goto :goto_2

    .line 1462
    :pswitch_8
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE_AND_LTE_FDD:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1463
    goto :goto_2

    .line 1465
    :pswitch_9
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE_AND_LTE_FDD_AND_W_AND_GSM_CSFB:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1466
    goto :goto_2

    .line 1468
    :pswitch_a
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->GSM_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1469
    goto :goto_2

    .line 1471
    :pswitch_b
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->WCDMA_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1472
    goto :goto_2

    .line 1474
    :pswitch_c
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->WCDMA_AND_GSM:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_2

    .line 1478
    :cond_1
    sget-object v2, Landroid/telephony/TelephonyManager$RadioCapbility;->TDD_CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1479
    packed-switch p2, :pswitch_data_2

    :goto_3
    move-object v1, v0

    .line 1533
    .end local v0    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    .restart local v1    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    goto :goto_1

    .line 1481
    .end local v1    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    .restart local v0    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    :pswitch_d
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE_AND_TD_AND_GSM_CSFB:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1482
    goto :goto_3

    .line 1484
    :pswitch_e
    iget-boolean v2, p0, Lcom/android/settings/RadioInfo;->isSupportTDD:Z

    if-eqz v2, :cond_3

    .line 1485
    iget-boolean v2, p0, Lcom/android/settings/RadioInfo;->isUsim:Z

    if-eqz v2, :cond_2

    .line 1486
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_3

    .line 1488
    :cond_2
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->GSM_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_3

    .line 1491
    :cond_3
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1493
    goto :goto_3

    .line 1495
    :pswitch_f
    iget-boolean v2, p0, Lcom/android/settings/RadioInfo;->isSupportTDD:Z

    if-eqz v2, :cond_5

    .line 1496
    iget-boolean v2, p0, Lcom/android/settings/RadioInfo;->isUsim:Z

    if-eqz v2, :cond_4

    .line 1497
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->GSM_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_3

    .line 1499
    :cond_4
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_3

    .line 1502
    :cond_5
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->LTE_FDD:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1504
    goto :goto_3

    .line 1506
    :pswitch_10
    iget-boolean v2, p0, Lcom/android/settings/RadioInfo;->isSupportTDD:Z

    if-eqz v2, :cond_7

    .line 1507
    iget-boolean v2, p0, Lcom/android/settings/RadioInfo;->isUsim:Z

    if-eqz v2, :cond_6

    .line 1508
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_3

    .line 1510
    :cond_6
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_AND_GSM:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_3

    .line 1513
    :cond_7
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE_AND_LTE_FDD:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1515
    goto :goto_3

    .line 1517
    :pswitch_11
    iget-boolean v2, p0, Lcom/android/settings/RadioInfo;->isSupportTDD:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/settings/RadioInfo;->isUsim:Z

    if-eqz v2, :cond_8

    .line 1518
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_AND_GSM:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_3

    .line 1520
    :cond_8
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE_AND_LTE_FDD_AND_TD_AND_GSM_CSFB:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1522
    goto :goto_3

    .line 1524
    :pswitch_12
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->GSM_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1525
    goto :goto_3

    .line 1527
    :pswitch_13
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_ONLY:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 1528
    goto :goto_3

    .line 1530
    :pswitch_14
    sget-object v0, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_AND_GSM:Landroid/telephony/TelephonyManager$RadioFeatures;

    goto :goto_3

    :cond_9
    move-object v1, v0

    .line 1535
    .end local v0    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    .restart local v1    # "setRadioFeature":Landroid/telephony/TelephonyManager$RadioFeatures;
    goto/16 :goto_1

    .line 1432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1448
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1479
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private changeValueToIndex(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 1336
    .line 1337
    const-string v5, "svlte_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1338
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SVLET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return v0

    .line 1340
    :cond_1
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GSM_ONLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 1341
    goto :goto_0

    .line 1342
    :cond_2
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TD_ONLY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 1343
    goto :goto_0

    .line 1344
    :cond_3
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TD_AND_GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 1345
    goto :goto_0

    .line 1348
    :cond_4
    const-string v5, "fdd_csfb_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1349
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LTE_FDD_AND_W_AND_GSM_CSFB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1351
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TD_LTE_AND_W_AND_GSM_CSFB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    .line 1352
    goto :goto_0

    .line 1353
    :cond_5
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TD_LTE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v2

    .line 1354
    goto :goto_0

    .line 1355
    :cond_6
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LTE_FDD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v3

    .line 1356
    goto :goto_0

    .line 1357
    :cond_7
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TD_LTE_AND_LTE_FDD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v4

    .line 1358
    goto/16 :goto_0

    .line 1359
    :cond_8
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TD_LTE_AND_LTE_FDD_AND_W_AND_GSM_CSFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1361
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1362
    :cond_9
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM_ONLY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1363
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 1364
    :cond_a
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WCDMA_ONLY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1365
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 1366
    :cond_b
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WCDMA_AND_GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 1370
    :cond_c
    const-string v5, "tdd_csfb_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1371
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TD_LTE_AND_TD_AND_GSM_CSFB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1373
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TD_LTE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v0, v1

    .line 1374
    goto/16 :goto_0

    .line 1375
    :cond_d
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LTE_FDD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v0, v2

    .line 1376
    goto/16 :goto_0

    .line 1377
    :cond_e
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TD_LTE_AND_LTE_FDD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v0, v3

    .line 1378
    goto/16 :goto_0

    .line 1379
    :cond_f
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TD_LTE_AND_LTE_FDD_AND_TD_AND_GSM_CSFB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v0, v4

    .line 1381
    goto/16 :goto_0

    .line 1382
    :cond_10
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GSM_ONLY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1383
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->isSupportTDD:Z

    if-eqz v0, :cond_12

    .line 1384
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->isUsim:Z

    if-eqz v0, :cond_11

    move v0, v2

    .line 1385
    goto/16 :goto_0

    :cond_11
    move v0, v1

    .line 1387
    goto/16 :goto_0

    .line 1390
    :cond_12
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1392
    :cond_13
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TD_ONLY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1393
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->isSupportTDD:Z

    if-eqz v0, :cond_15

    .line 1394
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->isUsim:Z

    if-eqz v0, :cond_14

    move v0, v3

    .line 1395
    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 1397
    goto/16 :goto_0

    .line 1400
    :cond_15
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 1402
    :cond_16
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TD_AND_GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1403
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->isSupportTDD:Z

    if-eqz v0, :cond_18

    .line 1404
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->isUsim:Z

    if-eqz v0, :cond_17

    move v0, v4

    .line 1405
    goto/16 :goto_0

    :cond_17
    move v0, v3

    .line 1407
    goto/16 :goto_0

    .line 1410
    :cond_18
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 1413
    :cond_19
    const-string v5, "csfb_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1414
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TD_LTE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1416
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LTE_FDD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v0, v1

    .line 1417
    goto/16 :goto_0

    .line 1418
    :cond_1a
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TD_LTE_AND_LTE_FDD"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v0, v2

    .line 1419
    goto/16 :goto_0

    .line 1420
    :cond_1b
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TD_LTE_AND_LTE_FDD_AND_GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move v0, v3

    .line 1421
    goto/16 :goto_0

    .line 1422
    :cond_1c
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM_ONLY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 1423
    goto/16 :goto_0
.end method

.method private httpClientTest()V
    .locals 4

    .prologue
    .line 856
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 858
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://www.google.com"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 860
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 861
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 865
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 869
    :goto_1
    return-void

    .line 863
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail: Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 1089
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 1139
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    .prologue
    .line 1114
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1311
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return-void
.end method

.method private final pingHostname()V
    .locals 2

    .prologue
    .line 836
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 838
    if-nez v0, :cond_0

    .line 839
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 850
    :goto_0
    return-void

    .line 841
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 845
    :catch_1
    move-exception v0

    .line 846
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 847
    :catch_2
    move-exception v0

    .line 848
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 4

    .prologue
    .line 816
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 817
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 819
    if-nez v0, :cond_0

    .line 820
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 829
    :goto_0
    return-void

    .line 822
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 826
    :catch_1
    move-exception v0

    .line 827
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 873
    return-void
.end method

.method private retrievePrefIndex(Landroid/telephony/TelephonyManager$RadioCapbility;I)V
    .locals 3
    .param p1, "radio"    # Landroid/telephony/TelephonyManager$RadioCapbility;
    .param p2, "lastValueIndex"    # I

    .prologue
    .line 1315
    if-nez p1, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v1, p2}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1319
    sget-object v1, Landroid/telephony/TelephonyManager$RadioCapbility;->TDD_SVLTE:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1320
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1321
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "svlte_key"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1322
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1323
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager$RadioCapbility;->FDD_CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1324
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1325
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "fdd_csfb_key"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1327
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager$RadioCapbility;->TDD_CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1329
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "tdd_csfb_key"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setSoftKey()V
    .locals 2

    .prologue
    .line 484
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 485
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 486
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(I)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(I)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHelperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 500
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    return-void
.end method

.method private updateCellInfoListRate()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v2}, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->getRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    .line 558
    return-void
.end method

.method private final updateCellInfoTv(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 651
    const/4 v0, 0x0

    .line 652
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 653
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 658
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v1, v0

    goto :goto_0

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    return-void
.end method

.method private final updateDataState()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 731
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 732
    const v0, 0x7f09002e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 734
    packed-switch v1, :pswitch_data_0

    .line 749
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    return-void

    .line 736
    :pswitch_0
    const v0, 0x7f09002c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 739
    :pswitch_1
    const v0, 0x7f09002b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 742
    :pswitch_2
    const v0, 0x7f09002a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :pswitch_3
    const v0, 0x7f09002d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 2

    .prologue
    .line 778
    const-string v0, "net.gsm.radio-reset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    const-string v0, "net.gsm.attempt-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    const-string v0, "net.gsm.succeed-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    const-string v0, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    return-void
.end method

.method private final updateDataStats2()V
    .locals 12

    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 797
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 798
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 799
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 800
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    .line 802
    const v9, 0x7f09002f

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 803
    const v10, 0x7f090030

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v10, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    return-void

    .line 561
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 2

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsRegRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1094
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    return-void

    .line 1094
    :cond_0
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 592
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 593
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 594
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 595
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 596
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 597
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090033

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v8, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f090034

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    :goto_2
    return-void

    .line 597
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 602
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 603
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 604
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 605
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 606
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 607
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 608
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 609
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v8, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "SID = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_4

    const-string v0, "unknown"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_5

    const-string v0, "unknown"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v3, v8, :cond_6

    const-string v0, "unknown"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LONG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v4, v8, :cond_7

    const-string v0, "unknown"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 624
    :cond_8
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 2

    .prologue
    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1144
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    return-void

    .line 1144
    :cond_0
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    if-eqz p1, :cond_2

    .line 634
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    const-string v0, "no neighboring cells"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    return-void

    .line 637
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 638
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 642
    :cond_2
    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 3

    .prologue
    .line 753
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 754
    const-string v1, "gsm.network.type"

    const v2, 0x7f09002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    return-void
.end method

.method private final updatePdpList()V
    .locals 2

    .prologue
    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    return-void
.end method

.method private final updatePhoneState()V
    .locals 4

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 710
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 711
    const v0, 0x7f09002e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    sget-object v3, Lcom/android/settings/RadioInfo$23;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 725
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    return-void

    .line 715
    :pswitch_0
    const v0, 0x7f090027

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 718
    :pswitch_1
    const v0, 0x7f090028

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 721
    :pswitch_2
    const v0, 0x7f090029

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 3

    .prologue
    const v2, 0x7f09002e

    .line 876
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 878
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 879
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 880
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 882
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    new-instance v1, Lcom/android/settings/RadioInfo$3;

    invoke-direct {v1, p0}, Lcom/android/settings/RadioInfo$3;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 893
    new-instance v2, Lcom/android/settings/RadioInfo$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/RadioInfo$4;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 900
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 902
    new-instance v2, Lcom/android/settings/RadioInfo$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/RadioInfo$5;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 909
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 911
    new-instance v2, Lcom/android/settings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/RadioInfo$6;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 918
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 919
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    return-void

    .line 549
    :cond_0
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f09002e

    .line 763
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 765
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 766
    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 767
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 771
    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 772
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    return-void
.end method

.method private final updateServiceState()V
    .locals 4

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 679
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 680
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 681
    const v0, 0x7f09002e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 683
    packed-switch v2, :pswitch_data_0

    .line 696
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f090025

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 704
    :goto_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    return-void

    .line 685
    :pswitch_0
    const v0, 0x7f090021

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 689
    :pswitch_1
    const v0, 0x7f090023

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 692
    :pswitch_2
    const v0, 0x7f090024

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 569
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 570
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 572
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 579
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 581
    :cond_2
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v2

    .line 583
    if-ne v4, v2, :cond_3

    .line 585
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f090031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090032

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private updateSmsOverImsState()V
    .locals 2

    .prologue
    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1122
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    return-void

    .line 1119
    :cond_0
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x1090008

    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 296
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 297
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->setSoftKey()V

    .line 298
    const-string v0, "simphonebook"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ipb:Lcom/android/internal/telephony/IIccPhoneBook;

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ipb:Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ipb:Lcom/android/internal/telephony/IIccPhoneBook;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IIccPhoneBook;->isApplicationOnIcc(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RadioInfo;->isUsim:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 309
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 311
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->mDefaultPhoneId:I

    .line 313
    invoke-static {}, Landroid/telephony/TelephonyManager;->getRadioCapbility()Landroid/telephony/TelephonyManager$RadioCapbility;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioCapbility:Landroid/telephony/TelephonyManager$RadioCapbility;

    .line 314
    invoke-static {}, Landroid/telephony/TelephonyManager;->getRadioFeatures()Landroid/telephony/TelephonyManager$RadioFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    .line 315
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentRadioCapbility is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioCapbility:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentRadioFeatures is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioFeatures:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const v0, 0x7f0b0138

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    .line 320
    const v0, 0x7f0b0148

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f0b0142

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f0b0143

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f0b0144

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f0b0145

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->network:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f0b013e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 327
    const v0, 0x7f0b0146

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f0b0147

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 329
    const v0, 0x7f0b013f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 330
    const v0, 0x7f0b0140

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0b0141

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f0b0149

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0b014a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 335
    const v0, 0x7f0b014b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f0b014c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 337
    const v0, 0x7f0b014f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 338
    const v0, 0x7f0b014d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f0b014e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    .line 340
    const v0, 0x7f0b0159

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 341
    const v0, 0x7f0b015b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 343
    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 348
    const/4 v0, 0x0

    .line 349
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mSharePref:Landroid/content/SharedPreferences;

    .line 351
    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->isSupportLTE:Z

    if-eqz v1, :cond_7

    .line 352
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioCapbility:Landroid/telephony/TelephonyManager$RadioCapbility;

    sget-object v2, Landroid/telephony/TelephonyManager$RadioCapbility;->TDD_SVLTE:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    const-string v0, "svlte_key"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->changeValueToIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->valueIndex:I

    .line 354
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkSvLteLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 374
    :cond_1
    :goto_1
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportLTE:true; adapter.count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_2
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 381
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 384
    const v0, 0x7f0b0151

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 385
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v0, 0x7f0b0152

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    .line 388
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v0, 0x7f0b0153

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 391
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v0, 0x7f0b0154

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 394
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    const v0, 0x7f0b0155

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 397
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const v0, 0x7f0b013a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 400
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    const v0, 0x7f0b0157

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 402
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    const v0, 0x7f0b0158

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 404
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    const v0, 0x7f0b015a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 406
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const v0, 0x7f0b015c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 409
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 411
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 413
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 417
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 418
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 422
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->isSupportLTE:Z

    if-eqz v0, :cond_8

    .line 423
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->valueIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 430
    :goto_3
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 433
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 436
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mCellInfoValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 438
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 356
    :cond_3
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioCapbility:Landroid/telephony/TelephonyManager$RadioCapbility;

    sget-object v2, Landroid/telephony/TelephonyManager$RadioCapbility;->FDD_CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    const-string v0, "fdd_csfb_key"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->changeValueToIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->valueIndex:I

    .line 358
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkFddLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 360
    :cond_4
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioCapbility:Landroid/telephony/TelephonyManager$RadioCapbility;

    sget-object v2, Landroid/telephony/TelephonyManager$RadioCapbility;->TDD_CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 361
    const-string v0, "tdd_csfb_key"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->changeValueToIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->valueIndex:I

    .line 362
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->isUsim:Z

    if-eqz v0, :cond_5

    .line 363
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTddUsimLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 366
    :cond_5
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTddLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 369
    :cond_6
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCurrentRadioCapbility:Landroid/telephony/TelephonyManager$RadioCapbility;

    sget-object v2, Landroid/telephony/TelephonyManager$RadioCapbility;->CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const-string v0, "csfb_key"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->changeValueToIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->valueIndex:I

    .line 371
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkCsfbLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 376
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 378
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportLTE:false; adapter.count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 426
    :cond_8
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 504
    const v0, 0x7f0900cf

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 507
    const v0, 0x7f09001d

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 509
    const/4 v0, 0x2

    const v1, 0x7f09001e

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 511
    const/4 v0, 0x3

    const v1, 0x7f09001f

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 513
    const/4 v0, 0x4

    const v1, 0x7f090020

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 515
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 517
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 475
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 477
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 480
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 481
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 523
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 524
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 526
    const-string v3, "phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu:state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    packed-switch v0, :pswitch_data_0

    .line 537
    :pswitch_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 541
    return v1

    .line 531
    :pswitch_1
    const v0, 0x7f090900

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move v0, v1

    .line 532
    goto :goto_0

    .line 534
    :pswitch_2
    const v0, 0x7f0908ff

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move v0, v1

    .line 535
    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 444
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    .line 445
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSignalStrength()V

    .line 446
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    .line 447
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateServiceState()V

    .line 449
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 450
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    .line 451
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats()V

    .line 452
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    .line 453
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePowerState()V

    .line 454
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCellInfoListRate()V

    .line 455
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsRegRequiredState()V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSmsOverImsState()V

    .line 457
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateLteRamDumpState()V

    .line 458
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateProperties()V

    .line 459
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    .line 461
    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 464
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x4dc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 471
    return-void
.end method

.method public setRadioFeatures(Landroid/telephony/TelephonyManager$RadioFeatures;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1539
    .line 1540
    if-nez p1, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return v0

    .line 1543
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p0, p1}, Landroid/telephony/TelephonyManager;->switchRadioFeatures(Landroid/content/Context;Landroid/telephony/TelephonyManager$RadioFeatures;)I

    move-result v1

    .line 1545
    if-nez v1, :cond_0

    .line 1546
    const/4 v0, 0x1

    .line 1547
    sget-object v1, Landroid/telephony/TelephonyManager$RadioFeatures;->TD_LTE_AND_TD_AND_GSM_CSFB:Landroid/telephony/TelephonyManager$RadioFeatures;

    if-ne p1, v1, :cond_2

    .line 1548
    const-string v1, "persist.sys.cmccpolicy.disable"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1550
    :cond_2
    const-string v1, "persist.sys.cmccpolicy.disable"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/android/settings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings/DataUsageSummary$AppItem;,
        Lcom/android/settings/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings/DataUsageSummary$CycleItem;,
        Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;
    }
.end annotation


# static fields
.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private lastClickTime:J

.field private mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

.field private mAirReceiver:Landroid/content/BroadcastReceiver;

.field private mAirplane:Z

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/settings/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/settings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledView:Landroid/widget/RelativeLayout;

.field private mDataNotificationEnabled:Landroid/widget/Switch;

.field private mDataNotificationEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataNotificationEnabledView:Landroid/view/View;

.field private mDataUsageApp:Landroid/view/View;

.field private volatile mDataUsageReceive:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

.field private mDefaultPhoneId:I

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitView:Landroid/widget/RelativeLayout;

.field private mDisableAtLimitViewListener:Landroid/view/View$OnClickListener;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mInputTextWatcher:Landroid/text/TextWatcher;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mLimitEditorFragment:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Lcom/android/settings/ListViewForScrollView;

.field private mMenuAutoSync:Landroid/view/MenuItem;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNetworkRateManager:Lcom/sprd/settings/networkrate/NetworkRateManager;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mSimManager:Landroid/sim/SimManager;

.field private mSims:[Landroid/sim/Sim;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private mSubId:I

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;

.field private mWarningEditorFragment:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

.field private telephonyManager:[Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1828
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 242
    iput v0, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 278
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 279
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 284
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    .line 290
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 314
    iput v0, p0, Lcom/android/settings/DataUsageSummary;->mDefaultPhoneId:I

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/DataUsageSummary;->mSubId:I

    .line 336
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary;->lastClickTime:J

    .line 361
    new-instance v0, Lcom/android/settings/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$1;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 378
    new-instance v0, Lcom/android/settings/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$2;-><init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

    .line 454
    new-instance v0, Lcom/android/settings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$3;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAirReceiver:Landroid/content/BroadcastReceiver;

    .line 922
    new-instance v0, Lcom/android/settings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$5;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 950
    new-instance v0, Lcom/android/settings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$6;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1463
    new-instance v0, Lcom/android/settings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$7;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1486
    new-instance v0, Lcom/android/settings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$8;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitViewListener:Landroid/view/View$OnClickListener;

    .line 1513
    new-instance v0, Lcom/android/settings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$9;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1529
    new-instance v0, Lcom/android/settings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$10;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1539
    new-instance v0, Lcom/android/settings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$11;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1553
    new-instance v0, Lcom/android/settings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$12;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1670
    new-instance v0, Lcom/android/settings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$13;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1701
    new-instance v0, Lcom/android/settings/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$14;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1761
    new-instance v0, Lcom/android/settings/DataUsageSummary$15;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$15;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2547
    new-instance v0, Lcom/android/settings/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$16;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mInputTextWatcher:Landroid/text/TextWatcher;

    .line 3150
    new-instance v0, Lcom/android/settings/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$17;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private SetDataUsageViewChangedReceiver(Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;)V
    .locals 1
    .param p1, "changedReceive"    # Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataUsageReceive:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataUsageReceive:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataUsageReceive:Ljava/lang/ref/WeakReference;

    .line 349
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->getCurrentSimId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/DataUsageSummary;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/DataUsageSummary;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/android/settings/DataUsageSummary;->lastClickTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/settings/DataUsageSummary;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/android/settings/DataUsageSummary;->lastClickTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/DataUsageSummary;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/net/ChartData;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/ListViewForScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/ListViewForScrollView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataUsageApp:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$WarningEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mWarningEditorFragment:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mLimitEditorFragment:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;)Lcom/android/settings/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings/DataUsageSummary$AppItem;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DataUsageSummary;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget v0, p0, Lcom/android/settings/DataUsageSummary;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/DataUsageSummary;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/android/settings/DataUsageSummary;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/settings/DataUsageSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary;->mAirplane:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 852
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 856
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 857
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 939
    .local v3, "tab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary;->customizeTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 941
    .local v6, "newTab":Landroid/widget/TabHost$TabSpec;
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v6, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 942
    return-object v6
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 839
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 849
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 845
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 846
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 847
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 848
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9

    .prologue
    .line 1833
    .line 1835
    sget-object v8, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1836
    :try_start_0
    sget-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1837
    sget-object v1, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x20010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1839
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1751
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1752
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1753
    const-string v1, "test.subscriberid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1301
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 1302
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1303
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCurrentSimId(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1329
    .line 1330
    const-string v1, "mobile0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return v0

    .line 1332
    :cond_1
    const-string v1, "mobile1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1266
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1270
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1271
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    .line 1272
    const-string v3, "data_roaming"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1274
    :cond_0
    :goto_0
    return v0

    .line 1273
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getDataUsageCurrentTab(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2841
    if-nez p1, :cond_0

    .line 2842
    const-string v0, "mobile0"

    .line 2852
    :goto_0
    return-object v0

    .line 2843
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2844
    const-string v0, "mobile1"

    goto :goto_0

    .line 2846
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2847
    const-string v0, "wifi"

    goto :goto_0

    .line 2850
    :cond_2
    const-string v0, "mobile0"

    goto :goto_0
.end method

.method private getSubscriberId(I)Ljava/lang/String;
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 1757
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->telephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1758
    .local v0, "imsiId":Ljava/lang/String;
    return-object v0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2947
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2923
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 2924
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 2930
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    .line 2931
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2932
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    .line 2934
    :goto_0
    if-nez v4, :cond_0

    if-eqz v2, :cond_2

    .line 2935
    :cond_0
    :goto_1
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSim1CardExist:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "      isSim2CardExist:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    if-eqz v0, :cond_1

    .line 2937
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 2939
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 2934
    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2970
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2971
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2

    .prologue
    .line 3038
    const v0, 0x7f040027

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3040
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3041
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 3029
    const v0, 0x7f04005f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3030
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3032
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3033
    return-object v1
.end method

.method private initSim()V
    .locals 5

    .prologue
    .line 604
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 605
    .local v1, "phoneCount":I
    new-array v2, v1, [Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->telephonyManager:[Landroid/telephony/TelephonyManager;

    .line 606
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 607
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->telephonyManager:[Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "phone"

    invoke-static {v4, v0}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    aput-object v2, v3, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSimManager:Landroid/sim/SimManager;

    .line 611
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSimManager:Landroid/sim/SimManager;

    if-nez v2, :cond_1

    .line 615
    :goto_1
    return-void

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v2}, Landroid/sim/SimManager;->getSims()[Landroid/sim/Sim;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mSims:[Landroid/sim/Sim;

    goto :goto_1
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1261
    :goto_0
    return v0

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1211
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobileDataEnabled()--isMultiSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1215
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v1

    .line 1217
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabledByPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1222
    :cond_0
    :goto_0
    return v0

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1732
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1733
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1734
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1735
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1737
    .end local v1    # "tele":Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isMobileTab(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1322
    if-eqz p0, :cond_0

    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1252
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowInNotificationPanel()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3174
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_show_today_usage"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 4

    .prologue
    .line 1307
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppRestrictBackground(): restrictBackground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    if-nez v0, :cond_0

    .line 1319
    :goto_0
    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v1, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 1313
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    :goto_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 1313
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    const-string v0, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppRestrictBackground(): cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setDataRoaming(Z)V
    .locals 4

    .prologue
    .line 1283
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1286
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1287
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    .line 1288
    const-string v3, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$Global;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1292
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1293
    return-void

    .line 1288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 4

    .prologue
    .line 1226
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1227
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    .line 1231
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabled for phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",,dataPhoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    if-eqz p2, :cond_1

    .line 1234
    if-eq v0, p1, :cond_0

    .line 1235
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/TelephonyManager;->setDefaultDataPhoneId(Landroid/content/Context;I)Z

    .line 1237
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0908ef

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabledByPhoneId(IZ)V

    .line 1248
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1249
    return-void

    .line 1242
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabledByPhoneId(IZ)V

    goto :goto_0

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private setMobilePolicySplit(Z)V
    .locals 4
    .param p1, "split"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1743
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1744
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1745
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1746
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1748
    .end local v1    # "tele":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 2

    .prologue
    .line 1183
    const-string v0, "DataUsage"

    const-string v1, "setPolicyLimitBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1186
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2

    .prologue
    .line 1177
    const-string v0, "DataUsage"

    const-string v1, "setPolicyWarningBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1180
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3133
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3135
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3136
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 3119
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3120
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3121
    return-void
.end method

.method private static setPreferenceTitle(Landroid/widget/RelativeLayout;I)V
    .locals 1

    .prologue
    .line 3124
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3125
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3126
    return-void
.end method

.method private triggerTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataUsageReceive:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 354
    .local v0, "receive":Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;
    :goto_0
    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0, p1}, Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;->onDataUsageViewChanged(Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void

    .line 352
    .end local v0    # "receive":Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataUsageReceive:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;

    move-object v0, v1

    goto :goto_0
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1104
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1105
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1106
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1107
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1120
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2, v13}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1123
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v6, v2, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 1124
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v2, v6, v0}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v2

    .line 1125
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1127
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1128
    iget-object v7, v2, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 1129
    iget-object v7, v2, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 1130
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/settings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1115
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v13}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1174
    :goto_1
    return-void

    .line 1133
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/settings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1137
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 1138
    if-eqz v5, :cond_4

    array-length v2, v5

    if-lez v2, :cond_4

    .line 1139
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1140
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    array-length v7, v5

    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_6

    aget-object v8, v5, v2

    .line 1145
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1152
    :goto_3
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1153
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    .line 1162
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1164
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f090723

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1165
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f090724

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1168
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 1144
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1156
    :cond_4
    iput-object v13, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1157
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1172
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private updateBody()V
    .locals 10

    .prologue
    const v9, 0x7f090944

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 965
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 966
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    :goto_0
    return-void

    .line 968
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 969
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    .line 970
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    move v4, v3

    .line 972
    :goto_1
    if-nez v6, :cond_2

    .line 973
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/ListViewForScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v4, v1

    .line 970
    goto :goto_1

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/ListViewForScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 981
    :cond_3
    iput-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 982
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 983
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkRateManager:Lcom/sprd/settings/networkrate/NetworkRateManager;

    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/DataUsageSummary;->getCurrentSimId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/sprd/settings/networkrate/NetworkRateManager;->setSubId(I)V

    .line 987
    :cond_4
    const-string v0, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateBody() with currentTab="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isOwner="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mAirplane:Z

    if-nez v0, :cond_5

    move v0, v3

    :goto_2
    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 990
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mAirplane:Z

    if-nez v0, :cond_7

    move v0, v3

    :goto_4
    and-int/2addr v0, v4

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 993
    const-string v0, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAirplane ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/settings/DataUsageSummary;->mAirplane:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->getCurrentSimId(Ljava/lang/String;)I

    move-result v4

    .line 995
    invoke-direct {p0, v4}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 996
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mAirplane:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 997
    invoke-direct {p0, v3}, Lcom/android/settings/DataUsageSummary;->updateDateEnable(Z)V

    .line 1002
    :goto_7
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 1005
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1006
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    const v2, 0x7f09071f

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/widget/RelativeLayout;I)V

    .line 1007
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090714

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/widget/RelativeLayout;I)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    invoke-static {v0, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_standby"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_b

    move v0, v3

    .line 1015
    :goto_8
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDateEnable() phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bStandy= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updateDateEnable(Z)V

    .line 1019
    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->getCurrentSimId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 1064
    :goto_9
    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->triggerTabChanged(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-static {v3, v4}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1072
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1074
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 989
    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    move v0, v1

    .line 990
    goto/16 :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_5

    :cond_9
    move v0, v2

    .line 996
    goto/16 :goto_6

    .line 999
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_b
    move v0, v1

    .line 1012
    goto :goto_8

    .line 1023
    :cond_c
    const-string v0, "3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1024
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090720

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/widget/RelativeLayout;I)V

    .line 1025
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090716

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/widget/RelativeLayout;I)V

    .line 1026
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    invoke-static {v0, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1028
    invoke-direct {p0, v3}, Lcom/android/settings/DataUsageSummary;->updateDateEnable(Z)V

    .line 1030
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_9

    .line 1032
    :cond_d
    const-string v0, "4g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1033
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090721

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/widget/RelativeLayout;I)V

    .line 1034
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090715

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/widget/RelativeLayout;I)V

    .line 1035
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    invoke-static {v0, v9}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1037
    invoke-direct {p0, v3}, Lcom/android/settings/DataUsageSummary;->updateDateEnable(Z)V

    .line 1039
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_9

    .line 1041
    :cond_e
    const-string v0, "wifi"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1043
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->updateDateEnable(Z)V

    .line 1048
    invoke-static {}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->removeDialog()V

    .line 1049
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_9

    .line 1051
    :cond_f
    const-string v0, "ethernet"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1053
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->updateDateEnable(Z)V

    .line 1057
    invoke-static {}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->removeDialog()V

    .line 1058
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_9

    .line 1061
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 13

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 1390
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1392
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1394
    const-wide v4, 0x7fffffffffffffffL

    .line 1395
    const-wide/high16 v2, -0x8000000000000000L

    .line 1396
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v0, :cond_8

    .line 1400
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "data_usage_cycle_start"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1402
    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->getInspectStart(I)J

    move-result-wide v4

    .line 1403
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->getInspectEnd(J)J

    move-result-wide v2

    move-wide v11, v2

    move-wide v2, v4

    move-wide v4, v11

    .line 1407
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1408
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v2, v9

    if-nez v0, :cond_0

    move-wide v2, v7

    .line 1409
    :cond_0
    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v0, v4, v9

    if-nez v0, :cond_7

    const-wide/16 v4, 0x1

    add-long/2addr v7, v4

    .line 1411
    :goto_1
    const/4 v0, 0x0

    .line 1412
    if-eqz p1, :cond_2

    move-wide v4, v7

    .line 1418
    :goto_2
    cmp-long v9, v4, v2

    if-lez v9, :cond_1

    .line 1421
    const-string v0, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generating cs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to ce="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " waiting for hs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v9, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1425
    const/4 v0, 0x1

    move-wide v4, v2

    .line 1426
    goto :goto_2

    .line 1429
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1432
    :cond_2
    if-nez v0, :cond_4

    move-wide v4, v7

    .line 1435
    :goto_3
    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 1438
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 1440
    goto :goto_3

    .line 1441
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1445
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1446
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v6}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v3

    .line 1447
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 1452
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1453
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1461
    :goto_4
    return-void

    .line 1456
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_4

    .line 1459
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_4

    :cond_7
    move-wide v7, v4

    goto/16 :goto_1

    :cond_8
    move-wide v11, v2

    move-wide v2, v4

    move-wide v4, v11

    goto/16 :goto_0
.end method

.method private updateDateEnable(Z)V
    .locals 4

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->getCurrentSimId(Ljava/lang/String;)I

    move-result v0

    .line 1080
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->telephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->telephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 1082
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not ready,disable data button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/4 p1, 0x0

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1088
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1089
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1092
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1093
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabled:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1094
    return-void
.end method

.method private updateDetailData()V
    .locals 15

    .prologue
    .line 1592
    const-string v0, "DataUsage"

    const-string v1, "updateDetailData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_usage_cycle_start"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1599
    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->getInspectStart(I)J

    move-result-wide v1

    .line 1600
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/DataUsageSummary;->getInspectEnd(J)J

    move-result-wide v3

    .line 1602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1604
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1606
    const/4 v7, 0x0

    .line 1607
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1610
    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1611
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1612
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 1614
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/PieChartView;->setOriginAngle(I)V

    .line 1616
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->removeAllSlices()V

    .line 1617
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/settings/widget/PieChartView;->addSlice(JI)V

    .line 1618
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/settings/widget/PieChartView;->addSlice(JI)V

    .line 1620
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->generatePath()V

    .line 1622
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1623
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1628
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1630
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1643
    :goto_0
    if-eqz v7, :cond_3

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1644
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1645
    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 1646
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDetailData: rangePhrase "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1650
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    .line 1652
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ethernet"

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1653
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1654
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1668
    return-void

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v0, :cond_2

    .line 1634
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1636
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1639
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1643
    :cond_3
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 1656
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1660
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 9
    .param p1, "refreshCycle"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1350
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1351
    iput-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 1352
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/DataUsageSummary;->getCurrentSimId(Ljava/lang/String;)I

    move-result v0

    .line 1353
    .local v0, "currentPhoneId":I
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1354
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isShowInNotificationPanel()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1355
    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 1358
    .end local v0    # "currentPhoneId":I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 1359
    .local v1, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/DataUsageSummary;->getCurrentSimId(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1360
    iget-boolean v4, p0, Lcom/android/settings/DataUsageSummary;->mAirplane:Z

    if-nez v4, :cond_4

    .line 1361
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v1, :cond_3

    iget-wide v5, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1363
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1364
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1376
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 1378
    invoke-direct {p0, v1}, Lcom/android/settings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1380
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 1362
    goto :goto_0

    .line 1367
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1

    .line 1372
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1
.end method

.method private updateTabs()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 866
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 867
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 869
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 870
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "wifi"

    const v4, 0x7f090718

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 900
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 904
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 906
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    .line 910
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 917
    :cond_3
    :goto_2
    return-void

    .line 872
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v3

    .line 873
    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 874
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "3g"

    const v4, 0x7f09071c

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 875
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "4g"

    const v4, 0x7f09071b

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    .line 876
    :cond_5
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSimManager:Landroid/sim/SimManager;

    invoke-virtual {v0}, Landroid/sim/SimManager;->getSims()[Landroid/sim/Sim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSims:[Landroid/sim/Sim;

    move v0, v1

    .line 879
    :goto_3
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mSims:[Landroid/sim/Sim;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 880
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    .line 881
    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mSims:[Landroid/sim/Sim;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/sim/Sim;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_6

    .line 882
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile0"

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mSims:[Landroid/sim/Sim;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 884
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 885
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    .line 886
    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mSims:[Landroid/sim/Sim;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/sim/Sim;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 887
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile1"

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mSims:[Landroid/sim/Sim;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 879
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 908
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 911
    :cond_9
    if-eqz v1, :cond_3

    .line 913
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    goto/16 :goto_2
.end method


# virtual methods
.method public customizeTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "tab"    # Landroid/widget/TabHost$TabSpec;
    .param p4, "tabWidget"    # Landroid/widget/TabWidget;
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 947
    return-object p3
.end method

.method public getInspectEnd(J)J
    .locals 5

    .prologue
    .line 3207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3208
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3209
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 3210
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInspectEnd: num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    const-wide/32 v1, 0x5265c00

    add-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    mul-long v0, v1, v3

    add-long/2addr v0, p1

    .line 3212
    return-wide v0
.end method

.method public getInspectStart(I)J
    .locals 10
    .param p1, "cycleStart"    # I

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 3181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 3182
    .local v2, "startCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 3183
    .local v3, "year":I
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 3184
    .local v1, "month":I
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 3186
    .local v0, "dayOfMonth":I
    if-ge v0, p1, :cond_0

    .line 3187
    if-nez v1, :cond_1

    .line 3188
    invoke-virtual {v2, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 3189
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 3195
    :cond_0
    :goto_0
    invoke-virtual {v2, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 3196
    invoke-virtual {v2, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 3197
    const/16 v4, 0xd

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 3198
    const/16 v4, 0xc

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 3200
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4

    .line 3191
    :cond_1
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2982
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2983
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2986
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2988
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2999
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2991
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 2992
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2995
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 2999
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 391
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 392
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 394
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mLimitEditorFragment:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    .line 395
    new-instance v3, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mWarningEditorFragment:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    .line 397
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 399
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 401
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 402
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 404
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "data_usage"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 406
    new-instance v3, Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v3, v4}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    .line 407
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 410
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_wifi"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 426
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_ethernet"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 429
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 430
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 431
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 434
    :cond_1
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 436
    new-instance v3, Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-direct {v3, v0}, Lcom/sprd/settings/networkrate/NetworkRateManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkRateManager:Lcom/sprd/settings/networkrate/NetworkRateManager;

    .line 437
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkRateManager:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-direct {p0, v3}, Lcom/android/settings/DataUsageSummary;->SetDataUsageViewChangedReceiver(Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;)V

    .line 439
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 440
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAirReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 450
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_data_call"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 453
    return-void

    .line 414
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 421
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 422
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 660
    const/high16 v0, 0x7f100000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 661
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 475
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 476
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f040033

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 479
    .local v2, "view":Landroid/view/View;
    new-instance v3, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 483
    new-instance v3, Lcom/android/settings/net/UidDetailProvider;

    invoke-direct {v3, v0}, Lcom/android/settings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 485
    const v3, 0x1020012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 486
    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 487
    const v3, 0x1020013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 488
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ListViewForScrollView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/ListViewForScrollView;

    .line 492
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/ListViewForScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getScrollBarStyle()I

    move-result v3

    const/high16 v6, 0x2000000

    if-ne v3, v6, :cond_0

    move v1, v4

    .line 494
    .local v1, "shouldInset":Z
    :goto_0
    iput v5, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 497
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/ListViewForScrollView;

    invoke-static {p2, v2, v3, v5}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 499
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 500
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 502
    const v3, 0x7f0b006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    .line 503
    const v3, 0x7f0b0070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 504
    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    .line 505
    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 506
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    .line 509
    const v3, 0x7f0b0079

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabled:Landroid/widget/Switch;

    .line 510
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->initSim()V

    .line 525
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/DataUsageSummary;->mDefaultPhoneId:I

    .line 553
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkRateManager:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-virtual {v3, v2}, Lcom/sprd/settings/networkrate/NetworkRateManager;->initializeRateViews(Landroid/view/View;)V

    .line 557
    const v3, 0x7f0b0065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 558
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v6, 0x7f0b0066

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 559
    new-instance v3, Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {v3, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    .line 560
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 561
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 562
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v6, 0x7f0b0067

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 564
    const v3, 0x7f0b005c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/ChartDataUsageView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    .line 565
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/ChartDataUsageView;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 566
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 570
    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 571
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b0020

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 572
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b0069

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 573
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b006c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/PieChartView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    .line 574
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b006a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 575
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b006b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 576
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b006e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 578
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f0b006d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 579
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 582
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    .line 583
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 584
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v3, v5}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 585
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 586
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 587
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 591
    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 592
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 593
    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 594
    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataUsageApp:Landroid/view/View;

    .line 596
    new-instance v3, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    iget v5, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v3, v4, v5, p0}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/settings/net/UidDetailProvider;ILcom/android/settings/DataUsageSummary;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    .line 597
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/ListViewForScrollView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 598
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/ListViewForScrollView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 600
    return-object v2

    .end local v1    # "shouldInset":Z
    :cond_0
    move v1, v5

    .line 492
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 809
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/widget/RelativeLayout;

    .line 810
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/widget/RelativeLayout;

    .line 811
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataNotificationEnabledView:Landroid/view/View;

    .line 813
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    .line 814
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 816
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 818
    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 823
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAirReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 824
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 827
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 830
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 831
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 739
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v7, v6

    .line 804
    :goto_0
    return v7

    .line 741
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 742
    :goto_1
    if-eqz v0, :cond_1

    .line 743
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 741
    goto :goto_1

    .line 746
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->setDataRoaming(Z)V

    goto :goto_0

    .line 751
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 752
    :goto_2
    if-eqz v0, :cond_3

    .line 753
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 751
    goto :goto_2

    .line 756
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 761
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v6, v7

    .line 762
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 763
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 764
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 768
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v6, v7

    :cond_5
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 769
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_wifi"

    iget-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 770
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 771
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 775
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 776
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ethernet"

    iget-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 777
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 778
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 782
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 783
    const-class v1, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09073e

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 788
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    const-string v1, "sub_id"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->getCurrentSimId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 790
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 792
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 796
    :pswitch_7
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 797
    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 799
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    move v6, v7

    :cond_8
    invoke-static {p0, v6}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x7f0b0244
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 3142
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 3143
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkRateManager:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-virtual {v0}, Lcom/sprd/settings/networkrate/NetworkRateManager;->clean()V

    .line 3144
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 665
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 666
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v4

    .line 667
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 669
    :cond_0
    const v0, 0x7f0b0244

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 671
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 672
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getDataRoaming()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 674
    const v0, 0x7f0b0245

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 677
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 678
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 680
    const v0, 0x7f0b0247

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    .line 681
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 683
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 685
    const v0, 0x7f0b0246

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 687
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 688
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 690
    const v0, 0x7f0b0248

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 691
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 692
    if-nez v4, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 693
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 697
    :goto_1
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 699
    const v0, 0x7f0b0249

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 700
    invoke-virtual {p0, v3}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 701
    if-nez v4, :cond_4

    move v0, v1

    :goto_2
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 702
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 707
    :goto_3
    const v0, 0x7f0b024a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 708
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 709
    :cond_1
    if-nez v4, :cond_6

    move v0, v1

    :goto_4
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 713
    :goto_5
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 715
    const v0, 0x7f0b024b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 716
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v4, :cond_8

    :goto_6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 719
    const v0, 0x7f0b024c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 721
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0907bd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 722
    invoke-static {v3, v0, v1}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 726
    :goto_7
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    .line 727
    if-eqz v0, :cond_a

    .line 729
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(I)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(I)V

    .line 735
    :goto_8
    return-void

    :cond_2
    move v0, v2

    .line 692
    goto/16 :goto_0

    .line 695
    :cond_3
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 701
    goto :goto_2

    .line 704
    :cond_5
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_6
    move v0, v2

    .line 709
    goto :goto_4

    .line 711
    :cond_7
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_8
    move v1, v2

    .line 716
    goto :goto_6

    .line 724
    :cond_9
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 733
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    goto :goto_8
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 619
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 620
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mAirplane:Z

    .line 623
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkRateManager:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-virtual {v0}, Lcom/sprd/settings/networkrate/NetworkRateManager;->resume()V

    .line 625
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 626
    const-string v2, "subId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DataUsageSummary;->mSubId:I

    .line 627
    const-string v0, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " receive mSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/DataUsageSummary;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget v0, p0, Lcom/android/settings/DataUsageSummary;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->getDataUsageCurrentTab(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 633
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    .line 636
    new-instance v0, Lcom/android/settings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$4;-><init>(Lcom/android/settings/DataUsageSummary;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 656
    return-void

    :cond_0
    move v0, v1

    .line 620
    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1297
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1298
    return-void
.end method

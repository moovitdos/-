.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Landroid/app/Fragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field helperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 135
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail$1;-><init>(Lcom/android/settings/fuelgauge/BatteryHistoryDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private getScreenMaxSize()I
    .locals 10

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 89
    .local v1, "activity":Landroid/app/Activity;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 92
    .local v2, "dispHeight":I
    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 95
    .local v3, "dispWidth":I
    if-ge v2, v3, :cond_0

    .line 96
    move v2, v3

    .line 100
    :cond_0
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 101
    .local v5, "heightValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x10102eb

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v5, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 102
    iget v7, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 106
    .local v0, "actionBarHeight":I
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 109
    .local v6, "statusBarHeight":I
    add-int v7, v0, v6

    sub-int v7, v2, v7

    return v7
.end method

.method private setSoftKey()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->helperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 116
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->helperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->helperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->helperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->helperBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(I)V

    .line 133
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "stats"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 55
    .local v1, "parcel":Landroid/os/Parcel;
    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 56
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    sget-object v2, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 63
    const v3, 0x7f040060

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->setSoftKey()V

    .line 66
    const v3, 0x1010002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 68
    .local v0, "chart":Lcom/android/settings/fuelgauge/BatteryHistoryChart;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;)V

    .line 70
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "scrollView":Landroid/widget/ScrollView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getScreenMaxSize()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 79
    return-object v1
.end method

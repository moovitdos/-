.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mHotspotEnabler:Lcom/android/settings/wifi/HotspotEnabler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mViewCache:[Landroid/view/View;

.field private mViewCacheSize:I

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p4, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    .line 865
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 808
    iput v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCacheSize:I

    .line 867
    iput-object p3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 868
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 869
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 875
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-direct {v1, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 876
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-direct {v1, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 877
    new-instance v0, Lcom/android/settings/wifi/HotspotEnabler;

    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-direct {v1, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/HotspotEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHotspotEnabler:Lcom/android/settings/wifi/HotspotEnabler;

    .line 879
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCacheSize:I

    .line 880
    iget v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCacheSize:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCache:[Landroid/view/View;

    .line 883
    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 884
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 5
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v0, 0x1

    .line 826
    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 827
    const/4 v0, 0x0

    .line 833
    :cond_0
    :goto_0
    return v0

    .line 830
    :cond_1
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b0233

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1033
    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1035
    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b023d

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1038
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1039
    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090661

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1043
    .local v0, "summary":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1044
    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    :goto_0
    return-void

    .line 1047
    :cond_1
    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public flushViewCache()Z
    .locals 2

    .prologue
    .line 888
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 890
    .local v0, "currentCount":I
    iput v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCacheSize:I

    .line 891
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCache:[Landroid/view/View;

    .line 892
    iget v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCacheSize:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCache:[Landroid/view/View;

    .line 893
    const/4 v1, 0x1

    return v1
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 839
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 840
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x8

    const v10, 0x7f0b003a

    const v9, 0x1020010

    const v8, 0x1020016

    const/4 v4, 0x0

    .line 901
    iget v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCacheSize:I

    if-lt p1, v6, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->flushViewCache()Z

    .line 906
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 907
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 908
    .local v2, "headerType":I
    const/4 v5, 0x0

    .line 910
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCache:[Landroid/view/View;

    aget-object p2, v6, p1

    .line 913
    if-nez p2, :cond_1

    .line 914
    new-instance v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 915
    .local v3, "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 960
    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 962
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mViewCache:[Landroid/view/View;

    aput-object v5, v6, p1

    .line 973
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1027
    :goto_2
    return-object v5

    .line 920
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040067

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 922
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 927
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040069

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 929
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 930
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 932
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 934
    const v6, 0x7f0b001f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 938
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040066

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 940
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 941
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 943
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 945
    const v6, 0x7f0b011e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 946
    const v6, 0x7f0b009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto :goto_0

    .line 950
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040068

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 953
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 954
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 956
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 965
    .end local v3    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_1
    move-object v5, p2

    .line 967
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 975
    :pswitch_4
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 980
    :pswitch_5
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0224

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 985
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 989
    :pswitch_6
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0233

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 990
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v0

    .line 991
    .local v0, "hasCert":Z
    if-eqz v0, :cond_7

    .line 992
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 993
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v6, :cond_3

    .line 996
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/app/admin/DevicePolicyManager;->create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 999
    :cond_3
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    .line 1000
    .local v4, "isManaged":Z
    :cond_4
    if-eqz v4, :cond_6

    .line 1001
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x7f020091

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1006
    :goto_3
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/settings/Settings$HeaderAdapter$1;

    invoke-direct {v7, p0}, Lcom/android/settings/Settings$HeaderAdapter$1;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    .end local v0    # "hasCert":Z
    .end local v4    # "isManaged":Z
    :cond_5
    :goto_4
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1003
    .restart local v0    # "hasCert":Z
    .restart local v4    # "isManaged":Z
    :cond_6
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x1080078

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1015
    .end local v4    # "isManaged":Z
    :cond_7
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1016
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1023
    .end local v0    # "hasCert":Z
    :pswitch_7
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 973
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1067
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1068
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1062
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1063
    return-void
.end method

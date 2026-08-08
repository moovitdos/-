.class public Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;
.super Landroid/app/Activity;
.source "WifiConnectionPolicyDialogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$UpdateHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field cancelListener:Landroid/view/View$OnClickListener;

.field private mCancel:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDialogType:I

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Landroid/widget/TextView;

.field private mOK:Landroid/widget/Button;

.field private mSsidName:Ljava/lang/String;

.field private mSsidNameArrary:[Ljava/lang/String;

.field private mSsidNetworkId:I

.field private mSsidNetworkIdArrary:[I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field okListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 51
    iput v1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mDialogType:I

    .line 52
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidName:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkId:I

    .line 54
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    .line 137
    new-instance v0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;-><init>(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->okListener:Landroid/view/View$OnClickListener;

    .line 199
    new-instance v0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$2;-><init>(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->cancelListener:Landroid/view/View$OnClickListener;

    .line 254
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mDialogType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "logString"    # Ljava/lang/String;

    .prologue
    .line 367
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "WifiConnectionPolicyDialogActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    return-void
.end method

.method private setDialogDisplayStatus(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDialogDisplayStatus mDialogType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mDialogType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", show is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->logd(Ljava/lang/String;)V

    .line 350
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mDialogType:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :goto_0
    :pswitch_0
    return-void

    .line 355
    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConnectionPolicy;->setDialogShowing(Z)V

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateDialogView(I)V
    .locals 8
    .param p1, "dialogType"    # I

    .prologue
    const v7, 0x1020014

    const v6, 0x7f09081d

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    .local v1, "mResources":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 286
    :pswitch_1
    const v2, 0x7f0908d0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 287
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mMessage:Landroid/widget/TextView;

    const v3, 0x7f0908d1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 292
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090005

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 295
    .local v0, "mArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 297
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 298
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkId:I

    goto :goto_0

    .line 303
    .end local v0    # "mArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    :pswitch_2
    const v2, 0x7f09080b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 304
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 309
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090005

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 312
    .restart local v0    # "mArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 313
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 314
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 315
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkId:I

    goto/16 :goto_0

    .line 323
    .end local v0    # "mArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    :pswitch_3
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 324
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mMessage:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090801

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090802

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 333
    :pswitch_4
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 334
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mMessage:Landroid/widget/TextView;

    const v3, 0x7f09081e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 338
    :pswitch_5
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 339
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mOK:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mMessage:Landroid/widget/TextView;

    const v3, 0x7f0908c4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 342
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 120
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_connect_to_cmcc"

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :cond_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v2, 0x7f0400a4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 65
    const v2, 0x7f0b0034

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mMessage:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0b01e2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    .line 67
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    const v2, 0x7f0b01e3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 69
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    const v2, 0x7f0b000b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mOK:Landroid/widget/Button;

    .line 72
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mOK:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->okListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f0b000a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mCancel:Landroid/widget/Button;

    .line 74
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mCancel:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 79
    new-instance v2, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$UpdateHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$UpdateHandler;-><init>(Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity$1;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, "getIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dialogType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dialogType"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, "dialogType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate dialogType is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->logd(Ljava/lang/String;)V

    .line 88
    if-eq v0, v4, :cond_1

    .line 89
    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->updateDialogView(I)V

    .line 111
    iput v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mDialogType:I

    .line 116
    .end local v0    # "dialogType":I
    :cond_0
    :goto_1
    return-void

    .line 91
    .restart local v0    # "dialogType":I
    :pswitch_1
    const-string v2, "ssid_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidName:Ljava/lang/String;

    .line 93
    const-string v2, "ssid_id"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkId:I

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSsidName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSsidNetworkId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v2, "ssids_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    .line 103
    const-string v2, "ssids_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    goto :goto_0

    .line 107
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNameArrary:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , networkId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->logd(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkIdArrary:[I

    aget v0, v0, p3

    iput v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mSsidNetworkId:I

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 277
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->logd(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->setDialogDisplayStatus(Z)V

    .line 279
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 270
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->logd(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPolicyDialogActivity;->setDialogDisplayStatus(Z)V

    .line 272
    return-void
.end method

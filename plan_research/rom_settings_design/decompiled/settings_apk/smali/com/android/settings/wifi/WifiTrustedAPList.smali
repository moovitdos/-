.class public Lcom/android/settings/wifi/WifiTrustedAPList;
.super Landroid/app/Activity;
.source "WifiTrustedAPList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;,
        Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mList:Landroid/widget/ListView;

.field private mMoveDown:Landroid/widget/Button;

.field private mMoveUp:Landroid/widget/Button;

.field private mSave:Landroid/widget/Button;

.field private mSsids:[Ljava/lang/String;

.field private mTrustedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdate:Z

.field private mUpdateHandler:Landroid/os/Handler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 247
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiTrustedAPList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTrustedAPList;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTrustedAPList;->setButtonEnable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTrustedAPList;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiTrustedAPList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTrustedAPList;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTrustedAPList;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mTrustedAccessPoints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WifiTrustedAPList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTrustedAPList;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mUpdate:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiTrustedAPList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTrustedAPList;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTrustedAPList;->updateTrustedList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiTrustedAPList;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTrustedAPList;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private initializeTrustedList()V
    .locals 6

    .prologue
    .line 81
    iget-object v4, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiTrustedAPList;->sortConfigedAPs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "SortedConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mTrustedAccessPoints:Ljava/util/List;

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 86
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 87
    new-instance v3, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;-><init>(Lcom/android/settings/wifi/WifiTrustedAPList;ILjava/lang/String;)V

    .line 88
    .local v3, "mTrustedAp":Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mTrustedAccessPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mTrustedAp":Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;
    :cond_1
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 225
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 227
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 229
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private sendActionMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "data":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 122
    const/4 v2, 0x1

    .line 123
    .local v2, "msgWhat":I
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "data":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v3, "MOVE_ACTION"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mUpdateHandler:Landroid/os/Handler;

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 133
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void

    .line 126
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgWhat":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "msgWhat":I
    goto :goto_0
.end method

.method private setButtonEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveUp:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveDown:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    return-void
.end method

.method private sortConfigedAPs(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "mconfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p1, :cond_0

    .line 97
    const/4 p1, 0x0

    .line 111
    .end local p1    # "mconfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    return-object p1

    .line 100
    .restart local p1    # "mconfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiTrustedAPList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiTrustedAPList$1;-><init>(Lcom/android/settings/wifi/WifiTrustedAPList;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private updateButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    iget v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mIndex:I

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveUp:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    :goto_0
    iget v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mIndex:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mTrustedAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveDown:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mSave:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mUpdate:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveUp:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveDown:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateTrustedList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 202
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mTrustedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 203
    .local v4, "size":I
    if-nez v4, :cond_0

    .line 204
    const v5, 0x7f090819

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 207
    :cond_0
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mSsids:[Ljava/lang/String;

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "i":I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mTrustedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;

    .line 210
    .local v0, "ap":Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mSsids:[Ljava/lang/String;

    iget-object v6, v0, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiTrustedAPList;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "ap":Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v5, 0x109000f

    const v6, 0x1020014

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mSsids:[Ljava/lang/String;

    invoke-direct {v3, p0, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 216
    .local v3, "mArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 218
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mList:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mIndex:I

    invoke-virtual {v5, v6, v8}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 219
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mList:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mIndex:I

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTrustedAPList;->updateButton()V

    .line 221
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveUp:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mIndex:I

    if-lez v0, :cond_1

    .line 239
    const-string v0, "UP"

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiTrustedAPList;->sendActionMessage(Ljava/lang/String;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveDown:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mIndex:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mTrustedAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 241
    const-string v0, "DOWN"

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiTrustedAPList;->sendActionMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mSave:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiTrustedAPList;->sendActionMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 55
    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 57
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    const v0, 0x7f0b021b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mList:Landroid/widget/ListView;

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mSave:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0b021d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveDown:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveDown:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f0b021c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveUp:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mMoveUp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;-><init>(Lcom/android/settings/wifi/WifiTrustedAPList;Lcom/android/settings/wifi/WifiTrustedAPList$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mUpdateHandler:Landroid/os/Handler;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTrustedAPList;->initializeTrustedList()V

    .line 71
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 233
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings/wifi/WifiTrustedAPList;->mIndex:I

    .line 234
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTrustedAPList;->updateButton()V

    .line 235
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTrustedAPList;->updateTrustedList()V

    .line 77
    return-void
.end method

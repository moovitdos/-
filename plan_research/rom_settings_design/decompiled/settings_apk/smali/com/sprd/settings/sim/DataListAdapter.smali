.class public Lcom/sprd/settings/sim/DataListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field isCloseData:Z

.field private mContext:Landroid/content/Context;

.field private mData:[Landroid/sim/Sim;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutId:I

.field private mListener:Landroid/view/View$OnClickListener;

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Debug;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/sprd/settings/sim/DataListAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/sim/Sim;Landroid/view/View$OnClickListener;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # [Landroid/sim/Sim;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .param p4, "layoutId"    # I
    .param p5, "isCloseData"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/settings/sim/DataListAdapter;->mode:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/settings/sim/DataListAdapter;->isCloseData:Z

    .line 50
    iput-object p1, p0, Lcom/sprd/settings/sim/DataListAdapter;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/sim/DataListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iput-object p2, p0, Lcom/sprd/settings/sim/DataListAdapter;->mData:[Landroid/sim/Sim;

    .line 53
    iput-object p3, p0, Lcom/sprd/settings/sim/DataListAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 54
    iput p4, p0, Lcom/sprd/settings/sim/DataListAdapter;->mLayoutId:I

    .line 55
    iput-boolean p5, p0, Lcom/sprd/settings/sim/DataListAdapter;->isCloseData:Z

    .line 56
    return-void
.end method

.method private initSim()V
    .locals 4

    .prologue
    .line 81
    iget-object v2, p0, Lcom/sprd/settings/sim/DataListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 83
    .local v0, "mConnManager":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/sprd/settings/sim/DataListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabledByPhoneId(I)Z

    move-result v1

    .line 85
    .local v1, "mDataDefaultNetworkOn":Z
    if-nez v1, :cond_0

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sprd/settings/sim/DataListAdapter;->isCloseData:Z

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprd/settings/sim/DataListAdapter;->mData:[Landroid/sim/Sim;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sprd/settings/sim/DataListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sprd/settings/sim/DataListAdapter;->initSim()V

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "holder":Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;
    iget-object v5, p0, Lcom/sprd/settings/sim/DataListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v2, v5, p1

    .line 94
    .local v2, "sim":Landroid/sim/Sim;
    const/4 v4, -0x1

    .line 95
    .local v4, "val":I
    if-nez p2, :cond_2

    .line 97
    new-instance v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;-><init>(Lcom/sprd/settings/sim/DataListAdapter;)V

    .line 99
    .restart local v0    # "holder":Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;
    iget-object v5, p0, Lcom/sprd/settings/sim/DataListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/sprd/settings/sim/DataListAdapter;->mLayoutId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 100
    const v5, 0x1020337

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->colorImage:Landroid/widget/RelativeLayout;

    .line 102
    const v5, 0x1020339

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 103
    const v5, 0x102033a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 104
    const v5, 0x102033b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    .line 105
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    invoke-virtual {v5, p1}, Landroid/view/View;->setId(I)V

    .line 107
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    :goto_0
    if-nez v2, :cond_3

    .line 166
    :cond_1
    :goto_1
    return-object p2

    .line 109
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;
    check-cast v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;
    goto :goto_0

    .line 114
    :cond_3
    iget-object v5, p0, Lcom/sprd/settings/sim/DataListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sim_standby"

    iget-object v7, p0, Lcom/sprd/settings/sim/DataListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/sim/Sim;->getPhoneId()I

    move-result v7

    invoke-static {v6, v7}, Landroid/telephony/TelephonyManager;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/4 v1, 0x1

    .line 116
    .local v1, "isPhoneEnabled":Z
    :goto_2
    if-nez v1, :cond_7

    .line 117
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    if-eqz v5, :cond_4

    .line 120
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 129
    :cond_4
    :goto_3
    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 130
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->colorImage:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_4
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sprd/settings/sim/DataListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sprd/settings/sim/DataListAdapter;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_5

    .line 137
    iget-object v5, p0, Lcom/sprd/settings/sim/DataListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v4

    .line 138
    iget-boolean v5, p0, Lcom/sprd/settings/sim/DataListAdapter;->isCloseData:Z

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    .line 139
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 140
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sprd/settings/sim/DataListAdapter;->isCloseData:Z

    .line 149
    :goto_5
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/sprd/settings/sim/DataListAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_5
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 152
    invoke-static {}, Lcom/sprd/internal/telephony/CpSupportUtils;->getLTEPhoneId()I

    move-result v3

    .line 153
    .local v3, "supportMainSolt":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_c

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c

    .line 154
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v5

    if-ne v3, v5, :cond_b

    .line 156
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sprd/settings/sim/DataListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x104068c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sprd/settings/sim/DataListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/sim/Sim;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 114
    .end local v1    # "isPhoneEnabled":Z
    .end local v3    # "supportMainSolt":I
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 123
    .restart local v1    # "isPhoneEnabled":Z
    :cond_7
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    if-eqz v5, :cond_4

    .line 126
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 132
    :cond_8
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->colorImage:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->colorImage:Landroid/widget/RelativeLayout;

    sget-object v6, Landroid/sim/SimManager;->COLORS_IMAGES:[I

    invoke-virtual {v2}, Landroid/sim/Sim;->getColorIndex()I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 142
    :cond_9
    iget-boolean v5, p0, Lcom/sprd/settings/sim/DataListAdapter;->isCloseData:Z

    if-nez v5, :cond_a

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v5

    if-ne v5, v4, :cond_a

    .line 143
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 145
    :cond_a
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 158
    .restart local v3    # "supportMainSolt":I
    :cond_b
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sprd/settings/sim/DataListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x104068d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sprd/settings/sim/DataListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/sim/Sim;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 161
    :cond_c
    iget-object v5, p0, Lcom/sprd/settings/sim/DataListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/sim/Sim;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    iget-object v5, v0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "values"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/sprd/settings/sim/DataListAdapter;->mode:I

    .line 74
    return-void
.end method

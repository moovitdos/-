.class public Lcom/sprd/settings/sim/SimListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:[Landroid/sim/Sim;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutId:I

.field private mListener:Landroid/view/View$OnClickListener;

.field private mode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/sim/Sim;Landroid/view/View$OnClickListener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # [Landroid/sim/Sim;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .param p4, "layoutId"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/settings/sim/SimListAdapter;->mode:I

    .line 45
    iput-object p1, p0, Lcom/sprd/settings/sim/SimListAdapter;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/sim/SimListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p2, p0, Lcom/sprd/settings/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    .line 48
    iput-object p3, p0, Lcom/sprd/settings/sim/SimListAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 49
    iput p4, p0, Lcom/sprd/settings/sim/SimListAdapter;->mLayoutId:I

    .line 50
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sprd/settings/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sprd/settings/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/sprd/settings/sim/SimListAdapter;->mode:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "holder":Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;
    iget-object v6, p0, Lcom/sprd/settings/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v2, v6, p1

    .line 74
    .local v2, "sim":Landroid/sim/Sim;
    const/4 v5, -0x1

    .line 75
    .local v5, "val":I
    if-nez p2, :cond_2

    .line 77
    new-instance v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;-><init>(Lcom/sprd/settings/sim/SimListAdapter;)V

    .line 79
    .restart local v0    # "holder":Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;
    iget-object v6, p0, Lcom/sprd/settings/sim/SimListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/sprd/settings/sim/SimListAdapter;->mLayoutId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    const v6, 0x1020337

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->colorImage:Landroid/widget/RelativeLayout;

    .line 81
    const v6, 0x1020339

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 82
    const v6, 0x102033a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 83
    const v6, 0x102033b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    .line 84
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    invoke-virtual {v6, p1}, Landroid/view/View;->setId(I)V

    .line 86
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    :goto_0
    if-nez v2, :cond_3

    .line 146
    :cond_1
    :goto_1
    return-object p2

    .line 88
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;
    check-cast v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;
    goto :goto_0

    .line 93
    :cond_3
    iget-object v6, p0, Lcom/sprd/settings/sim/SimListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sim_standby"

    iget-object v8, p0, Lcom/sprd/settings/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/sim/Sim;->getPhoneId()I

    move-result v8

    invoke-static {v7, v8}, Landroid/telephony/TelephonyManager;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    const/4 v1, 0x1

    .line 95
    .local v1, "isPhoneEnabled":Z
    :goto_2
    if-nez v1, :cond_9

    .line 96
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    if-eqz v6, :cond_4

    .line 99
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 108
    :cond_4
    :goto_3
    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 110
    :cond_5
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->colorImage:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :goto_4
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sprd/settings/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sprd/settings/sim/SimListAdapter;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_7

    .line 117
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimListAdapter;->getMode()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    .line 118
    iget-object v6, p0, Lcom/sprd/settings/sim/SimListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v5

    .line 126
    :cond_6
    :goto_5
    iget-object v6, p0, Lcom/sprd/settings/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    if-ne v6, v5, :cond_e

    .line 127
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 130
    :goto_6
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/sprd/settings/sim/SimListAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_7
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 133
    invoke-static {}, Lcom/sprd/internal/telephony/CpSupportUtils;->getLTEPhoneId()I

    move-result v4

    .line 134
    .local v4, "supportMainSolt":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_10

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_10

    .line 135
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    if-ne v4, v6, :cond_f

    .line 137
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sprd/settings/sim/SimListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x104068c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprd/settings/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/sim/Sim;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 93
    .end local v1    # "isPhoneEnabled":Z
    .end local v4    # "supportMainSolt":I
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 102
    .restart local v1    # "isPhoneEnabled":Z
    :cond_9
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    if-eqz v6, :cond_4

    .line 105
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 112
    :cond_a
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->colorImage:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->colorImage:Landroid/widget/RelativeLayout;

    sget-object v7, Landroid/sim/SimManager;->COLORS_IMAGES:[I

    invoke-virtual {v2}, Landroid/sim/Sim;->getColorIndex()I

    move-result v8

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 119
    :cond_b
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimListAdapter;->getMode()I

    move-result v6

    if-nez v6, :cond_c

    .line 120
    iget-object v6, p0, Lcom/sprd/settings/sim/SimListAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v5

    goto/16 :goto_5

    .line 121
    :cond_c
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimListAdapter;->getMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 122
    iget-object v6, p0, Lcom/sprd/settings/sim/SimListAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v5

    goto/16 :goto_5

    .line 123
    :cond_d
    invoke-virtual {p0}, Lcom/sprd/settings/sim/SimListAdapter;->getMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 124
    iget-object v6, p0, Lcom/sprd/settings/sim/SimListAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v5

    goto/16 :goto_5

    .line 129
    :cond_e
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->viewBtn:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 139
    .restart local v4    # "supportMainSolt":I
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sprd/settings/sim/SimListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x104068d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sprd/settings/sim/SimListAdapter;->mData:[Landroid/sim/Sim;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/sim/Sim;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "string":Ljava/lang/String;
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 143
    .end local v3    # "string":Ljava/lang/String;
    :cond_10
    iget-object v6, v0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "values"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/sprd/settings/sim/SimListAdapter;->mode:I

    .line 66
    return-void
.end method

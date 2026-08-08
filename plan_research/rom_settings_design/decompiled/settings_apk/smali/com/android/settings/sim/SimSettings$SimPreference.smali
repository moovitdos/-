.class Lcom/android/settings/sim/SimSettings$SimPreference;
.super Landroid/preference/Preference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/sim/Sim;

.field private mSwitch:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/sim/Sim;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subInfoRecord"    # Landroid/sim/Sim;
    .param p4, "slotId"    # I

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    .line 775
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 777
    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 779
    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    .line 780
    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/sim/Sim;

    .line 781
    iput p4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 784
    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/sim/SimSettings$SimPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    .line 767
    iget v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getSlotId()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private getSlotId()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    return v0
.end method

.method private updateStandbyState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 804
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_1

    .line 805
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/sim/Sim;

    if-eqz v3, :cond_3

    .line 806
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-static {v3, v4}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;I)Z

    move-result v1

    .line 807
    .local v1, "standby":Z
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 808
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$1800(Lcom/android/settings/sim/SimSettings;)[Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    if-nez v1, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->isRadioBusy(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$1900(Lcom/android/settings/sim/SimSettings;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 812
    .local v0, "canSetSimStandby":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 813
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 818
    .end local v0    # "canSetSimStandby":Z
    .end local v1    # "standby":Z
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "standby":Z
    :cond_2
    move v0, v2

    .line 808
    goto :goto_0

    .line 815
    .end local v1    # "standby":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSwitch:Landroid/widget/Switch;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 789
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 790
    const v0, 0x7f0b0185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSwitch:Landroid/widget/Switch;

    .line 791
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/settings/sim/SimSettings$SimPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/SimSettings$SimPreference$1;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 800
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->updateStandbyState()V

    .line 801
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 824
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 875
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 830
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0908d9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/sim/Sim;

    if-eqz v3, :cond_7

    .line 833
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-static {v3, v6}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 834
    const v3, 0x7f090988

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 835
    invoke-virtual {p0, v8}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 874
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->updateStandbyState()V

    goto :goto_0

    .line 840
    :cond_1
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v3}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v6}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "displayName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$1800(Lcom/android/settings/sim/SimSettings;)[Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v6}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, " "

    .line 849
    .local v1, "phoneNumber":Ljava/lang/String;
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->isDualLteModem()Z

    move-result v3

    if-nez v3, :cond_5

    .line 850
    iget v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$1800(Lcom/android/settings/sim/SimSettings;)[Landroid/telephony/TelephonyManager;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPrimaryCard()I

    move-result v6

    if-ne v3, v6, :cond_4

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    const v7, 0x7f090989

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 861
    :goto_4
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->isRadioBusy(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$1900(Lcom/android/settings/sim/SimSettings;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$1800(Lcom/android/settings/sim/SimSettings;)[Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v6}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_6

    move v3, v4

    :goto_5
    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 840
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v3}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 845
    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$1800(Lcom/android/settings/sim/SimSettings;)[Landroid/telephony/TelephonyManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v7}, Landroid/sim/Sim;->getPhoneId()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 854
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    const v7, 0x7f09098a

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 858
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_6
    move v3, v5

    .line 861
    goto :goto_5

    .line 869
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_7
    const v3, 0x7f0908ee

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 870
    invoke-virtual {p0, v8}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

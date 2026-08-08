.class public Lcom/android/settings/sim/SimSettings$DataPreference;
.super Landroid/preference/Preference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataPreference"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDataSwitch:Landroid/widget/Switch;

.field mSummary:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    .line 926
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 927
    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mContext:Landroid/content/Context;

    .line 928
    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 929
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$DataPreference;->update()V

    .line 930
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 934
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 935
    const v1, 0x7f0b0185

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mDataSwitch:Landroid/widget/Switch;

    .line 937
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mTitle:Landroid/widget/TextView;

    .line 938
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mSummary:Landroid/widget/TextView;

    .line 944
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mDataSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    .line 955
    .local v0, "dataPhoneId":I
    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings$DataPreference;->updateDataSwitch(I)V

    .line 956
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 972
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    .line 973
    .local v0, "phoneId":I
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$2000(Lcom/android/settings/sim/SimSettings;)Landroid/sim/SimManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/sim/SimManager;->getSimById(I)Landroid/sim/Sim;

    move-result-object v1

    .line 974
    .local v1, "sir":Landroid/sim/Sim;
    const v2, 0x7f09098b

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 975
    invoke-static {}, Lcom/android/settings/sim/SimSettings;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[update DataPreference] mSubInfoArray="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v5}, Lcom/android/settings/sim/SimSettings;->access$2100(Lcom/android/settings/sim/SimSettings;)[Landroid/sim/Sim;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/settings/sim/SimSettings;->access$1500(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V

    .line 977
    :cond_0
    if-eqz v1, :cond_3

    .line 979
    invoke-virtual {v1}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/sim/Sim;->getPhoneId()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 983
    invoke-virtual {v1}, Landroid/sim/Sim;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings$DataPreference;->updateDataSwitch(I)V

    .line 987
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$2000(Lcom/android/settings/sim/SimSettings;)Landroid/sim/SimManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sim/SimManager;->getActiveSims()[Landroid/sim/Sim;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_4

    .line 988
    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 993
    :goto_2
    return-void

    .line 979
    :cond_2
    invoke-virtual {v1}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 984
    :cond_3
    if-nez v1, :cond_1

    .line 985
    const v2, 0x7f09098c

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 991
    :cond_4
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$1100(Lcom/android/settings/sim/SimSettings;)[Landroid/sim/Sim;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method public updateDataSwitch(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 959
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataSwitch updateDataSwitch phoneId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mDataSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 961
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2, p1}, Lcom/android/settings/sim/SimSettings;->access$800(Lcom/android/settings/sim/SimSettings;I)Z

    move-result v1

    .line 962
    .local v1, "isDataEnable":Z
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mDataSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 963
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$1800(Lcom/android/settings/sim/SimSettings;)[Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->isRadioBusy(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$1900(Lcom/android/settings/sim/SimSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v2, p1}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 967
    .local v0, "canSetDataEnable":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$DataPreference;->mDataSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 969
    .end local v0    # "canSetDataEnable":Z
    .end local v1    # "isDataEnable":Z
    :cond_0
    return-void

    .line 963
    .restart local v1    # "isDataEnable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

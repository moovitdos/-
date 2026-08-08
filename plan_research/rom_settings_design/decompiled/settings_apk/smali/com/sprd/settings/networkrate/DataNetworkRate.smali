.class public Lcom/sprd/settings/networkrate/DataNetworkRate;
.super Ljava/lang/Object;
.source "DataNetworkRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;,
        Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sprd/settings/networkrate/DataNetworkRate;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private getMobileTrafficCurrentRate()Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    invoke-direct {v0, p0}, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;-><init>(Lcom/sprd/settings/networkrate/DataNetworkRate;)V

    .line 154
    .local v0, "currentRate":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getMobileTrafficTxBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->upLinkRate:J

    .line 155
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getMobileTrafficRxBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->downLinkRate:J

    .line 156
    return-object v0
.end method

.method private getMobileTrafficRxBytes()J
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method private getMobileTrafficTheoryPeak(I)Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    .locals 7
    .param p1, "network_type"    # I

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "networkTrafficTheoryPeak":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    const-string v4, "DataNetworkRate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network_type= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    return-object v2

    .line 183
    :pswitch_0
    new-instance v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    .end local v2    # "networkTrafficTheoryPeak":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    invoke-direct {v2, p0}, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;-><init>(Lcom/sprd/settings/networkrate/DataNetworkRate;)V

    .line 184
    .restart local v2    # "networkTrafficTheoryPeak":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    const v4, 0x7f09085b

    invoke-direct {p0, v4}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getTrafficTheoryPeak(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->upLinkTheoryPeak:Ljava/lang/String;

    .line 186
    const v4, 0x7f09085c

    invoke-direct {p0, v4}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getTrafficTheoryPeak(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->downLinkTheoryPeak:Ljava/lang/String;

    goto :goto_0

    .line 191
    :pswitch_1
    const v3, 0x7f09085a

    .line 192
    .local v3, "uplinkResId":I
    const v1, 0x7f09085a

    .line 193
    .local v1, "downlinkResId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getRadioCapbility()Landroid/telephony/TelephonyManager$RadioCapbility;

    move-result-object v0

    .line 195
    .local v0, "capbility":Landroid/telephony/TelephonyManager$RadioCapbility;
    sget-object v4, Landroid/telephony/TelephonyManager$RadioCapbility;->TDD_CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    const v3, 0x7f09085d

    .line 197
    const v1, 0x7f09085e

    .line 203
    :cond_0
    :goto_1
    new-instance v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    .end local v2    # "networkTrafficTheoryPeak":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    invoke-direct {v2, p0}, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;-><init>(Lcom/sprd/settings/networkrate/DataNetworkRate;)V

    .line 204
    .restart local v2    # "networkTrafficTheoryPeak":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    invoke-direct {p0, v3}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getTrafficTheoryPeak(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->upLinkTheoryPeak:Ljava/lang/String;

    .line 205
    invoke-direct {p0, v1}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getTrafficTheoryPeak(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->downLinkTheoryPeak:Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_1
    sget-object v4, Landroid/telephony/TelephonyManager$RadioCapbility;->FDD_CSFB:Landroid/telephony/TelephonyManager$RadioCapbility;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    const v3, 0x7f09085f

    .line 200
    const v1, 0x7f090860

    goto :goto_1

    .line 209
    .end local v0    # "capbility":Landroid/telephony/TelephonyManager$RadioCapbility;
    .end local v1    # "downlinkResId":I
    .end local v3    # "uplinkResId":I
    :pswitch_2
    new-instance v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    .end local v2    # "networkTrafficTheoryPeak":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    invoke-direct {v2, p0}, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;-><init>(Lcom/sprd/settings/networkrate/DataNetworkRate;)V

    .line 210
    .restart local v2    # "networkTrafficTheoryPeak":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    const v4, 0x7f090861

    invoke-direct {p0, v4}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getTrafficTheoryPeak(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->upLinkTheoryPeak:Ljava/lang/String;

    .line 212
    const v4, 0x7f090862

    invoke-direct {p0, v4}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getTrafficTheoryPeak(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->downLinkTheoryPeak:Ljava/lang/String;

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMobileTrafficTxBytes()J
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method private getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz p1, :cond_0

    .line 39
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 44
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    return-object v1
.end method

.method private getTrafficTheoryPeak(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sprd/settings/networkrate/DataNetworkRate;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sprd/settings/networkrate/DataNetworkRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0 bps"

    goto :goto_0
.end method

.method private getWifiTrafficCurrentRate()Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    invoke-direct {v0, p0}, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;-><init>(Lcom/sprd/settings/networkrate/DataNetworkRate;)V

    .line 162
    .local v0, "currentRate":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getWifiTrafficTxBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->upLinkRate:J

    .line 163
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getWifiTrafficRxBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->downLinkRate:J

    .line 164
    return-object v0
.end method

.method private getWifiTrafficRxBytes()J
    .locals 6

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getWifiTrafficTheoryPeak()Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    invoke-direct {v0, p0}, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;-><init>(Lcom/sprd/settings/networkrate/DataNetworkRate;)V

    .line 170
    .local v0, "networkTrafficTheoryPeak":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    iget-object v1, p0, Lcom/sprd/settings/networkrate/DataNetworkRate;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sprd/settings/networkrate/DataNetworkRate;->mContext:Landroid/content/Context;

    const v2, 0x7f090863

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->upLinkTheoryPeak:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/sprd/settings/networkrate/DataNetworkRate;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sprd/settings/networkrate/DataNetworkRate;->mContext:Landroid/content/Context;

    const v2, 0x7f090864

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->downLinkTheoryPeak:Ljava/lang/String;

    .line 174
    return-object v0

    .line 170
    :cond_0
    const-string v1, "0 bps"

    goto :goto_0

    .line 172
    :cond_1
    const-string v1, "0 bps"

    goto :goto_1
.end method

.method private getWifiTrafficTxBytes()J
    .locals 6

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isMobileConnected(Landroid/net/NetworkInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v0, "DataNetworkRate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.getType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkConnected(Landroid/net/NetworkInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnected(Landroid/net/NetworkInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v0, 0x1

    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentNetworkTrafficRate(Landroid/content/Context;Z)Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMobile"    # Z

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "networkTrafficCurrentRate":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    invoke-direct {p0, p1}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 104
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->isNetworkConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    if-eqz p2, :cond_1

    .line 107
    invoke-direct {p0, v0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->isMobileConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getMobileTrafficCurrentRate()Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    move-result-object v1

    .line 119
    :cond_0
    :goto_0
    return-object v1

    .line 113
    :cond_1
    invoke-direct {p0, v0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->isWifiConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getWifiTrafficCurrentRate()Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentNetworkTrafficTheoryPeak(Landroid/content/Context;Z)Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isMobile"    # Z

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 71
    .local v1, "networkTrafficTheoryPeak":Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
    invoke-direct {p0, p1}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 72
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const-string v2, "DataNetworkRate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v2, "DataNetworkRate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMobile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->isNetworkConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    if-eqz p2, :cond_1

    .line 77
    invoke-direct {p0, v0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->isMobileConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getMobileTrafficTheoryPeak(I)Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    move-result-object v1

    .line 94
    :cond_0
    :goto_0
    const-string v2, "DataNetworkRate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkTrafficTheoryPeak = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v1

    .line 88
    :cond_1
    invoke-direct {p0, v0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->isWifiConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getWifiTrafficTheoryPeak()Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentNetworkTrafficTotal(Z)Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
    .locals 1
    .param p1, "isMobile"    # Z

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getMobileTrafficCurrentRate()Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/DataNetworkRate;->getWifiTrafficCurrentRate()Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;

    move-result-object v0

    goto :goto_0
.end method

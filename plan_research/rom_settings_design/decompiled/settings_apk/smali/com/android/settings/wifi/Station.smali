.class Lcom/android/settings/wifi/Station;
.super Landroid/preference/Preference;
.source "Station.java"


# instance fields
.field controlBlockListener:Landroid/content/DialogInterface$OnClickListener;

.field private isConnected:Z

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private stationName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "connected"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/android/settings/wifi/Station$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/Station$1;-><init>(Lcom/android/settings/wifi/Station;)V

    iput-object v0, p0, Lcom/android/settings/wifi/Station;->controlBlockListener:Landroid/content/DialogInterface$OnClickListener;

    .line 24
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/Station;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    iput-object p1, p0, Lcom/android/settings/wifi/Station;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/android/settings/wifi/Station;->stationName:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lcom/android/settings/wifi/Station;->isConnected:Z

    .line 29
    iget-object v0, p0, Lcom/android/settings/wifi/Station;->stationName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method

.method private askToAddBlockList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0900f6

    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/Station;->stationName:Ljava/lang/String;

    .line 49
    .local v0, "stationNameTemp":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 50
    const-string v0, ""

    .line 52
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/Station;->isConnected:Z

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/Station;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0908a1

    iget-object v3, p0, Lcom/android/settings/wifi/Station;->controlBlockListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/Station;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0908a2

    iget-object v3, p0, Lcom/android/settings/wifi/Station;->controlBlockListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/Station;->askToAddBlockList()V

    .line 35
    return-void
.end method

.method setBlockButton()V
    .locals 3

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/wifi/Station;->isConnected:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/Station;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/Station;->stationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->softApBlockStation(Ljava/lang/String;)Z

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/Station;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprd.settings.STATIONS_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/Station;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/Station;->stationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->softApUnblockStation(Ljava/lang/String;)Z

    goto :goto_0
.end method

.class Lcom/duoqin/settings/RemoteLocatingSettings$5;
.super Ljava/lang/Object;
.source "RemoteLocatingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoqin/settings/RemoteLocatingSettings;->turnOnWifiIfNeed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/duoqin/settings/RemoteLocatingSettings;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$5;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    iput-object p2, p0, Lcom/duoqin/settings/RemoteLocatingSettings$5;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 189
    iget-object v1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$5;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 190
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$5;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$5;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 195
    return-void
.end method

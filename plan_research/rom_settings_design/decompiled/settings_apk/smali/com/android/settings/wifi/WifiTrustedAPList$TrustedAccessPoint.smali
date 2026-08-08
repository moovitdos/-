.class Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;
.super Ljava/lang/Object;
.source "WifiTrustedAPList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiTrustedAPList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedAccessPoint"
.end annotation


# instance fields
.field public networkId:I

.field public ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiTrustedAPList;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiTrustedAPList;ILjava/lang/String;)V
    .locals 0
    .param p2, "_networkId"    # I
    .param p3, "_ssid"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput p2, p0, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;->networkId:I

    .line 252
    iput-object p3, p0, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;->ssid:Ljava/lang/String;

    .line 253
    return-void
.end method

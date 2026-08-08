.class Lcom/android/settings/wifi/WifiTrustedAPList$1;
.super Ljava/lang/Object;
.source "WifiTrustedAPList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTrustedAPList;->sortConfigedAPs(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTrustedAPList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTrustedAPList;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTrustedAPList$1;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 102
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v1, v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v1, v2, :cond_0

    .line 105
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WifiTrustedAPList$1;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

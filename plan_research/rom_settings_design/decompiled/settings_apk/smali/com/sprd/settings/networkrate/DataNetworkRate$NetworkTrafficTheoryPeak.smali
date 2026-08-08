.class public Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;
.super Ljava/lang/Object;
.source "DataNetworkRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/networkrate/DataNetworkRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkTrafficTheoryPeak"
.end annotation


# instance fields
.field public downLinkTheoryPeak:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprd/settings/networkrate/DataNetworkRate;

.field public upLinkTheoryPeak:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sprd/settings/networkrate/DataNetworkRate;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficTheoryPeak;->this$0:Lcom/sprd/settings/networkrate/DataNetworkRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

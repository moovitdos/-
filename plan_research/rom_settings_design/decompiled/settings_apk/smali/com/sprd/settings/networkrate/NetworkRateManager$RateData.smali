.class Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;
.super Ljava/lang/Object;
.source "NetworkRateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/networkrate/NetworkRateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RateData"
.end annotation


# instance fields
.field public downLinkRate:J

.field public downLinkTheoryPeak:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

.field public totalReceive:J

.field public totalSend:J

.field public upLinkRate:J

.field public upLinkTheoryPeak:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprd/settings/networkrate/NetworkRateManager;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;->this$0:Lcom/sprd/settings/networkrate/NetworkRateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

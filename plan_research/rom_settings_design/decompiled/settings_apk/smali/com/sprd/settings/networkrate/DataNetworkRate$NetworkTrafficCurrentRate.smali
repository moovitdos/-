.class public Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;
.super Ljava/lang/Object;
.source "DataNetworkRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/networkrate/DataNetworkRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkTrafficCurrentRate"
.end annotation


# instance fields
.field public downLinkRate:J

.field final synthetic this$0:Lcom/sprd/settings/networkrate/DataNetworkRate;

.field public upLinkRate:J


# direct methods
.method public constructor <init>(Lcom/sprd/settings/networkrate/DataNetworkRate;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sprd/settings/networkrate/DataNetworkRate$NetworkTrafficCurrentRate;->this$0:Lcom/sprd/settings/networkrate/DataNetworkRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

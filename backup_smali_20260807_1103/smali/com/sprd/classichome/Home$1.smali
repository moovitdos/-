.class Lcom/sprd/classichome/Home$1;
.super Lcom/sprd/classichome/model/HomeMonitorCallbacks;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/Home;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/Home;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sprd/classichome/Home$1;->this$0:Lcom/sprd/classichome/Home;

    invoke-direct {p0}, Lcom/sprd/classichome/model/HomeMonitorCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sprd/classichome/Home$1;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v0}, Lcom/sprd/classichome/Home;->access$000(Lcom/sprd/classichome/Home;)Lcom/sprd/classichome/HomeStatusView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sprd/classichome/Home$1;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v0}, Lcom/sprd/classichome/Home;->access$000(Lcom/sprd/classichome/Home;)Lcom/sprd/classichome/HomeStatusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/classichome/HomeStatusView;->updateLunarDateView()V

    .line 82
    :cond_0
    return-void
.end method

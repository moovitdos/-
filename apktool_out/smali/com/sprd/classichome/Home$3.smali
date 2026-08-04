.class Lcom/sprd/classichome/Home$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/sprd/classichome/Home;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sprd/classichome/Home$3;->this$0:Lcom/sprd/classichome/Home;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 128
    const-string v0, "Home"

    const-string v1, "onChange: weather changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sprd/classichome/Home$3;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v0}, Lcom/sprd/classichome/Home;->access$600(Lcom/sprd/classichome/Home;)V

    .line 131
    return-void
.end method

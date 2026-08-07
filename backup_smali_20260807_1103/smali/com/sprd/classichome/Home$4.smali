.class Lcom/sprd/classichome/Home$4;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/Home;->updateWeather([Ljava/lang/String;)V
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
    .line 275
    iput-object p1, p0, Lcom/sprd/classichome/Home$4;->this$0:Lcom/sprd/classichome/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sprd/classichome/Home$4;->this$0:Lcom/sprd/classichome/Home;

    sget-object v1, Lcom/sprd/common/util/Utilities;->CALL_LOG:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 280
    return-void
.end method

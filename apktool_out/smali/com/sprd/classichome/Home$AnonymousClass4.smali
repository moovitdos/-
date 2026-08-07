.class Lcom/sprd/classichome/Home$AnonymousClass4;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnonymousClass4"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/Home;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/Home;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/sprd/classichome/Home$AnonymousClass4;->this$0:Lcom/sprd/classichome/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 283
    iget-object p2, p0, Lcom/sprd/classichome/Home$AnonymousClass4;->this$0:Lcom/sprd/classichome/Home;

    sget-object v0, Lcom/sprd/common/util/Utilities;->CALL_LOG:Landroid/content/ComponentName;

    invoke-static {p2, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 284
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 285
    return-void
.end method

.class Lcom/sprd/classichome/Home$AnonymousClass5;
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
    name = "AnonymousClass5"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/Home;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/Home;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/sprd/classichome/Home$AnonymousClass5;->this$0:Lcom/sprd/classichome/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 295
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 296
    return-void
.end method

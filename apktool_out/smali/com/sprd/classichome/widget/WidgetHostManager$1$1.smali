.class Lcom/sprd/classichome/widget/WidgetHostManager$1$1;
.super Ljava/lang/Object;
.source "WidgetHostManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/widget/WidgetHostManager$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/classichome/widget/WidgetHostManager$1;

.field final synthetic val$chosen:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/widget/WidgetHostManager$1;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1$1;->this$1:Lcom/sprd/classichome/widget/WidgetHostManager$1;

    iput-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1$1;->val$chosen:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1$1;->this$1:Lcom/sprd/classichome/widget/WidgetHostManager$1;

    iget-object p1, p1, Lcom/sprd/classichome/widget/WidgetHostManager$1;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1$1;->this$1:Lcom/sprd/classichome/widget/WidgetHostManager$1;

    iget-object p2, p2, Lcom/sprd/classichome/widget/WidgetHostManager$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1$1;->val$chosen:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v0, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {p1, p2, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->removeWidgetById(Landroid/app/Activity;I)V

    .line 262
    return-void
.end method

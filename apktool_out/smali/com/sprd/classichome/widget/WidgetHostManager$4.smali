.class Lcom/sprd/classichome/widget/WidgetHostManager$4;
.super Ljava/lang/Object;
.source "WidgetHostManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/widget/WidgetHostManager;->layoutPage0(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$pending:I


# direct methods
.method constructor <init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iput-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$container:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$pending:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$container:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$pending:I

    invoke-static {v0, v1, v2, v3}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$200(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;I)V

    .line 554
    return-void
.end method

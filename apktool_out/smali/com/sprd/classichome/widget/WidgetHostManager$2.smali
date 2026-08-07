.class Lcom/sprd/classichome/widget/WidgetHostManager$2;
.super Ljava/lang/Object;
.source "WidgetHostManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$holder:Landroid/widget/FrameLayout;

.field final synthetic val$item:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 513
    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iput-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->val$container:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->val$holder:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->val$item:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 516
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->val$container:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->val$holder:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$2;->val$item:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$000(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V

    .line 517
    const/4 p1, 0x1

    return p1
.end method

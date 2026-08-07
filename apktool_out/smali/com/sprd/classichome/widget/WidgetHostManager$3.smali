.class Lcom/sprd/classichome/widget/WidgetHostManager$3;
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


# direct methods
.method constructor <init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 537
    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$3;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iput-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$3;->val$container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$3;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$3;->val$container:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$100(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 541
    return-void
.end method

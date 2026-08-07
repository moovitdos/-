.class Lcom/sprd/classichome/widget/WidgetHostManager$4;
.super Ljava/lang/Object;
.source "WidgetHostManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/widget/WidgetHostManager;->addWidgetFromPackage(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$matching:Ljava/util/List;

.field final synthetic val$targetPage:I


# direct methods
.method constructor <init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iput-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$matching:Ljava/util/List;

    iput p4, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$targetPage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 248
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$matching:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$4;->val$targetPage:I

    invoke-virtual {p1, v0, p2, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->bindAndConfigureWidget(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;I)V

    .line 249
    return-void
.end method

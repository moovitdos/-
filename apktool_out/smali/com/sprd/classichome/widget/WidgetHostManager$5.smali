.class Lcom/sprd/classichome/widget/WidgetHostManager$5;
.super Ljava/lang/Object;
.source "WidgetHostManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/widget/WidgetHostManager;->beginEdit(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$resizeMode:I


# direct methods
.method constructor <init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/view/ViewGroup;ILandroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iput-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$container:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$resizeMode:I

    iput-object p4, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 683
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    .line 684
    invoke-static {p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$300(I)Z

    move-result p1

    return p1

    .line 686
    :cond_0
    const/4 p1, 0x4

    const/4 p3, 0x1

    if-eq p2, p1, :cond_2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    const/4 v0, -0x4

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 714
    return v1

    .line 691
    :pswitch_0
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$container:Landroid/view/ViewGroup;

    invoke-static {p2, v0, p1, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$400(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/view/ViewGroup;II)V

    .line 692
    return p3

    .line 688
    :pswitch_1
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$container:Landroid/view/ViewGroup;

    invoke-static {p1, p2, v0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$400(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/view/ViewGroup;II)V

    .line 689
    return p3

    .line 697
    :pswitch_2
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$container:Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$400(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/view/ViewGroup;II)V

    .line 698
    return p3

    .line 694
    :pswitch_3
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$container:Landroid/view/ViewGroup;

    invoke-static {p1, p2, v1, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$400(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/view/ViewGroup;II)V

    .line 695
    return p3

    .line 711
    :pswitch_4
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$container:Landroid/view/ViewGroup;

    invoke-static {p1, p2, v0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$800(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 712
    return p3

    .line 704
    :cond_1
    :pswitch_5
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    invoke-static {p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$500(Lcom/sprd/classichome/widget/WidgetHostManager;)I

    move-result p2

    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$resizeMode:I

    invoke-static {p2, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$600(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$502(Lcom/sprd/classichome/widget/WidgetHostManager;I)I

    .line 705
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$resizeMode:I

    invoke-static {p1, p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$700(Lcom/sprd/classichome/widget/WidgetHostManager;I)V

    .line 706
    return p3

    .line 708
    :cond_2
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$5;->val$container:Landroid/view/ViewGroup;

    invoke-static {p1, p2, v0, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->access$800(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 709
    return p3

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

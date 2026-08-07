.class Lcom/sprd/classichome/widget/WidgetHostManager$1;
.super Ljava/lang/Object;
.source "WidgetHostManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/widget/WidgetHostManager;->showRemoveDialogForCurrentPage(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pageWidgets:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/widget/WidgetHostManager;Ljava/util/List;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1;->this$0:Lcom/sprd/classichome/widget/WidgetHostManager;

    iput-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1;->val$pageWidgets:Ljava/util/List;

    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 342
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1;->val$pageWidgets:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 343
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 344
    const-string v0, "\u05d0\u05d9\u05e9\u05d5\u05e8 \u05d4\u05e1\u05e8\u05d4"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u05d4\u05d0\u05dd \u05dc\u05d4\u05e1\u05d9\u05e8 \u05d0\u05ea \u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 346
    new-instance v0, Lcom/sprd/classichome/widget/WidgetHostManager$1$1;

    invoke-direct {v0, p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager$1$1;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager$1;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V

    const-string p1, "\u05d4\u05e1\u05e8"

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 352
    const-string p1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 354
    return-void
.end method

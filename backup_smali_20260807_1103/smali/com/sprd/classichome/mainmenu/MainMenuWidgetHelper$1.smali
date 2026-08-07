.class Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;
.super Ljava/lang/Object;
.source "MainMenuWidgetHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper;->handleItemLongClick(Landroid/app/Activity;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appDetailsIndex:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pageTargets:Ljava/util/List;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput p1, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$appDetailsIndex:I

    iput-object p2, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$pageTargets:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 79
    iget p1, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$appDetailsIndex:I

    if-ne p2, p1, :cond_0

    .line 80
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$packageName:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "package"

    invoke-static {v1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object p2, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$pageTargets:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 86
    iget-object p2, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object p2

    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->addWidgetFromPackage(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 88
    :goto_0
    return-void
.end method

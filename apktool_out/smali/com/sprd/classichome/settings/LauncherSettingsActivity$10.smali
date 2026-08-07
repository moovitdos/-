.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showWidgetActionsDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$widgetId:I


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 537
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->val$widgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 540
    if-nez p2, :cond_0

    .line 544
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->val$widgetId:I

    invoke-static {p1, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->setPendingWidgetEdit(Landroid/content/Context;I)V

    .line 546
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 549
    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-virtual {p2, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 550
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-virtual {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->finish()V

    .line 551
    goto :goto_0

    .line 552
    :cond_0
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    .line 553
    invoke-static {p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->val$widgetId:I

    .line 554
    invoke-virtual {p1, p2, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->removeWidgetById(Landroid/app/Activity;I)V

    .line 555
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 557
    :goto_0
    return-void
.end method

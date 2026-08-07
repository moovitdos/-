.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;
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

    .line 1040
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->val$widgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1043
    if-nez p2, :cond_0

    .line 1047
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->val$widgetId:I

    invoke-static {p1, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->setPendingWidgetEdit(Landroid/content/Context;I)V

    .line 1049
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1050
    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1052
    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-virtual {p2, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1053
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-virtual {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->finish()V

    .line 1054
    goto :goto_0

    .line 1055
    :cond_0
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    .line 1056
    invoke-static {p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->val$widgetId:I

    .line 1057
    invoke-virtual {p1, p2, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->removeWidgetById(Landroid/app/Activity;I)V

    .line 1058
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1060
    :goto_0
    return-void
.end method

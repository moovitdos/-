.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->handleSettingClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    .line 542
    invoke-static {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPage0Layout()V

    .line 543
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    const-string v1, "\u05d4\u05e4\u05e8\u05d9\u05e1\u05d4 \u05d0\u05d5\u05e4\u05e1\u05d4"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 546
    return-void
.end method

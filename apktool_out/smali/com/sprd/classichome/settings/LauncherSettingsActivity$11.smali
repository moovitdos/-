.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;
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

    .line 601
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->resetAll(Landroid/content/Context;)V

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    .line 607
    invoke-static {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPage0Layout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    .line 609
    const-string v1, "LauncherSettingsActivity"

    const-string v2, "widget layout reset failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    :goto_0
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$400(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 612
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    const/4 v1, 0x0

    const-string v2, "\u05db\u05dc \u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d0\u05d5\u05e4\u05e1\u05d5"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 614
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 615
    return-void
.end method

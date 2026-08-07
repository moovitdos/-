.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;
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

    .line 574
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->resetKeyShortcuts(Landroid/content/Context;)V

    .line 578
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    const-string v1, "\u05d4\u05e7\u05d9\u05e6\u05d5\u05e8\u05d9\u05dd \u05d0\u05d5\u05e4\u05e1\u05d5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 581
    return-void
.end method

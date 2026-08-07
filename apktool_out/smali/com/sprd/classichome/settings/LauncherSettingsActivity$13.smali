.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->handleMasterToggle()V
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

    .line 657
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->activateModHome(Landroid/content/Context;)Z

    move-result v0

    .line 661
    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    new-instance v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;

    invoke-direct {v2, p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;Z)V

    invoke-virtual {v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 678
    return-void
.end method

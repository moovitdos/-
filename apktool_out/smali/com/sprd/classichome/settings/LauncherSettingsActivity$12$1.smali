.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$12$1;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->restoreStockHome(Landroid/content/Context;)V

    .line 644
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    new-instance v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12$1$1;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12$1$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$12$1;)V

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method

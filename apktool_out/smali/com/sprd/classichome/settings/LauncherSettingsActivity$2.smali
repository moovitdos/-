.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 359
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 362
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettings;->restoreStockHome(Landroid/content/Context;)V

    .line 363
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-virtual {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->finish()V

    .line 364
    return-void
.end method

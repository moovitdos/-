.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$30;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumLongModeDialog()V
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

    .line 1271
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$30;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$30;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->setNumLongPressMode(Landroid/content/Context;I)V

    .line 1275
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1276
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$30;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1277
    return-void
.end method

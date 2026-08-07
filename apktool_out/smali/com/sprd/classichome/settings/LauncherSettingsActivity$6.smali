.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;


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

    .line 516
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setHebrewDateColor(Landroid/content/Context;I)V

    .line 520
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 521
    return-void
.end method

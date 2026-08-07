.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showClockSizeDialog()V
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

    .line 1116
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeSelected(I)V
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setClockSize(Landroid/content/Context;I)V

    .line 1120
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1121
    return-void
.end method

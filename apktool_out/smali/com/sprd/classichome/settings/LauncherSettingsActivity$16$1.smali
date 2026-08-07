.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$16$1;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 868
    iget-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;

    iget-object p3, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->val$prefKey:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;

    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 871
    return-void
.end method

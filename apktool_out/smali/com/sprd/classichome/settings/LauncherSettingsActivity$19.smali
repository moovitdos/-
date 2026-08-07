.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showAppGroupDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$cls:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1009
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->val$cls:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1012
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->val$cls:Ljava/lang/String;

    .line 1013
    invoke-static {}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$900()[Ljava/lang/String;

    move-result-object v3

    aget-object p2, v3, p2

    .line 1012
    invoke-static {v0, v1, v2, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->setCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$400(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1015
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1016
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1017
    return-void
.end method

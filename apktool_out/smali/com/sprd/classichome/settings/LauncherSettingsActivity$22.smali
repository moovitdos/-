.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColumnsDialog(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$menu:Z


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1094
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-boolean p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;->val$menu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1097
    add-int/lit8 p2, p2, 0x2

    .line 1098
    iget-boolean v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;->val$menu:Z

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->setMenuColumns(Landroid/content/Context;I)V

    goto :goto_0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->setHomeColumns(Landroid/content/Context;I)V

    .line 1103
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1104
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1105
    return-void
.end method

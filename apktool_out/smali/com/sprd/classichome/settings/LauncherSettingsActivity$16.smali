.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$prefKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 859
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->val$prefKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 862
    invoke-static {}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$600()[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    .line 863
    const-string v0, "app:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 865
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16$1;

    invoke-direct {p2, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;)V

    invoke-static {p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$700(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V

    .line 873
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->val$prefKey:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 877
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 878
    return-void
.end method

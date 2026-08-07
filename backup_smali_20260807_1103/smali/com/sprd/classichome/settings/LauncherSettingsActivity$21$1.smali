.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;

.field final synthetic val$app:Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;->val$app:Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 643
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    .line 648
    const-string p1, "default"

    goto :goto_0

    .line 647
    :cond_0
    const-string p1, "hide"

    goto :goto_0

    .line 646
    :cond_1
    const-string p1, "game"

    goto :goto_0

    .line 645
    :cond_2
    const-string p1, "extra"

    goto :goto_0

    .line 644
    :cond_3
    const-string p1, "mainmenu"

    .line 650
    :goto_0
    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;

    iget-object p2, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;->val$app:Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;->val$app:Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    iget-object v1, v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->cls:Ljava/lang/String;

    invoke-static {p2, v0, v1, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;

    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 652
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;

    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    const/4 p2, 0x0

    const-string v0, "\u05d4\u05de\u05d9\u05e7\u05d5\u05dd \u05e2\u05d5\u05d3\u05db\u05df \u05d1\u05d4\u05e6\u05dc\u05d7\u05d4"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 653
    return-void
.end method

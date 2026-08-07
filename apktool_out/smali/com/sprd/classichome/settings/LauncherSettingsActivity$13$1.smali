.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;

.field final synthetic val$ok:Z


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 661
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;

    iput-boolean p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;->val$ok:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 664
    iget-boolean v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;->val$ok:Z

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    const/4 v1, 0x0

    const-string v2, "\u05d4\u05de\u05e1\u05da \u05d4\u05de\u05e9\u05d5\u05d3\u05e8\u05d2 \u05e4\u05e2\u05d9\u05dc, \u05d4\u05de\u05e7\u05d5\u05e8\u05d9 \u05d4\u05d5\u05e9\u05d1\u05ea"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    const/4 v1, 0x1

    const-string v2, "\u05e0\u05d3\u05e8\u05e9\u05ea \u05d4\u05e8\u05e9\u05d0\u05ea \u05e8\u05d5\u05d8 - \u05e0\u05e4\u05ea\u05d7 \u05d1\u05d5\u05e8\u05e8 \u05d9\u05d3\u05e0\u05d9"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 673
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->openHomeChooser(Landroid/content/Context;)Z

    .line 675
    :goto_0
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13$1;->this$1:Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 676
    return-void
.end method

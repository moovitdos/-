.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNavKeyDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$k:Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 776
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;->val$k:Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 779
    if-nez p2, :cond_0

    .line 780
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;->val$k:Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 \u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;->val$k:Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->shortPref:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$500(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_0
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;->val$k:Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 \u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;->val$k:Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->longPref:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$500(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :goto_0
    return-void
.end method

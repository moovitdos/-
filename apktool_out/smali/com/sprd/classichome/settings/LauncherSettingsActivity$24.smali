.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showAppManagementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$apps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 948
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;->val$apps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 951
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;->val$apps:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    .line 952
    const-string p2, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9 (Main Menu)"

    const-string v0, "\u05db\u05dc\u05d9\u05dd \u05d5\u05e2\u05d6\u05e8\u05d9\u05dd (Extras)"

    const-string v1, "\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd / \u05de\u05e9\u05d7\u05e7\u05d9\u05dd (Games)"

    const-string v2, "\u05d4\u05e1\u05ea\u05e8 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4 (Hide)"

    const-string v3, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    filled-new-array {p2, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p2

    .line 959
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u05d4\u05e2\u05d1\u05e8 \u05d0\u05ea: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 960
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24$1;

    invoke-direct {v1, p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;)V

    .line 961
    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 977
    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 978
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 979
    return-void
.end method

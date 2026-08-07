.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumbersShortcutDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$names:[Ljava/lang/String;

.field final synthetic val$prefKeys:[Ljava/lang/String;

.field final synthetic val$pressLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 803
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$names:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$pressLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$prefKeys:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 806
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u05de\u05e7\u05e9 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$names:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$pressLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$prefKeys:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-static {p1, v0, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$500(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void
.end method

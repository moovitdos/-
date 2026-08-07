.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->handleSettingClick(Ljava/lang/String;)V
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

    .line 241
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 244
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettings;->resetAll(Landroid/content/Context;)V

    .line 245
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 246
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    const-string p2, "\u05db\u05dc \u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d0\u05d5\u05e4\u05e1\u05d5 \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 247
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 248
    return-void
.end method

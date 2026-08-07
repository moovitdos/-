.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showCornerRadiusDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$values:[I


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 720
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;->val$values:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;->val$values:[I

    aget p2, v1, p2

    invoke-static {v0, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->setCardCornerRadius(Landroid/content/Context;I)V

    .line 724
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 725
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 726
    return-void
.end method

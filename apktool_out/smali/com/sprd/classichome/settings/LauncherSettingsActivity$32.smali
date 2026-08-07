.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$32;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1358
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$32;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$32;->val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1361
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$32;->val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;

    invoke-static {}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$1100()[I

    move-result-object v1

    aget p2, v1, p2

    invoke-interface {v0, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;->onColorSelected(I)V

    .line 1362
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1363
    return-void
.end method

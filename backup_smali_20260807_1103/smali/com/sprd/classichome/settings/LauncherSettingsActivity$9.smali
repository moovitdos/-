.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;

.field final synthetic val$colors:[I


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;->val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;

    iput-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;->val$colors:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;->val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;->val$colors:[I

    aget p2, v0, p2

    invoke-interface {p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;->onColorSelected(I)V

    .line 310
    return-void
.end method

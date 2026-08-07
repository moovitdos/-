.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;

.field final synthetic val$values:[I


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 673
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;

    iput-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$values:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;->val$values:[I

    aget p2, v1, p2

    invoke-interface {v0, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;->onSizeSelected(I)V

    .line 677
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 678
    return-void
.end method

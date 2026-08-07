.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->pickApp(Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$apps:Ljava/util/List;

.field final synthetic val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/util/List;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 922
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;->val$apps:Ljava/util/List;

    iput-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;->val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 925
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;->val$apps:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    .line 926
    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;->val$callback:Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;

    iget-object v0, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->pkg:Ljava/lang/String;

    iget-object v1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->cls:Ljava/lang/String;

    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;->onAppSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    return-void
.end method

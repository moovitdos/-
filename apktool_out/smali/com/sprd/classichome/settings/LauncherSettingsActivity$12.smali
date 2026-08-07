.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->handleMasterToggle()V
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

    .line 637
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 640
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12$1;

    invoke-direct {p2, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 651
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 652
    return-void
.end method

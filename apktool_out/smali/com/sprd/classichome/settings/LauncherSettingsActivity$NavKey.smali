.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavKey"
.end annotation


# instance fields
.field final longDefault:Ljava/lang/String;

.field final longPref:Ljava/lang/String;

.field final shortDefault:Ljava/lang/String;

.field final shortPref:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->title:Ljava/lang/String;

    .line 719
    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->shortPref:Ljava/lang/String;

    .line 720
    iput-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->longPref:Ljava/lang/String;

    .line 721
    iput-object p4, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->shortDefault:Ljava/lang/String;

    .line 722
    iput-object p5, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->longDefault:Ljava/lang/String;

    .line 723
    return-void
.end method

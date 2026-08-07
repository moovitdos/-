.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getInstalledApps()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;)I
    .locals 0

    .line 586
    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 583
    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    check-cast p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;->compare(Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;)I

    move-result p1

    return p1
.end method

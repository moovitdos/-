.class public Lcom/android/settings/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# static fields
.field private static final HOTSPOT_DISABLED:Z

.field private static final WCN_DISABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    const-string v1, "ro.wcn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/CreateShortcut;->WCN_DISABLED:Z

    .line 38
    const-string v1, "ro.hotspot.enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/settings/CreateShortcut;->HOTSPOT_DISABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44
    .local v0, "targetIntent":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/settings/Settings;->UNIVERSEUI_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "com.android.settings.SHORTCUT_UUI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    return-object v0

    .line 47
    :cond_0
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0, p3}, Landroid/app/LauncherActivity;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 57
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f030001

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f0200c2

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    :cond_0
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Landroid/app/LauncherActivity;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v2

    iget-object v2, v2, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 72
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 74
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/LauncherActivity;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_7

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 93
    sget-boolean v4, Lcom/android/settings/CreateShortcut;->WCN_DISABLED:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-class v5, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-class v5, Lcom/android/settings/Settings$HotspotSettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-class v5, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 101
    :cond_2
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-class v5, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->showInShortcuts(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/settings/CreateShortcut;->WCN_DISABLED:Z

    if-eqz v4, :cond_4

    .line 104
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    :cond_4
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-class v5, Lcom/android/settings/Settings$SoundSettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    :cond_5
    sget-boolean v4, Lcom/android/settings/CreateShortcut;->HOTSPOT_DISABLED:Z

    if-eqz v4, :cond_6

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-class v4, Lcom/android/settings/Settings$HotspotSettingsActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    :cond_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    .line 118
    goto/16 :goto_0
.end method

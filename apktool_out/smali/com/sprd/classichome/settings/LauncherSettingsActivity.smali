.class public Lcom/sprd/classichome/settings/LauncherSettingsActivity;
.super Landroid/app/Activity;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;
    }
.end annotation


# static fields
.field private static final SEC_APPS:Ljava/lang/String; = "apps"

.field private static final SEC_KEYS:Ljava/lang/String; = "keys"

.field private static final SEC_LOOK:Ljava/lang/String; = "look"

.field private static final SEC_RESET:Ljava/lang/String; = "reset"

.field private static final SEC_TIME:Ljava/lang/String; = "time"

.field private static final SEC_WIDGETS:Ljava/lang/String; = "widgets"

.field private static final TAG:Ljava/lang/String; = "LauncherSettingsActivity"


# instance fields
.field private mAdapter:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->handleSettingClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->forceReloadLauncherModel()V

    return-void
.end method

.method static synthetic access$400(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->pickApp(Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V

    return-void
.end method

.method private applyRomTheme()V
    .locals 4

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Theme.Holo.Light.NewUI"

    const-string v2, "style"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setTheme(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 99
    :goto_0
    return-void
.end method

.method private buildAppsList()V
    .locals 4

    .line 249
    const-string v0, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getMenuColumns(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u05d1\u05e9\u05d5\u05e8\u05d4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v2, "menu_columns"

    const-string v3, "\u05e2\u05de\u05d5\u05d3\u05d5\u05ea \u05d1\u05e8\u05e9\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "apps_management"

    const-string v2, "\u05e1\u05d9\u05d3\u05d5\u05e8 \u05d5\u05d4\u05e1\u05ea\u05e8\u05d4"

    const-string v3, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9 / \u05db\u05dc\u05d9\u05dd / \u05de\u05e9\u05d7\u05e7\u05d9\u05dd / \u05de\u05d5\u05e1\u05ea\u05e8"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "reset_apps"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05d9\u05e7\u05d5\u05de\u05d9 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    const-string v3, "\u05d4\u05d7\u05d6\u05e8\u05d4 \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05d9\u05e6\u05e8\u05df"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method private buildKeysList()V
    .locals 4

    .line 257
    const-string v0, "\u05de\u05e7\u05e9\u05d9\u05dd"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05de\u05e7\u05e9\u05d9 \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getNumShortModeSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "num_short_press_mode"

    const-string v3, "\u05de\u05e6\u05d1 \u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getNumLongModeSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "num_long_press_mode"

    const-string v3, "\u05de\u05e6\u05d1 \u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "shortcuts_numbers_short"

    const-string v2, "\u05e4\u05e2\u05d5\u05dc\u05d4 \u05dc\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4"

    const-string v3, "\u05dc\u05db\u05dc \u05e1\u05e4\u05e8\u05d4 \u05d1\u05e0\u05e4\u05e8\u05d3"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "shortcuts_numbers_long"

    const-string v2, "\u05e4\u05e2\u05d5\u05dc\u05d4 \u05dc\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05d7\u05d9\u05e6\u05d9\u05dd"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_up_short"

    const-string v2, "\u05de\u05e0\u05d4\u05dc \u05e7\u05d1\u05e6\u05d9\u05dd"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_up"

    const-string v3, "\u05dc\u05de\u05e2\u05dc\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_down_short"

    const-string v2, "\u05d5\u05d9\u05dc\u05d5\u05df \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_down"

    const-string v3, "\u05dc\u05de\u05d8\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_left_short"

    const-string v2, "\u05dc\u05d5\u05d7 \u05e9\u05e0\u05d4"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_left"

    const-string v3, "\u05e9\u05de\u05d0\u05dc\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_right_short"

    const-string v2, "\u05dc\u05d5\u05d7 \u05e9\u05e0\u05d4 \u05e2\u05d1\u05e8\u05d9"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_right"

    const-string v3, "\u05d9\u05de\u05d9\u05e0\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_center_long"

    const-string v2, "\u05e4\u05e0\u05e1 / \u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_center_long"

    const-string v3, "\u05de\u05e7\u05e9 \u05de\u05e8\u05db\u05d6\u05d9 - \u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05de\u05e7\u05e9\u05d9\u05dd \u05e8\u05db\u05d9\u05dd"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_softkey_left_short"

    const-string v2, "\u05de\u05d7\u05e9\u05d1\u05d5\u05df"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_softkey_left"

    const-string v3, "\u05de\u05e7\u05e9 \u05e9\u05de\u05d0\u05dc\u05d9"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_softkey_right_short"

    const-string v2, "\u05d0\u05e0\u05e9\u05d9 \u05e7\u05e9\u05e8"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_softkey_right"

    const-string v3, "\u05de\u05e7\u05e9 \u05d9\u05de\u05e0\u05d9"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method private buildLookList()V
    .locals 5

    .line 207
    const-string v0, "\u05de\u05e8\u05d0\u05d4 \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getCardBgSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_bg_type"

    const-string v3, "\u05e8\u05e7\u05e2 \u05d5\u05e9\u05e7\u05d9\u05e4\u05d5\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardCornerRadius(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_corner_radius"

    const-string v3, "\u05e4\u05d9\u05e0\u05d5\u05ea \u05de\u05e2\u05d5\u05d2\u05dc\u05d5\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 211
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isMissedCallsEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 210
    const-string v2, "missed_calls_enabled"

    const-string v3, "\u05e9\u05d5\u05e8\u05ea \u05e9\u05d9\u05d7\u05d5\u05ea \u05d5\u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHomeColumns(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u05d1\u05e9\u05d5\u05e8\u05d4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    const-string v2, "home_columns"

    const-string v3, "\u05e2\u05de\u05d5\u05d3\u05d5\u05ea \u05d1\u05e8\u05e9\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method private buildResetList()V
    .locals 4

    .line 275
    const-string v0, "\u05d0\u05d9\u05e4\u05d5\u05e1"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "reset_all"

    const-string v2, "\u05e9\u05d7\u05d6\u05d5\u05e8 \u05db\u05dc \u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea"

    const-string v3, "\u05e9\u05e2\u05d5\u05df, \u05e6\u05d1\u05e2\u05d9\u05dd, \u05de\u05e7\u05e9\u05d9\u05dd \u05d5\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method private buildRootList()V
    .locals 5

    .line 174
    const-string v0, "\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 178
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isModHomeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isStockHomeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    const-string v3, "home_active"

    const-string v4, "\u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea \u05d4\u05de\u05e9\u05d5\u05d3\u05e8\u05d2"

    invoke-static {v3, v4, v2, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:time"

    const-string v2, "\u05e9\u05e2\u05d5\u05df \u05d5\u05ea\u05d0\u05e8\u05d9\u05da"

    const-string v3, "\u05d2\u05d5\u05d3\u05dc, \u05e6\u05d1\u05e2, \u05d2\u05d5\u05e4\u05df \u05d5\u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:look"

    const-string v2, "\u05de\u05e8\u05d0\u05d4 \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    const-string v3, "\u05e8\u05e7\u05e2, \u05e4\u05d9\u05e0\u05d5\u05ea \u05d5\u05e9\u05d5\u05e8\u05ea \u05e9\u05d9\u05d7\u05d5\u05ea"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getWidgetsSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sec:widgets"

    const-string v3, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:apps"

    const-string v2, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd"

    const-string v3, "\u05e1\u05d9\u05d3\u05d5\u05e8, \u05d4\u05e2\u05d1\u05e8\u05d4 \u05d5\u05d4\u05e1\u05ea\u05e8\u05d4"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:keys"

    const-string v2, "\u05de\u05e7\u05e9\u05d9\u05dd"

    const-string v3, "\u05e1\u05e4\u05e8\u05d5\u05ea, \u05d7\u05d9\u05e6\u05d9\u05dd \u05d5\u05de\u05e7\u05e9\u05d9\u05dd \u05e8\u05db\u05d9\u05dd"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:reset"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1"

    const-string v3, "\u05e9\u05d7\u05d6\u05d5\u05e8 \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method private buildSettingsList()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildRootList()V

    goto :goto_0

    .line 157
    :cond_0
    const-string v1, "time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildTimeList()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "look"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildLookList()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "widgets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildWidgetsList()V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildAppsList()V

    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "keys"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildKeysList()V

    goto :goto_0

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildResetList()V

    .line 170
    :cond_6
    :goto_0
    return-void
.end method

.method private buildTimeList()V
    .locals 8

    .line 191
    const-string v0, "\u05e9\u05e2\u05d5\u05df \u05d5\u05ea\u05d0\u05e8\u05d9\u05da"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05e9\u05e2\u05d5\u05df"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isClockEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "clock_enabled"

    const-string v3, "\u05d4\u05e6\u05d2\u05d4"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockSizeSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock_size"

    const-string v5, "\u05d2\u05d5\u05d3\u05dc"

    invoke-static {v2, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockColorSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock_color"

    const-string v6, "\u05e6\u05d1\u05e2"

    invoke-static {v2, v6, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockFontStyleSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock_font_style"

    const-string v7, "\u05d2\u05d5\u05e4\u05df"

    invoke-static {v2, v7, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d5\u05e2\u05d6\u05d9"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isDateEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "date_enabled"

    invoke-static {v2, v3, v4, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateSize(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "date_size"

    invoke-static {v7, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isHebrewDateEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v7, "hebrew_date_enabled"

    invoke-static {v7, v3, v4, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateSize(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hebrew_date_size"

    invoke-static {v2, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "hebrew_date_color"

    const-string v2, "\u05d4\u05ea\u05d0\u05de\u05ea \u05e6\u05d1\u05e2"

    invoke-static {v1, v6, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method private buildWidgetsList()V
    .locals 6

    .line 221
    const-string v0, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 222
    nop

    .line 223
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "widgets_none"

    const-string v2, "\u05d0\u05d9\u05df \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd"

    const-string v3, "\u05dc\u05d4\u05d5\u05e1\u05e4\u05d4: \u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 \u05e2\u05dc \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4 \u05d1\u05ea\u05e4\u05e8\u05d9\u05d8 \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-void

    .line 229
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 230
    iget v2, v1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-nez v2, :cond_1

    const-string v2, "\u05de\u05e1\u05da \u05e8\u05d0\u05e9\u05d9"

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u05e2\u05de\u05d5\u05d3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    :goto_1
    iget-object v3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->label:Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05e4\u05e8\u05d9\u05e1\u05d4"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "widgets_reset_layout"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05d9\u05e7\u05d5\u05de\u05d9\u05dd \u05d5\u05d2\u05d3\u05dc\u05d9\u05dd"

    const-string v3, "\u05d4\u05d7\u05d6\u05e8\u05ea \u05db\u05dc \u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05dc\u05de\u05e1\u05da \u05d4\u05e8\u05d0\u05e9\u05d9 \u05dc\u05e4\u05e8\u05d9\u05e1\u05ea \u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method private forceReloadLauncherModel()V
    .locals 6

    .line 987
    :try_start_0
    const-string v0, "com.sprd.classichome.model.LauncherModel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 988
    const-string v1, "forceReloadApps"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    goto :goto_0

    .line 989
    :catchall_0
    move-exception v0

    .line 990
    const-string v1, "LauncherSettingsActivity"

    const-string v2, "forceReloadLauncherModel failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    :goto_0
    return-void
.end method

.method private getCardBgSummary()Ljava/lang/String;
    .locals 2

    .line 1038
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardBgType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1043
    const-string v0, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05e2\u05d3\u05d9\u05e0\u05d4 (15%)"

    return-object v0

    .line 1042
    :cond_0
    const-string v0, "\u05e8\u05e7\u05e2 \u05db\u05d4\u05d4 \u05de\u05dc\u05d0"

    return-object v0

    .line 1041
    :cond_1
    const-string v0, "\u05db\u05d4\u05d4 \u05e9\u05e7\u05d5\u05e3 (Dark Frost)"

    return-object v0

    .line 1040
    :cond_2
    const-string v0, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05de\u05d5\u05d3\u05d2\u05e9\u05ea (35%)"

    return-object v0

    .line 1039
    :cond_3
    const-string v0, "\u05e9\u05e7\u05d5\u05e3 \u05dc\u05d2\u05de\u05e8\u05d9"

    return-object v0
.end method

.method private getClockColorSummary()Ljava/lang/String;
    .locals 2

    .line 1004
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockColor(Landroid/content/Context;)I

    move-result v0

    .line 1005
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u05dc\u05d1\u05df \u05e7\u05dc\u05d0\u05e1\u05d9"

    return-object v0

    .line 1006
    :cond_0
    const/16 v1, -0x2900

    if-ne v0, v1, :cond_1

    const-string v0, "\u05d6\u05d4\u05d1 \u05d9\u05d5\u05e7\u05e8\u05ea\u05d9"

    return-object v0

    .line 1007
    :cond_1
    const v1, -0xff1a01

    if-ne v0, v1, :cond_2

    const-string v0, "\u05ea\u05db\u05dc\u05ea \u05e0\u05d9\u05d0\u05d5\u05df"

    return-object v0

    .line 1008
    :cond_2
    const v1, -0xff198a

    if-ne v0, v1, :cond_3

    const-string v0, "\u05d9\u05e8\u05d5\u05e7 \u05d6\u05d5\u05d4\u05e8"

    return-object v0

    .line 1009
    :cond_3
    const/16 v1, -0x6f00

    if-ne v0, v1, :cond_4

    const-string v0, "\u05db\u05ea\u05d5\u05dd \u05d0\u05e9"

    return-object v0

    .line 1010
    :cond_4
    const v1, -0xadae

    if-ne v0, v1, :cond_5

    const-string v0, "\u05d0\u05d3\u05d5\u05dd \u05e7\u05d5\u05e8\u05dc"

    return-object v0

    .line 1011
    :cond_5
    const v1, -0x1fbf05

    if-ne v0, v1, :cond_6

    const-string v0, "\u05e1\u05d2\u05d5\u05dc"

    return-object v0

    .line 1012
    :cond_6
    const/16 v1, -0x100

    if-ne v0, v1, :cond_7

    const-string v0, "\u05e6\u05d4\u05d5\u05d1"

    return-object v0

    .line 1013
    :cond_7
    const v1, -0x9b4a0a

    if-ne v0, v1, :cond_8

    const-string v0, "\u05ea\u05db\u05dc\u05ea \u05e8\u05d2\u05d5\u05e2"

    return-object v0

    .line 1014
    :cond_8
    const-string v0, "\u05e6\u05d1\u05e2 \u05de\u05d5\u05ea\u05d0\u05dd"

    return-object v0
.end method

.method private getClockFontStyleSummary()Ljava/lang/String;
    .locals 2

    .line 1018
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockFontStyle(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1023
    const-string v0, "\u05e8\u05d2\u05d9\u05dc (Normal)"

    return-object v0

    .line 1022
    :cond_0
    const-string v0, "Serif"

    return-object v0

    .line 1021
    :cond_1
    const-string v0, "\u05de\u05d5\u05e0\u05d5\u05e1\u05e4\u05d9\u05d9\u05e1 (Monospace)"

    return-object v0

    .line 1020
    :cond_2
    const-string v0, "\u05d3\u05e7 (Light)"

    return-object v0

    .line 1019
    :cond_3
    const-string v0, "\u05de\u05d5\u05d3\u05d2\u05e9 (Bold)"

    return-object v0
.end method

.method private getClockSizeSummary()Ljava/lang/String;
    .locals 4

    .line 996
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockSize(Landroid/content/Context;)I

    move-result v0

    .line 997
    const-string v1, "sp)"

    const/16 v2, 0x22

    if-gt v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u05e7\u05d8\u05df ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 998
    :cond_0
    const/16 v2, 0x2e

    if-gt v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u05e8\u05d2\u05d9\u05dc ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 999
    :cond_1
    const/16 v2, 0x3a

    if-gt v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u05d2\u05d3\u05d5\u05dc ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u05e2\u05e0\u05e7 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getClockTimeFormatSummary()Ljava/lang/String;
    .locals 2

    .line 1028
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockTimeFormat(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1033
    const-string v0, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    return-object v0

    .line 1032
    :cond_0
    const-string v0, "12 \u05e9\u05e2\u05d5\u05ea \u05dc\u05dc\u05d0 AM/PM (h:mm)"

    return-object v0

    .line 1031
    :cond_1
    const-string v0, "12 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd AM/PM (h:mm a)"

    return-object v0

    .line 1030
    :cond_2
    const-string v0, "24 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd \u05e9\u05e0\u05d9\u05d5\u05ea (HH:mm:ss)"

    return-object v0

    .line 1029
    :cond_3
    const-string v0, "24 \u05e9\u05e2\u05d5\u05ea (HH:mm)"

    return-object v0
.end method

.method private getInstalledApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 892
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 893
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 896
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 897
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 898
    new-instance v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    invoke-direct {v5, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;)V

    .line 899
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->pkg:Ljava/lang/String;

    .line 900
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->cls:Ljava/lang/String;

    .line 901
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    .line 902
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 903
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    goto :goto_0

    .line 905
    :cond_0
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 911
    return-object v2
.end method

.method private getNumLongModeSummary()Ljava/lang/String;
    .locals 2

    .line 1048
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumLongPressMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1051
    const-string v0, "\u05d7\u05d9\u05d5\u05d2 \u05de\u05d4\u05d9\u05e8 (Speed Dial)"

    return-object v0

    .line 1050
    :cond_0
    const-string v0, "\u05d4\u05ea\u05d0\u05de\u05d4 \u05e4\u05e8\u05d8\u05e0\u05d9\u05ea \u05dc\u05e4\u05d9 \u05de\u05e7\u05e9"

    return-object v0

    .line 1049
    :cond_1
    const-string v0, "\u05d4\u05e4\u05e2\u05dc\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05de\u05d5\u05ea\u05d0\u05de\u05d5\u05ea"

    return-object v0
.end method

.method private getNumShortModeSummary()Ljava/lang/String;
    .locals 2

    .line 1056
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumShortPressMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1058
    const-string v0, "\u05d7\u05d9\u05d9\u05d2\u05df \u05e8\u05d2\u05d9\u05dc"

    return-object v0

    .line 1057
    :cond_0
    const-string v0, "\u05e7\u05d9\u05e6\u05d5\u05e8 \u05d9\u05e9\u05d9\u05e8 \u05dc\u05e4\u05ea\u05d9\u05d7\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    return-object v0
.end method

.method private getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1063
    const-string v0, "default"

    invoke-static {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1064
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1065
    :cond_0
    const-string p2, "action:flashlight"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "\u05e4\u05e0\u05e1"

    return-object p1

    .line 1066
    :cond_1
    const-string p2, "action:notifications"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "\u05d5\u05d9\u05dc\u05d5\u05df \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    return-object p1

    .line 1067
    :cond_2
    const-string p2, "action:silent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "\u05de\u05e6\u05d1 \u05e9\u05e7\u05d8 / \u05e8\u05d2\u05d9\u05dc"

    return-object p1

    .line 1068
    :cond_3
    const-string p2, "action:settings"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    return-object p1

    .line 1069
    :cond_4
    const-string p2, "action:main_menu"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9"

    return-object p1

    .line 1070
    :cond_5
    const-string p2, "action:call_log"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "\u05d9\u05d5\u05de\u05df \u05e9\u05d9\u05d7\u05d5\u05ea"

    return-object p1

    .line 1071
    :cond_6
    const-string p2, "action:none"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "\u05dc\u05dc\u05d0 \u05e4\u05e2\u05d5\u05dc\u05d4"

    return-object p1

    .line 1072
    :cond_7
    const-string p2, "app:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1073
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1075
    :cond_8
    return-object p1
.end method

.method private getWidgetsSummary()Ljava/lang/String;
    .locals 2

    .line 240
    :try_start_0
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 242
    if-nez v0, :cond_0

    const-string v0, "\u05d0\u05d9\u05df \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u05de\u05d5\u05e6\u05d1\u05d9\u05dd"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    const-string v0, ""

    return-object v0
.end method

.method private handleSettingClick(Ljava/lang/String;)V
    .locals 5

    .line 292
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "sec:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 295
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 296
    return-void

    .line 298
    :cond_0
    const-string v1, "menu_columns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 299
    nop

    .line 300
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getMenuColumns(Landroid/content/Context;)I

    move-result p1

    .line 299
    const-string v0, "\u05e2\u05de\u05d5\u05d3\u05d5\u05ea \u05d1\u05ea\u05e4\u05e8\u05d9\u05d8 \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd"

    invoke-direct {p0, v0, p1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColumnsDialog(Ljava/lang/String;IZ)V

    .line 301
    return-void

    .line 303
    :cond_1
    const-string v1, "home_columns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    nop

    .line 305
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHomeColumns(Landroid/content/Context;)I

    move-result p1

    .line 304
    const-string v1, "\u05e2\u05de\u05d5\u05d3\u05d5\u05ea \u05d1\u05e8\u05e9\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColumnsDialog(Ljava/lang/String;IZ)V

    .line 306
    return-void

    .line 308
    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "widget:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showWidgetActionsDialog(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad widget key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LauncherSettingsActivity"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    :goto_0
    return-void

    .line 316
    :cond_3
    const-string v1, "widgets_reset_layout"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPage0Layout()V

    .line 319
    const-string p1, "\u05d4\u05e4\u05e8\u05d9\u05e1\u05d4 \u05d0\u05d5\u05e4\u05e1\u05d4"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 320
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 321
    return-void

    .line 323
    :cond_4
    const-string v1, "widgets_none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 324
    return-void

    .line 326
    :cond_5
    const-string v1, "home_choose"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 327
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->openHomeChooser(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 328
    const-string p1, "\u05dc\u05d0 \u05e0\u05de\u05e6\u05d0 \u05de\u05e1\u05da \u05dc\u05d1\u05d7\u05d9\u05e8\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 330
    :cond_6
    return-void

    .line 331
    :cond_7
    const-string v1, "home_active"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "home_restore"

    if-eqz v1, :cond_b

    .line 332
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isModHomeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 333
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isStockHomeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    .line 334
    :goto_1
    if-eqz p1, :cond_9

    .line 335
    invoke-direct {p0, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->handleSettingClick(Ljava/lang/String;)V

    goto :goto_2

    .line 337
    :cond_9
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->activateModHome(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 338
    const-string p1, "\u05d4\u05de\u05e1\u05da \u05d4\u05de\u05e9\u05d5\u05d3\u05e8\u05d2 \u05e4\u05e2\u05d9\u05dc, \u05d4\u05de\u05e7\u05d5\u05e8\u05d9 \u05d4\u05d5\u05e9\u05d1\u05ea"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 339
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 343
    :cond_a
    const-string p1, "\u05e0\u05d3\u05e8\u05e9\u05ea \u05d4\u05e8\u05e9\u05d0\u05ea \u05e8\u05d5\u05d8 - \u05e0\u05e4\u05ea\u05d7 \u05d1\u05d5\u05e8\u05e8 \u05d9\u05d3\u05e0\u05d9"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 345
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->openHomeChooser(Landroid/content/Context;)Z

    .line 348
    :goto_2
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 349
    return-void

    .line 350
    :cond_b
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    if-eqz v1, :cond_c

    .line 354
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    const-string v0, "\u05d7\u05d6\u05e8\u05d4 \u05dc\u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea \u05d4\u05de\u05e7\u05d5\u05e8\u05d9"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 356
    const-string v0, "\u05d4\u05de\u05e1\u05da \u05d4\u05de\u05e9\u05d5\u05d3\u05e8\u05d2 \u05d9\u05d5\u05e9\u05d1\u05ea \u05d5\u05ea\u05d7\u05d6\u05d5\u05e8 \u05dc\u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea \u05d4\u05de\u05e7\u05d5\u05e8\u05d9.\n\n\u05d0\u05e4\u05e9\u05e8 \u05dc\u05d4\u05e4\u05e2\u05d9\u05dc \u05d0\u05d5\u05ea\u05d5 \u05d7\u05d6\u05e8\u05d4 \u05d1\u05db\u05dc \u05e8\u05d2\u05e2 \u05de\u05ea\u05d5\u05da \u05d4\u05de\u05e1\u05da \u05d4\u05d6\u05d4, \u05e9\u05e0\u05e9\u05d0\u05e8 \u05e0\u05d2\u05d9\u05e9 \u05de\u05e8\u05e9\u05d9\u05de\u05ea \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd."

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 359
    const-string v1, "\u05d4\u05d7\u05d6\u05e8 \u05dc\u05de\u05e7\u05d5\u05e8\u05d9"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 366
    invoke-virtual {p1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 368
    return-void

    .line 370
    :cond_c
    const-string v1, "clock_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 371
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isClockEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 372
    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setClockEnabled(Landroid/content/Context;Z)V

    .line 373
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 374
    goto/16 :goto_3

    :cond_d
    const-string v1, "clock_size"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 375
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showClockSizeDialog()V

    goto/16 :goto_3

    .line 376
    :cond_e
    const-string v1, "clock_color"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 377
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$3;

    invoke-direct {p1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$3;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v0, "\u05d1\u05d7\u05e8 \u05e6\u05d1\u05e2 \u05dc\u05e9\u05e2\u05d5\u05df"

    invoke-direct {p0, v0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V

    goto/16 :goto_3

    .line 384
    :cond_f
    const-string v1, "clock_font_style"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 385
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showClockFontStyleDialog()V

    goto/16 :goto_3

    .line 386
    :cond_10
    const-string v1, "clock_time_format"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 387
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTimeFormatDialog()V

    goto/16 :goto_3

    .line 388
    :cond_11
    const-string v1, "date_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 389
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isDateEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 390
    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setDateEnabled(Landroid/content/Context;Z)V

    .line 391
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 392
    goto/16 :goto_3

    :cond_12
    const-string v1, "date_size"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 393
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateSize(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$4;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v1, "\u05d2\u05d5\u05d3\u05dc \u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d5\u05e2\u05d6\u05d9"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V

    goto/16 :goto_3

    .line 400
    :cond_13
    const-string v1, "hebrew_date_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 401
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isHebrewDateEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 402
    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setHebrewDateEnabled(Landroid/content/Context;Z)V

    .line 403
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 404
    goto/16 :goto_3

    :cond_14
    const-string v1, "hebrew_date_size"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 405
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateSize(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$5;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v1, "\u05d2\u05d5\u05d3\u05dc \u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V

    goto/16 :goto_3

    .line 412
    :cond_15
    const-string v1, "hebrew_date_color"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 413
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;

    invoke-direct {p1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v0, "\u05d1\u05d7\u05e8 \u05e6\u05d1\u05e2 \u05dc\u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-direct {p0, v0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V

    goto/16 :goto_3

    .line 420
    :cond_16
    const-string v1, "card_bg_type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 421
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showCardBgDialog()V

    goto/16 :goto_3

    .line 422
    :cond_17
    const-string v1, "card_corner_radius"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 423
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showCornerRadiusDialog()V

    goto/16 :goto_3

    .line 424
    :cond_18
    const-string v1, "missed_calls_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 425
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isMissedCallsEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 426
    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setMissedCallsEnabled(Landroid/content/Context;Z)V

    .line 427
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 428
    goto/16 :goto_3

    :cond_19
    const-string v1, "num_long_press_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 429
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumLongModeDialog()V

    goto/16 :goto_3

    .line 430
    :cond_1a
    const-string v1, "num_short_press_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 431
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumShortModeDialog()V

    goto/16 :goto_3

    .line 432
    :cond_1b
    const-string v1, "shortcuts_numbers_long"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 433
    invoke-direct {p0, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumbersShortcutDialog(Z)V

    goto/16 :goto_3

    .line 434
    :cond_1c
    const-string v1, "shortcuts_numbers_short"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 435
    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumbersShortcutDialog(Z)V

    goto/16 :goto_3

    .line 436
    :cond_1d
    const-string v0, "shortcut_dpad_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 437
    const-string p1, "D-Pad \u05dc\u05de\u05e2\u05dc\u05d4"

    const-string v0, "key_dpad_up_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 438
    :cond_1e
    const-string v0, "shortcut_dpad_down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 439
    const-string p1, "D-Pad \u05dc\u05de\u05d8\u05d4"

    const-string v0, "key_dpad_down_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 440
    :cond_1f
    const-string v0, "shortcut_dpad_left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 441
    const-string p1, "D-Pad \u05e9\u05de\u05d0\u05dc\u05d4"

    const-string v0, "key_dpad_left_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 442
    :cond_20
    const-string v0, "shortcut_dpad_right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 443
    const-string p1, "D-Pad \u05d9\u05de\u05d9\u05e0\u05d4"

    const-string v0, "key_dpad_right_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 444
    :cond_21
    const-string v0, "shortcut_dpad_center_long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 445
    const-string p1, "\u05de\u05e7\u05e9 \u05de\u05e8\u05db\u05d6\u05d9 (\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4)"

    const-string v0, "key_dpad_center_long"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 446
    :cond_22
    const-string v0, "shortcut_softkey_left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 447
    const-string p1, "\u05de\u05e7\u05e9 \u05ea\u05e4\u05e8\u05d9\u05d8 \u05e9\u05de\u05d0\u05dc"

    const-string v0, "key_softkey_left_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 448
    :cond_23
    const-string v0, "shortcut_softkey_right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 449
    const-string p1, "\u05de\u05e7\u05e9 \u05ea\u05e4\u05e8\u05d9\u05d8 \u05d9\u05de\u05d9\u05df"

    const-string v0, "key_softkey_right_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 450
    :cond_24
    const-string v0, "apps_management"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 451
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showAppManagementDialog()V

    goto :goto_3

    .line 452
    :cond_25
    const-string v0, "reset_apps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 453
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    const-string v0, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05d9\u05e7\u05d5\u05de\u05d9 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 455
    const-string v0, "\u05d4\u05d0\u05dd \u05dc\u05e9\u05d7\u05d6\u05e8 \u05d0\u05ea \u05d7\u05dc\u05d5\u05e7\u05ea \u05db\u05dc \u05d4\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc?"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 456
    const-string v1, "\u05d0\u05d9\u05e9\u05d5\u05e8"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 465
    invoke-virtual {p1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 467
    :cond_26
    const-string v0, "reset_all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 468
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 469
    const-string v0, "\u05e9\u05d7\u05d6\u05d5\u05e8 \u05db\u05dc \u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 470
    const-string v0, "\u05d4\u05d0\u05dd \u05dc\u05d0\u05e4\u05e1 \u05d0\u05ea \u05db\u05dc \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc?"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$8;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 471
    const-string v1, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05dc\u05d0"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 480
    invoke-virtual {p1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 483
    :cond_27
    :goto_3
    return-void
.end method

.method private pickApp(Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V
    .locals 4

    .line 915
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 916
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 917
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 918
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    iget-object v3, v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 920
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 921
    const-string v3, "\u05d1\u05d7\u05e8 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;

    invoke-direct {v3, p0, v0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/util/List;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V

    .line 922
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 929
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 930
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 931
    return-void
.end method

.method private refreshList()V
    .locals 1

    .line 486
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildSettingsList()V

    .line 487
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mAdapter:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

    invoke-virtual {v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->notifyDataSetChanged()V

    .line 488
    return-void
.end method

.method private setScreenTitle(Ljava/lang/String;)V
    .locals 1

    .line 495
    invoke-virtual {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_0
    goto :goto_0

    .line 500
    :catchall_0
    move-exception p1

    .line 502
    :goto_0
    return-void
.end method

.method private showAppManagementDialog()V
    .locals 6

    .line 934
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 935
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 936
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 937
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    iget-object v3, v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->pkg:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    iget-object v4, v4, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->cls:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/sprd/classichome/settings/LauncherSettings;->getCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 938
    nop

    .line 939
    const-string v4, "mainmenu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, " [\u05ea\u05e4\u05e8\u05d9\u05d8]"

    goto :goto_1

    .line 940
    :cond_0
    const-string v4, "extra"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, " [\u05db\u05dc\u05d9\u05dd]"

    goto :goto_1

    .line 941
    :cond_1
    const-string v4, "game"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, " [\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd]"

    goto :goto_1

    .line 942
    :cond_2
    const-string v4, "hide"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " [\u05de\u05d5\u05e1\u05ea\u05e8]"

    goto :goto_1

    :cond_3
    const-string v3, ""

    .line 943
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    iget-object v5, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 936
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 947
    const-string v3, "\u05e0\u05d9\u05d4\u05d5\u05dc \u05d5\u05e1\u05d9\u05d3\u05d5\u05e8 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;

    invoke-direct {v3, p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/util/List;)V

    .line 948
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 981
    const-string v2, "\u05e1\u05d2\u05d5\u05e8"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 983
    return-void
.end method

.method private showCardBgDialog()V
    .locals 5

    .line 685
    const-string v0, "\u05e9\u05e7\u05d5\u05e3 \u05dc\u05d2\u05de\u05e8\u05d9 (\u05dc\u05dc\u05d0 \u05e8\u05e7\u05e2)"

    const-string v1, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05e2\u05d3\u05d9\u05e0\u05d4 (15% \u05e9\u05e7\u05d9\u05e4\u05d5\u05ea)"

    const-string v2, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05de\u05d5\u05d3\u05d2\u05e9\u05ea (35% \u05e9\u05e7\u05d9\u05e4\u05d5\u05ea)"

    const-string v3, "\u05db\u05d4\u05d4 \u05e9\u05e7\u05d5\u05e3 (Dark Frost)"

    const-string v4, "\u05e8\u05e7\u05e2 \u05db\u05d4\u05d4 \u05de\u05dc\u05d0 (Solid Dark)"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardBgType(Landroid/content/Context;)I

    move-result v1

    .line 693
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 694
    const-string v3, "\u05e8\u05e7\u05e2 \u05d5\u05e9\u05e7\u05d9\u05e4\u05d5\u05ea \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 695
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 703
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 705
    return-void
.end method

.method private showClockFontStyleDialog()V
    .locals 5

    .line 618
    const-string v0, "\u05e8\u05d2\u05d9\u05dc (Normal)"

    const-string v1, "\u05de\u05d5\u05d3\u05d2\u05e9 (Bold)"

    const-string v2, "\u05d3\u05e7 (Light)"

    const-string v3, "\u05de\u05d5\u05e0\u05d5\u05e1\u05e4\u05d9\u05d9\u05e1 (Monospace)"

    const-string v4, "Serif"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockFontStyle(Landroid/content/Context;)I

    move-result v1

    .line 620
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 621
    const-string v3, "\u05e1\u05d2\u05e0\u05d5\u05df \u05d2\u05d5\u05e4\u05df \u05e9\u05e2\u05d5\u05df"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 622
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 630
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 632
    return-void
.end method

.method private showClockSizeDialog()V
    .locals 6

    .line 564
    const-string v0, "\u05e7\u05d8\u05df (34sp)"

    const-string v1, "\u05e8\u05d2\u05d9\u05dc (46sp)"

    const-string v2, "\u05d2\u05d3\u05d5\u05dc (58sp)"

    const-string v3, "\u05e2\u05e0\u05e7 (68sp)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 565
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 566
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockSize(Landroid/content/Context;)I

    move-result v3

    .line 567
    nop

    .line 568
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 569
    aget v5, v2, v4

    if-ne v5, v3, :cond_0

    .line 570
    nop

    .line 571
    goto :goto_1

    .line 568
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 574
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    const-string v3, "\u05d1\u05d7\u05e8 \u05d2\u05d5\u05d3\u05dc \u05e9\u05e2\u05d5\u05df"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;

    invoke-direct {v3, p0, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;[I)V

    .line 576
    invoke-virtual {v1, v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 584
    const-string v2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 586
    return-void

    nop

    :array_0
    .array-data 4
        0x22
        0x2e
        0x3a
        0x44
    .end array-data
.end method

.method private showColorPickerDialog(Ljava/lang/String;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V
    .locals 9

    .line 593
    const-string v0, "\u05dc\u05d1\u05df \u05e7\u05dc\u05d0\u05e1\u05d9"

    const-string v1, "\u05d6\u05d4\u05d1 \u05d9\u05d5\u05e7\u05e8\u05ea\u05d9"

    const-string v2, "\u05ea\u05db\u05dc\u05ea \u05e0\u05d9\u05d0\u05d5\u05df"

    const-string v3, "\u05d9\u05e8\u05d5\u05e7 \u05d6\u05d5\u05d4\u05e8"

    const-string v4, "\u05db\u05ea\u05d5\u05dd \u05d0\u05e9"

    const-string v5, "\u05d0\u05d3\u05d5\u05dd \u05e7\u05d5\u05e8\u05dc"

    const-string v6, "\u05e1\u05d2\u05d5\u05dc"

    const-string v7, "\u05e6\u05d4\u05d5\u05d1"

    const-string v8, "\u05ea\u05db\u05dc\u05ea \u05e8\u05d2\u05d5\u05e2"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 594
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 605
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 606
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;

    invoke-direct {v2, p0, p2, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;[I)V

    .line 607
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 613
    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 614
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 615
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x2900
        -0xff1a01
        -0xff198a
        -0x6f00
        -0xadae
        -0x1fbf05
        -0x100
        -0x9b4a0a
    .end array-data
.end method

.method private showColumnsDialog(Ljava/lang/String;IZ)V
    .locals 6

    .line 510
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    .line 511
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 512
    add-int/lit8 v3, v2, 0x2

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " \u05e2\u05de\u05d5\u05d3\u05d5\u05ea"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, p2, :cond_0

    const-string v3, "  \u2713"

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :cond_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;

    invoke-direct {p2, p0, p3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Z)V

    .line 517
    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 529
    const-string p3, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 531
    return-void
.end method

.method private showCornerRadiusDialog()V
    .locals 6

    .line 708
    const-string v0, "\u05dc\u05dc\u05d0 \u05e4\u05d9\u05e0\u05d5\u05ea \u05de\u05e2\u05d5\u05d2\u05dc\u05d5\u05ea (0dp)"

    const-string v1, "\u05de\u05e2\u05d5\u05d2\u05dc \u05e2\u05d3\u05d9\u05df (8dp)"

    const-string v2, "\u05de\u05e2\u05d5\u05d2\u05dc \u05de\u05d5\u05d3\u05e8\u05e0\u05d9 (14dp)"

    const-string v3, "\u05de\u05e2\u05d5\u05d2\u05dc \u05de\u05dc\u05d0 (22dp)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 709
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 710
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardCornerRadius(Landroid/content/Context;)I

    move-result v3

    .line 711
    nop

    .line 712
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 713
    aget v5, v2, v4

    if-ne v5, v3, :cond_0

    .line 714
    nop

    .line 715
    goto :goto_1

    .line 712
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 718
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 719
    const-string v3, "\u05e4\u05d9\u05e0\u05d5\u05ea \u05de\u05e2\u05d5\u05d2\u05dc\u05d5\u05ea \u05e9\u05dc \u05d4\u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;

    invoke-direct {v3, p0, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;[I)V

    .line 720
    invoke-virtual {v1, v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 728
    const-string v2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 730
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x8
        0xe
        0x16
    .end array-data
.end method

.method private showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 804
    const-string v0, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    const-string v1, "\u05d1\u05d7\u05d9\u05e8\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4..."

    const-string v2, "\u05d4\u05d3\u05dc\u05e7\u05ea / \u05db\u05d9\u05d1\u05d5\u05d9 \u05e4\u05e0\u05e1"

    const-string v3, "\u05e4\u05ea\u05d9\u05d7\u05ea \u05d5\u05d9\u05dc\u05d5\u05df \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    const-string v4, "\u05de\u05e6\u05d1 \u05e9\u05e7\u05d8 / \u05e8\u05d2\u05d9\u05dc"

    const-string v5, "\u05e4\u05ea\u05d9\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    const-string v6, "\u05e4\u05ea\u05d9\u05d7\u05ea \u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9"

    const-string v7, "\u05d9\u05d5\u05de\u05df \u05e9\u05d9\u05d7\u05d5\u05ea"

    const-string v8, "\u05de\u05e2\u05d1\u05e8 \u05dc\u05e2\u05de\u05d5\u05d3 \u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05d4\u05d1\u05d0"

    const-string v9, "\u05e2\u05e8\u05d9\u05db\u05ea \u05de\u05d9\u05e7\u05d5\u05dd \u05d5\u05d2\u05d5\u05d3\u05dc \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    const-string v10, "\u05dc\u05dc\u05d0 \u05e4\u05e2\u05d5\u05dc\u05d4"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 817
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 818
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;

    invoke-direct {v1, p0, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 875
    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 876
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 877
    return-void
.end method

.method private showNumLongModeDialog()V
    .locals 4

    .line 733
    const-string v0, "\u05d7\u05d9\u05d5\u05d2 \u05de\u05d4\u05d9\u05e8 (Speed Dial)"

    const-string v1, "\u05d4\u05e4\u05e2\u05dc\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05de\u05d5\u05ea\u05d0\u05de\u05d5\u05ea"

    const-string v2, "\u05d4\u05ea\u05d0\u05de\u05d4 \u05e4\u05e8\u05d8\u05e0\u05d9\u05ea \u05dc\u05e4\u05d9 \u05de\u05e7\u05e9"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumLongPressMode(Landroid/content/Context;)I

    move-result v1

    .line 739
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 740
    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 \u05e2\u05dc \u05de\u05e7\u05e9\u05d9 \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 741
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 749
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 751
    return-void
.end method

.method private showNumShortModeDialog()V
    .locals 4

    .line 754
    const-string v0, "\u05e4\u05ea\u05d9\u05d7\u05ea \u05d7\u05d9\u05d9\u05d2\u05df \u05e8\u05d2\u05d9\u05dc (\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc)"

    const-string v1, "\u05e7\u05d9\u05e6\u05d5\u05e8 \u05d9\u05e9\u05d9\u05e8 \u05dc\u05e4\u05ea\u05d9\u05d7\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumShortPressMode(Landroid/content/Context;)I

    move-result v1

    .line 759
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4 \u05e2\u05dc \u05de\u05e7\u05e9\u05d9 \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 761
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 769
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 771
    return-void
.end method

.method private showNumbersShortcutDialog(Z)V
    .locals 16

    .line 783
    move-object/from16 v0, p0

    const-string v1, "\u05de\u05e7\u05e9 1"

    const-string v2, "\u05de\u05e7\u05e9 2"

    const-string v3, "\u05de\u05e7\u05e9 3"

    const-string v4, "\u05de\u05e7\u05e9 4"

    const-string v5, "\u05de\u05e7\u05e9 5"

    const-string v6, "\u05de\u05e7\u05e9 6"

    const-string v7, "\u05de\u05e7\u05e9 7"

    const-string v8, "\u05de\u05e7\u05e9 8"

    const-string v9, "\u05de\u05e7\u05e9 9"

    const-string v10, "\u05de\u05e7\u05e9 0"

    const-string v11, "\u05de\u05e7\u05e9 *"

    const-string v12, "\u05de\u05e7\u05e9 #"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    .line 784
    if-eqz p1, :cond_0

    const-string v2, "long"

    goto :goto_0

    :cond_0
    const-string v2, "short"

    .line 785
    :goto_0
    const/16 v3, 0xc

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    const-string v12, "9"

    const-string v13, "0"

    const-string v14, "star"

    const-string v15, "pound"

    filled-new-array/range {v4 .. v15}, [Ljava/lang/String;

    move-result-object v4

    .line 786
    new-array v5, v3, [Ljava/lang/String;

    .line 787
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_1

    .line 788
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key_num_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 787
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 790
    :cond_1
    if-eqz p1, :cond_2

    const-string v2, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 - "

    goto :goto_2

    :cond_2
    const-string v2, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4 - "

    .line 791
    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 792
    if-eqz p1, :cond_3

    const-string v4, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4: \u05d1\u05d7\u05e8 \u05de\u05e7\u05e9"

    goto :goto_3

    :cond_3
    const-string v4, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4: \u05d1\u05d7\u05e8 \u05de\u05e7\u05e9"

    :goto_3
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;

    invoke-direct {v4, v0, v2, v1, v5}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 793
    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 799
    const-string v3, "\u05d7\u05d6\u05d5\u05e8"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 800
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 801
    return-void
.end method

.method private showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V
    .locals 5

    .line 662
    const-string v0, "\u05e7\u05d8\u05df (11sp)"

    const-string v1, "\u05e8\u05d2\u05d9\u05dc (14sp)"

    const-string v2, "\u05d1\u05d9\u05e0\u05d5\u05e0\u05d9 (16sp)"

    const-string v3, "\u05d2\u05d3\u05d5\u05dc (18sp)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 663
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 664
    nop

    .line 665
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 666
    aget v4, v2, v3

    if-ne v4, p2, :cond_0

    .line 667
    nop

    .line 668
    goto :goto_1

    .line 665
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 671
    :goto_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 672
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;

    invoke-direct {p2, p0, p3, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;[I)V

    .line 673
    invoke-virtual {p1, v0, v3, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 680
    const-string p3, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 681
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 682
    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xe
        0x10
        0x12
    .end array-data
.end method

.method private showTimeFormatDialog()V
    .locals 5

    .line 635
    const-string v0, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    const-string v1, "24 \u05e9\u05e2\u05d5\u05ea (HH:mm)"

    const-string v2, "24 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd \u05e9\u05e0\u05d9\u05d5\u05ea (HH:mm:ss)"

    const-string v3, "12 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd AM/PM (h:mm a)"

    const-string v4, "12 \u05e9\u05e2\u05d5\u05ea \u05dc\u05dc\u05d0 AM/PM (h:mm)"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockTimeFormat(Landroid/content/Context;)I

    move-result v1

    .line 643
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 644
    const-string v3, "\u05e4\u05d5\u05e8\u05de\u05d8 \u05ea\u05e6\u05d5\u05d2\u05ea \u05e9\u05e2\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 645
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 653
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 655
    return-void
.end method

.method private showWidgetActionsDialog(I)V
    .locals 3

    .line 535
    const-string v0, "\u05de\u05d9\u05e7\u05d5\u05dd \u05d5\u05d2\u05d5\u05d3\u05dc"

    const-string v1, "\u05d4\u05e1\u05e8\u05d4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 536
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;I)V

    .line 537
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 559
    const-string v0, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 560
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 561
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    .line 284
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 285
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 289
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->applyRomTheme()V

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const-string p1, "\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 107
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 115
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setContentView(Landroid/view/View;)V

    .line 117
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildSettingsList()V

    .line 119
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mAdapter:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

    .line 120
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    return-void
.end method

.class public Lcom/sprd/classichome/settings/LauncherSettingsActivity;
.super Landroid/app/Activity;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;
    }
.end annotation


# static fields
.field private static final COLOR_NAMES:[Ljava/lang/String;

.field private static final COLOR_VALUES:[I

.field private static final GROUP_LABELS:[Ljava/lang/String;

.field private static final GROUP_VALUES:[Ljava/lang/String;

.field private static final KEY_ACTION_LABELS:[Ljava/lang/String;

.field private static final KEY_ACTION_VALUES:[Ljava/lang/String;

.field private static final SEC_APPS:Ljava/lang/String; = "apps"

.field private static final SEC_APPS_MANAGE:Ljava/lang/String; = "apps_manage"

.field private static final SEC_KEYS:Ljava/lang/String; = "keys"

.field private static final SEC_LOOK:Ljava/lang/String; = "look"

.field private static final SEC_RESET:Ljava/lang/String; = "reset"

.field private static final SEC_TIME:Ljava/lang/String; = "time"

.field private static final SEC_WIDGETS:Ljava/lang/String; = "widgets"

.field private static final TAG:Ljava/lang/String; = "LauncherSettingsActivity"


# instance fields
.field private mAdapter:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

.field private mAppsPos:I

.field private mCachedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mClickedPos:I

.field private mFeatureBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

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

.field private mRootPos:I

.field private mSection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 816
    const-string v0, "default"

    const-string v1, "app:"

    const-string v2, "action:flashlight"

    const-string v3, "action:notifications"

    const-string v4, "action:silent"

    const-string v5, "action:settings"

    const-string v6, "action:main_menu"

    const-string v7, "action:call_log"

    const-string v8, "action:flipper_next"

    const-string v9, "action:widget_edit"

    const-string v10, "action:none"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->KEY_ACTION_VALUES:[Ljava/lang/String;

    .line 829
    const-string v1, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    const-string v2, "\u05d1\u05d7\u05d9\u05e8\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4..."

    const-string v3, "\u05d4\u05d3\u05dc\u05e7\u05ea / \u05db\u05d9\u05d1\u05d5\u05d9 \u05e4\u05e0\u05e1"

    const-string v4, "\u05e4\u05ea\u05d9\u05d7\u05ea \u05d5\u05d9\u05dc\u05d5\u05df \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    const-string v5, "\u05de\u05e6\u05d1 \u05e9\u05e7\u05d8 / \u05e8\u05d2\u05d9\u05dc"

    const-string v6, "\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    const-string v7, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9"

    const-string v8, "\u05d9\u05d5\u05de\u05df \u05e9\u05d9\u05d7\u05d5\u05ea"

    const-string v9, "\u05de\u05e2\u05d1\u05e8 \u05dc\u05e2\u05de\u05d5\u05d3 \u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05d4\u05d1\u05d0"

    const-string v10, "\u05e2\u05e8\u05d9\u05db\u05ea \u05de\u05d9\u05e7\u05d5\u05dd \u05d5\u05d2\u05d5\u05d3\u05dc \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    const-string v11, "\u05dc\u05dc\u05d0 \u05e4\u05e2\u05d5\u05dc\u05d4"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->KEY_ACTION_LABELS:[Ljava/lang/String;

    .line 982
    const-string v0, "mainmenu"

    const-string v1, "extra"

    const-string v2, "game"

    const-string v3, "hide"

    const-string v4, "default"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->GROUP_VALUES:[Ljava/lang/String;

    .line 983
    const-string v0, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9"

    const-string v1, "\u05db\u05dc\u05d9\u05dd \u05d5\u05e2\u05d6\u05e8\u05d9\u05dd"

    const-string v2, "\u05de\u05e9\u05d7\u05e7\u05d9\u05dd"

    const-string v3, "\u05de\u05d5\u05e1\u05ea\u05e8"

    const-string v4, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->GROUP_LABELS:[Ljava/lang/String;

    .line 1289
    const-string v1, "\u05dc\u05d1\u05df"

    const-string v2, "\u05d6\u05d4\u05d1"

    const-string v3, "\u05d8\u05d5\u05e8\u05e7\u05d9\u05d6"

    const-string v4, "\u05d9\u05e8\u05d5\u05e7"

    const-string v5, "\u05db\u05ea\u05d5\u05dd"

    const-string v6, "\u05d0\u05d3\u05d5\u05dd"

    const-string v7, "\u05e1\u05d2\u05d5\u05dc"

    const-string v8, "\u05e6\u05d4\u05d5\u05d1"

    const-string v9, "\u05ea\u05db\u05dc\u05ea"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->COLOR_NAMES:[Ljava/lang/String;

    .line 1291
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->COLOR_VALUES:[I

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

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mClickedPos:I

    .line 237
    iput v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mRootPos:I

    .line 238
    iput v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mAppsPos:I

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->COLOR_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sprd/classichome/settings/LauncherSettingsActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$1100()[I
    .locals 1

    .line 56
    sget-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->COLOR_VALUES:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->handleSettingClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    return-void
.end method

.method static synthetic access$400(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->forceReloadLauncherModel()V

    return-void
.end method

.method static synthetic access$500(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->KEY_ACTION_VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->pickApp(Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V

    return-void
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->GROUP_VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method private appLabelOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 904
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 905
    new-instance v2, Landroid/content/ComponentName;

    aget-object v3, v1, v0

    .line 906
    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    aget-object v1, v1, v5

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 908
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 910
    :cond_1
    goto :goto_1

    .line 909
    :catchall_0
    move-exception v1

    .line 911
    :goto_1
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 912
    if-lez v1, :cond_2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private applyRomTheme()V
    .locals 4

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Theme.Holo.Light.NewUI"

    const-string v2, "style"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setTheme(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    .line 139
    :goto_0
    return-void
.end method

.method private buildAppsList()V
    .locals 4

    .line 347
    const-string v0, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05ea\u05e6\u05d5\u05d2\u05d4"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getMenuColumns(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u05d1\u05e9\u05d5\u05e8\u05d4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    const-string v2, "menu_columns"

    const-string v3, "\u05e2\u05de\u05d5\u05d3\u05d5\u05ea \u05d1\u05e8\u05e9\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05e1\u05d9\u05d3\u05d5\u05e8 \u05d5\u05d4\u05e1\u05ea\u05e8\u05d4"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:apps_manage"

    const-string v2, "\u05e0\u05d9\u05d4\u05d5\u05dc \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    const-string v3, "\u05d4\u05e2\u05d1\u05e8\u05d4 \u05d1\u05d9\u05df \u05e7\u05d1\u05d5\u05e6\u05d5\u05ea \u05d5\u05d4\u05e1\u05ea\u05e8\u05d4"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method private buildAppsManageList()V
    .locals 6

    .line 365
    const-string v0, "\u05e0\u05d9\u05d4\u05d5\u05dc \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v2, "\u05db\u05dc \u05d4\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    invoke-static {v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    .line 369
    iget-object v2, v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->pkg:Ljava/lang/String;

    iget-object v3, v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->cls:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettings;->getCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    iget-object v3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appmg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->cls:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    .line 371
    invoke-direct {p0, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->groupDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-static {v4, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method

.method private buildKeysList()V
    .locals 4

    .line 376
    const-string v0, "\u05de\u05e7\u05e9\u05d9\u05dd \u05d5\u05e7\u05d9\u05e6\u05d5\u05e8\u05d9\u05dd"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05de\u05e7\u05e9\u05d9 \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getNumShortModeSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "num_short_press_mode"

    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getNumLongModeSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "num_long_press_mode"

    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "shortcuts_numbers_short"

    const-string v2, "\u05e7\u05d9\u05e6\u05d5\u05e8\u05d9\u05dd \u05dc\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4"

    const-string v3, "\u05d4\u05d2\u05d3\u05e8\u05d4 \u05dc\u05db\u05dc \u05de\u05e7\u05e9"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "shortcuts_numbers_long"

    const-string v2, "\u05e7\u05d9\u05e6\u05d5\u05e8\u05d9\u05dd \u05dc\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05de\u05e7\u05e9\u05d9 \u05e0\u05d9\u05d5\u05d5\u05d8"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "up"

    const-string v2, "\u05d7\u05e5 \u05dc\u05de\u05e2\u05dc\u05d4"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->navKeyRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "down"

    const-string v2, "\u05d7\u05e5 \u05dc\u05de\u05d8\u05d4"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->navKeyRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "left"

    const-string v2, "\u05d7\u05e5 \u05e9\u05de\u05d0\u05dc\u05d4"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->navKeyRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "right"

    const-string v2, "\u05d7\u05e5 \u05d9\u05de\u05d9\u05e0\u05d4"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->navKeyRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "center"

    const-string v2, "\u05de\u05e7\u05e9 \u05d0\u05d9\u05e9\u05d5\u05e8"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->navKeyRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05de\u05e7\u05e9\u05d9\u05dd \u05e8\u05db\u05d9\u05dd"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "softleft"

    const-string v2, "\u05de\u05e7\u05e9 \u05ea\u05e4\u05e8\u05d9\u05d8 (\u05e9\u05de\u05d0\u05dc\u05d9)"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->navKeyRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "softright"

    const-string v2, "\u05de\u05e7\u05e9 \u05d7\u05d6\u05e8\u05d4 (\u05d9\u05de\u05e0\u05d9)"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->navKeyRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method private buildLookList()V
    .locals 5

    .line 314
    const-string v0, "\u05de\u05e8\u05d0\u05d4 \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05e8\u05e7\u05e2 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1\u05d9\u05dd"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getCardBgSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_bg_type"

    const-string v3, "\u05e8\u05e7\u05e2 \u05d5\u05e9\u05e7\u05d9\u05e4\u05d5\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 318
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardCornerRadius(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->cornerRadiusLabel(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    const-string v2, "card_corner_radius"

    const-string v3, "\u05e4\u05d9\u05e0\u05d5\u05ea \u05de\u05e2\u05d5\u05d2\u05dc\u05d5\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05d4\u05de\u05e1\u05da \u05d4\u05e8\u05d0\u05e9\u05d9"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHomeColumns(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u05d1\u05e9\u05d5\u05e8\u05d4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    const-string v2, "home_columns"

    const-string v3, "\u05e2\u05de\u05d5\u05d3\u05d5\u05ea \u05d1\u05e8\u05e9\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 324
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isMissedCallsEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 322
    const-string v2, "missed_calls_enabled"

    const-string v3, "\u05e9\u05d5\u05e8\u05ea \u05e9\u05d9\u05d7\u05d5\u05ea \u05d5\u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    const-string v4, "\u05de\u05d5\u05e1\u05ea\u05e8\u05ea \u05d0\u05d5\u05d8\u05d5\u05de\u05d8\u05d9\u05ea \u05db\u05e9\u05d0\u05d9\u05df \u05e9\u05d9\u05d7\u05d5\u05ea \u05e9\u05dc\u05d0 \u05e0\u05e2\u05e0\u05d5"

    invoke-static {v2, v3, v4, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method private buildResetList()V
    .locals 4

    .line 394
    const-string v0, "\u05d0\u05d9\u05e4\u05d5\u05e1"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05d7\u05dc\u05e7\u05d9"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "reset_display"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05ea\u05e6\u05d5\u05d2\u05d4"

    const-string v3, "\u05e9\u05e2\u05d5\u05df, \u05ea\u05d0\u05e8\u05d9\u05db\u05d9\u05dd, \u05e8\u05e7\u05e2 \u05d5\u05e8\u05e9\u05ea\u05d5\u05ea"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "reset_keys"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05e7\u05e9\u05d9\u05dd \u05d5\u05e7\u05d9\u05e6\u05d5\u05e8\u05d9\u05dd"

    const-string v3, "\u05db\u05dc \u05d4\u05e7\u05d9\u05e6\u05d5\u05e8\u05d9\u05dd \u05d7\u05d5\u05d6\u05e8\u05d9\u05dd \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "reset_apps"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05e9\u05d9\u05d5\u05da \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    const-string v3, "\u05e1\u05d9\u05d3\u05d5\u05e8 \u05d5\u05d4\u05e1\u05ea\u05e8\u05d4 \u05d7\u05d5\u05d6\u05e8\u05d9\u05dd \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "widgets_reset_layout"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05e4\u05e8\u05d9\u05e1\u05ea \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd"

    const-string v3, "\u05de\u05d9\u05e7\u05d5\u05de\u05d9\u05dd \u05d5\u05d2\u05d3\u05dc\u05d9\u05dd \u05d1\u05de\u05e1\u05da \u05d4\u05e8\u05d0\u05e9\u05d9"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05dc\u05d0"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "reset_all"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05db\u05dc \u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea"

    const-string v3, "\u05db\u05dc \u05d4\u05e1\u05e2\u05d9\u05e4\u05d9\u05dd \u05e9\u05dc\u05de\u05e2\u05dc\u05d4 \u05d9\u05d7\u05d3"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method private buildRootList()V
    .locals 4

    .line 269
    const-string v0, "\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 273
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isModHomeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isStockHomeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v2, "home_active"

    const-string v3, "\u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea \u05d4\u05de\u05e9\u05d5\u05d3\u05e8\u05d2"

    invoke-static {v2, v3, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->master(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05ea\u05e6\u05d5\u05d2\u05d4"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:time"

    const-string v2, "\u05e9\u05e2\u05d5\u05df \u05d5\u05ea\u05d0\u05e8\u05d9\u05da"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:look"

    const-string v2, "\u05de\u05e8\u05d0\u05d4 \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:widgets"

    const-string v2, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05d4\u05ea\u05e0\u05d4\u05d2\u05d5\u05ea"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:apps"

    const-string v2, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:keys"

    const-string v2, "\u05de\u05e7\u05e9\u05d9\u05dd \u05d5\u05e7\u05d9\u05e6\u05d5\u05e8\u05d9\u05dd"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05de\u05e2\u05e8\u05db\u05ea"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "sec:reset"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method private buildSettingsList()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildRootList()V

    goto :goto_0

    .line 244
    :cond_0
    const-string v1, "time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildTimeList()V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "look"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildLookList()V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "widgets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildWidgetsList()V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildAppsList()V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "apps_manage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildAppsManageList()V

    goto :goto_0

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "keys"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 255
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildKeysList()V

    goto :goto_0

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildResetList()V

    .line 259
    :cond_7
    :goto_0
    return-void
.end method

.method private buildTimeList()V
    .locals 8

    .line 288
    const-string v0, "\u05e9\u05e2\u05d5\u05df \u05d5\u05ea\u05d0\u05e8\u05d9\u05da"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05e9\u05e2\u05d5\u05df"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 291
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isClockEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 290
    const-string v2, "clock_enabled"

    const-string v3, "\u05d4\u05e6\u05d2\u05ea \u05e9\u05e2\u05d5\u05df"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockSizeSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock_size"

    const-string v3, "\u05d2\u05d5\u05d3\u05dc"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 294
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->colorName(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    const-string v2, "clock_color"

    const-string v5, "\u05e6\u05d1\u05e2"

    invoke-static {v2, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockFontStyleSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock_font_style"

    const-string v6, "\u05d2\u05d5\u05e4\u05df"

    invoke-static {v2, v6, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockTimeFormatSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock_time_format"

    const-string v6, "\u05e4\u05d5\u05e8\u05de\u05d8 \u05e9\u05e2\u05d4"

    invoke-static {v2, v6, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d5\u05e2\u05d6\u05d9"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 299
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isDateEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 298
    const-string v2, "date_enabled"

    const-string v6, "\u05d4\u05e6\u05d2\u05ea \u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d5\u05e2\u05d6\u05d9"

    invoke-static {v2, v6, v4, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateSize(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    const-string v6, "date_size"

    invoke-static {v6, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 303
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->colorName(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    const-string v6, "date_color"

    invoke-static {v6, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 306
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isHebrewDateEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 305
    const-string v6, "hebrew_date_enabled"

    const-string v7, "\u05d4\u05e6\u05d2\u05ea \u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-static {v6, v7, v4, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateSize(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    const-string v2, "hebrew_date_size"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    .line 310
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->colorName(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    const-string v2, "hebrew_date_color"

    invoke-static {v2, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method private buildWidgetsList()V
    .locals 6

    .line 328
    const-string v0, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd"

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 329
    nop

    .line 330
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v2, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05de\u05d5\u05e6\u05d1\u05d9\u05dd"

    invoke-static {v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05d0\u05d9\u05df \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd"

    const-string v2, "\u05dc\u05d4\u05d5\u05e1\u05e4\u05d4: \u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 \u05e2\u05dc \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4 \u05d1\u05ea\u05e4\u05e8\u05d9\u05d8 \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd"

    invoke-static {v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->info(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 336
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

    .line 337
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

    .line 338
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

    .line 339
    goto :goto_0

    .line 341
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u05e4\u05e8\u05d9\u05e1\u05d4"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "widgets_reset_layout"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05d9\u05e7\u05d5\u05de\u05d9\u05dd \u05d5\u05d2\u05d3\u05dc\u05d9\u05dd"

    const-string v3, "\u05db\u05dc \u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05d7\u05d5\u05d6\u05e8\u05d9\u05dd \u05dc\u05e4\u05e8\u05d9\u05e1\u05ea \u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method private colorName(I)Ljava/lang/String;
    .locals 3

    .line 1296
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->COLOR_VALUES:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1297
    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    sget-object p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->COLOR_NAMES:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    .line 1296
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1299
    :cond_1
    const-string p1, "\u05de\u05d5\u05ea\u05d0\u05dd \u05d0\u05d9\u05e9\u05d9\u05ea"

    return-object p1
.end method

.method private confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 1071
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1072
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1073
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;

    invoke-direct {p2, p0, p4}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/Runnable;)V

    .line 1074
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1080
    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1081
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1082
    return-void
.end method

.method private cornerRadiusLabel(I)Ljava/lang/String;
    .locals 1

    .line 1412
    if-gtz p1, :cond_0

    const-string p1, "\u05dc\u05dc\u05d0"

    return-object p1

    .line 1413
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "dp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private forceReloadLauncherModel()V
    .locals 6

    .line 1025
    :try_start_0
    const-string v0, "com.sprd.classichome.model.LauncherModel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1026
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

    .line 1029
    goto :goto_0

    .line 1027
    :catchall_0
    move-exception v0

    .line 1028
    const-string v1, "LauncherSettingsActivity"

    const-string v2, "forceReloadLauncherModel failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    :goto_0
    return-void
.end method

.method private getCardBgSummary()Ljava/lang/String;
    .locals 2

    .line 1402
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardBgType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1407
    const-string v0, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05e2\u05d3\u05d9\u05e0\u05d4 (15%)"

    return-object v0

    .line 1406
    :cond_0
    const-string v0, "\u05db\u05d4\u05d4 \u05de\u05dc\u05d0"

    return-object v0

    .line 1405
    :cond_1
    const-string v0, "\u05db\u05d4\u05d4 \u05e9\u05e7\u05d5\u05e3"

    return-object v0

    .line 1404
    :cond_2
    const-string v0, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05de\u05d5\u05d3\u05d2\u05e9\u05ea (35%)"

    return-object v0

    .line 1403
    :cond_3
    const-string v0, "\u05e9\u05e7\u05d5\u05e3 \u05dc\u05d2\u05de\u05e8\u05d9"

    return-object v0
.end method

.method private getClockFontStyleSummary()Ljava/lang/String;
    .locals 2

    .line 1382
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

    .line 1387
    const-string v0, "\u05e8\u05d2\u05d9\u05dc"

    return-object v0

    .line 1386
    :cond_0
    const-string v0, "\u05e1\u05e8\u05d9\u05e3"

    return-object v0

    .line 1385
    :cond_1
    const-string v0, "\u05e8\u05d5\u05d7\u05d1 \u05d0\u05d7\u05d9\u05d3"

    return-object v0

    .line 1384
    :cond_2
    const-string v0, "\u05d3\u05e7"

    return-object v0

    .line 1383
    :cond_3
    const-string v0, "\u05de\u05d5\u05d3\u05d2\u05e9"

    return-object v0
.end method

.method private getClockSizeSummary()Ljava/lang/String;
    .locals 4

    .line 1374
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockSize(Landroid/content/Context;)I

    move-result v0

    .line 1375
    const-string v1, ")"

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

    .line 1376
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

    .line 1377
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

    .line 1378
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

    .line 1392
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

    .line 1397
    const-string v0, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    return-object v0

    .line 1396
    :cond_0
    const-string v0, "12 \u05e9\u05e2\u05d5\u05ea"

    return-object v0

    .line 1395
    :cond_1
    const-string v0, "12 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd AM/PM"

    return-object v0

    .line 1394
    :cond_2
    const-string v0, "24 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd \u05e9\u05e0\u05d9\u05d5\u05ea"

    return-object v0

    .line 1393
    :cond_3
    const-string v0, "24 \u05e9\u05e2\u05d5\u05ea"

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

    .line 937
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mCachedApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 938
    return-object v0

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 941
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 942
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 945
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 946
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 947
    new-instance v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    invoke-direct {v5, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;)V

    .line 948
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->pkg:Ljava/lang/String;

    .line 949
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->cls:Ljava/lang/String;

    .line 950
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    .line 951
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    goto :goto_0

    .line 953
    :cond_1
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 959
    iput-object v2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mCachedApps:Ljava/util/List;

    .line 960
    return-object v2
.end method

.method private getNumLongModeSummary()Ljava/lang/String;
    .locals 2

    .line 1417
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumLongPressMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1420
    const-string v0, "\u05d7\u05d9\u05d5\u05d2 \u05de\u05d4\u05d9\u05e8"

    return-object v0

    .line 1419
    :cond_0
    const-string v0, "\u05d4\u05ea\u05d0\u05de\u05d4 \u05dc\u05e4\u05d9 \u05de\u05e7\u05e9"

    return-object v0

    .line 1418
    :cond_1
    const-string v0, "\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05de\u05d5\u05ea\u05d0\u05de\u05d5\u05ea"

    return-object v0
.end method

.method private getNumShortModeSummary()Ljava/lang/String;
    .locals 2

    .line 1425
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumShortPressMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1427
    const-string v0, "\u05d7\u05d9\u05d9\u05d2\u05df (\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc)"

    return-object v0

    .line 1426
    :cond_0
    const-string v0, "\u05e7\u05d9\u05e6\u05d5\u05e8 \u05d9\u05e9\u05d9\u05e8 \u05dc\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    return-object v0
.end method

.method private groupDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 986
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->GROUP_VALUES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 987
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->GROUP_LABELS:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    .line 986
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    :cond_1
    const-string p1, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc"

    return-object p1
.end method

.method private handleMasterToggle()V
    .locals 3

    .line 626
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isModHomeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isStockHomeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 628
    :goto_0
    if-eqz v0, :cond_1

    .line 632
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 633
    const-string v1, "\u05d7\u05d6\u05e8\u05d4 \u05dc\u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea \u05d4\u05de\u05e7\u05d5\u05e8\u05d9"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 634
    const-string v1, "\u05d4\u05de\u05e1\u05da \u05d4\u05de\u05e9\u05d5\u05d3\u05e8\u05d2 \u05d9\u05d5\u05e9\u05d1\u05ea \u05d5\u05ea\u05d7\u05d6\u05d5\u05e8 \u05dc\u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea \u05d4\u05de\u05e7\u05d5\u05e8\u05d9.\n\n\u05d0\u05e4\u05e9\u05e8 \u05dc\u05d4\u05e4\u05e2\u05d9\u05dc \u05d0\u05d5\u05ea\u05d5 \u05d7\u05d6\u05e8\u05d4 \u05d1\u05db\u05dc \u05e8\u05d2\u05e2 \u05de\u05ea\u05d5\u05da \u05d4\u05de\u05e1\u05da \u05d4\u05d6\u05d4, \u05e9\u05e0\u05e9\u05d0\u05e8 \u05e0\u05d2\u05d9\u05e9 \u05de\u05e8\u05e9\u05d9\u05de\u05ea \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 637
    const-string v2, "\u05d4\u05d7\u05d6\u05e8 \u05dc\u05de\u05e7\u05d5\u05e8\u05d9"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 654
    const-string v2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 657
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 679
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 681
    :goto_1
    return-void
.end method

.method private handleSettingClick(Ljava/lang/String;)V
    .locals 4

    .line 432
    const-string v0, "sec:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 433
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 434
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 435
    iget v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mClickedPos:I

    iput v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mRootPos:I

    goto :goto_0

    .line 436
    :cond_0
    const-string v2, "apps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "apps_manage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mClickedPos:I

    iput v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mAppsPos:I

    .line 439
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    .line 440
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 441
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 442
    return-void

    .line 444
    :cond_2
    const-string v0, "widget:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x7

    if-eqz v0, :cond_3

    .line 446
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showWidgetActionsDialog(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    goto :goto_1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad widget key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LauncherSettingsActivity"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    :goto_1
    return-void

    .line 452
    :cond_3
    const-string v0, "appmg:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showAppGroupDialog(Ljava/lang/String;)V

    .line 454
    return-void

    .line 456
    :cond_4
    const-string v0, "navkey:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 457
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNavKeyDialog(Ljava/lang/String;)V

    .line 458
    return-void

    .line 461
    :cond_5
    const-string v0, "home_active"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 462
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->handleMasterToggle()V

    goto/16 :goto_2

    .line 463
    :cond_6
    const-string v0, "clock_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 464
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isClockEnabled(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setClockEnabled(Landroid/content/Context;Z)V

    .line 465
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    goto/16 :goto_2

    .line 466
    :cond_7
    const-string v0, "clock_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 467
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showClockSizeDialog()V

    goto/16 :goto_2

    .line 468
    :cond_8
    const-string v0, "clock_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 469
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockColor(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v1, "\u05e6\u05d1\u05e2 \u05d4\u05e9\u05e2\u05d5\u05df"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V

    goto/16 :goto_2

    .line 477
    :cond_9
    const-string v0, "clock_font_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 478
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showClockFontStyleDialog()V

    goto/16 :goto_2

    .line 479
    :cond_a
    const-string v0, "clock_time_format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 480
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTimeFormatDialog()V

    goto/16 :goto_2

    .line 481
    :cond_b
    const-string v0, "date_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 482
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isDateEnabled(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setDateEnabled(Landroid/content/Context;Z)V

    .line 483
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    goto/16 :goto_2

    .line 484
    :cond_c
    const-string v0, "date_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 485
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateSize(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$3;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v1, "\u05d2\u05d5\u05d3\u05dc \u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d5\u05e2\u05d6\u05d9"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V

    goto/16 :goto_2

    .line 493
    :cond_d
    const-string v0, "date_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 494
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateColor(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$4;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v1, "\u05e6\u05d1\u05e2 \u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d5\u05e2\u05d6\u05d9"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V

    goto/16 :goto_2

    .line 502
    :cond_e
    const-string v0, "hebrew_date_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 503
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isHebrewDateEnabled(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setHebrewDateEnabled(Landroid/content/Context;Z)V

    .line 504
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    goto/16 :goto_2

    .line 505
    :cond_f
    const-string v0, "hebrew_date_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 506
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateSize(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$5;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v1, "\u05d2\u05d5\u05d3\u05dc \u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V

    goto/16 :goto_2

    .line 514
    :cond_10
    const-string v0, "hebrew_date_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 515
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateColor(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v1, "\u05e6\u05d1\u05e2 \u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V

    goto/16 :goto_2

    .line 523
    :cond_11
    const-string v0, "card_bg_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 524
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showCardBgDialog()V

    goto/16 :goto_2

    .line 525
    :cond_12
    const-string v0, "card_corner_radius"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 526
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showCornerRadiusDialog()V

    goto/16 :goto_2

    .line 527
    :cond_13
    const-string v0, "missed_calls_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 528
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isMissedCallsEnabled(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setMissedCallsEnabled(Landroid/content/Context;Z)V

    .line 529
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    goto/16 :goto_2

    .line 530
    :cond_14
    const-string v0, "home_columns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 531
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHomeColumns(Landroid/content/Context;)I

    move-result p1

    const-string v0, "\u05e2\u05de\u05d5\u05d3\u05d5\u05ea \u05d1\u05e8\u05e9\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-direct {p0, v0, p1, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColumnsDialog(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 532
    :cond_15
    const-string v0, "menu_columns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 533
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getMenuColumns(Landroid/content/Context;)I

    move-result p1

    const-string v0, "\u05e2\u05de\u05d5\u05d3\u05d5\u05ea \u05d1\u05ea\u05e4\u05e8\u05d9\u05d8 \u05d4\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd"

    invoke-direct {p0, v0, p1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColumnsDialog(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 534
    :cond_16
    const-string v0, "widgets_reset_layout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "\u05d0\u05e4\u05e1"

    if-eqz v0, :cond_17

    .line 535
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;

    invoke-direct {p1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v0, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05e4\u05e8\u05d9\u05e1\u05ea \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd"

    const-string v1, "\u05db\u05dc \u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05d9\u05d7\u05d6\u05e8\u05d5 \u05dc\u05de\u05e1\u05da \u05d4\u05e8\u05d0\u05e9\u05d9 \u05d1\u05e4\u05e8\u05d9\u05e1\u05ea \u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc."

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 548
    :cond_17
    const-string v0, "num_short_press_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 549
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumShortModeDialog()V

    goto/16 :goto_2

    .line 550
    :cond_18
    const-string v0, "num_long_press_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 551
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumLongModeDialog()V

    goto/16 :goto_2

    .line 552
    :cond_19
    const-string v0, "shortcuts_numbers_short"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 553
    invoke-direct {p0, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumbersShortcutDialog(Z)V

    goto :goto_2

    .line 554
    :cond_1a
    const-string v0, "shortcuts_numbers_long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 555
    invoke-direct {p0, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumbersShortcutDialog(Z)V

    goto :goto_2

    .line 556
    :cond_1b
    const-string v0, "reset_display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 557
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$8;

    invoke-direct {p1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$8;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v0, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05ea\u05e6\u05d5\u05d2\u05d4"

    const-string v1, "\u05e9\u05e2\u05d5\u05df, \u05ea\u05d0\u05e8\u05d9\u05db\u05d9\u05dd, \u05e8\u05e7\u05e2 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1\u05d9\u05dd \u05d5\u05d4\u05e8\u05e9\u05ea\u05d5\u05ea \u05d9\u05d7\u05d6\u05e8\u05d5 \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc.\n\u05e7\u05d9\u05e6\u05d5\u05e8\u05d9 \u05de\u05e7\u05e9\u05d9\u05dd \u05d5\u05e9\u05d9\u05d5\u05da \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05dc\u05d0 \u05d9\u05e9\u05ea\u05e0\u05d5."

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 570
    :cond_1c
    const-string v0, "reset_keys"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 571
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;

    invoke-direct {p1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v0, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05e7\u05e9\u05d9\u05dd \u05d5\u05e7\u05d9\u05e6\u05d5\u05e8\u05d9\u05dd"

    const-string v1, "\u05db\u05dc \u05e7\u05d9\u05e6\u05d5\u05e8\u05d9 \u05d4\u05de\u05e7\u05e9\u05d9\u05dd \u05d5\u05e9\u05e0\u05d9 \u05de\u05e6\u05d1\u05d9 \u05de\u05e7\u05e9\u05d9 \u05d4\u05e1\u05e4\u05e8\u05d5\u05ea \u05d9\u05d7\u05d6\u05e8\u05d5 \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc."

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 583
    :cond_1d
    const-string v0, "reset_apps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 584
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;

    invoke-direct {p1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v0, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05e9\u05d9\u05d5\u05da \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    const-string v1, "\u05db\u05dc \u05d4\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05d9\u05d7\u05d6\u05e8\u05d5 \u05dc\u05e7\u05d1\u05d5\u05e6\u05d5\u05ea \u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc, \u05db\u05d5\u05dc\u05dc \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05de\u05d5\u05e1\u05ea\u05e8\u05d5\u05ea."

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 597
    :cond_1e
    const-string v0, "reset_all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 598
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;

    invoke-direct {p1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v0, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05db\u05dc \u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea"

    const-string v1, "\u05db\u05dc \u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d9\u05d9\u05de\u05d7\u05e7\u05d5: \u05ea\u05e6\u05d5\u05d2\u05d4, \u05de\u05e7\u05e9\u05d9\u05dd, \u05e9\u05d9\u05d5\u05da \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05d5\u05e4\u05e8\u05d9\u05e1\u05ea \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd."

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05dc\u05d0"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 618
    :cond_1f
    :goto_2
    return-void
.end method

.method private navKey(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;
    .locals 12

    .line 727
    const-string v0, "up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    const-string v2, "\u05d7\u05e5 \u05dc\u05de\u05e2\u05dc\u05d4"

    const-string v3, "key_dpad_up_short"

    const-string v4, "key_dpad_up_long"

    const-string v5, "\u05de\u05e0\u05d4\u05dc \u05e7\u05d1\u05e6\u05d9\u05dd"

    const-string v6, "\u05dc\u05dc\u05d0"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 731
    :cond_0
    const-string v0, "down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    const-string v2, "\u05d7\u05e5 \u05dc\u05de\u05d8\u05d4"

    const-string v3, "key_dpad_down_short"

    const-string v4, "key_dpad_down_long"

    const-string v5, "\u05d5\u05d9\u05dc\u05d5\u05df \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    const-string v6, "\u05dc\u05dc\u05d0"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 735
    :cond_1
    const-string v0, "left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    const-string v2, "\u05d7\u05e5 \u05e9\u05de\u05d0\u05dc\u05d4"

    const-string v3, "key_dpad_left_short"

    const-string v4, "key_dpad_left_long"

    const-string v5, "\u05dc\u05d5\u05d7 \u05e9\u05e0\u05d4"

    const-string v6, "\u05dc\u05dc\u05d0"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 739
    :cond_2
    const-string v0, "right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    const-string v2, "\u05d7\u05e5 \u05d9\u05de\u05d9\u05e0\u05d4"

    const-string v3, "key_dpad_right_short"

    const-string v4, "key_dpad_right_long"

    const-string v5, "\u05dc\u05d5\u05d7 \u05e9\u05e0\u05d4 \u05e2\u05d1\u05e8\u05d9"

    const-string v6, "\u05dc\u05dc\u05d0"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 743
    :cond_3
    const-string v0, "center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 744
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    const-string v2, "\u05de\u05e7\u05e9 \u05d0\u05d9\u05e9\u05d5\u05e8"

    const-string v3, "key_dpad_center_short"

    const-string v4, "key_dpad_center_long"

    const-string v5, "\u05e4\u05ea\u05d9\u05d7\u05d4"

    const-string v6, "\u05e4\u05e0\u05e1"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 747
    :cond_4
    const-string v0, "softleft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 748
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    const-string v1, "\u05de\u05e7\u05e9 \u05ea\u05e4\u05e8\u05d9\u05d8 (\u05e9\u05de\u05d0\u05dc\u05d9)"

    const-string v2, "key_softkey_left_short"

    const-string v3, "key_softkey_left_long"

    const-string v4, "\u05de\u05d7\u05e9\u05d1\u05d5\u05df"

    const-string v5, "\u05dc\u05dc\u05d0"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 751
    :cond_5
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    const-string v7, "\u05de\u05e7\u05e9 \u05d7\u05d6\u05e8\u05d4 (\u05d9\u05de\u05e0\u05d9)"

    const-string v8, "key_softkey_right_short"

    const-string v9, "key_softkey_right_long"

    const-string v10, "\u05d0\u05e0\u05e9\u05d9 \u05e7\u05e9\u05e8"

    const-string v11, "\u05dc\u05dc\u05d0"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private navKeyRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;
    .locals 4

    .line 756
    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->navKey(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    move-result-object v0

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u05e7\u05e6\u05e8\u05d4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->shortPref:Ljava/lang/String;

    iget-object v3, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->shortDefault:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->shortcutName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 \u05d0\u05e8\u05d5\u05db\u05d4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->longPref:Ljava/lang/String;

    iget-object v0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->longDefault:Ljava/lang/String;

    .line 758
    invoke-direct {p0, v2, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->shortcutName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navkey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object p1

    return-object p1
.end method

.method private pickApp(Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V
    .locals 4

    .line 964
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 965
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 966
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 967
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    iget-object v3, v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 966
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 970
    const-string v3, "\u05d1\u05d7\u05e8 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;

    invoke-direct {v3, p0, v0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/util/List;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V

    .line 971
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 978
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 979
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 980
    return-void
.end method

.method private refreshList()V
    .locals 1

    .line 684
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildSettingsList()V

    .line 685
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mAdapter:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

    invoke-virtual {v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->notifyDataSetChanged()V

    .line 686
    return-void
.end method

.method private setScreenTitle(Ljava/lang/String;)V
    .locals 1

    .line 695
    invoke-virtual {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 697
    :try_start_0
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :cond_0
    goto :goto_0

    .line 700
    :catchall_0
    move-exception p1

    .line 702
    :goto_0
    return-void
.end method

.method private setupFeatureBar()V
    .locals 3

    .line 193
    :try_start_0
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mFeatureBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 196
    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 202
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mFeatureBar:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->getFeatureBar()Landroid/view/ViewGroup;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x20

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    .line 210
    const-string v1, "LauncherSettingsActivity"

    const-string v2, "Feature bar unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :goto_0
    return-void
.end method

.method private shortcutName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 886
    const-string v0, "default"

    invoke-static {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 887
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 888
    :cond_0
    const-string p2, "action:flashlight"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "\u05e4\u05e0\u05e1"

    return-object p1

    .line 889
    :cond_1
    const-string p2, "action:notifications"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "\u05d5\u05d9\u05dc\u05d5\u05df \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    return-object p1

    .line 890
    :cond_2
    const-string p2, "action:silent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "\u05de\u05e6\u05d1 \u05e9\u05e7\u05d8"

    return-object p1

    .line 891
    :cond_3
    const-string p2, "action:settings"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea"

    return-object p1

    .line 892
    :cond_4
    const-string p2, "action:main_menu"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9"

    return-object p1

    .line 893
    :cond_5
    const-string p2, "action:call_log"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "\u05d9\u05d5\u05de\u05df \u05e9\u05d9\u05d7\u05d5\u05ea"

    return-object p1

    .line 894
    :cond_6
    const-string p2, "action:flipper_next"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "\u05e2\u05de\u05d5\u05d3 \u05d4\u05d1\u05d0"

    return-object p1

    .line 895
    :cond_7
    const-string p2, "action:widget_edit"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p1, "\u05e2\u05e8\u05d9\u05db\u05ea \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    return-object p1

    .line 896
    :cond_8
    const-string p2, "action:none"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p1, "\u05dc\u05dc\u05d0"

    return-object p1

    .line 897
    :cond_9
    const-string p2, "app:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->appLabelOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 898
    :cond_a
    return-object p1
.end method

.method private showAppGroupDialog(Ljava/lang/String;)V
    .locals 6

    .line 994
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 995
    if-gtz v0, :cond_0

    return-void

    .line 996
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 997
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 999
    invoke-static {p0, v2, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->getCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    sget-object v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->GROUP_VALUES:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 1001
    nop

    :goto_0
    sget-object v4, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->GROUP_VALUES:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1002
    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1003
    nop

    .line 1004
    move v3, v1

    goto :goto_1

    .line 1001
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1007
    :cond_2
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1008
    const-string v1, "\u05e7\u05d1\u05d5\u05e6\u05d4 \u05e2\u05d1\u05d5\u05e8 \u05d4\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->GROUP_LABELS:[Ljava/lang/String;

    new-instance v4, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;

    invoke-direct {v4, p0, v2, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 1019
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1020
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1021
    return-void
.end method

.method private showCardBgDialog()V
    .locals 5

    .line 1204
    const-string v0, "\u05e9\u05e7\u05d5\u05e3 \u05dc\u05d2\u05de\u05e8\u05d9"

    const-string v1, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05e2\u05d3\u05d9\u05e0\u05d4 (15%)"

    const-string v2, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05de\u05d5\u05d3\u05d2\u05e9\u05ea (35%)"

    const-string v3, "\u05db\u05d4\u05d4 \u05e9\u05e7\u05d5\u05e3"

    const-string v4, "\u05db\u05d4\u05d4 \u05de\u05dc\u05d0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1211
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardBgType(Landroid/content/Context;)I

    move-result v1

    .line 1212
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1213
    const-string v3, "\u05e8\u05e7\u05e2 \u05d4\u05db\u05e8\u05d8\u05d9\u05e1\u05d9\u05dd"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$27;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$27;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1214
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1222
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1224
    return-void
.end method

.method private showClockFontStyleDialog()V
    .locals 5

    .line 1164
    const-string v0, "\u05e8\u05d2\u05d9\u05dc"

    const-string v1, "\u05de\u05d5\u05d3\u05d2\u05e9"

    const-string v2, "\u05d3\u05e7"

    const-string v3, "\u05e8\u05d5\u05d7\u05d1 \u05d0\u05d7\u05d9\u05d3"

    const-string v4, "\u05e1\u05e8\u05d9\u05e3"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1165
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockFontStyle(Landroid/content/Context;)I

    move-result v1

    .line 1166
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1167
    const-string v3, "\u05d2\u05d5\u05e4\u05df \u05d4\u05e9\u05e2\u05d5\u05df"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$25;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$25;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1168
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1176
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1178
    return-void
.end method

.method private showClockSizeDialog()V
    .locals 10

    .line 1112
    const-string v0, "\u05e7\u05d8\u05df (34)"

    const-string v1, "\u05e8\u05d2\u05d9\u05dc (46)"

    const-string v2, "\u05d2\u05d3\u05d5\u05dc (58)"

    const-string v3, "\u05e2\u05e0\u05e7 (68)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1113
    const/4 v0, 0x4

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 1114
    nop

    .line 1115
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockSize(Landroid/content/Context;)I

    move-result v8

    new-instance v9, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;

    invoke-direct {v9, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$23;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1114
    const-string v5, "\u05d2\u05d5\u05d3\u05dc \u05d4\u05e9\u05e2\u05d5\u05df"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showIntChoiceDialog(Ljava/lang/String;[Ljava/lang/String;[IILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V

    .line 1123
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

.method private showColorPickerDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V
    .locals 3

    .line 1311
    nop

    .line 1312
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->COLOR_VALUES:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1313
    aget v1, v1, v0

    if-ne v1, p2, :cond_0

    .line 1314
    nop

    .line 1315
    goto :goto_1

    .line 1312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1318
    :goto_1
    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$31;

    invoke-direct {p2, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$31;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1356
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1357
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$32;

    invoke-direct {v1, p0, p3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$32;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V

    .line 1358
    invoke-virtual {p1, p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 1365
    const-string p3, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1366
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1367
    return-void
.end method

.method private showColumnsDialog(Ljava/lang/String;IZ)V
    .locals 5

    .line 1088
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    .line 1089
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1090
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u05d1\u05e9\u05d5\u05e8\u05d4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1089
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1092
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1093
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    add-int/lit8 p2, p2, -0x2

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;

    invoke-direct {v0, p0, p3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$22;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Z)V

    .line 1094
    invoke-virtual {p1, v1, p2, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 1107
    const-string p3, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1108
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1109
    return-void
.end method

.method private showCornerRadiusDialog()V
    .locals 11

    .line 1229
    const-string v0, "\u05dc\u05dc\u05d0 (0)"

    const-string v1, "\u05e2\u05d3\u05d9\u05df (8)"

    const-string v2, "\u05e8\u05d2\u05d9\u05dc (10)"

    const-string v3, "\u05d1\u05d9\u05e0\u05d5\u05e0\u05d9 (14)"

    const-string v4, "\u05de\u05dc\u05d0 (22)"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 1230
    const/4 v0, 0x5

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 1231
    nop

    .line 1232
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardCornerRadius(Landroid/content/Context;)I

    move-result v9

    new-instance v10, Lcom/sprd/classichome/settings/LauncherSettingsActivity$28;

    invoke-direct {v10, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$28;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1231
    const-string v6, "\u05e4\u05d9\u05e0\u05d5\u05ea \u05de\u05e2\u05d5\u05d2\u05dc\u05d5\u05ea"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showIntChoiceDialog(Ljava/lang/String;[Ljava/lang/String;[IILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V

    .line 1240
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x8
        0xa
        0xe
        0x16
    .end array-data
.end method

.method private showIntChoiceDialog(Ljava/lang/String;[Ljava/lang/String;[IILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V
    .locals 2

    .line 1143
    nop

    .line 1144
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1145
    aget v1, p3, v0

    if-ne v1, p4, :cond_0

    .line 1146
    nop

    .line 1147
    goto :goto_1

    .line 1144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1150
    :goto_1
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1151
    invoke-virtual {p4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p4, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;

    invoke-direct {p4, p0, p5, p3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$24;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;[I)V

    .line 1152
    invoke-virtual {p1, p2, v0, p4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 1159
    const-string p3, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1160
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1161
    return-void
.end method

.method private showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 844
    const-string v0, "default"

    invoke-static {p0, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    nop

    .line 846
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->KEY_ACTION_VALUES:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 847
    aget-object v3, v3, v2

    const-string v4, "app:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 849
    nop

    .line 850
    goto :goto_1

    .line 852
    :cond_0
    sget-object v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->KEY_ACTION_VALUES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    nop

    .line 854
    nop

    .line 857
    :goto_1
    move v1, v2

    goto :goto_2

    .line 846
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 857
    :cond_2
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 858
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->KEY_ACTION_LABELS:[Ljava/lang/String;

    new-instance v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;

    invoke-direct {v2, p0, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;)V

    .line 859
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 880
    const-string v0, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 881
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 882
    return-void
.end method

.method private showNavKeyDialog(Ljava/lang/String;)V
    .locals 4

    .line 769
    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->navKey(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;

    move-result-object p1

    .line 770
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->shortPref:Ljava/lang/String;

    iget-object v3, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->shortDefault:Ljava/lang/String;

    .line 771
    invoke-direct {p0, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->shortcutName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->longPref:Ljava/lang/String;

    iget-object v3, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->longDefault:Ljava/lang/String;

    .line 772
    invoke-direct {p0, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->shortcutName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 774
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;->title:Ljava/lang/String;

    .line 775
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;

    invoke-direct {v2, p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$NavKey;)V

    .line 776
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 786
    const-string v0, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 787
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 788
    return-void
.end method

.method private showNumLongModeDialog()V
    .locals 4

    .line 1263
    const-string v0, "\u05d7\u05d9\u05d5\u05d2 \u05de\u05d4\u05d9\u05e8"

    const-string v1, "\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05de\u05d5\u05ea\u05d0\u05de\u05d5\u05ea"

    const-string v2, "\u05d4\u05ea\u05d0\u05de\u05d4 \u05dc\u05e4\u05d9 \u05de\u05e7\u05e9"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1268
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumLongPressMode(Landroid/content/Context;)I

    move-result v1

    .line 1269
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1270
    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 \u05e2\u05dc \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$30;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$30;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1271
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1279
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1280
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1281
    return-void
.end method

.method private showNumShortModeDialog()V
    .locals 4

    .line 1243
    const-string v0, "\u05e4\u05ea\u05d9\u05d7\u05ea \u05d7\u05d9\u05d9\u05d2\u05df (\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc)"

    const-string v1, "\u05e7\u05d9\u05e6\u05d5\u05e8 \u05d9\u05e9\u05d9\u05e8 \u05dc\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1247
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumShortPressMode(Landroid/content/Context;)I

    move-result v1

    .line 1248
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1249
    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4 \u05e2\u05dc \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$29;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$29;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1250
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1258
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1260
    return-void
.end method

.method private showNumbersShortcutDialog(Z)V
    .locals 13

    .line 791
    const-string v0, "1"

    const-string v1, "2"

    const-string v2, "3"

    const-string v3, "4"

    const-string v4, "5"

    const-string v5, "6"

    const-string v6, "7"

    const-string v7, "8"

    const-string v8, "9"

    const-string v9, "0"

    const-string v10, "star"

    const-string v11, "pound"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 792
    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "0"

    const-string v11, "*"

    const-string v12, "#"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    .line 793
    if-eqz p1, :cond_0

    const-string v2, "long"

    goto :goto_0

    :cond_0
    const-string v2, "short"

    .line 794
    :goto_0
    const/16 v3, 0xc

    new-array v4, v3, [Ljava/lang/String;

    .line 795
    new-array v5, v3, [Ljava/lang/String;

    .line 796
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_1

    .line 797
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key_num_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 798
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u05de\u05e7\u05e9 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u2014 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v6

    const-string v9, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc"

    invoke-direct {p0, v8, v9}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->shortcutName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 796
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 800
    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4"

    goto :goto_2

    :cond_2
    const-string p1, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4"

    .line 801
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": \u05d1\u05d7\u05e8 \u05de\u05e7\u05e9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;

    invoke-direct {v2, p0, v1, p1, v4}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 810
    const-string v1, "\u05d7\u05d6\u05d5\u05e8"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 811
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 812
    return-void
.end method

.method private showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V
    .locals 10

    .line 1130
    const-string v0, "\u05e7\u05d8\u05df (11)"

    const-string v1, "\u05e8\u05d2\u05d9\u05dc (14)"

    const-string v2, "\u05d1\u05d9\u05e0\u05d5\u05e0\u05d9 (16)"

    const-string v3, "\u05d2\u05d3\u05d5\u05dc (18)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1131
    const/4 v0, 0x4

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 1132
    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showIntChoiceDialog(Ljava/lang/String;[Ljava/lang/String;[IILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V

    .line 1133
    return-void

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

    .line 1181
    const-string v0, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    const-string v1, "24 \u05e9\u05e2\u05d5\u05ea"

    const-string v2, "24 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd \u05e9\u05e0\u05d9\u05d5\u05ea"

    const-string v3, "12 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd AM/PM"

    const-string v4, "12 \u05e9\u05e2\u05d5\u05ea"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1188
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockTimeFormat(Landroid/content/Context;)I

    move-result v1

    .line 1189
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1190
    const-string v3, "\u05e4\u05d5\u05e8\u05de\u05d8 \u05d4\u05e9\u05e2\u05d4"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$26;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$26;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 1191
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1199
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1201
    return-void
.end method

.method private showWidgetActionsDialog(I)V
    .locals 3

    .line 1038
    const-string v0, "\u05de\u05d9\u05e7\u05d5\u05dd \u05d5\u05d2\u05d5\u05d3\u05dc"

    const-string v1, "\u05d4\u05e1\u05e8\u05d4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1039
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;

    invoke-direct {v2, p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;I)V

    .line 1040
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1062
    const-string v0, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1063
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1064
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    const-string v1, "apps_manage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "apps"

    iput-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    .line 414
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 415
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mAppsPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 416
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mSection:Ljava/lang/String;

    .line 420
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 421
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mRootPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 422
    return-void

    .line 424
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 425
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 143
    const-string v0, "android"

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->applyRomTheme()V

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const-string p1, "\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setScreenTitle(Ljava/lang/String;)V

    .line 147
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "duoqin_list_divider_inset"

    const-string v2, "drawable"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "duoqin_dimen_list_divider_height"

    const-string v2, "dimen"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 163
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 163
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    goto :goto_1

    .line 165
    :catchall_0
    move-exception p1

    .line 166
    const-string v0, "LauncherSettingsActivity"

    const-string v1, "Divider setup failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :goto_1
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setContentView(Landroid/view/View;)V

    .line 172
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setupFeatureBar()V

    .line 174
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildSettingsList()V

    .line 176
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mAdapter:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

    .line 177
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    return-void
.end method

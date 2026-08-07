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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->handleSettingClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->forceReloadLauncherModel()V

    return-void
.end method

.method static synthetic access$400(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->pickApp(Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V

    return-void
.end method

.method private buildSettingsList()V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\ud83d\udd52 \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05e9\u05e2\u05d5\u05df"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isClockEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "\u05de\u05d5\u05e4\u05e2\u05dc"

    const-string v3, "\u05db\u05d1\u05d5\u05d9"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "clock_enabled"

    const-string v5, "\u05d4\u05e6\u05d2\u05ea \u05e9\u05e2\u05d5\u05df"

    invoke-static {v4, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockSizeSummary()Ljava/lang/String;

    move-result-object v1

    const-string v4, "clock_size"

    const-string v5, "\u05d2\u05d5\u05d3\u05dc \u05d4\u05e9\u05e2\u05d5\u05df"

    invoke-static {v4, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockColorSummary()Ljava/lang/String;

    move-result-object v1

    const-string v4, "clock_color"

    const-string v5, "\u05e6\u05d1\u05e2 \u05d4\u05e9\u05e2\u05d5\u05df"

    invoke-static {v4, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockFontStyleSummary()Ljava/lang/String;

    move-result-object v1

    const-string v4, "clock_font_style"

    const-string v5, "\u05e1\u05d2\u05e0\u05d5\u05df \u05d2\u05d5\u05e4\u05df \u05e9\u05e2\u05d5\u05df"

    invoke-static {v4, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getClockTimeFormatSummary()Ljava/lang/String;

    move-result-object v1

    const-string v4, "clock_time_format"

    const-string v5, "\u05e4\u05d5\u05e8\u05de\u05d8 \u05e9\u05e2\u05d5\u05ea \u05d5\u05ea\u05e6\u05d5\u05d2\u05d4"

    invoke-static {v4, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\ud83d\udcc5 \u05ea\u05d0\u05e8\u05d9\u05da \u05d5\u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isDateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v4, "date_enabled"

    const-string v5, "\u05d4\u05e6\u05d2\u05ea \u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d5\u05e2\u05d6\u05d9"

    invoke-static {v4, v5, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateSize(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "sp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "date_size"

    const-string v6, "\u05d2\u05d5\u05d3\u05dc \u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d5\u05e2\u05d6\u05d9"

    invoke-static {v5, v6, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isHebrewDateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    const-string v1, "hebrew_date_enabled"

    const-string v3, "\u05d4\u05e6\u05d2\u05ea \u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-static {v1, v3, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateSize(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hebrew_date_size"

    const-string v3, "\u05d2\u05d5\u05d3\u05dc \u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "hebrew_date_color"

    const-string v2, "\u05e6\u05d1\u05e2 \u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    const-string v3, "\u05d4\u05ea\u05d0\u05de\u05ea \u05e6\u05d1\u05e2"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\ud83c\udfa8 \u05e2\u05d9\u05e6\u05d5\u05d1 \u05db\u05e8\u05d8\u05d9\u05e1 \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getCardBgSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_bg_type"

    const-string v3, "\u05e8\u05e7\u05e2 \u05d5\u05e9\u05e7\u05d9\u05e4\u05d5\u05ea \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
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

    const-string v3, "\u05e4\u05d9\u05e0\u05d5\u05ea \u05de\u05e2\u05d5\u05d2\u05dc\u05d5\u05ea \u05e9\u05dc \u05d4\u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isMissedCallsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u05de\u05d5\u05e6\u05d2"

    goto :goto_3

    :cond_3
    const-string v1, "\u05de\u05d5\u05e1\u05ea\u05e8"

    :goto_3
    const-string v2, "missed_calls_enabled"

    const-string v3, "\u05e9\u05d5\u05e8\u05ea \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea \u05d5\u05e9\u05d9\u05d7\u05d5\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\u2328\ufe0f \u05e7\u05d9\u05e6\u05d5\u05e8\u05d9 \u05de\u05e7\u05e9\u05d9\u05dd \u05d5-D-Pad"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getNumLongModeSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "num_long_press_mode"

    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 \u05e2\u05dc \u05de\u05e7\u05e9\u05d9 \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getNumShortModeSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "num_short_press_mode"

    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4 \u05e2\u05dc \u05de\u05e7\u05e9\u05d9 \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "shortcuts_numbers"

    const-string v2, "\u05d4\u05ea\u05d0\u05de\u05ea \u05e1\u05e4\u05e8\u05d5\u05ea 0-9 \u05d1\u05d0\u05d5\u05e4\u05df \u05e4\u05e8\u05d8\u05e0\u05d9"

    const-string v3, "\u05d4\u05d2\u05d3\u05e8\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4 \u05dc\u05db\u05dc \u05e1\u05e4\u05e8\u05d4"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_up_short"

    const-string v2, "\u05de\u05e0\u05d4\u05dc \u05e7\u05d1\u05e6\u05d9\u05dd"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_up"

    const-string v3, "D-Pad \u05dc\u05de\u05e2\u05dc\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_down_short"

    const-string v2, "\u05d5\u05d9\u05dc\u05d5\u05df \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_down"

    const-string v3, "D-Pad \u05dc\u05de\u05d8\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_left_short"

    const-string v2, "\u05dc\u05d5\u05d7 \u05e9\u05e0\u05d4"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_left"

    const-string v3, "D-Pad \u05e9\u05de\u05d0\u05dc\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_right_short"

    const-string v2, "\u05dc\u05d5\u05d7 \u05e9\u05e0\u05d4 \u05e2\u05d1\u05e8\u05d9"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_right"

    const-string v3, "D-Pad \u05d9\u05de\u05d9\u05e0\u05d4"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_dpad_center_long"

    const-string v2, "\u05e4\u05e0\u05e1 / \u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_dpad_center_long"

    const-string v3, "\u05de\u05e7\u05e9 \u05de\u05e8\u05db\u05d6\u05d9 (\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4)"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_softkey_left_short"

    const-string v2, "\u05de\u05d7\u05e9\u05d1\u05d5\u05df"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_softkey_left"

    const-string v3, "\u05de\u05e7\u05e9 \u05e9\u05de\u05d0\u05dc\u05d9 \u05ea\u05d7\u05ea\u05d5\u05df"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "key_softkey_right_short"

    const-string v2, "\u05d0\u05e0\u05e9\u05d9 \u05e7\u05e9\u05e8"

    invoke-direct {p0, v1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_softkey_right"

    const-string v3, "\u05de\u05e7\u05e9 \u05d9\u05de\u05e0\u05d9 \u05ea\u05d7\u05ea\u05d5\u05df"

    invoke-static {v2, v3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\ud83d\udcf1 \u05e0\u05d9\u05d4\u05d5\u05dc \u05d5\u05e1\u05d9\u05d3\u05d5\u05e8 \u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "apps_management"

    const-string v2, "\u05e1\u05d9\u05d3\u05d5\u05e8, \u05d4\u05e2\u05d1\u05e8\u05d4 \u05d5\u05d4\u05e1\u05ea\u05e8\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    const-string v3, "\u05e7\u05d1\u05d9\u05e2\u05ea \u05de\u05d9\u05e7\u05d5\u05dd: \u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9 / \u05db\u05dc\u05d9\u05dd / \u05de\u05e9\u05d7\u05e7\u05d9\u05dd / \u05d4\u05e1\u05ea\u05e8\u05d4"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "reset_apps"

    const-string v2, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05d9\u05e7\u05d5\u05de\u05d9 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    const-string v3, "\u05d4\u05d7\u05d6\u05e8\u05d4 \u05dc\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05d9\u05e6\u05e8\u05df"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "\ud83d\udd04 \u05d0\u05d9\u05e4\u05d5\u05e1"

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    const-string v1, "reset_all"

    const-string v2, "\u05e9\u05d7\u05d6\u05d5\u05e8 \u05db\u05dc \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    const-string v3, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05e9\u05e2\u05d5\u05df, \u05e6\u05d1\u05e2\u05d9\u05dd, \u05de\u05e7\u05e9\u05d9\u05dd \u05d5\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea"

    invoke-static {v1, v2, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method private forceReloadLauncherModel()V
    .locals 6

    .line 665
    :try_start_0
    const-string v0, "com.sprd.classichome.model.LauncherModel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 666
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

    .line 669
    goto :goto_0

    .line 667
    :catchall_0
    move-exception v0

    .line 668
    const-string v1, "LauncherSettingsActivity"

    const-string v2, "forceReloadLauncherModel failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    :goto_0
    return-void
.end method

.method private getCardBgSummary()Ljava/lang/String;
    .locals 2

    .line 716
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardBgType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 721
    const-string v0, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05e2\u05d3\u05d9\u05e0\u05d4 (15%)"

    return-object v0

    .line 720
    :cond_0
    const-string v0, "\u05e8\u05e7\u05e2 \u05db\u05d4\u05d4 \u05de\u05dc\u05d0"

    return-object v0

    .line 719
    :cond_1
    const-string v0, "\u05db\u05d4\u05d4 \u05e9\u05e7\u05d5\u05e3 (Dark Frost)"

    return-object v0

    .line 718
    :cond_2
    const-string v0, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05de\u05d5\u05d3\u05d2\u05e9\u05ea (35%)"

    return-object v0

    .line 717
    :cond_3
    const-string v0, "\u05e9\u05e7\u05d5\u05e3 \u05dc\u05d2\u05de\u05e8\u05d9"

    return-object v0
.end method

.method private getClockColorSummary()Ljava/lang/String;
    .locals 2

    .line 682
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockColor(Landroid/content/Context;)I

    move-result v0

    .line 683
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u05dc\u05d1\u05df \u05e7\u05dc\u05d0\u05e1\u05d9"

    return-object v0

    .line 684
    :cond_0
    const/16 v1, -0x2900

    if-ne v0, v1, :cond_1

    const-string v0, "\u05d6\u05d4\u05d1 \u05d9\u05d5\u05e7\u05e8\u05ea\u05d9"

    return-object v0

    .line 685
    :cond_1
    const v1, -0xff1a01

    if-ne v0, v1, :cond_2

    const-string v0, "\u05ea\u05db\u05dc\u05ea \u05e0\u05d9\u05d0\u05d5\u05df"

    return-object v0

    .line 686
    :cond_2
    const v1, -0xff198a

    if-ne v0, v1, :cond_3

    const-string v0, "\u05d9\u05e8\u05d5\u05e7 \u05d6\u05d5\u05d4\u05e8"

    return-object v0

    .line 687
    :cond_3
    const/16 v1, -0x6f00

    if-ne v0, v1, :cond_4

    const-string v0, "\u05db\u05ea\u05d5\u05dd \u05d0\u05e9"

    return-object v0

    .line 688
    :cond_4
    const v1, -0xadae

    if-ne v0, v1, :cond_5

    const-string v0, "\u05d0\u05d3\u05d5\u05dd \u05e7\u05d5\u05e8\u05dc"

    return-object v0

    .line 689
    :cond_5
    const v1, -0x1fbf05

    if-ne v0, v1, :cond_6

    const-string v0, "\u05e1\u05d2\u05d5\u05dc"

    return-object v0

    .line 690
    :cond_6
    const/16 v1, -0x100

    if-ne v0, v1, :cond_7

    const-string v0, "\u05e6\u05d4\u05d5\u05d1"

    return-object v0

    .line 691
    :cond_7
    const v1, -0x9b4a0a

    if-ne v0, v1, :cond_8

    const-string v0, "\u05ea\u05db\u05dc\u05ea \u05e8\u05d2\u05d5\u05e2"

    return-object v0

    .line 692
    :cond_8
    const-string v0, "\u05e6\u05d1\u05e2 \u05de\u05d5\u05ea\u05d0\u05dd"

    return-object v0
.end method

.method private getClockFontStyleSummary()Ljava/lang/String;
    .locals 2

    .line 696
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

    .line 701
    const-string v0, "\u05e8\u05d2\u05d9\u05dc (Normal)"

    return-object v0

    .line 700
    :cond_0
    const-string v0, "Serif"

    return-object v0

    .line 699
    :cond_1
    const-string v0, "\u05de\u05d5\u05e0\u05d5\u05e1\u05e4\u05d9\u05d9\u05e1 (Monospace)"

    return-object v0

    .line 698
    :cond_2
    const-string v0, "\u05d3\u05e7 (Light)"

    return-object v0

    .line 697
    :cond_3
    const-string v0, "\u05de\u05d5\u05d3\u05d2\u05e9 (Bold)"

    return-object v0
.end method

.method private getClockSizeSummary()Ljava/lang/String;
    .locals 4

    .line 674
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockSize(Landroid/content/Context;)I

    move-result v0

    .line 675
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

    .line 676
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

    .line 677
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

    .line 678
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

    .line 706
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

    .line 711
    const-string v0, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    return-object v0

    .line 710
    :cond_0
    const-string v0, "12 \u05e9\u05e2\u05d5\u05ea \u05dc\u05dc\u05d0 AM/PM (h:mm)"

    return-object v0

    .line 709
    :cond_1
    const-string v0, "12 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd AM/PM (h:mm a)"

    return-object v0

    .line 708
    :cond_2
    const-string v0, "24 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd \u05e9\u05e0\u05d9\u05d5\u05ea (HH:mm:ss)"

    return-object v0

    .line 707
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

    .line 569
    invoke-virtual {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 570
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 571
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 575
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 576
    new-instance v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    invoke-direct {v5, v3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;)V

    .line 577
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->pkg:Ljava/lang/String;

    .line 578
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->cls:Ljava/lang/String;

    .line 579
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    .line 580
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v5, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 581
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    goto :goto_0

    .line 583
    :cond_0
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$19;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 589
    return-object v2
.end method

.method private getNumLongModeSummary()Ljava/lang/String;
    .locals 2

    .line 726
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumLongPressMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 729
    const-string v0, "\u05d7\u05d9\u05d5\u05d2 \u05de\u05d4\u05d9\u05e8 (Speed Dial)"

    return-object v0

    .line 728
    :cond_0
    const-string v0, "\u05d4\u05ea\u05d0\u05de\u05d4 \u05e4\u05e8\u05d8\u05e0\u05d9\u05ea \u05dc\u05e4\u05d9 \u05de\u05e7\u05e9"

    return-object v0

    .line 727
    :cond_1
    const-string v0, "\u05d4\u05e4\u05e2\u05dc\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05de\u05d5\u05ea\u05d0\u05de\u05d5\u05ea"

    return-object v0
.end method

.method private getNumShortModeSummary()Ljava/lang/String;
    .locals 2

    .line 734
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumShortPressMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 736
    const-string v0, "\u05d7\u05d9\u05d9\u05d2\u05df \u05e8\u05d2\u05d9\u05dc"

    return-object v0

    .line 735
    :cond_0
    const-string v0, "\u05e7\u05d9\u05e6\u05d5\u05e8 \u05d9\u05e9\u05d9\u05e8 \u05dc\u05e4\u05ea\u05d9\u05d7\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    return-object v0
.end method

.method private getShortcutSummary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 741
    const-string v0, "default"

    invoke-static {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 742
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

    .line 743
    :cond_0
    const-string p2, "action:flashlight"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "\u05e4\u05e0\u05e1"

    return-object p1

    .line 744
    :cond_1
    const-string p2, "action:notifications"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "\u05d5\u05d9\u05dc\u05d5\u05df \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    return-object p1

    .line 745
    :cond_2
    const-string p2, "action:silent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "\u05de\u05e6\u05d1 \u05e9\u05e7\u05d8 / \u05e8\u05d2\u05d9\u05dc"

    return-object p1

    .line 746
    :cond_3
    const-string p2, "action:settings"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    return-object p1

    .line 747
    :cond_4
    const-string p2, "action:main_menu"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "\u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9"

    return-object p1

    .line 748
    :cond_5
    const-string p2, "action:call_log"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "\u05d9\u05d5\u05de\u05df \u05e9\u05d9\u05d7\u05d5\u05ea"

    return-object p1

    .line 749
    :cond_6
    const-string p2, "action:none"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "\u05dc\u05dc\u05d0 \u05e4\u05e2\u05d5\u05dc\u05d4"

    return-object p1

    .line 750
    :cond_7
    const-string p2, "app:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 751
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

    .line 753
    :cond_8
    return-object p1
.end method

.method private handleSettingClick(Ljava/lang/String;)V
    .locals 4

    .line 142
    const-string v0, "clock_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isClockEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 144
    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setClockEnabled(Landroid/content/Context;Z)V

    .line 145
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 146
    goto/16 :goto_0

    :cond_0
    const-string v0, "clock_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showClockSizeDialog()V

    goto/16 :goto_0

    .line 148
    :cond_1
    const-string v0, "clock_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;

    invoke-direct {p1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$2;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v0, "\u05d1\u05d7\u05e8 \u05e6\u05d1\u05e2 \u05dc\u05e9\u05e2\u05d5\u05df"

    invoke-direct {p0, v0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V

    goto/16 :goto_0

    .line 156
    :cond_2
    const-string v0, "clock_font_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showClockFontStyleDialog()V

    goto/16 :goto_0

    .line 158
    :cond_3
    const-string v0, "clock_time_format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTimeFormatDialog()V

    goto/16 :goto_0

    .line 160
    :cond_4
    const-string v0, "date_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isDateEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 162
    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setDateEnabled(Landroid/content/Context;Z)V

    .line 163
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 164
    goto/16 :goto_0

    :cond_5
    const-string v0, "date_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 165
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateSize(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$3;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v1, "\u05d2\u05d5\u05d3\u05dc \u05ea\u05d0\u05e8\u05d9\u05da \u05dc\u05d5\u05e2\u05d6\u05d9"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V

    goto/16 :goto_0

    .line 172
    :cond_6
    const-string v0, "hebrew_date_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isHebrewDateEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 174
    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setHebrewDateEnabled(Landroid/content/Context;Z)V

    .line 175
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 176
    goto/16 :goto_0

    :cond_7
    const-string v0, "hebrew_date_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 177
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateSize(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$4;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v1, "\u05d2\u05d5\u05d3\u05dc \u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-direct {p0, v1, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V

    goto/16 :goto_0

    .line 184
    :cond_8
    const-string v0, "hebrew_date_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 185
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$5;

    invoke-direct {p1, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$5;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    const-string v0, "\u05d1\u05d7\u05e8 \u05e6\u05d1\u05e2 \u05dc\u05ea\u05d0\u05e8\u05d9\u05da \u05e2\u05d1\u05e8\u05d9"

    invoke-direct {p0, v0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V

    goto/16 :goto_0

    .line 192
    :cond_9
    const-string v0, "card_bg_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showCardBgDialog()V

    goto/16 :goto_0

    .line 194
    :cond_a
    const-string v0, "card_corner_radius"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showCornerRadiusDialog()V

    goto/16 :goto_0

    .line 196
    :cond_b
    const-string v0, "missed_calls_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isMissedCallsEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 198
    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->setMissedCallsEnabled(Landroid/content/Context;Z)V

    .line 199
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->refreshList()V

    .line 200
    goto/16 :goto_0

    :cond_c
    const-string v0, "num_long_press_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 201
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumLongModeDialog()V

    goto/16 :goto_0

    .line 202
    :cond_d
    const-string v0, "num_short_press_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 203
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumShortModeDialog()V

    goto/16 :goto_0

    .line 204
    :cond_e
    const-string v0, "shortcuts_numbers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 205
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showNumbersShortcutDialog()V

    goto/16 :goto_0

    .line 206
    :cond_f
    const-string v0, "shortcut_dpad_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 207
    const-string p1, "D-Pad \u05dc\u05de\u05e2\u05dc\u05d4"

    const-string v0, "key_dpad_up_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_10
    const-string v0, "shortcut_dpad_down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 209
    const-string p1, "D-Pad \u05dc\u05de\u05d8\u05d4"

    const-string v0, "key_dpad_down_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_11
    const-string v0, "shortcut_dpad_left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 211
    const-string p1, "D-Pad \u05e9\u05de\u05d0\u05dc\u05d4"

    const-string v0, "key_dpad_left_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_12
    const-string v0, "shortcut_dpad_right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 213
    const-string p1, "D-Pad \u05d9\u05de\u05d9\u05e0\u05d4"

    const-string v0, "key_dpad_right_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_13
    const-string v0, "shortcut_dpad_center_long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 215
    const-string p1, "\u05de\u05e7\u05e9 \u05de\u05e8\u05db\u05d6\u05d9 (\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4)"

    const-string v0, "key_dpad_center_long"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_14
    const-string v0, "shortcut_softkey_left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 217
    const-string p1, "\u05de\u05e7\u05e9 \u05ea\u05e4\u05e8\u05d9\u05d8 \u05e9\u05de\u05d0\u05dc"

    const-string v0, "key_softkey_left_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_15
    const-string v0, "shortcut_softkey_right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 219
    const-string p1, "\u05de\u05e7\u05e9 \u05ea\u05e4\u05e8\u05d9\u05d8 \u05d9\u05de\u05d9\u05df"

    const-string v0, "key_softkey_right_short"

    invoke-direct {p0, p1, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_16
    const-string v0, "apps_management"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 221
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showAppManagementDialog()V

    goto :goto_0

    .line 222
    :cond_17
    const-string v0, "reset_apps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    if-eqz v0, :cond_18

    .line 223
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    const-string v0, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05d9\u05e7\u05d5\u05de\u05d9 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 225
    const-string v0, "\u05d4\u05d0\u05dd \u05dc\u05e9\u05d7\u05d6\u05e8 \u05d0\u05ea \u05d7\u05dc\u05d5\u05e7\u05ea \u05db\u05dc \u05d4\u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc?"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$6;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 226
    const-string v3, "\u05d0\u05d9\u05e9\u05d5\u05e8"

    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 235
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 237
    :cond_18
    const-string v0, "reset_all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 238
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    const-string v0, "\u05e9\u05d7\u05d6\u05d5\u05e8 \u05db\u05dc \u05d4\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 240
    const-string v0, "\u05d4\u05d0\u05dd \u05dc\u05d0\u05e4\u05e1 \u05d0\u05ea \u05db\u05dc \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea \u05dc\u05d1\u05e8\u05d9\u05e8\u05ea \u05d4\u05de\u05d7\u05d3\u05dc?"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$7;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 241
    const-string v3, "\u05d0\u05d9\u05e4\u05d5\u05e1 \u05de\u05dc\u05d0"

    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 250
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    :cond_19
    :goto_0
    return-void
.end method

.method private pickApp(Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V
    .locals 4

    .line 593
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 594
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 595
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 596
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;

    iget-object v3, v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppEntry;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 595
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 599
    const-string v3, "\u05d1\u05d7\u05e8 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;

    invoke-direct {v3, p0, v0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$20;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/util/List;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V

    .line 600
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 607
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 608
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 609
    return-void
.end method

.method private refreshList()V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildSettingsList()V

    .line 257
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mAdapter:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

    invoke-virtual {v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->notifyDataSetChanged()V

    .line 258
    return-void
.end method

.method private showAppManagementDialog()V
    .locals 6

    .line 612
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 613
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 614
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 615
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

    .line 616
    nop

    .line 617
    const-string v4, "mainmenu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, " [\u05ea\u05e4\u05e8\u05d9\u05d8]"

    goto :goto_1

    .line 618
    :cond_0
    const-string v4, "extra"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, " [\u05db\u05dc\u05d9\u05dd]"

    goto :goto_1

    .line 619
    :cond_1
    const-string v4, "game"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, " [\u05d9\u05d9\u05e9\u05d5\u05de\u05d9\u05dd]"

    goto :goto_1

    .line 620
    :cond_2
    const-string v4, "hide"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " [\u05de\u05d5\u05e1\u05ea\u05e8]"

    goto :goto_1

    :cond_3
    const-string v3, ""

    .line 621
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

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 625
    const-string v3, "\u05e0\u05d9\u05d4\u05d5\u05dc \u05d5\u05e1\u05d9\u05d3\u05d5\u05e8 \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;

    invoke-direct {v3, p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/util/List;)V

    .line 626
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 659
    const-string v2, "\u05e1\u05d2\u05d5\u05e8"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 661
    return-void
.end method

.method private showCardBgDialog()V
    .locals 5

    .line 384
    const-string v0, "\u05e9\u05e7\u05d5\u05e3 \u05dc\u05d2\u05de\u05e8\u05d9 (\u05dc\u05dc\u05d0 \u05e8\u05e7\u05e2)"

    const-string v1, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05e2\u05d3\u05d9\u05e0\u05d4 (15% \u05e9\u05e7\u05d9\u05e4\u05d5\u05ea)"

    const-string v2, "\u05d6\u05db\u05d5\u05db\u05d9\u05ea \u05de\u05d5\u05d3\u05d2\u05e9\u05ea (35% \u05e9\u05e7\u05d9\u05e4\u05d5\u05ea)"

    const-string v3, "\u05db\u05d4\u05d4 \u05e9\u05e7\u05d5\u05e3 (Dark Frost)"

    const-string v4, "\u05e8\u05e7\u05e2 \u05db\u05d4\u05d4 \u05de\u05dc\u05d0 (Solid Dark)"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardBgType(Landroid/content/Context;)I

    move-result v1

    .line 392
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    const-string v3, "\u05e8\u05e7\u05e2 \u05d5\u05e9\u05e7\u05d9\u05e4\u05d5\u05ea \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$13;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 394
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 402
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 404
    return-void
.end method

.method private showClockFontStyleDialog()V
    .locals 5

    .line 317
    const-string v0, "\u05e8\u05d2\u05d9\u05dc (Normal)"

    const-string v1, "\u05de\u05d5\u05d3\u05d2\u05e9 (Bold)"

    const-string v2, "\u05d3\u05e7 (Light)"

    const-string v3, "\u05de\u05d5\u05e0\u05d5\u05e1\u05e4\u05d9\u05d9\u05e1 (Monospace)"

    const-string v4, "Serif"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockFontStyle(Landroid/content/Context;)I

    move-result v1

    .line 319
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    const-string v3, "\u05e1\u05d2\u05e0\u05d5\u05df \u05d2\u05d5\u05e4\u05df \u05e9\u05e2\u05d5\u05df"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$10;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 321
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 329
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 331
    return-void
.end method

.method private showClockSizeDialog()V
    .locals 6

    .line 263
    const-string v0, "\u05e7\u05d8\u05df (34sp)"

    const-string v1, "\u05e8\u05d2\u05d9\u05dc (46sp)"

    const-string v2, "\u05d2\u05d3\u05d5\u05dc (58sp)"

    const-string v3, "\u05e2\u05e0\u05e7 (68sp)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 264
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 265
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockSize(Landroid/content/Context;)I

    move-result v3

    .line 266
    nop

    .line 267
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 268
    aget v5, v2, v4

    if-ne v5, v3, :cond_0

    .line 269
    nop

    .line 270
    goto :goto_1

    .line 267
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 273
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    const-string v3, "\u05d1\u05d7\u05e8 \u05d2\u05d5\u05d3\u05dc \u05e9\u05e2\u05d5\u05df"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$8;

    invoke-direct {v3, p0, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$8;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;[I)V

    .line 275
    invoke-virtual {v1, v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 283
    const-string v2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 285
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

    .line 292
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

    .line 293
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 304
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;

    invoke-direct {v2, p0, p2, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$9;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;[I)V

    .line 306
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 312
    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 314
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

.method private showCornerRadiusDialog()V
    .locals 6

    .line 407
    const-string v0, "\u05dc\u05dc\u05d0 \u05e4\u05d9\u05e0\u05d5\u05ea \u05de\u05e2\u05d5\u05d2\u05dc\u05d5\u05ea (0dp)"

    const-string v1, "\u05de\u05e2\u05d5\u05d2\u05dc \u05e2\u05d3\u05d9\u05df (8dp)"

    const-string v2, "\u05de\u05e2\u05d5\u05d2\u05dc \u05de\u05d5\u05d3\u05e8\u05e0\u05d9 (14dp)"

    const-string v3, "\u05de\u05e2\u05d5\u05d2\u05dc \u05de\u05dc\u05d0 (22dp)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 408
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 409
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardCornerRadius(Landroid/content/Context;)I

    move-result v3

    .line 410
    nop

    .line 411
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 412
    aget v5, v2, v4

    if-ne v5, v3, :cond_0

    .line 413
    nop

    .line 414
    goto :goto_1

    .line 411
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 417
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    const-string v3, "\u05e4\u05d9\u05e0\u05d5\u05ea \u05de\u05e2\u05d5\u05d2\u05dc\u05d5\u05ea \u05e9\u05dc \u05d4\u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;

    invoke-direct {v3, p0, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$14;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;[I)V

    .line 419
    invoke-virtual {v1, v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 427
    const-string v2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 429
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
    .locals 9

    .line 492
    const-string v0, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    const-string v1, "\u05d1\u05d7\u05d9\u05e8\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4..."

    const-string v2, "\u05d4\u05d3\u05dc\u05e7\u05ea / \u05db\u05d9\u05d1\u05d5\u05d9 \u05e4\u05e0\u05e1"

    const-string v3, "\u05e4\u05ea\u05d9\u05d7\u05ea \u05d5\u05d9\u05dc\u05d5\u05df \u05d4\u05ea\u05e8\u05d0\u05d5\u05ea"

    const-string v4, "\u05de\u05e6\u05d1 \u05e9\u05e7\u05d8 / \u05e8\u05d2\u05d9\u05dc"

    const-string v5, "\u05e4\u05ea\u05d9\u05d7\u05ea \u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    const-string v6, "\u05e4\u05ea\u05d9\u05d7\u05ea \u05ea\u05e4\u05e8\u05d9\u05d8 \u05e8\u05d0\u05e9\u05d9"

    const-string v7, "\u05d9\u05d5\u05de\u05df \u05e9\u05d9\u05d7\u05d5\u05ea"

    const-string v8, "\u05dc\u05dc\u05d0 \u05e4\u05e2\u05d5\u05dc\u05d4"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 503
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;

    invoke-direct {v1, p0, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 553
    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 554
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 555
    return-void
.end method

.method private showNumLongModeDialog()V
    .locals 4

    .line 432
    const-string v0, "\ud83d\udcde \u05d7\u05d9\u05d5\u05d2 \u05de\u05d4\u05d9\u05e8 (Speed Dial)"

    const-string v1, "\ud83d\ude80 \u05d4\u05e4\u05e2\u05dc\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea \u05de\u05d5\u05ea\u05d0\u05de\u05d5\u05ea"

    const-string v2, "\ud83c\udf9b\ufe0f \u05d4\u05ea\u05d0\u05de\u05d4 \u05e4\u05e8\u05d8\u05e0\u05d9\u05ea \u05dc\u05e4\u05d9 \u05de\u05e7\u05e9"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumLongPressMode(Landroid/content/Context;)I

    move-result v1

    .line 438
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 \u05e2\u05dc \u05de\u05e7\u05e9\u05d9 \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$15;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 440
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 448
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 450
    return-void
.end method

.method private showNumShortModeDialog()V
    .locals 4

    .line 453
    const-string v0, "\ud83d\udd22 \u05e4\u05ea\u05d9\u05d7\u05ea \u05d7\u05d9\u05d9\u05d2\u05df \u05e8\u05d2\u05d9\u05dc (\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc)"

    const-string v1, "\u26a1 \u05e7\u05d9\u05e6\u05d5\u05e8 \u05d9\u05e9\u05d9\u05e8 \u05dc\u05e4\u05ea\u05d9\u05d7\u05ea \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d5\u05ea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumShortPressMode(Landroid/content/Context;)I

    move-result v1

    .line 458
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    const-string v3, "\u05dc\u05d7\u05d9\u05e6\u05d4 \u05e7\u05e6\u05e8\u05d4 \u05e2\u05dc \u05de\u05e7\u05e9\u05d9 \u05e1\u05e4\u05e8\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$16;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 460
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 468
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 470
    return-void
.end method

.method private showNumbersShortcutDialog()V
    .locals 13

    .line 473
    const-string v0, "\u05de\u05e7\u05e9 1"

    const-string v1, "\u05de\u05e7\u05e9 2"

    const-string v2, "\u05de\u05e7\u05e9 3"

    const-string v3, "\u05de\u05e7\u05e9 4"

    const-string v4, "\u05de\u05e7\u05e9 5"

    const-string v5, "\u05de\u05e7\u05e9 6"

    const-string v6, "\u05de\u05e7\u05e9 7"

    const-string v7, "\u05de\u05e7\u05e9 8"

    const-string v8, "\u05de\u05e7\u05e9 9"

    const-string v9, "\u05de\u05e7\u05e9 0"

    const-string v10, "\u05de\u05e7\u05e9 *"

    const-string v11, "\u05de\u05e7\u05e9 #"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 474
    const-string v1, "key_num_long_1"

    const-string v2, "key_num_long_2"

    const-string v3, "key_num_long_3"

    const-string v4, "key_num_long_4"

    const-string v5, "key_num_long_5"

    const-string v6, "key_num_long_6"

    const-string v7, "key_num_long_7"

    const-string v8, "key_num_long_8"

    const-string v9, "key_num_long_9"

    const-string v10, "key_num_long_0"

    const-string v11, "key_num_long_star"

    const-string v12, "key_num_long_pound"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    .line 479
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    const-string v3, "\u05d1\u05d7\u05e8 \u05de\u05e7\u05e9 \u05dc\u05d4\u05ea\u05d0\u05de\u05d4 \u05d0\u05d9\u05e9\u05d9\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;

    invoke-direct {v3, p0, v0, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$17;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 481
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 487
    const-string v1, "\u05d7\u05d6\u05d5\u05e8"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 489
    return-void
.end method

.method private showTextSizeDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;)V
    .locals 5

    .line 361
    const-string v0, "\u05e7\u05d8\u05df (11sp)"

    const-string v1, "\u05e8\u05d2\u05d9\u05dc (14sp)"

    const-string v2, "\u05d1\u05d9\u05e0\u05d5\u05e0\u05d9 (16sp)"

    const-string v3, "\u05d2\u05d3\u05d5\u05dc (18sp)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 362
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 363
    nop

    .line 364
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 365
    aget v4, v2, v3

    if-ne v4, p2, :cond_0

    .line 366
    nop

    .line 367
    goto :goto_1

    .line 364
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 370
    :goto_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;

    invoke-direct {p2, p0, p3, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$12;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$SizeSelectedCallback;[I)V

    .line 372
    invoke-virtual {p1, v0, v3, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 379
    const-string p3, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 381
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

    .line 334
    const-string v0, "\u05d1\u05e8\u05d9\u05e8\u05ea \u05de\u05d7\u05d3\u05dc \u05e9\u05dc \u05d4\u05de\u05e2\u05e8\u05db\u05ea"

    const-string v1, "24 \u05e9\u05e2\u05d5\u05ea (HH:mm)"

    const-string v2, "24 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd \u05e9\u05e0\u05d9\u05d5\u05ea (HH:mm:ss)"

    const-string v3, "12 \u05e9\u05e2\u05d5\u05ea \u05e2\u05dd AM/PM (h:mm a)"

    const-string v4, "12 \u05e9\u05e2\u05d5\u05ea \u05dc\u05dc\u05d0 AM/PM (h:mm)"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockTimeFormat(Landroid/content/Context;)I

    move-result v1

    .line 342
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    const-string v3, "\u05e4\u05d5\u05e8\u05de\u05d8 \u05ea\u05e6\u05d5\u05d2\u05ea \u05e9\u05e2\u05d5\u05ea"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;

    invoke-direct {v3, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$11;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 344
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 352
    const-string v1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 354
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string p1, "\u05d4\u05d2\u05d3\u05e8\u05d5\u05ea \u05de\u05e1\u05da \u05d4\u05d1\u05d9\u05ea"

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    .line 69
    const v0, -0xededee

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 70
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 72
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 73
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 75
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->buildSettingsList()V

    .line 79
    new-instance p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mItems:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mAdapter:Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;

    .line 80
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-void
.end method

.class public Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingItem"
.end annotation


# static fields
.field public static final TYPE_HEADER:I = 0x0

.field public static final TYPE_ITEM:I = 0x1

.field public static final TYPE_MASTER:I = 0x3

.field public static final TYPE_TOGGLE:I = 0x2


# instance fields
.field public checked:Z

.field public enabled:Z

.field public key:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->enabled:Z

    .line 78
    iput p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    .line 79
    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->key:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->title:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;
    .locals 3

    .line 85
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;
    .locals 3

    .line 112
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->enabled:Z

    .line 114
    return-object v0
.end method

.method public static item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;
    .locals 2

    .line 89
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static master(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;
    .locals 3

    .line 105
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-boolean p2, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->checked:Z

    .line 107
    return-object v0
.end method

.method public static toggle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;
    .locals 2

    .line 98
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-boolean p3, v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->checked:Z

    .line 100
    return-object v0
.end method

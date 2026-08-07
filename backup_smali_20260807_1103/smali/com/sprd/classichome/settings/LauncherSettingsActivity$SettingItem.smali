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


# instance fields
.field public key:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    .line 49
    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->key:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->title:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static header(Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;
    .locals 3

    .line 55
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;
    .locals 2

    .line 59
    new-instance v0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

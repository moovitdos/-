.class public Lcom/sprd/classichome/HomeApplication;
.super Landroid/app/Application;
.source "HomeApplication.java"


# static fields
.field private static INSTANCE:Lcom/sprd/classichome/HomeApplication;

.field public static WEATHER_ICON:Landroid/util/SparseIntArray;


# instance fields
.field private mModel:Lcom/sprd/classichome/model/LauncherModel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x7f020061

    const v5, 0x7f020060

    const v4, 0x7f020034

    const v3, 0x7f020032

    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    .line 24
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x7f020058

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f020002

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f02005b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f02005c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f020051

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f020056

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x7f020033

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f020059

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x7f02005e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x7f020052

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, 0x7f020057

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const v2, 0x7f020035

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const v2, 0x7f020001

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const v2, 0x7f02002e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const v2, 0x7f02002f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const v2, 0x7f02005a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const v2, 0x7f02004f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const v2, 0x7f020054

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const v2, 0x7f020030

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a

    const v2, 0x7f020050

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b

    const v2, 0x7f020055

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x1c

    const v2, 0x7f020031

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const v2, 0x7f020004

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const v2, 0x7f02006d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const v2, 0x7f02005f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x35

    const v2, 0x7f02005d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->WEATHER_ICON:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 73
    sput-object p0, Lcom/sprd/classichome/HomeApplication;->INSTANCE:Lcom/sprd/classichome/HomeApplication;

    .line 74
    return-void
.end method

.method public static getInstance()Lcom/sprd/classichome/HomeApplication;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->INSTANCE:Lcom/sprd/classichome/HomeApplication;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HomeApplication is not running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    sget-object v0, Lcom/sprd/classichome/HomeApplication;->INSTANCE:Lcom/sprd/classichome/HomeApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 79
    sget-boolean v1, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HomeApplication"

    const-string v2, "HomeApplication initiated"

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    new-instance v1, Lcom/sprd/classichome/model/LauncherModel;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/model/LauncherModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprd/classichome/HomeApplication;->mModel:Lcom/sprd/classichome/model/LauncherModel;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/sprd/classichome/HomeApplication;->mModel:Lcom/sprd/classichome/model/LauncherModel;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/sprd/classichome/HomeApplication;->mModel:Lcom/sprd/classichome/model/LauncherModel;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 106
    iget-object v0, p0, Lcom/sprd/classichome/HomeApplication;->mModel:Lcom/sprd/classichome/model/LauncherModel;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/sprd/classichome/HomeApplication;->INSTANCE:Lcom/sprd/classichome/HomeApplication;

    .line 108
    return-void
.end method

.method public removeHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V
    .locals 1
    .param p1, "homeMonitorCallbacks"    # Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sprd/classichome/HomeApplication;->mModel:Lcom/sprd/classichome/model/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sprd/classichome/model/LauncherModel;->removeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V

    .line 117
    return-void
.end method

.method public setHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)Lcom/sprd/classichome/model/LauncherModel;
    .locals 1
    .param p1, "homeMonitorCallbacks"    # Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sprd/classichome/HomeApplication;->mModel:Lcom/sprd/classichome/model/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sprd/classichome/model/LauncherModel;->addCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V

    .line 112
    iget-object v0, p0, Lcom/sprd/classichome/HomeApplication;->mModel:Lcom/sprd/classichome/model/LauncherModel;

    return-object v0
.end method

.class public Lcom/sprd/common/util/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final CALL_LOG:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.dialer"

    const-string v2, "com.android.dialer.calllog.CallLogActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sprd/common/util/Utilities;->CALL_LOG:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructLauncherIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    const/high16 v3, 0x10200000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v2, v1

    .line 44
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 41
    .end local v2    # "intent":Ljava/lang/Object;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-static {p0, p1}, Lcom/sprd/common/util/Utilities;->getLaunchIntentForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 44
    .restart local v2    # "intent":Ljava/lang/Object;
    goto :goto_0
.end method

.method private static getLaunchIntentForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 48
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v2

    .line 53
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 54
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 55
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Utilities"

    const-string v4, "constructLauncherIntent error!"

    invoke-static {v3, v4}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNoEmptyUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 0
    .param p0, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 220
    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    .end local p0    # "user":Landroid/os/UserHandle;
    :cond_0
    return-object p0
.end method

.method public static loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 153
    const-string v2, ""

    .line 154
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v2

    .line 169
    .end local v2    # "title":Ljava/lang/CharSequence;
    .local v3, "title":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 158
    .end local v3    # "title":Ljava/lang/Object;
    .restart local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 160
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 161
    if-nez v2, :cond_2

    .line 162
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_1
    move-object v3, v2

    .line 169
    .restart local v3    # "title":Ljava/lang/Object;
    goto :goto_0

    .line 164
    .end local v3    # "title":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Utilities"

    const-string v5, "loadAppLabel failed."

    invoke-static {v4, v5, v0}, Lcom/sprd/common/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    const-string v2, ""

    goto :goto_1
.end method

.method public static loadAppSKIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 86
    const/4 v2, -0x1

    .line 87
    .local v2, "iconRes":I
    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "com.duoqin.xiaoai"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.duoqin.ai"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    :cond_0
    const v2, 0x7f02004d

    .line 144
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 145
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-lez v2, :cond_2

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 149
    :cond_2
    return-object v1

    .line 92
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v4, "com.android.contacts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    const v2, 0x7f02003c

    goto :goto_0

    .line 94
    :cond_4
    const-string v4, "com.android.mms"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 95
    const v2, 0x7f020042

    goto :goto_0

    .line 96
    :cond_5
    const-string v4, "com.android.dialer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 97
    const v2, 0x7f020039

    goto :goto_0

    .line 98
    :cond_6
    const-string v4, "com.android.music"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 99
    const v2, 0x7f020043

    goto :goto_0

    .line 100
    :cond_7
    const-string v4, "com.duoqin.infrared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.duoqin.remote"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 102
    :cond_8
    const v2, 0x7f020041

    goto :goto_0

    .line 103
    :cond_9
    const-string v4, "com.duoqin.reader"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 104
    const v2, 0x7f020045

    goto :goto_0

    .line 105
    :cond_a
    const-string v4, "com.redorigami.simpleweather"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 106
    const v2, 0x7f02004c

    goto :goto_0

    .line 107
    :cond_b
    const-string v4, "com.duoqin.fmradio"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 108
    const v2, 0x7f02003f

    goto :goto_0

    .line 109
    :cond_c
    const-string v4, "com.sprd.sprdcalculator"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 110
    const v2, 0x7f020037

    goto/16 :goto_0

    .line 111
    :cond_d
    const-string v4, "com.android.calendar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 112
    const v2, 0x7f020038

    goto/16 :goto_0

    .line 113
    :cond_e
    const-string v4, "com.android.deskclock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 114
    const v2, 0x7f02003b

    goto/16 :goto_0

    .line 115
    :cond_f
    const-string v4, "com.sprd.note"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 116
    const v2, 0x7f020044

    goto/16 :goto_0

    .line 117
    :cond_10
    const-string v4, "com.android.soundrecorder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 118
    const v2, 0x7f020046

    goto/16 :goto_0

    .line 119
    :cond_11
    const-string v4, "com.android.settings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 120
    const v2, 0x7f020047

    goto/16 :goto_0

    .line 121
    :cond_12
    const-string v4, "com.duoqin.syncassistant"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 122
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "className":Ljava/lang/String;
    const-string v4, "com.duoqin.translator.ui.TranslatorMainActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 124
    const v2, 0x7f02004b

    goto/16 :goto_0

    .line 125
    :cond_13
    const-string v4, "com.duoqin.chat.ui.ChatListActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 126
    const v2, 0x7f02003a

    goto/16 :goto_0

    .line 128
    :cond_14
    const v2, 0x7f020049

    goto/16 :goto_0

    .line 130
    .end local v0    # "className":Ljava/lang/String;
    :cond_15
    const-string v4, "com.android.gallery3d"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 131
    const v2, 0x7f020040

    goto/16 :goto_0

    .line 132
    :cond_16
    const-string v4, "com.sprd.fileexplorer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 133
    const v2, 0x7f02003e

    goto/16 :goto_0

    .line 134
    :cond_17
    const-string v4, "com.duoqin.snake"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 135
    const v2, 0x7f020048

    goto/16 :goto_0

    .line 136
    :cond_18
    const-string v4, "com.duoqin.tetris"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 137
    const v2, 0x7f02004a

    goto/16 :goto_0

    .line 138
    :cond_19
    const-string v4, "com.android.browser"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 139
    const v2, 0x7f020036

    goto/16 :goto_0

    .line 140
    :cond_1a
    const-string v4, "com.android.providers.downloads.ui"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    const v2, 0x7f02003d

    goto/16 :goto_0
.end method

.method public static sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fast"    # Z

    .prologue
    .line 201
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 202
    if-eqz p2, :cond_0

    .line 203
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    const-string v0, "Utilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcast success, bc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_1
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/sprd/common/util/Utilities;->constructLauncherIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 173
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    const/4 v1, 0x1

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "Utilities"

    const-string v3, "startActivity failed"

    invoke-static {v2, v3, v0}, Lcom/sprd/common/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f080027

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

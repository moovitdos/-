.class public Lcom/sprd/common/util/KeyCodeEventUtil;
.super Ljava/lang/Object;
.source "KeyCodeEventUtil.java"


# static fields
.field private static final ENABLE_FLASHLIGHT_BY_CENTER_KEY:Z

.field private static mStrArray:[Ljava/lang/String;

.field private static spData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-string v0, "ro.home.flashlight.centerkey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sprd/common/util/SystemPropertiesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sprd/common/util/KeyCodeEventUtil;->ENABLE_FLASHLIGHT_BY_CENTER_KEY:Z

    .line 18
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/sprd/common/util/KeyCodeEventUtil;->spData:[Ljava/lang/String;

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static expandNotificationsPanel(Landroid/content/Context;)V
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/sprd/common/util/StatusBarUtils;->expandNotificationsPanel(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method private static getFamilyNumber(Landroid/content/Context;II)[Ljava/lang/String;
    .locals 1

    .line 225
    :try_start_0
    new-array p2, p2, [Ljava/lang/String;

    sput-object p2, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "speeddial"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 228
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 229
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 230
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge p0, p2, :cond_0

    .line 231
    sget-object p2, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    goto :goto_1

    .line 234
    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :goto_1
    sget-object p0, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    return-object p0
.end method

.method public static isLauncherNeedUseKeycode(I)Z
    .locals 1

    .line 22
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 45
    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static longPressKeyEventForMainActivity(Landroid/content/Context;I)Z
    .locals 3

    .line 162
    sget-boolean v0, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "longPressKeyEvent keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCodeEventUtil"

    invoke-static {v1, v0}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->handleLongPressKey(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 169
    return v1

    .line 173
    :cond_1
    const/16 v0, 0x12

    if-eq p1, v0, :cond_6

    const/16 v0, 0x17

    if-eq p1, v0, :cond_5

    const/16 v0, 0x52

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumLongPressMode(Landroid/content/Context;)I

    move-result v0

    .line 187
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 188
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "speeddial_setting"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 189
    add-int/lit8 p1, p1, -0x8

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speeddial"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    invoke-static {p0, p1}, Lcom/sprd/common/util/KeyCodeEventUtil;->startCallActivityByPosition(Landroid/content/Context;I)V

    .line 194
    goto :goto_0

    .line 197
    :cond_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.duoqin.dialer.speeddial.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, "position"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    goto :goto_0

    .line 175
    :pswitch_1
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->onLongPress0Key(Landroid/content/Context;)V

    .line 176
    goto :goto_0

    .line 217
    :cond_4
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->expandNotificationsPanel(Landroid/content/Context;)V

    goto :goto_0

    .line 214
    :cond_5
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->onLongPressCenterKey(Landroid/content/Context;)V

    .line 215
    goto :goto_0

    .line 211
    :cond_6
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->startSilentMode(Landroid/content/Context;)V

    .line 212
    nop

    .line 220
    :cond_7
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static onLongPress0Key(Landroid/content/Context;)V
    .locals 1

    .line 154
    sget-boolean v0, Lcom/sprd/common/util/KeyCodeEventUtil;->ENABLE_FLASHLIGHT_BY_CENTER_KEY:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->startSos(Landroid/content/Context;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Lcom/sprd/common/util/KeyCodeEventUtil;->startFlashlight()V

    .line 159
    :goto_0
    return-void
.end method

.method private static onLongPressCenterKey(Landroid/content/Context;)V
    .locals 1

    .line 146
    sget-boolean v0, Lcom/sprd/common/util/KeyCodeEventUtil;->ENABLE_FLASHLIGHT_BY_CENTER_KEY:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/sprd/common/util/KeyCodeEventUtil;->startFlashlight()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->startSos(Landroid/content/Context;)V

    .line 151
    :goto_0
    return-void
.end method

.method public static pressKeyEventForMainActivity(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 57
    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->handleShortPressKey(Landroid/content/Context;I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 58
    return v0

    .line 62
    :cond_0
    const/4 p2, 0x4

    const/4 v1, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/16 p2, 0x52

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    const-string v2, "audio"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 87
    :pswitch_0
    return v1

    .line 83
    :pswitch_1
    const-string p1, "*"

    invoke-static {p0, p1}, Lcom/sprd/common/util/KeyCodeEventUtil;->startDialActivityByKeyCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    goto :goto_1

    .line 80
    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 p1, -0x1

    invoke-virtual {p0, p2, p1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 81
    goto :goto_1

    .line 77
    :pswitch_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0, p2, v0, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 78
    goto :goto_1

    .line 74
    :pswitch_4
    const/4 p2, 0x7

    if-ne p1, p2, :cond_1

    const-string p1, "0"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/sprd/common/util/KeyCodeEventUtil;->startDialActivityByKeyCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    goto :goto_1

    .line 64
    :cond_2
    sget-object p1, Lcom/sprd/common/util/Utilities;->CALL_LOG:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 65
    nop

    .line 97
    :goto_1
    return v0

    .line 95
    :cond_3
    :pswitch_5
    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static startCallActivityByPosition(Landroid/content/Context;I)V
    .locals 3

    .line 106
    sget-object v0, Lcom/sprd/common/util/KeyCodeEventUtil;->spData:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {p0, p1, v0}, Lcom/sprd/common/util/KeyCodeEventUtil;->getFamilyNumber(Landroid/content/Context;II)[Ljava/lang/String;

    .line 107
    sget-object p1, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object p1, p1, v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    invoke-static {p0, p1}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 113
    :cond_0
    return-void
.end method

.method private static startDialActivityByKeyCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 101
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 103
    return-void
.end method

.method private static startFlashlight()V
    .locals 4

    .line 129
    :try_start_0
    const-string v0, "com.sprd.common.util.FlashlightController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    const-string v1, "switchFlashlight"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    const-string v1, "KeyCodeEventUtil"

    const-string v2, "Failed to toggle flashlight"

    invoke-static {v1, v2, v0}, Lcom/sprd/common/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    :goto_0
    return-void
.end method

.method private static startSilentMode(Landroid/content/Context;)V
    .locals 1

    .line 137
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 138
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 141
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 143
    :goto_0
    return-void
.end method

.method private static startSos(Landroid/content/Context;)V
    .locals 2

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SOS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sprd/common/util/Utilities;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 121
    return-void
.end method

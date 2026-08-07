.class public Lcom/sprd/common/util/KeyCodeEventUtil;
.super Ljava/lang/Object;
.source "KeyCodeEventUtil.java"


# static fields
.field private static final ENABLE_FLASHLIGHT_BY_CENTER_KEY:Z

.field private static mStrArray:[Ljava/lang/String;

.field private static spData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 28
    const-string v0, "ro.home.flashlight.centerkey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sprd/common/util/SystemPropertiesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sprd/common/util/KeyCodeEventUtil;->ENABLE_FLASHLIGHT_BY_CENTER_KEY:Z

    .line 33
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/KeyCodeEventUtil;->spData:[Ljava/lang/String;

    .line 34
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static expandNotificationsPanel(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/sprd/common/util/StatusBarUtils;->expandNotificationsPanel(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method private static getFamilyNumber(Landroid/content/Context;II)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I
    .param p2, "arrayLength"    # I

    .prologue
    .line 232
    :try_start_0
    new-array v5, p2, [Ljava/lang/String;

    sput-object v5, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "speeddial"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "jsonStrig":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 236
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 240
    sget-object v5, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonStrig":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v5, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    return-object v5
.end method

.method public static isLauncherNeedUseKeycode(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 37
    sparse-switch p0, :sswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public static longPressKeyEventForMainActivity(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->handleLongPressKey(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_custom_lp_next

    const/4 v4, 0x1

    return v4

    :cond_custom_lp_next
    const/4 v8, 0x1

    .line 160
    const/4 v4, 0x1

    .line 162
    .local v4, "result":Z
    sget-boolean v5, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "KeyCodeEventUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "longPressKeyEvent keyCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 213
    const/4 v4, 0x0

    .line 216
    :cond_1
    :goto_0
    return v4

    .line 178
    :sswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "speeddial_setting"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 183
    add-int/lit8 v3, p1, -0x8

    .line 184
    .local v3, "position":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "speeddial"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "jsonStrig":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 188
    invoke-static {p0, v3}, Lcom/sprd/common/util/KeyCodeEventUtil;->startCallActivityByPosition(Landroid/content/Context;I)V

    goto :goto_0

    .line 191
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.duoqin.dialer.speeddial.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "familyIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v5, "position"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 201
    .end local v0    # "familyIntent":Landroid/content/Intent;
    .end local v1    # "jsonStrig":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "position":I
    :sswitch_1
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->onLongPress0Key(Landroid/content/Context;)V

    goto :goto_0

    .line 204
    :sswitch_2
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->onLongPressCenterKey(Landroid/content/Context;)V

    goto :goto_0

    .line 207
    :sswitch_3
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->startSilentMode(Landroid/content/Context;)V

    goto :goto_0

    .line 210
    :sswitch_4
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->expandNotificationsPanel(Landroid/content/Context;)V

    goto :goto_0

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x12 -> :sswitch_3
        0x17 -> :sswitch_2
        0x52 -> :sswitch_4
    .end sparse-switch
.end method

.method private static onLongPress0Key(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    sget-boolean v0, Lcom/sprd/common/util/KeyCodeEventUtil;->ENABLE_FLASHLIGHT_BY_CENTER_KEY:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->startSos(Landroid/content/Context;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/sprd/common/util/KeyCodeEventUtil;->startFlashlight()V

    goto :goto_0
.end method

.method private static onLongPressCenterKey(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    sget-boolean v0, Lcom/sprd/common/util/KeyCodeEventUtil;->ENABLE_FLASHLIGHT_BY_CENTER_KEY:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/sprd/common/util/KeyCodeEventUtil;->startFlashlight()V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/sprd/common/util/KeyCodeEventUtil;->startSos(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static pressKeyEventForMainActivity(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->handleShortPressKey(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_custom_sp_next

    const/4 v0, 0x1

    return v0

    :cond_custom_sp_next
    const/4 v0, 0x1

    .line 66
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 91
    :pswitch_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 79
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, -0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sprd/common/util/KeyCodeEventUtil;->startDialActivityByKeyCode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v1, "*"

    invoke-static {p0, v1}, Lcom/sprd/common/util/KeyCodeEventUtil;->startDialActivityByKeyCode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_3
    const-string v1, "#"

    invoke-static {p0, v1}, Lcom/sprd/common/util/KeyCodeEventUtil;->startDialActivityByKeyCode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_4
    sget-object v1, Lcom/sprd/common/util/Utilities;->CALL_LOG:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)Z

    goto :goto_0

    .line 90
    :pswitch_5
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 92
    :pswitch_6
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    nop

    .line 68
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static startCallActivityByPosition(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .prologue
    .line 103
    sget-object v2, Lcom/sprd/common/util/KeyCodeEventUtil;->spData:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {p0, p1, v2}, Lcom/sprd/common/util/KeyCodeEventUtil;->getFamilyNumber(Landroid/content/Context;II)[Ljava/lang/String;

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sprd/common/util/KeyCodeEventUtil;->mStrArray:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 106
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    invoke-static {p0, v1}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 108
    return-void
.end method

.method private static startDialActivityByKeyCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    .local v0, "it":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/sprd/common/util/Utilities;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 100
    return-void
.end method

.method private static startFlashlight()V
    .locals 0

    .prologue
    .line 124
    invoke-static {}, Lcom/sprd/common/util/FlashlightController;->switchFlashlight()Z

    .line 125
    return-void
.end method

.method private static startSilentMode(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 130
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 131
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method private static startSos(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SOS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sprd/common/util/Utilities;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 117
    return-void
.end method

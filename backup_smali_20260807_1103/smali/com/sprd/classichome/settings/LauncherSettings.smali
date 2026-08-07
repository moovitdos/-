.class public Lcom/sprd/classichome/settings/LauncherSettings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# static fields
.field public static final ACTION_CALL_LOG:Ljava/lang/String; = "action:call_log"

.field public static final ACTION_DEFAULT:Ljava/lang/String; = "default"

.field public static final ACTION_FLASHLIGHT:Ljava/lang/String; = "action:flashlight"

.field public static final ACTION_FLIPPER_NEXT:Ljava/lang/String; = "action:flipper_next"

.field public static final ACTION_MAIN_MENU:Ljava/lang/String; = "action:main_menu"

.field public static final ACTION_NONE:Ljava/lang/String; = "action:none"

.field public static final ACTION_NOTIFICATIONS:Ljava/lang/String; = "action:notifications"

.field public static final ACTION_SETTINGS:Ljava/lang/String; = "action:settings"

.field public static final ACTION_SILENT_MODE:Ljava/lang/String; = "action:silent"

.field public static final CARD_BG_DARK_FROST:I = 0x3

.field public static final CARD_BG_MEDIUM_GLASS:I = 0x2

.field public static final CARD_BG_SOLID_DARK:I = 0x4

.field public static final CARD_BG_SUBTLE_GLASS:I = 0x1

.field public static final CARD_BG_TRANSPARENT:I = 0x0

.field public static final DEFAULT_CLOCK_COLOR:I = -0x1

.field public static final DEFAULT_CLOCK_SIZE:I = 0x2e

.field public static final DEFAULT_CORNER_RADIUS:I = 0xa

.field public static final DEFAULT_DATE_SIZE:I = 0xe

.field public static final DEFAULT_HEBREW_DATE_SIZE:I = 0xe

.field public static final FONT_STYLE_BOLD:I = 0x1

.field public static final FONT_STYLE_LIGHT:I = 0x2

.field public static final FONT_STYLE_MONOSPACE:I = 0x3

.field public static final FONT_STYLE_NORMAL:I = 0x0

.field public static final FONT_STYLE_SERIF:I = 0x4

.field public static final KEY_CARD_BG_TYPE:Ljava/lang/String; = "card_bg_type"

.field public static final KEY_CARD_CORNER_RADIUS:Ljava/lang/String; = "card_corner_radius"

.field public static final KEY_CLOCK_COLOR:Ljava/lang/String; = "clock_color"

.field public static final KEY_CLOCK_ENABLED:Ljava/lang/String; = "clock_enabled"

.field public static final KEY_CLOCK_FONT_STYLE:Ljava/lang/String; = "clock_font_style"

.field public static final KEY_CLOCK_SIZE:Ljava/lang/String; = "clock_size"

.field public static final KEY_CLOCK_TIME_FORMAT:Ljava/lang/String; = "clock_time_format"

.field public static final KEY_DATE_COLOR:Ljava/lang/String; = "date_color"

.field public static final KEY_DATE_ENABLED:Ljava/lang/String; = "date_enabled"

.field public static final KEY_DATE_SIZE:Ljava/lang/String; = "date_size"

.field public static final KEY_HEBREW_DATE_COLOR:Ljava/lang/String; = "hebrew_date_color"

.field public static final KEY_HEBREW_DATE_ENABLED:Ljava/lang/String; = "hebrew_date_enabled"

.field public static final KEY_HEBREW_DATE_SIZE:Ljava/lang/String; = "hebrew_date_size"

.field public static final KEY_MISSED_CALLS_ENABLED:Ljava/lang/String; = "missed_calls_enabled"

.field public static final KEY_NUM_LONG_PRESS_MODE:Ljava/lang/String; = "num_long_press_mode"

.field public static final KEY_NUM_SHORT_PRESS_MODE:Ljava/lang/String; = "num_short_press_mode"

.field public static final NUM_LONG_CUSTOM_APPS:I = 0x1

.field public static final NUM_LONG_PER_KEY:I = 0x2

.field public static final NUM_LONG_SPEED_DIAL:I = 0x0

.field public static final NUM_SHORT_CUSTOM_APPS:I = 0x1

.field public static final NUM_SHORT_DIALER:I = 0x0

.field public static final PREF_APP_GROUP_PREFIX:Ljava/lang/String; = "app_group_"

.field private static final PREF_NAME:Ljava/lang/String; = "launcher_custom_settings"

.field private static final TAG:Ljava/lang/String; = "LauncherSettings"

.field public static final TIME_FORMAT_12H_AMPM:I = 0x3

.field public static final TIME_FORMAT_12H_NO_AMPM:I = 0x4

.field public static final TIME_FORMAT_24H:I = 0x1

.field public static final TIME_FORMAT_24H_SECONDS:I = 0x2

.field public static final TIME_FORMAT_SYSTEM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCardBackground(Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 210
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardBgType(Landroid/content/Context;)I

    move-result v0

    .line 212
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 227
    const v0, 0x33ffffff

    goto :goto_0

    .line 223
    :cond_0
    const v0, -0x22e7e7e8

    .line 224
    goto :goto_0

    .line 220
    :cond_1
    const/high16 v0, 0x66000000

    .line 221
    goto :goto_0

    .line 217
    :cond_2
    const v0, 0x55ffffff    # 3.518437E13f

    .line 218
    goto :goto_0

    .line 214
    :cond_3
    nop

    .line 215
    const/4 v0, 0x0

    .line 230
    :goto_0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 231
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 232
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 233
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardCornerRadius(Landroid/content/Context;)I

    move-result v0

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 235
    int-to-float v0, v0

    mul-float v0, v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 236
    return-object v2
.end method

.method public static executeKeyAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 308
    const-string v0, "LauncherSettings"

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 311
    :cond_0
    const-string v2, "action:none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 312
    return v3

    .line 315
    :cond_1
    :try_start_0
    const-string v2, "app:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x2

    const/high16 v6, 0x10000000

    if-eqz v2, :cond_4

    .line 316
    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 318
    array-length v7, v2

    if-lt v7, v5, :cond_2

    .line 319
    new-instance v5, Landroid/content/ComponentName;

    aget-object v7, v2, v1

    aget-object v2, v2, v3

    invoke-direct {v5, v7, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 322
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 324
    return v3

    .line 325
    :cond_2
    array-length v4, v2

    if-ne v4, v3, :cond_3

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v2, v2, v1

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 327
    if-eqz v2, :cond_3

    .line 328
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 330
    return v3

    .line 333
    :cond_3
    goto/16 :goto_5

    :cond_4
    const-string v2, "action:flashlight"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_5

    .line 335
    :try_start_2
    const-string p0, "com.sprd.common.util.FlashlightController"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 336
    const-string v2, "switchFlashlight"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v2, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    goto :goto_0

    .line 337
    :catchall_0
    move-exception p0

    .line 338
    :try_start_3
    const-string v2, "Failed to toggle flashlight"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :goto_0
    return v3

    .line 341
    :cond_5
    const-string v2, "action:notifications"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v2, :cond_6

    .line 343
    :try_start_4
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 344
    const-string v2, "android.app.StatusBarManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "expandNotificationsPanel"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 347
    goto :goto_1

    .line 345
    :catchall_1
    move-exception p0

    .line 346
    :try_start_5
    const-string v2, "Failed to expand status bar"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    :goto_1
    return v3

    .line 349
    :cond_6
    const-string v2, "action:silent"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 350
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 351
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-nez v4, :cond_7

    .line 352
    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 353
    const-string v2, "\u05de\u05e6\u05d1 \u05e8\u05d2\u05d9\u05dc"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 355
    :cond_7
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 356
    const-string v2, "\u05de\u05e6\u05d1 \u05e9\u05e7\u05d8"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 358
    :goto_2
    return v3

    .line 359
    :cond_8
    const-string v2, "action:settings"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 360
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    return v3

    .line 364
    :cond_9
    const-string v2, "action:main_menu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v2, :cond_a

    .line 366
    :try_start_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sprd.classichome.mainmenu.MainMenuActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 372
    goto :goto_3

    .line 370
    :catchall_2
    move-exception p0

    .line 371
    :try_start_7
    const-string v2, "Failed to open main menu"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    :goto_3
    return v3

    .line 374
    :cond_a
    const-string v2, "action:call_log"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v2, :cond_b

    .line 376
    :try_start_8
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 382
    goto :goto_4

    .line 380
    :catchall_3
    move-exception p0

    .line 381
    :try_start_9
    const-string v2, "Failed to open call log"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 383
    :goto_4
    return v3

    .line 387
    :cond_b
    :goto_5
    goto :goto_6

    .line 385
    :catch_0
    move-exception p0

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error executing key action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    :goto_6
    return v1

    .line 309
    :cond_c
    :goto_7
    return v1
.end method

.method public static getAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 257
    invoke-static {p0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->getCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 258
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 259
    return-object p0

    .line 261
    :cond_0
    return-object p3
.end method

.method public static getCardBgType(Landroid/content/Context;)I
    .locals 2

    .line 186
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "card_bg_type"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getCardCornerRadius(Landroid/content/Context;)I
    .locals 2

    .line 194
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "card_corner_radius"

    const/16 v1, 0xa

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getClockColor(Landroid/content/Context;)I
    .locals 2

    .line 111
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "clock_color"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getClockFontStyle(Landroid/content/Context;)I
    .locals 2

    .line 119
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "clock_font_style"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getClockSize(Landroid/content/Context;)I
    .locals 2

    .line 103
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "clock_size"

    const/16 v1, 0x2e

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getClockTimeFormat(Landroid/content/Context;)I
    .locals 2

    .line 127
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "clock_time_format"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 241
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_group_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateColor(Landroid/content/Context;)I
    .locals 2

    .line 152
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "date_color"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDateSize(Landroid/content/Context;)I
    .locals 2

    .line 144
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "date_size"

    const/16 v1, 0xe

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHebrewDateColor(Landroid/content/Context;)I
    .locals 2

    .line 177
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hebrew_date_color"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHebrewDateSize(Landroid/content/Context;)I
    .locals 2

    .line 169
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hebrew_date_size"

    const/16 v1, 0xe

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 293
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNumLongPressMode(Landroid/content/Context;)I
    .locals 2

    .line 277
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "num_long_press_mode"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getNumShortPressMode(Landroid/content/Context;)I
    .locals 2

    .line 285
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "num_short_press_mode"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 90
    const-string v0, "launcher_custom_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static handleLongPressKey(Landroid/content/Context;I)Z
    .locals 3

    .line 429
    nop

    .line 430
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/16 v2, 0x8

    if-lt p1, v2, :cond_1

    const/16 v2, 0x10

    if-gt p1, v2, :cond_1

    .line 431
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumLongPressMode(Landroid/content/Context;)I

    move-result v2

    .line 432
    if-nez v2, :cond_0

    .line 433
    return v0

    .line 435
    :cond_0
    sub-int/2addr p1, v1

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_num_long_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 438
    const-string p1, "key_num_long_0"

    goto :goto_0

    .line 439
    :cond_2
    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    .line 440
    const-string p1, "key_num_long_star"

    goto :goto_0

    .line 441
    :cond_3
    const/16 v1, 0x12

    if-ne p1, v1, :cond_4

    .line 442
    const-string p1, "key_num_long_pound"

    goto :goto_0

    .line 443
    :cond_4
    const/16 v1, 0x13

    if-ne p1, v1, :cond_5

    .line 444
    const-string p1, "key_dpad_up_long"

    goto :goto_0

    .line 445
    :cond_5
    const/16 v1, 0x14

    if-ne p1, v1, :cond_6

    .line 446
    const-string p1, "key_dpad_down_long"

    goto :goto_0

    .line 447
    :cond_6
    const/16 v1, 0x15

    if-ne p1, v1, :cond_7

    .line 448
    const-string p1, "key_dpad_left_long"

    goto :goto_0

    .line 449
    :cond_7
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    .line 450
    const-string p1, "key_dpad_right_long"

    goto :goto_0

    .line 451
    :cond_8
    const/16 v1, 0x17

    if-ne p1, v1, :cond_9

    .line 452
    const-string p1, "key_dpad_center_long"

    goto :goto_0

    .line 453
    :cond_9
    const/16 v1, 0x52

    if-ne p1, v1, :cond_a

    .line 454
    const-string p1, "key_softkey_left_long"

    goto :goto_0

    .line 455
    :cond_a
    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 456
    const-string p1, "key_softkey_right_long"

    goto :goto_0

    .line 455
    :cond_b
    const/4 p1, 0x0

    .line 458
    :goto_0
    if-eqz p1, :cond_c

    .line 459
    const-string v1, "default"

    invoke-static {p0, p1, v1}, Lcom/sprd/classichome/settings/LauncherSettings;->getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 461
    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->executeKeyAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 464
    :cond_c
    return v0
.end method

.method public static handleShortPressKey(Landroid/content/Context;I)Z
    .locals 3

    .line 392
    nop

    .line 393
    const/4 v0, 0x0

    const/4 v1, 0x7

    if-lt p1, v1, :cond_1

    const/16 v2, 0x10

    if-gt p1, v2, :cond_1

    .line 394
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumShortPressMode(Landroid/content/Context;)I

    move-result v2

    .line 395
    if-nez v2, :cond_0

    .line 396
    return v0

    .line 398
    :cond_0
    sub-int/2addr p1, v1

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_num_short_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 400
    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    if-ne p1, v1, :cond_2

    .line 401
    const-string p1, "key_num_short_star"

    goto :goto_0

    .line 402
    :cond_2
    const/16 v1, 0x12

    if-ne p1, v1, :cond_3

    .line 403
    const-string p1, "key_num_short_pound"

    goto :goto_0

    .line 404
    :cond_3
    const/16 v1, 0x13

    if-ne p1, v1, :cond_4

    .line 405
    const-string p1, "key_dpad_up_short"

    goto :goto_0

    .line 406
    :cond_4
    const/16 v1, 0x14

    if-ne p1, v1, :cond_5

    .line 407
    const-string p1, "key_dpad_down_short"

    goto :goto_0

    .line 408
    :cond_5
    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    .line 409
    const-string p1, "key_dpad_left_short"

    goto :goto_0

    .line 410
    :cond_6
    const/16 v1, 0x16

    if-ne p1, v1, :cond_7

    .line 411
    const-string p1, "key_dpad_right_short"

    goto :goto_0

    .line 412
    :cond_7
    const/16 v1, 0x17

    if-ne p1, v1, :cond_8

    .line 413
    const-string p1, "key_dpad_center_short"

    goto :goto_0

    .line 414
    :cond_8
    const/16 v1, 0x52

    if-ne p1, v1, :cond_9

    .line 415
    const-string p1, "key_softkey_left_short"

    goto :goto_0

    .line 416
    :cond_9
    const/4 v1, 0x4

    if-ne p1, v1, :cond_a

    .line 417
    const-string p1, "key_softkey_right_short"

    goto :goto_0

    .line 416
    :cond_a
    const/4 p1, 0x0

    .line 419
    :goto_0
    if-eqz p1, :cond_b

    .line 420
    const-string v1, "default"

    invoke-static {p0, p1, v1}, Lcom/sprd/classichome/settings/LauncherSettings;->getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 422
    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->executeKeyAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 425
    :cond_b
    return v0
.end method

.method public static isClockEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 95
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "clock_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDateEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 136
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "date_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isHebrewDateEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 161
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hebrew_date_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isMissedCallsEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 202
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "missed_calls_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static resetAll(Landroid/content/Context;)V
    .locals 0

    .line 468
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    return-void
.end method

.method public static resetAppGroups(Landroid/content/Context;)V
    .locals 3

    .line 265
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 266
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 267
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 268
    const-string v2, "app_group_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    :cond_0
    goto :goto_0

    .line 272
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    return-void
.end method

.method public static setCardBgType(Landroid/content/Context;I)V
    .locals 1

    .line 190
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "card_bg_type"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    return-void
.end method

.method public static setCardCornerRadius(Landroid/content/Context;I)V
    .locals 1

    .line 198
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "card_corner_radius"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    return-void
.end method

.method public static setClockColor(Landroid/content/Context;I)V
    .locals 1

    .line 115
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method

.method public static setClockEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 99
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    return-void
.end method

.method public static setClockFontStyle(Landroid/content/Context;I)V
    .locals 1

    .line 123
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_font_style"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    return-void
.end method

.method public static setClockSize(Landroid/content/Context;I)V
    .locals 1

    .line 107
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_size"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    return-void
.end method

.method public static setClockTimeFormat(Landroid/content/Context;I)V
    .locals 1

    .line 131
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_time_format"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    return-void
.end method

.method public static setCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 247
    if-nez p1, :cond_0

    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_group_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    if-eqz p3, :cond_3

    const-string p2, "default"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 252
    :cond_2
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 250
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    :goto_2
    return-void
.end method

.method public static setDateColor(Landroid/content/Context;I)V
    .locals 1

    .line 156
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "date_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    return-void
.end method

.method public static setDateEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 140
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "date_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method

.method public static setDateSize(Landroid/content/Context;I)V
    .locals 1

    .line 148
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "date_size"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    return-void
.end method

.method public static setHebrewDateColor(Landroid/content/Context;I)V
    .locals 1

    .line 181
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hebrew_date_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    return-void
.end method

.method public static setHebrewDateEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 165
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hebrew_date_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    return-void
.end method

.method public static setHebrewDateSize(Landroid/content/Context;I)V
    .locals 1

    .line 173
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hebrew_date_size"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    return-void
.end method

.method public static setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 297
    if-eqz p2, :cond_1

    const-string v0, "default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 298
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    :goto_1
    return-void
.end method

.method public static setMissedCallsEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 206
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "missed_calls_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    return-void
.end method

.method public static setNumLongPressMode(Landroid/content/Context;I)V
    .locals 1

    .line 281
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "num_long_press_mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    return-void
.end method

.method public static setNumShortPressMode(Landroid/content/Context;I)V
    .locals 1

    .line 289
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "num_short_press_mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    return-void
.end method

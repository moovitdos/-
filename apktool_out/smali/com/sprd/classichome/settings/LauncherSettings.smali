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

.field public static final ACTION_WIDGET_EDIT:Ljava/lang/String; = "action:widget_edit"

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

.field public static final DEFAULT_HOME_COLUMNS:I = 0x3

.field public static final DEFAULT_MENU_COLUMNS:I = 0x3

.field public static final FONT_STYLE_BOLD:I = 0x1

.field public static final FONT_STYLE_LIGHT:I = 0x2

.field public static final FONT_STYLE_MONOSPACE:I = 0x3

.field public static final FONT_STYLE_NORMAL:I = 0x0

.field public static final FONT_STYLE_SERIF:I = 0x4

.field private static final HOME_CLASS:Ljava/lang/String; = "com.sprd.classichome.Home"

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

.field public static final KEY_HOME_COLUMNS:Ljava/lang/String; = "home_columns"

.field public static final KEY_MENU_COLUMNS:Ljava/lang/String; = "menu_columns"

.field public static final KEY_MISSED_CALLS_ENABLED:Ljava/lang/String; = "missed_calls_enabled"

.field public static final KEY_NUM_LONG_PRESS_MODE:Ljava/lang/String; = "num_long_press_mode"

.field public static final KEY_NUM_SHORT_PRESS_MODE:Ljava/lang/String; = "num_short_press_mode"

.field private static final KEY_PENDING_WIDGET_EDIT:Ljava/lang/String; = "pending_widget_edit"

.field public static final MAX_MENU_COLUMNS:I = 0x5

.field public static final MIN_MENU_COLUMNS:I = 0x2

.field public static final NUM_LONG_CUSTOM_APPS:I = 0x1

.field public static final NUM_LONG_PER_KEY:I = 0x2

.field public static final NUM_LONG_SPEED_DIAL:I = 0x0

.field public static final NUM_SHORT_CUSTOM_APPS:I = 0x1

.field public static final NUM_SHORT_DIALER:I = 0x0

.field public static final PREF_APP_GROUP_PREFIX:Ljava/lang/String; = "app_group_"

.field private static final PREF_NAME:Ljava/lang/String; = "launcher_custom_settings"

.field public static final STOCK_PKG:Ljava/lang/String; = "com.sprd.simple.launcher"

.field private static final TAG:Ljava/lang/String; = "LauncherSettings"

.field public static final TIME_FORMAT_12H_AMPM:I = 0x3

.field public static final TIME_FORMAT_12H_NO_AMPM:I = 0x4

.field public static final TIME_FORMAT_24H:I = 0x1

.field public static final TIME_FORMAT_24H_SECONDS:I = 0x2

.field public static final TIME_FORMAT_SYSTEM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateModHome(Landroid/content/Context;)Z
    .locals 3

    .line 701
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->isModHomeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 702
    invoke-static {p0, v1}, Lcom/sprd/classichome/settings/LauncherSettings;->setModHomeEnabled(Landroid/content/Context;Z)V

    .line 704
    :cond_0
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->countHomeCandidates(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 705
    const-string p0, "LauncherSettings"

    const-string v0, "Refusing to disable the stock home: no candidate would remain"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return v2

    .line 708
    :cond_1
    invoke-static {p0, v2}, Lcom/sprd/classichome/settings/LauncherSettings;->setStockHomeEnabled(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static countHomeCandidates(Landroid/content/Context;)I
    .locals 3

    .line 729
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    nop

    .line 732
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 733
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v0

    .line 734
    :catchall_0
    move-exception p0

    .line 735
    return v0
.end method

.method public static createCardBackground(Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 278
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardBgType(Landroid/content/Context;)I

    move-result v0

    .line 280
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 295
    const v0, 0x33ffffff

    goto :goto_0

    .line 291
    :cond_0
    const v0, -0x22e7e7e8

    .line 292
    goto :goto_0

    .line 288
    :cond_1
    const/high16 v0, 0x66000000

    .line 289
    goto :goto_0

    .line 285
    :cond_2
    const v0, 0x55ffffff    # 3.518437E13f

    .line 286
    goto :goto_0

    .line 282
    :cond_3
    nop

    .line 283
    const/4 v0, 0x0

    .line 298
    :goto_0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 299
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 300
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 301
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getCardCornerRadius(Landroid/content/Context;)I

    move-result v0

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 303
    int-to-float v0, v0

    mul-float v0, v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 304
    return-object v2
.end method

.method public static executeKeyAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 376
    const-string v0, "LauncherSettings"

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 379
    :cond_0
    const-string v2, "action:none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 380
    return v3

    .line 383
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

    .line 384
    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 386
    array-length v7, v2

    if-lt v7, v5, :cond_2

    .line 387
    new-instance v5, Landroid/content/ComponentName;

    aget-object v7, v2, v1

    aget-object v2, v2, v3

    invoke-direct {v5, v7, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 390
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 392
    return v3

    .line 393
    :cond_2
    array-length v4, v2

    if-ne v4, v3, :cond_3

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v2, v2, v1

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 395
    if-eqz v2, :cond_3

    .line 396
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 398
    return v3

    .line 401
    :cond_3
    goto/16 :goto_5

    :cond_4
    const-string v2, "action:flashlight"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_5

    .line 403
    :try_start_2
    const-string p0, "com.sprd.common.util.FlashlightController"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 404
    const-string v2, "switchFlashlight"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v2, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    goto :goto_0

    .line 405
    :catchall_0
    move-exception p0

    .line 406
    :try_start_3
    const-string v2, "Failed to toggle flashlight"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :goto_0
    return v3

    .line 409
    :cond_5
    const-string v2, "action:notifications"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v2, :cond_6

    .line 411
    :try_start_4
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 412
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

    .line 415
    goto :goto_1

    .line 413
    :catchall_1
    move-exception p0

    .line 414
    :try_start_5
    const-string v2, "Failed to expand status bar"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    :goto_1
    return v3

    .line 417
    :cond_6
    const-string v2, "action:silent"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 418
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 419
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-nez v4, :cond_7

    .line 420
    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 421
    const-string v2, "\u05de\u05e6\u05d1 \u05e8\u05d2\u05d9\u05dc"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 423
    :cond_7
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 424
    const-string v2, "\u05de\u05e6\u05d1 \u05e9\u05e7\u05d8"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 426
    :goto_2
    return v3

    .line 427
    :cond_8
    const-string v2, "action:settings"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 428
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 431
    return v3

    .line 432
    :cond_9
    const-string v2, "action:main_menu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v2, :cond_a

    .line 434
    :try_start_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sprd.classichome.mainmenu.MainMenuActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 440
    goto :goto_3

    .line 438
    :catchall_2
    move-exception p0

    .line 439
    :try_start_7
    const-string v2, "Failed to open main menu"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    :goto_3
    return v3

    .line 442
    :cond_a
    const-string v2, "action:flipper_next"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 447
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_b

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "home_flipper"

    const-string v5, "id"

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 448
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 450
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 451
    instance-of v2, p0, Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_b

    .line 452
    check-cast p0, Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 453
    return v3

    .line 456
    :cond_b
    return v1

    .line 457
    :cond_c
    const-string v2, "action:widget_edit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 460
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_d

    .line 461
    nop

    .line 462
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v2

    check-cast p0, Landroid/app/Activity;

    .line 463
    invoke-virtual {v2, p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->beginEditFromKey(Landroid/app/Activity;)Z

    move-result p0

    .line 461
    return p0

    .line 465
    :cond_d
    return v1

    .line 466
    :cond_e
    const-string v2, "action:call_log"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v2, :cond_f

    .line 468
    :try_start_8
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 474
    goto :goto_4

    .line 472
    :catchall_3
    move-exception p0

    .line 473
    :try_start_9
    const-string v2, "Failed to open call log"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 475
    :goto_4
    return v3

    .line 479
    :cond_f
    :goto_5
    goto :goto_6

    .line 477
    :catch_0
    move-exception p0

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error executing key action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    :goto_6
    return v1

    .line 377
    :cond_10
    :goto_7
    return v1
.end method

.method public static getAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 325
    invoke-static {p0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettings;->getCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 326
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 327
    return-object p0

    .line 329
    :cond_0
    return-object p3
.end method

.method public static getCardBgType(Landroid/content/Context;)I
    .locals 2

    .line 254
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

    .line 262
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

    .line 179
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

    .line 187
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

    .line 171
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

    .line 195
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

    .line 309
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 310
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

    .line 311
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateColor(Landroid/content/Context;)I
    .locals 2

    .line 220
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

    .line 212
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

    .line 245
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

    .line 237
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hebrew_date_size"

    const/16 v1, 0xe

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHomeColumns(Landroid/content/Context;)I
    .locals 2

    .line 101
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "home_columns"

    const/4 v1, 0x3

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 102
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x2

    .line 103
    :cond_0
    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    const/4 p0, 0x5

    .line 104
    :cond_1
    return p0
.end method

.method public static getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 361
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMenuColumns(Landroid/content/Context;)I
    .locals 2

    .line 86
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "menu_columns"

    const/4 v1, 0x3

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 87
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x2

    .line 88
    :cond_0
    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    const/4 p0, 0x5

    .line 89
    :cond_1
    return p0
.end method

.method public static getNumLongPressMode(Landroid/content/Context;)I
    .locals 2

    .line 345
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

    .line 353
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

    .line 158
    const-string v0, "launcher_custom_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static handleLongPressKey(Landroid/content/Context;I)Z
    .locals 3

    .line 521
    nop

    .line 522
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/16 v2, 0x8

    if-lt p1, v2, :cond_1

    const/16 v2, 0x10

    if-gt p1, v2, :cond_1

    .line 523
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumLongPressMode(Landroid/content/Context;)I

    move-result v2

    .line 524
    if-nez v2, :cond_0

    .line 525
    return v0

    .line 527
    :cond_0
    sub-int/2addr p1, v1

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_num_long_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 529
    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 530
    const-string p1, "key_num_long_0"

    goto :goto_0

    .line 531
    :cond_2
    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    .line 532
    const-string p1, "key_num_long_star"

    goto :goto_0

    .line 533
    :cond_3
    const/16 v1, 0x12

    if-ne p1, v1, :cond_4

    .line 534
    const-string p1, "key_num_long_pound"

    goto :goto_0

    .line 535
    :cond_4
    const/16 v1, 0x13

    if-ne p1, v1, :cond_5

    .line 536
    const-string p1, "key_dpad_up_long"

    goto :goto_0

    .line 537
    :cond_5
    const/16 v1, 0x14

    if-ne p1, v1, :cond_6

    .line 538
    const-string p1, "key_dpad_down_long"

    goto :goto_0

    .line 539
    :cond_6
    const/16 v1, 0x15

    if-ne p1, v1, :cond_7

    .line 540
    const-string p1, "key_dpad_left_long"

    goto :goto_0

    .line 541
    :cond_7
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    .line 542
    const-string p1, "key_dpad_right_long"

    goto :goto_0

    .line 543
    :cond_8
    const/16 v1, 0x17

    if-ne p1, v1, :cond_9

    .line 544
    const-string p1, "key_dpad_center_long"

    goto :goto_0

    .line 545
    :cond_9
    const/16 v1, 0x52

    if-ne p1, v1, :cond_a

    .line 546
    const-string p1, "key_softkey_left_long"

    goto :goto_0

    .line 547
    :cond_a
    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 548
    const-string p1, "key_softkey_right_long"

    goto :goto_0

    .line 547
    :cond_b
    const/4 p1, 0x0

    .line 550
    :goto_0
    if-eqz p1, :cond_c

    .line 551
    const-string v1, "default"

    invoke-static {p0, p1, v1}, Lcom/sprd/classichome/settings/LauncherSettings;->getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 553
    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->executeKeyAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 556
    :cond_c
    return v0
.end method

.method public static handleShortPressKey(Landroid/content/Context;I)Z
    .locals 3

    .line 484
    nop

    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x7

    if-lt p1, v1, :cond_1

    const/16 v2, 0x10

    if-gt p1, v2, :cond_1

    .line 486
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getNumShortPressMode(Landroid/content/Context;)I

    move-result v2

    .line 487
    if-nez v2, :cond_0

    .line 488
    return v0

    .line 490
    :cond_0
    sub-int/2addr p1, v1

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_num_short_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 492
    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    if-ne p1, v1, :cond_2

    .line 493
    const-string p1, "key_num_short_star"

    goto :goto_0

    .line 494
    :cond_2
    const/16 v1, 0x12

    if-ne p1, v1, :cond_3

    .line 495
    const-string p1, "key_num_short_pound"

    goto :goto_0

    .line 496
    :cond_3
    const/16 v1, 0x13

    if-ne p1, v1, :cond_4

    .line 497
    const-string p1, "key_dpad_up_short"

    goto :goto_0

    .line 498
    :cond_4
    const/16 v1, 0x14

    if-ne p1, v1, :cond_5

    .line 499
    const-string p1, "key_dpad_down_short"

    goto :goto_0

    .line 500
    :cond_5
    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    .line 501
    const-string p1, "key_dpad_left_short"

    goto :goto_0

    .line 502
    :cond_6
    const/16 v1, 0x16

    if-ne p1, v1, :cond_7

    .line 503
    const-string p1, "key_dpad_right_short"

    goto :goto_0

    .line 504
    :cond_7
    const/16 v1, 0x17

    if-ne p1, v1, :cond_8

    .line 505
    const-string p1, "key_dpad_center_short"

    goto :goto_0

    .line 506
    :cond_8
    const/16 v1, 0x52

    if-ne p1, v1, :cond_9

    .line 507
    const-string p1, "key_softkey_left_short"

    goto :goto_0

    .line 508
    :cond_9
    const/4 v1, 0x4

    if-ne p1, v1, :cond_a

    .line 509
    const-string p1, "key_softkey_right_short"

    goto :goto_0

    .line 508
    :cond_a
    const/4 p1, 0x0

    .line 511
    :goto_0
    if-eqz p1, :cond_b

    .line 512
    const-string v1, "default"

    invoke-static {p0, p1, v1}, Lcom/sprd/classichome/settings/LauncherSettings;->getKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 513
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 514
    invoke-static {p0, p1}, Lcom/sprd/classichome/settings/LauncherSettings;->executeKeyAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 517
    :cond_b
    return v0
.end method

.method public static hasRoot()Z
    .locals 1

    .line 666
    const-string v0, "id"

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->runSu(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isClockEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 163
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

    .line 204
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

    .line 229
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

    .line 270
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "missed_calls_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isModHomeEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 718
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 719
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->modHome(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 721
    :catchall_0
    move-exception p0

    .line 722
    return v0
.end method

.method public static isStockHomeEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 671
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sprd.simple.launcher"

    const-string v3, "com.sprd.classichome.Home"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 674
    :catchall_0
    move-exception p0

    .line 675
    return v0
.end method

.method private static modHome(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .line 633
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.sprd.classichome.Home"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static openHomeChooser(Landroid/content/Context;)Z
    .locals 8

    .line 758
    const-string v0, "LauncherSettings"

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x1

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$HomeSettingsActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 763
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    return v2

    .line 768
    :cond_0
    goto :goto_0

    .line 766
    :catchall_0
    move-exception v5

    .line 767
    const-string v6, "HomeSettings unavailable"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    :goto_0
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 773
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 774
    return v2

    .line 775
    :catchall_1
    move-exception p0

    .line 776
    const-string v1, "Cannot open a home chooser"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    return v4
.end method

.method public static resetAll(Landroid/content/Context;)V
    .locals 0

    .line 560
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 561
    return-void
.end method

.method public static resetAppGroups(Landroid/content/Context;)V
    .locals 3

    .line 333
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 334
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 335
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

    .line 336
    const-string v2, "app_group_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    :cond_0
    goto :goto_0

    .line 340
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 341
    return-void
.end method

.method public static resetDisplaySettings(Landroid/content/Context;)V
    .locals 1

    .line 570
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 571
    const-string v0, "clock_enabled"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 572
    const-string v0, "clock_size"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    const-string v0, "clock_color"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 574
    const-string v0, "clock_font_style"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 575
    const-string v0, "clock_time_format"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 576
    const-string v0, "date_enabled"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 577
    const-string v0, "date_size"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 578
    const-string v0, "date_color"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 579
    const-string v0, "hebrew_date_enabled"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 580
    const-string v0, "hebrew_date_size"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 581
    const-string v0, "hebrew_date_color"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 582
    const-string v0, "card_bg_type"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 583
    const-string v0, "card_corner_radius"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 584
    const-string v0, "missed_calls_enabled"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 585
    const-string v0, "home_columns"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 586
    const-string v0, "menu_columns"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 587
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 588
    return-void
.end method

.method public static resetKeyShortcuts(Landroid/content/Context;)V
    .locals 3

    .line 596
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 597
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 598
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

    .line 599
    const-string v2, "key_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 602
    :cond_0
    goto :goto_0

    .line 603
    :cond_1
    const-string p0, "num_long_press_mode"

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 604
    const-string p0, "num_short_press_mode"

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 606
    return-void
.end method

.method public static restoreStockHome(Landroid/content/Context;)V
    .locals 3

    .line 792
    const-string v0, "LauncherSettings"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/sprd/classichome/settings/LauncherSettings;->setStockHomeEnabled(Landroid/content/Context;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    goto :goto_0

    .line 793
    :catchall_0
    move-exception v1

    .line 794
    const-string v2, "Could not re-enable the stock home"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v1}, Lcom/sprd/classichome/settings/LauncherSettings;->setModHomeEnabled(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 800
    goto :goto_1

    .line 798
    :catchall_1
    move-exception v1

    .line 799
    const-string v2, "Could not disable the mod home"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 803
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 806
    goto :goto_2

    .line 804
    :catchall_2
    move-exception v1

    .line 805
    const-string v2, "Could not clear preferred activities"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    :goto_2
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 814
    goto :goto_3

    .line 812
    :catchall_3
    move-exception p0

    .line 813
    const-string v1, "Could not return to the home screen"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    :goto_3
    return-void
.end method

.method private static runSu(Ljava/lang/String;)Z
    .locals 6

    .line 647
    nop

    .line 649
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 650
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 652
    const-string v3, "exit\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 654
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    .line 659
    :cond_0
    if-eqz v1, :cond_1

    .line 660
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 654
    :cond_1
    :goto_0
    return v0

    .line 655
    :catchall_1
    move-exception v2

    .line 656
    :try_start_2
    const-string v3, "LauncherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "su failed for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 657
    nop

    .line 659
    if-eqz v1, :cond_2

    .line 660
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 657
    :cond_2
    :goto_1
    return v0

    .line 659
    :catchall_3
    move-exception p0

    if-eqz v1, :cond_3

    .line 660
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    .line 662
    :cond_3
    :goto_2
    throw p0
.end method

.method public static setCardBgType(Landroid/content/Context;I)V
    .locals 1

    .line 258
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "card_bg_type"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    return-void
.end method

.method public static setCardCornerRadius(Landroid/content/Context;I)V
    .locals 1

    .line 266
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "card_corner_radius"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    return-void
.end method

.method public static setClockColor(Landroid/content/Context;I)V
    .locals 1

    .line 183
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    return-void
.end method

.method public static setClockEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 167
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    return-void
.end method

.method public static setClockFontStyle(Landroid/content/Context;I)V
    .locals 1

    .line 191
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_font_style"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    return-void
.end method

.method public static setClockSize(Landroid/content/Context;I)V
    .locals 1

    .line 175
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_size"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    return-void
.end method

.method public static setClockTimeFormat(Landroid/content/Context;I)V
    .locals 1

    .line 199
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "clock_time_format"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    return-void
.end method

.method public static setCustomAppGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 315
    if-nez p1, :cond_0

    return-void

    .line 316
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

    .line 317
    if-eqz p3, :cond_3

    const-string p2, "default"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 320
    :cond_2
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 318
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    :goto_2
    return-void
.end method

.method public static setDateColor(Landroid/content/Context;I)V
    .locals 1

    .line 224
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "date_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    return-void
.end method

.method public static setDateEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 208
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "date_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    return-void
.end method

.method public static setDateSize(Landroid/content/Context;I)V
    .locals 1

    .line 216
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "date_size"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    return-void
.end method

.method public static setHebrewDateColor(Landroid/content/Context;I)V
    .locals 1

    .line 249
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hebrew_date_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 250
    return-void
.end method

.method public static setHebrewDateEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 233
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hebrew_date_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    return-void
.end method

.method public static setHebrewDateSize(Landroid/content/Context;I)V
    .locals 1

    .line 241
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hebrew_date_size"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    return-void
.end method

.method public static setHomeColumns(Landroid/content/Context;I)V
    .locals 1

    .line 108
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "home_columns"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return-void
.end method

.method public static setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 365
    if-eqz p2, :cond_1

    const-string v0, "default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 366
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    :goto_1
    return-void
.end method

.method public static setMenuColumns(Landroid/content/Context;I)V
    .locals 1

    .line 93
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "menu_columns"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void
.end method

.method public static setMissedCallsEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 274
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "missed_calls_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    return-void
.end method

.method public static setModHomeEnabled(Landroid/content/Context;Z)V
    .locals 2

    .line 742
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 743
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->modHome(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    .line 744
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    const/4 p1, 0x2

    :goto_0
    nop

    .line 742
    invoke-virtual {v0, p0, p1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 747
    return-void
.end method

.method public static setNumLongPressMode(Landroid/content/Context;I)V
    .locals 1

    .line 349
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "num_long_press_mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 350
    return-void
.end method

.method public static setNumShortPressMode(Landroid/content/Context;I)V
    .locals 1

    .line 357
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "num_short_press_mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 358
    return-void
.end method

.method public static setPendingWidgetEdit(Landroid/content/Context;I)V
    .locals 1

    .line 121
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_widget_edit"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    return-void
.end method

.method public static setStockHomeEnabled(Landroid/content/Context;Z)Z
    .locals 1

    .line 687
    if-eqz p1, :cond_0

    const-string p0, "enable"

    goto :goto_0

    :cond_0
    const-string p0, "disable"

    .line 688
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pm "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "com.sprd.simple.launcher"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "com.sprd.classichome.Home"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->runSu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static takePendingWidgetEdit(Landroid/content/Context;)I
    .locals 3

    .line 125
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_widget_edit"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    if-eq v0, v2, :cond_0

    .line 127
    invoke-static {p0}, Lcom/sprd/classichome/settings/LauncherSettings;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    :cond_0
    return v0
.end method

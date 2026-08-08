.class public Lcom/android/settings/DeviceInfoSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DeviceInfoSettings.java"


# static fields
.field private static KEY_RECOVERY_SYSTEM_UPDATE:Ljava/lang/String;

.field public static PIKEL_UI_SUPPORT:Z


# instance fields
.field private mBasedVerRunnable:Ljava/lang/Runnable;

.field private mBatteryLevelFilter:Landroid/content/IntentFilter;

.field private mBatteryLevelRcvr:Landroid/content/BroadcastReceiver;

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mHandler:Landroid/os/Handler;

.field mHits:[J

.field private mLevelPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "pikel_ui_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/DeviceInfoSettings;->PIKEL_UI_SUPPORT:Z

    .line 665
    const-string v0, "RecoverySystemUpdate"

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->KEY_RECOVERY_SYSTEM_UPDATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    .line 505
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$2;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DeviceInfoSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->getBasedSummary()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceInfoSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceInfoSettings;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mLevelPower:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/DeviceInfoSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DeviceInfoSettings;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings/DeviceInfoSettings;->mLevelPower:I

    return p1
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 609
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 617
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    const-string v0, "DeviceInfoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regex did not match on /proc/version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v0, "Unavailable"

    .line 633
    :goto_0
    return-object v0

    .line 621
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 622
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex match on /proc/version only returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " groups"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v0, "Unavailable"

    goto :goto_0

    .line 626
    :cond_1
    const-string v1, "ro.product.board.customer"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cgmobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 633
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getBasedSummary()V
    .locals 17

    .prologue
    .line 462
    const-string v14, "baseband_version"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-nez v14, :cond_0

    .line 504
    :goto_0
    return-void

    .line 464
    :cond_0
    :try_start_0
    const-string v2, ""

    .line 466
    .local v2, "cp2":Ljava/lang/String;
    const-string v14, "baseband_version"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 467
    .local v11, "summary":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->getCp2Version()Ljava/lang/String;

    move-result-object v12

    .line 468
    .local v12, "temp":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 469
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " temp = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v14, "\\s+"

    const-string v15, ""

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 471
    const-string v14, "Platform"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 472
    const-string v1, "PlatformVersion:(\\S+)ProjectVersion:(\\S+)HWVersion:(\\S+)"

    .line 474
    .local v1, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v14, "PlatformVersion:(\\S+)ProjectVersion:(\\S+)HWVersion:(\\S+)"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 475
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-nez v14, :cond_3

    .line 476
    const-string v14, "DeviceInfoSettings"

    const-string v15, "Regex did not match on cp2 version: "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v1    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 493
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 495
    :cond_2
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " cp2 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DeviceInfoSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 497
    .local v8, "msg":Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v8, Landroid/os/Message;->what:I

    .line 498
    iput-object v11, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DeviceInfoSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 501
    .end local v2    # "cp2":Ljava/lang/String;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v12    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 478
    .restart local v1    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .restart local v2    # "cp2":Ljava/lang/String;
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    .restart local v11    # "summary":Ljava/lang/String;
    .restart local v12    # "temp":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x3

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "dateTime":Ljava/lang/String;
    const-string v7, "modem"

    .line 480
    .local v7, "modem":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int v5, v14, v15

    .line 481
    .local v5, "endIndex":I
    const/4 v14, 0x0

    invoke-virtual {v4, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 482
    .local v9, "subString1":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 483
    .local v10, "subString2":Ljava/lang/String;
    const/16 v14, 0xa

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 484
    .local v13, "time":Ljava/lang/String;
    const/4 v14, 0x0

    const/16 v15, 0xa

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "date":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 489
    .end local v1    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "dateTime":Ljava/lang/String;
    .end local v5    # "endIndex":I
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "modem":Ljava/lang/String;
    .end local v9    # "subString1":Ljava/lang/String;
    .end local v10    # "subString2":Ljava/lang/String;
    .end local v13    # "time":Ljava/lang/String;
    :cond_4
    const-string v14, "DeviceInfoSettings"

    const-string v15, "cp2 version is error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public static getCp2Version()Ljava/lang/String;
    .locals 18

    .prologue
    .line 552
    const/4 v10, 0x0

    .line 553
    .local v10, "socket":Landroid/net/LocalSocket;
    const-string v12, "wcnd"

    .line 554
    .local v12, "socketName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 555
    .local v8, "result":Ljava/lang/String;
    const/16 v14, 0xff

    new-array v1, v14, [B

    .line 556
    .local v1, "buf":[B
    const/4 v7, 0x0

    .line 557
    .local v7, "outputStream":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 560
    .local v6, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    .end local v10    # "socket":Landroid/net/LocalSocket;
    .local v11, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v14, "wcnd"

    sget-object v15, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v14, v15}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 563
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v11, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 564
    invoke-virtual {v11}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 565
    if-eqz v7, :cond_0

    .line 566
    const-string v13, "wcn at+spatgetcp2info"

    .line 567
    .local v13, "strcmd":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 568
    .local v3, "cmdBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 570
    .local v2, "cmd":Ljava/lang/String;
    :try_start_2
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/OutputStream;->write([B)V

    .line 571
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 577
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "cmdBuilder":Ljava/lang/StringBuilder;
    .end local v13    # "strcmd":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v11}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 578
    const/4 v14, 0x0

    const/16 v15, 0xff

    invoke-virtual {v6, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 579
    .local v4, "count":I
    new-instance v9, Ljava/lang/String;

    const-string v14, "utf-8"

    invoke-direct {v9, v1, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 580
    .end local v8    # "result":Ljava/lang/String;
    .local v9, "result":Ljava/lang/String;
    :try_start_4
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v14, "Fail"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 582
    const-string v14, "DeviceInfoSettings"

    const-string v15, "cp2 no data available"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 583
    const/4 v8, 0x0

    .line 589
    const/4 v1, 0x0

    .line 590
    if-eqz v7, :cond_1

    .line 591
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_1
    if-eqz v6, :cond_2

    .line 594
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 596
    :cond_2
    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_1
    move-object v14, v8

    move-object v8, v9

    .line 601
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "count":I
    .end local v9    # "result":Ljava/lang/String;
    .end local v11    # "socket":Landroid/net/LocalSocket;
    .restart local v8    # "result":Ljava/lang/String;
    :goto_2
    return-object v14

    .line 572
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v2    # "cmd":Ljava/lang/String;
    .restart local v3    # "cmdBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "socket":Landroid/net/LocalSocket;
    .restart local v13    # "strcmd":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 573
    .local v5, "e":Ljava/io/IOException;
    :try_start_6
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed wrirting output stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 585
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "cmdBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v13    # "strcmd":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v10, v11

    .line 586
    .end local v11    # "socket":Landroid/net/LocalSocket;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v10    # "socket":Landroid/net/LocalSocket;
    :goto_3
    :try_start_7
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " get socket info fail about\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 589
    const/4 v1, 0x0

    .line 590
    if-eqz v7, :cond_3

    .line 591
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_3
    if-eqz v6, :cond_4

    .line 594
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 596
    :cond_4
    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4
    move-object v14, v8

    .line 601
    goto :goto_2

    .line 597
    .end local v8    # "result":Ljava/lang/String;
    .end local v10    # "socket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v4    # "count":I
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v11    # "socket":Landroid/net/LocalSocket;
    :catch_2
    move-exception v5

    .line 598
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "socket fail about\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 589
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v1, 0x0

    .line 590
    if-eqz v7, :cond_6

    .line 591
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_6
    if-eqz v6, :cond_7

    .line 594
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 596
    :cond_7
    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object v8, v9

    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    move-object v10, v11

    .line 599
    .end local v11    # "socket":Landroid/net/LocalSocket;
    .restart local v10    # "socket":Landroid/net/LocalSocket;
    goto :goto_4

    .line 597
    .end local v8    # "result":Ljava/lang/String;
    .end local v10    # "socket":Landroid/net/LocalSocket;
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v11    # "socket":Landroid/net/LocalSocket;
    :catch_3
    move-exception v5

    .line 598
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "socket fail about\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    move-object v10, v11

    .line 600
    .end local v11    # "socket":Landroid/net/LocalSocket;
    .restart local v10    # "socket":Landroid/net/LocalSocket;
    goto :goto_4

    .line 597
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "count":I
    :catch_4
    move-exception v5

    .line 598
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "socket fail about\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 588
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 589
    :goto_5
    const/4 v1, 0x0

    .line 590
    if-eqz v7, :cond_8

    .line 591
    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_8
    if-eqz v6, :cond_9

    .line 594
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 596
    :cond_9
    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 599
    :goto_6
    throw v14

    .line 597
    :catch_5
    move-exception v5

    .line 598
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v15, "DeviceInfoSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "socket fail about\uff1a"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 588
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "socket":Landroid/net/LocalSocket;
    .restart local v11    # "socket":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "socket":Landroid/net/LocalSocket;
    .restart local v10    # "socket":Landroid/net/LocalSocket;
    goto :goto_5

    .end local v8    # "result":Ljava/lang/String;
    .end local v10    # "socket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v4    # "count":I
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v11    # "socket":Landroid/net/LocalSocket;
    :catchall_2
    move-exception v14

    move-object v8, v9

    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "socket":Landroid/net/LocalSocket;
    .restart local v10    # "socket":Landroid/net/LocalSocket;
    goto :goto_5

    .line 585
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "count":I
    :catch_6
    move-exception v5

    goto/16 :goto_3

    .end local v8    # "result":Ljava/lang/String;
    .end local v10    # "socket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v4    # "count":I
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v11    # "socket":Landroid/net/LocalSocket;
    :catch_7
    move-exception v5

    move-object v8, v9

    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "socket":Landroid/net/LocalSocket;
    .restart local v10    # "socket":Landroid/net/LocalSocket;
    goto/16 :goto_3
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 540
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 547
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 543
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 648
    :try_start_0
    const-string v0, "/sys/board_properties/soc/msv"

    invoke-static {v0}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 651
    const-string v0, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-object v0

    .line 655
    :catch_0
    move-exception v0

    .line 658
    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 653
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private initRecoverySystemUpdatePreference()V
    .locals 2

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->monitorBatteryState()V

    .line 688
    sget-object v1, Lcom/android/settings/DeviceInfoSettings;->KEY_RECOVERY_SYSTEM_UPDATE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sprd/settings/RecoverySystemUpdatePreference;

    .line 689
    .local v0, "rsup":Lcom/sprd/settings/RecoverySystemUpdatePreference;
    new-instance v1, Lcom/android/settings/DeviceInfoSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceInfoSettings$4;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-virtual {v0, v1}, Lcom/sprd/settings/RecoverySystemUpdatePreference;->setBatteryCallBack(Lcom/sprd/settings/RecoverySystemUpdatePreference$BatteryCallBack;)V

    .line 695
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 696
    return-void
.end method

.method private isApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 706
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 710
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 711
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    if-eqz v2, :cond_0

    .line 718
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 719
    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    const-string v3, "9"

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    :goto_0
    return v0

    .line 712
    :catch_0
    move-exception v1

    .line 713
    const-string v1, "FotaUpdate"

    const-string v2, "isApkExist not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    :cond_0
    const-string v0, "FotaUpdate"

    const-string v2, "isApkExist = true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 724
    goto :goto_0
.end method

.method private monitorBatteryState()V
    .locals 3

    .prologue
    .line 667
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$3;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mBatteryLevelRcvr:Landroid/content/BroadcastReceiver;

    .line 680
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mBatteryLevelFilter:Landroid/content/IntentFilter;

    .line 681
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mBatteryLevelRcvr:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mBatteryLevelFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 682
    return-void
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 532
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 534
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 436
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 444
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 453
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterBatteryReceiver()V
    .locals 2

    .prologue
    .line 684
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mBatteryLevelRcvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 685
    return-void
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 728
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 729
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 731
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 732
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 737
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f090010

    const/4 v10, 0x1

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v6, 0x7f05000d

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 126
    const-string v6, "build_number"

    invoke-virtual {p0, v6}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->initRecoverySystemUpdatePreference()V

    .line 131
    const-string v6, "firmware_version"

    const-string v7, "Mocor 1.0"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v6, "firmware_version"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 134
    const-string v6, "baseband_version"

    const-string v7, "gsm.version.baseband"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v6, "device_model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v6, "fcc_equipment_id"

    const-string v7, "ro.ril.fccid"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v6, "device_model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v6, "ro.wcn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "disabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 141
    .local v5, "wcnVersion":Z
    const-string v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " wcnVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v5, :cond_7

    .line 143
    const-string v6, "build_number"

    const-string v7, "SharkL_V1.0"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    const-string v6, "build_number"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 163
    const-string v6, "kernel_version"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    const-string v6, "hardware_version"

    const v7, 0x7f090925

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    const-string v7, "persist.sys.allow_debug"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "status_info"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "baseband_version"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "kernel_version"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_0
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090778

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "status":Ljava/lang/String;
    const-string v6, "selinux_status"

    invoke-direct {p0, v6, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v4    # "status":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "selinux_status"

    const-string v8, "ro.build.selinux"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "safetylegal"

    const-string v8, "ro.url.safetylegal"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "fcc_equipment_id"

    const-string v8, "ro.ril.fccid"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ro.product.name :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ro.product.name"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v6, "ro.product.name"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sp9820e_2h10_ctcc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 217
    const-string v6, "baseband_version"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 218
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "baseband_version"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    :cond_2
    const-string v6, "kernel_version"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 221
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "kernel_version"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    :cond_3
    const-string v6, "software_number"

    const-string v7, "ro.version.software"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v6, "hardware_number"

    const-string v7, "ro.version.hardware"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "software_number"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "hardware_number"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 256
    .local v0, "act":Landroid/app/Activity;
    const-string v6, "container"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 257
    .local v2, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v6, "terms"

    invoke-static {v0, v2, v6, v10}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 259
    const-string v6, "license"

    invoke-static {v0, v2, v6, v10}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 261
    const-string v6, "copyright"

    invoke-static {v0, v2, v6, v10}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 263
    const-string v6, "team"

    invoke-static {v0, v2, v6, v10}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 266
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 269
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_b

    .line 270
    const-string v6, "system_update_settings"

    invoke-static {v0, v2, v6, v10}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 277
    :goto_3
    const-string v6, "contributors"

    invoke-static {v0, v2, v6, v10}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 281
    const-string v6, "additional_system_update_settings"

    const v7, 0x7f0c0003

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 285
    const-string v6, "regulatory_info"

    const v7, 0x7f0c0005

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 288
    const-string v6, "com.redstone.ota.ui"

    invoke-direct {p0, v0, v6}, Lcom/android/settings/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 289
    const-string v6, "rsfota_update_settings"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 290
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "rsfota_update_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_5
    :goto_4
    const-string v6, "com.adups.fota"

    invoke-direct {p0, v0, v6}, Lcom/android/settings/DeviceInfoSettings;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 302
    const-string v6, "fota_update_settings"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 303
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "fota_update_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_6
    :goto_5
    new-instance v6, Lcom/android/settings/DeviceInfoSettings$1;

    invoke-direct {v6, p0}, Lcom/android/settings/DeviceInfoSettings$1;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mBasedVerRunnable:Ljava/lang/Runnable;

    .line 318
    new-instance v6, Ljava/lang/Thread;

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mBasedVerRunnable:Ljava/lang/Runnable;

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 320
    return-void

    .line 146
    .end local v0    # "act":Landroid/app/Activity;
    .end local v2    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_7
    const-string v6, "ro.duoqin.build.version"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "buildVersion":Ljava/lang/String;
    const-string v6, "build_number"

    invoke-direct {p0, v6, v1}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    .end local v1    # "buildVersion":Ljava/lang/String;
    :cond_8
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v6

    if-nez v6, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090779

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    .restart local v4    # "status":Ljava/lang/String;
    const-string v6, "selinux_status"

    invoke-direct {p0, v6, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 230
    .end local v4    # "status":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "software_number"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "hardware_number"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    const-string v6, "ro.product.board.customer"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cgmobile"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 236
    const-string v6, "baseband_version"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 237
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "baseband_version"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 242
    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 243
    const-string v6, "baseband_version"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 244
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "baseband_version"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 275
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v2    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_b
    const-string v6, "system_update_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 293
    :cond_c
    const-string v6, "rsfota_update_settings"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 294
    .local v3, "preference":Landroid/preference/Preference;
    if-eqz v3, :cond_5

    .line 295
    const-string v6, "com.redstone.ota.ui"

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/DeviceInfoSettings;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 306
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_d
    const-string v6, "fota_update_settings"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 307
    .restart local v3    # "preference":Landroid/preference/Preference;
    if-eqz v3, :cond_6

    .line 308
    const-string v6, "com.adups.fota"

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/DeviceInfoSettings;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 699
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 700
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->unregisterBatteryReceiver()V

    .line 701
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 333
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "firmware_version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 336
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    aget-wide v0, v0, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 342
    :catch_0
    move-exception v1

    .line 343
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "build_number"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 348
    const-string v0, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allow_debug is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.allow_debug"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    const-string v2, "persist.sys.allow_debug"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 351
    goto :goto_1

    .line 356
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    .line 358
    :cond_3
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v0, :cond_8

    .line 359
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-ne v0, v1, :cond_4

    .line 360
    invoke-super {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 361
    goto :goto_1

    .line 364
    :cond_4
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 365
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v0, :cond_6

    .line 366
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "development"

    invoke-virtual {v0, v2, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_5

    .line 370
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 372
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090011

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 374
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 375
    :cond_6
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    .line 378
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 380
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    iget v4, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 383
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 385
    :cond_8
    iget v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 387
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 389
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090012

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 391
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 393
    :cond_a
    const-string v0, "status_info"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->PIKEL_UI_SUPPORT:Z

    if-eqz v0, :cond_b

    .line 397
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.deviceinfo.StatusOther"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 414
    :goto_2
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 415
    goto/16 :goto_1

    .line 399
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 400
    sget-boolean v0, Lcom/android/settings/Settings;->UNIVERSEUI_SUPPORT:Z

    if-eqz v0, :cond_c

    .line 401
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.sprd.settings.sim.MobileSimChooseUUI"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_3
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 406
    const-string v0, "package_name"

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v0, "class_name"

    const-string v3, "com.android.settings.deviceinfo.StatusSim"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v0, "class_name_other"

    const-string v3, "com.android.settings.deviceinfo.StatusOther"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v0, "title_name"

    const v3, 0x7f090981

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 403
    :cond_c
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.MobileSimChoose"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 411
    :cond_d
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.deviceinfo.Status"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 324
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 325
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 329
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

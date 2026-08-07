.class public Lcom/sprd/common/util/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"


# static fields
.field private static final FLASH_PATH:Ljava/lang/String;

.field private static final SWITCH_OFF:Ljava/lang/String;

.field private static final SWITCH_ON:Ljava/lang/String;

.field private static final VALID_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "ro.flashlight.on_value"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/sprd/common/util/SystemPropertiesUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/FlashlightController;->SWITCH_ON:Ljava/lang/String;

    .line 18
    const-string v0, "ro.flashlight.off_value"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/sprd/common/util/SystemPropertiesUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/FlashlightController;->SWITCH_OFF:Ljava/lang/String;

    .line 20
    const-string v0, "ro.flashlight.node"

    const-string v1, "/sys/class/flashlight/torch/enable"

    invoke-static {v0, v1}, Lcom/sprd/common/util/SystemPropertiesUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/FlashlightController;->FLASH_PATH:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/sprd/common/util/FlashlightController;->SWITCH_ON:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/sprd/common/util/FlashlightController;->VALID_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isFlashlightOn()Z
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/sprd/common/util/FlashlightController;->SWITCH_ON:Ljava/lang/String;

    invoke-static {}, Lcom/sprd/common/util/FlashlightController;->readFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static readFile()Ljava/lang/String;
    .locals 11

    .prologue
    .line 59
    const-string v7, ""

    .line 60
    .local v7, "str":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    sget-object v8, Lcom/sprd/common/util/FlashlightController;->FLASH_PATH:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "flashFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 63
    const/4 v5, 0x0

    .line 65
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 72
    .local v3, "length":I
    sget v8, Lcom/sprd/common/util/FlashlightController;->VALID_INDEX:I

    if-lt v3, v8, :cond_1

    .line 73
    sget v8, Lcom/sprd/common/util/FlashlightController;->VALID_INDEX:I

    sub-int v8, v3, v8

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 80
    :cond_1
    if-eqz v6, :cond_5

    .line 82
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 88
    .end local v3    # "length":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    const-string v8, "FlashlightController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 83
    .restart local v3    # "length":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    .line 85
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 75
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v3    # "length":I
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v8, "FlashlightController"

    const-string v9, "Read file error!!!"

    invoke-static {v8, v9}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v7, "readError"

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    if-eqz v5, :cond_2

    .line 82
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 83
    :catch_2
    move-exception v1

    .line 84
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v5, :cond_3

    .line 82
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 85
    :cond_3
    :goto_5
    throw v8

    .line 83
    :catch_3
    move-exception v1

    .line 84
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 90
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    const-string v8, "FlashlightController"

    const-string v9, "File is not exist"

    invoke-static {v8, v9}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 80
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 75
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "length":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_5
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static switchFlashlight()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-static {}, Lcom/sprd/common/util/FlashlightController;->isFlashlightOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    sget-boolean v1, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FlashlightController"

    const-string v2, "switchFlashlight, will close."

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-static {v3}, Lcom/sprd/common/util/FlashlightController;->turnOffFlashlight(Z)Z

    move-result v0

    .line 54
    .local v0, "ret":Z
    :goto_0
    sget-boolean v1, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchFlashlight, ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    return v0

    .line 51
    .end local v0    # "ret":Z
    :cond_2
    sget-boolean v1, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "FlashlightController"

    const-string v2, "switchFlashlight, will open."

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-static {v3}, Lcom/sprd/common/util/FlashlightController;->turnOnFlashlight(Z)Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public static turnOffFlashlight(Z)Z
    .locals 2
    .param p0, "force"    # Z

    .prologue
    const/4 v0, 0x1

    .line 34
    if-eqz p0, :cond_1

    .line 35
    sget-object v0, Lcom/sprd/common/util/FlashlightController;->SWITCH_OFF:Ljava/lang/String;

    invoke-static {v0}, Lcom/sprd/common/util/FlashlightController;->writeFile(Ljava/lang/String;)Z

    move-result v0

    .line 37
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/sprd/common/util/FlashlightController;->isFlashlightOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sprd/common/util/FlashlightController;->turnOffFlashlight(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static turnOnFlashlight(Z)Z
    .locals 2
    .param p0, "force"    # Z

    .prologue
    const/4 v0, 0x1

    .line 26
    if-eqz p0, :cond_1

    .line 27
    sget-object v0, Lcom/sprd/common/util/FlashlightController;->SWITCH_ON:Ljava/lang/String;

    invoke-static {v0}, Lcom/sprd/common/util/FlashlightController;->writeFile(Ljava/lang/String;)Z

    move-result v0

    .line 29
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/sprd/common/util/FlashlightController;->isFlashlightOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sprd/common/util/FlashlightController;->turnOnFlashlight(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v2, 0x1

    .line 97
    .local v2, "flag":Z
    const/4 v4, 0x0

    .line 98
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 99
    .local v6, "p":Ljava/io/PrintStream;
    new-instance v3, Ljava/io/File;

    sget-object v8, Lcom/sprd/common/util/FlashlightController;->FLASH_PATH:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "flashFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 103
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v8, Lcom/sprd/common/util/FlashlightController;->FLASH_PATH:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .end local v6    # "p":Ljava/io/PrintStream;
    .local v7, "p":Ljava/io/PrintStream;
    :try_start_2
    invoke-virtual {v7, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    if-eqz v5, :cond_0

    .line 113
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 118
    :cond_0
    :goto_0
    if-eqz v7, :cond_6

    .line 120
    :try_start_4
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v6, v7

    .end local v7    # "p":Ljava/io/PrintStream;
    .restart local v6    # "p":Ljava/io/PrintStream;
    move-object v4, v5

    .line 129
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v2

    .line 114
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "p":Ljava/io/PrintStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "p":Ljava/io/PrintStream;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 122
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "p":Ljava/io/PrintStream;
    .restart local v6    # "p":Ljava/io/PrintStream;
    move-object v4, v5

    .line 123
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 106
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, 0x0

    .line 108
    :try_start_5
    const-string v8, "FlashlightController"

    const-string v9, "Write file error!!!"

    invoke-static {v8, v9}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    if-eqz v4, :cond_2

    .line 113
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 118
    :cond_2
    :goto_3
    if-eqz v6, :cond_1

    .line 120
    :try_start_7
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 121
    :catch_3
    move-exception v1

    .line 122
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 115
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v4, :cond_3

    .line 113
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 118
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    .line 120
    :try_start_9
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 123
    :cond_4
    :goto_6
    throw v8

    .line 114
    :catch_5
    move-exception v1

    .line 115
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 121
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 122
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 127
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_5
    const-string v8, "FlashlightController"

    const-string v9, "File is not exist"

    invoke-static {v8, v9}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "p":Ljava/io/PrintStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "p":Ljava/io/PrintStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "p":Ljava/io/PrintStream;
    .restart local v6    # "p":Ljava/io/PrintStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 106
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "p":Ljava/io/PrintStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "p":Ljava/io/PrintStream;
    :catch_8
    move-exception v0

    move-object v6, v7

    .end local v7    # "p":Ljava/io/PrintStream;
    .restart local v6    # "p":Ljava/io/PrintStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "p":Ljava/io/PrintStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "p":Ljava/io/PrintStream;
    :cond_6
    move-object v6, v7

    .end local v7    # "p":Ljava/io/PrintStream;
    .restart local v6    # "p":Ljava/io/PrintStream;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

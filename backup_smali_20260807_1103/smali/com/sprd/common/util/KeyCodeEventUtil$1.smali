.class final Lcom/sprd/common/util/KeyCodeEventUtil$1;
.super Ljava/lang/Thread;
.source "KeyCodeEventUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/common/util/KeyCodeEventUtil;->startVibrateMode(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, "mToneGenerator":Landroid/media/ToneGenerator;
    :try_start_0
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x2

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    .local v2, "mToneGenerator":Landroid/media/ToneGenerator;
    const/16 v3, 0x1b

    const/16 v4, 0x64

    :try_start_1
    invoke-virtual {v2, v3, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 174
    const-wide/16 v3, 0x78

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 175
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 176
    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 183
    :cond_0
    const/4 v1, 0x0

    .line 185
    .end local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 183
    :cond_1
    const/4 v1, 0x0

    .line 184
    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 183
    :cond_2
    const/4 v1, 0x0

    throw v3

    .line 180
    .end local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    goto :goto_2

    .line 177
    .end local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    goto :goto_1
.end method

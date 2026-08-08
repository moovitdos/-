.class public Lcom/sprd/settings/timerpower/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field private static ALARM_FLAG_FILE:Ljava/io/File;

.field public static FIRST_ALERT:Z

.field public static FIRST_KLAXON:Z

.field private static bPoweron:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    sput-boolean v2, Lcom/sprd/settings/timerpower/Alarms;->FIRST_ALERT:Z

    .line 95
    sput-boolean v2, Lcom/sprd/settings/timerpower/Alarms;->FIRST_KLAXON:Z

    .line 98
    new-instance v0, Ljava/io/File;

    const-string v1, "/productinfo/poweron_timeinmillis"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    .line 99
    sput-boolean v2, Lcom/sprd/settings/timerpower/Alarms;->bPoweron:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alarm_flag_cancel()V
    .locals 3

    .prologue
    .line 585
    sget-object v1, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sprd/settings/timerpower/Alarms;->bPoweron:Z

    if-eqz v1, :cond_0

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 588
    :try_start_0
    sget-object v1, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delete success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 591
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delete failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static alarm_flag_setup(J)V
    .locals 25
    .param p0, "alarmTimeInMillis"    # J

    .prologue
    .line 530
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 531
    .local v3, "c":Ljava/util/Calendar;
    const/16 v4, 0x7dc

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 532
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    .line 533
    .local v23, "to":Ljava/util/Calendar;
    move-object/from16 v0, v23

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 534
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v24

    .line 535
    .local v24, "zone":Ljava/util/TimeZone;
    invoke-virtual/range {v24 .. v26}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v14, v4

    .line 536
    .local v14, "dstOffset":J
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    .line 537
    .local v17, "startTimeInMillis":J
    sub-long v12, p0, v14

    .line 538
    .local v12, "dstAlarmTimeInMillis":J
    sub-long v19, v12, v17

    .line 539
    .local v19, "timeDiffInMillis":J
    const-wide/16 v4, 0x3e8

    div-long v21, v19, v4

    .line 541
    .local v21, "timeDiffInSecs":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 543
    sget-object v4, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already exist, delete it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 546
    :try_start_0
    sget-object v4, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delete before write success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    const/4 v10, 0x0

    .line 555
    .local v10, "command":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    .end local v10    # "command":Ljava/io/FileOutputStream;
    .local v11, "command":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/OutputStream;->write([B)V

    .line 557
    const-string v4, "\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/OutputStream;->write([B)V

    .line 558
    const-wide/16 v4, 0x3e8

    div-long v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/OutputStream;->write([B)V

    .line 559
    const-string v4, "\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/OutputStream;->write([B)V

    .line 561
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 562
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 563
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " write done"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 565
    const/4 v10, 0x0

    .line 569
    .end local v11    # "command":Ljava/io/FileOutputStream;
    .restart local v10    # "command":Ljava/io/FileOutputStream;
    if-eqz v10, :cond_1

    .line 571
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 577
    :cond_1
    :goto_1
    return-void

    .line 548
    .end local v10    # "command":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v16

    .line 549
    .local v16, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delete before write failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 572
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v10    # "command":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v16

    .line 573
    .local v16, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileOutputStream close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 566
    .end local v16    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v16

    .line 567
    .local v16, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sprd/settings/timerpower/Alarms;->ALARM_FLAG_FILE:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " write error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 569
    if-eqz v10, :cond_1

    .line 571
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 572
    :catch_3
    move-exception v16

    .line 573
    .local v16, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileOutputStream close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 569
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v10, :cond_2

    .line 571
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 574
    :cond_2
    :goto_4
    throw v4

    .line 572
    :catch_4
    move-exception v16

    .line 573
    .restart local v16    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileOutputStream close error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    goto :goto_4

    .line 569
    .end local v10    # "command":Ljava/io/FileOutputStream;
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v11    # "command":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v10, v11

    .end local v11    # "command":Ljava/io/FileOutputStream;
    .restart local v10    # "command":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 566
    .end local v10    # "command":Ljava/io/FileOutputStream;
    .restart local v11    # "command":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v16

    move-object v10, v11

    .end local v11    # "command":Ljava/io/FileOutputStream;
    .restart local v10    # "command":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private static calculateAlarm(Lcom/sprd/settings/timerpower/Alarm;)J
    .locals 3
    .param p0, "alarm"    # Lcom/sprd/settings/timerpower/Alarm;

    .prologue
    .line 428
    iget v0, p0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    iget v1, p0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    iget-object v2, p0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-static {v0, v1, v2}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static calculateAlarm(IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)Ljava/util/Calendar;
    .locals 11
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "daysOfWeek"    # Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v7, 0x0

    .line 440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 441
    .local v1, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 443
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 444
    .local v2, "nowHour":I
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 445
    .local v3, "nowMinute":I
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 447
    .local v4, "nowSecond":I
    const-string v5, "timerpower Alarms ========== >>>>> Enter calculateAlarm  "

    invoke-static {v5}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 450
    if-lt p0, v2, :cond_2

    if-ne p0, v2, :cond_0

    if-lt p1, v3, :cond_2

    :cond_0
    if-ne p0, v2, :cond_1

    if-ne p1, v3, :cond_1

    const/16 v5, 0x1e

    if-ge v5, v4, :cond_1

    sget-boolean v5, Lcom/sprd/settings/timerpower/Alarms;->FIRST_KLAXON:Z

    if-eqz v5, :cond_1

    const-string v5, "ro.bootmode"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    if-ne p0, v2, :cond_3

    if-ne p1, v3, :cond_3

    sget-boolean v5, Lcom/sprd/settings/timerpower/Alarms;->FIRST_KLAXON:Z

    if-nez v5, :cond_3

    .line 454
    :cond_2
    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 457
    :cond_3
    invoke-virtual {v1, v8, p0}, Ljava/util/Calendar;->set(II)V

    .line 458
    invoke-virtual {v1, v9, p1}, Ljava/util/Calendar;->set(II)V

    .line 459
    invoke-virtual {v1, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 460
    const/16 v5, 0xe

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 462
    invoke-virtual {p2, v1}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 463
    .local v0, "addDays":I
    if-lez v0, :cond_4

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 464
    :cond_4
    return-object v1
.end method

.method public static calculateNextAlerts(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sprd/settings/timerpower/Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v1, "alarms":Ljava/util/List;, "Ljava/util/List<Lcom/sprd/settings/timerpower/Alarm;>;"
    const-wide v3, 0x7fffffffffffffffL

    .line 286
    .local v3, "minTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 287
    .local v5, "now":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/sprd/settings/timerpower/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    .line 288
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    .line 289
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 291
    :cond_0
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm;

    invoke-direct {v0, p0, v2}, Lcom/sprd/settings/timerpower/Alarm;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 294
    .local v0, "a":Lcom/sprd/settings/timerpower/Alarm;
    iget-wide v7, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 295
    invoke-static {v0}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(Lcom/sprd/settings/timerpower/Alarm;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    .line 303
    :cond_1
    iget-wide v7, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    .line 305
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set minTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 309
    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 311
    .end local v0    # "a":Lcom/sprd/settings/timerpower/Alarm;
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_4
    return-object v1

    .line 296
    .restart local v0    # "a":Lcom/sprd/settings/timerpower/Alarm;
    :cond_5
    iget-wide v7, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_1

    .line 297
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disabling expired alarm set for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-static {v8, v9}, Lcom/sprd/settings/timerpower/Log;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 300
    iget-object v7, v0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v7}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v7

    invoke-static {p0, v0, v7}, Lcom/sprd/settings/timerpower/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/sprd/settings/timerpower/Alarm;Z)V

    goto :goto_0
.end method

.method private static createContentValues(Lcom/sprd/settings/timerpower/Alarm;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "alarm"    # Lcom/sprd/settings/timerpower/Alarm;

    .prologue
    .line 120
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 123
    .local v2, "values":Landroid/content/ContentValues;
    const-wide/16 v0, 0x0

    .line 124
    .local v0, "time":J
    iget-object v3, p0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-static {p0}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(Lcom/sprd/settings/timerpower/Alarm;)J

    move-result-wide v0

    .line 128
    :cond_0
    const-string v4, "enabled"

    iget-boolean v3, p0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v3, "hour"

    iget v4, p0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v3, "minutes"

    iget v4, p0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v3, "alarmtime"

    iget-wide v4, p0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v3, "daysofweek"

    iget-object v4, p0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->getCoded()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v3, "vibrate"

    iget-boolean v4, p0, Lcom/sprd/settings/timerpower/Alarm;->vibrate:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 134
    const-string v3, "message"

    iget-object v4, p0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v4, "alert"

    iget-object v3, p0, Lcom/sprd/settings/timerpower/Alarm;->alert:Landroid/net/Uri;

    if-nez v3, :cond_2

    const-string v3, "silent"

    :goto_1
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-object v2

    .line 128
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 137
    :cond_2
    iget-object v3, p0, Lcom/sprd/settings/timerpower/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method static disableAlert(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x8000000

    const/4 v5, 0x0

    .line 413
    const-string v3, "timerpower Alarms-----------disableAlert"

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 414
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 416
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.timerpower.ALARM_ALERT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 419
    .local v1, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancelAlarm(Landroid/app/PendingIntent;)V

    .line 420
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.timerpower.SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 423
    .local v2, "sender1":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancelAlarm(Landroid/app/PendingIntent;)V

    .line 424
    invoke-static {}, Lcom/sprd/settings/timerpower/Alarms;->alarm_flag_cancel()V

    .line 425
    return-void
.end method

.method public static enableAlarm(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timerpower Alarms ========== >>>>> Enter enableAlarm  enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 202
    invoke-static {p0, p1, p2}, Lcom/sprd/settings/timerpower/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 203
    invoke-static {p0}, Lcom/sprd/settings/timerpower/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 209
    const-string v0, "timerpower Alarms ========== >>>>> Enter enableAlarmInternal"

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sprd/settings/timerpower/Alarms;->getAlarm(Landroid/content/Context;Landroid/content/ContentResolver;I)Lcom/sprd/settings/timerpower/Alarm;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sprd/settings/timerpower/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/sprd/settings/timerpower/Alarm;Z)V

    .line 212
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;Lcom/sprd/settings/timerpower/Alarm;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/sprd/settings/timerpower/Alarm;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timerpower Alarms ========== >>>>> Enter enableAlarmInternal enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 225
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "enabled"

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    if-eqz p2, :cond_1

    .line 236
    invoke-static {p1}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(Lcom/sprd/settings/timerpower/Alarm;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sprd/settings/timerpower/Alarm;->time:J

    .line 239
    const-string v2, "alarmtime"

    iget-wide v3, p1, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    :cond_1
    sget-object v2, Lcom/sprd/settings/timerpower/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v3, p1, Lcom/sprd/settings/timerpower/Alarm;->id:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static enableAlert(Landroid/content/Context;Lcom/sprd/settings/timerpower/Alarm;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/sprd/settings/timerpower/Alarm;
    .param p2, "atTimeInMillis"    # J

    .prologue
    const/high16 v7, 0x8000000

    const/4 v6, 0x0

    .line 369
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 373
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** setAlert id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sprd/settings/timerpower/Alarm;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " atTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** setAlert lable["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 377
    iget-object v4, p1, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const-string v4, "Alarms enableAlert power on need write files"

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 379
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sprd/settings/timerpower/Alarms;->bPoweron:Z

    .line 380
    invoke-static {p2, p3}, Lcom/sprd/settings/timerpower/Alarms;->alarm_flag_setup(J)V

    .line 382
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.timerpower.ALARM_ALERT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 384
    .local v2, "out":Landroid/os/Parcel;
    invoke-virtual {p1, v2, v6}, Lcom/sprd/settings/timerpower/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 385
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 386
    const-string v4, "intent.extra.alarm_raw"

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 387
    invoke-static {p0, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 390
    .local v3, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancelAlarm(Landroid/app/PendingIntent;)V

    .line 392
    const/4 v4, 0x5

    invoke-virtual {v0, v4, p2, p3, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 405
    :goto_0
    return-void

    .line 394
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "out":Landroid/os/Parcel;
    .end local v3    # "sender":Landroid/app/PendingIntent;
    :cond_0
    const-string v4, "Alarms enableAlert power off"

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 395
    sput-boolean v6, Lcom/sprd/settings/timerpower/Alarms;->bPoweron:Z

    .line 396
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.timerpower.SHUTDOWN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 398
    .restart local v2    # "out":Landroid/os/Parcel;
    invoke-virtual {p1, v2, v6}, Lcom/sprd/settings/timerpower/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 399
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 400
    const-string v4, "intent.extra.alarm_raw"

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 401
    invoke-static {p0, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 403
    .restart local v3    # "sender":Landroid/app/PendingIntent;
    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2, p3, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static formatTime(Landroid/content/Context;IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "daysOfWeek"    # Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .prologue
    .line 469
    invoke-static {p1, p2, p3}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    .line 470
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {p0, v0}, Lcom/sprd/settings/timerpower/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 475
    invoke-static {p0}, Lcom/sprd/settings/timerpower/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kk:mm"

    .line 476
    .local v0, "format":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 475
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string v0, "h:mm aa"

    goto :goto_0

    .line 476
    .restart local v0    # "format":Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 501
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getAlarm(Landroid/content/Context;Landroid/content/ContentResolver;I)Lcom/sprd/settings/timerpower/Alarm;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "alarmId"    # I

    .prologue
    const/4 v6, 0x0

    .line 148
    const-class v8, Lcom/sprd/settings/timerpower/Alarms;

    monitor-enter v8

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    monitor-exit v8

    return-object v6

    .line 151
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timerpower Alarms ========== >>>>>>>>>>> Enter getAlarm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timerpower Alarms ========== >>>>>>>>>>> Enter getAlarm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sprd/settings/timerpower/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/sprd/settings/timerpower/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sprd/settings/timerpower/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 157
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 158
    .local v6, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    if-eqz v7, :cond_0

    .line 159
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v6, Lcom/sprd/settings/timerpower/Alarm;

    .end local v6    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    invoke-direct {v6, p0, v7}, Lcom/sprd/settings/timerpower/Alarm;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 162
    .restart local v6    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    .end local v6    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 106
    sget-object v1, Lcom/sprd/settings/timerpower/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sprd/settings/timerpower/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x0

    .line 114
    sget-object v1, Lcom/sprd/settings/timerpower/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sprd/settings/timerpower/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static isSametimeAlarm(Landroid/content/ContentResolver;III)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "alarmId"    # I

    .prologue
    .line 514
    const/4 v7, 0x0

    .line 515
    .local v7, "flag":Z
    sget-object v1, Lcom/sprd/settings/timerpower/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sprd/settings/timerpower/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hour = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "minutes"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND _id != "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "hour, minutes ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 519
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v7, 0x1

    .line 520
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 521
    return v7

    .line 519
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static setAlarm(Landroid/content/Context;Lcom/sprd/settings/timerpower/Alarm;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/sprd/settings/timerpower/Alarm;

    .prologue
    const/4 v7, 0x0

    .line 174
    invoke-static {p1}, Lcom/sprd/settings/timerpower/Alarms;->createContentValues(Lcom/sprd/settings/timerpower/Alarm;)Landroid/content/ContentValues;

    move-result-object v3

    .line 175
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timerpower Alarms setAlarm Update : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sprd/settings/timerpower/Alarm;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 178
    sget-object v4, Lcom/sprd/settings/timerpower/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/sprd/settings/timerpower/Alarm;->id:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    invoke-static {p1}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(Lcom/sprd/settings/timerpower/Alarm;)J

    move-result-wide v1

    .line 183
    .local v1, "timeInMillis":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timerpower Alarms setAlarm Update : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 184
    invoke-static {p0}, Lcom/sprd/settings/timerpower/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timerpower Alarms setAlarm Update timeInMillis: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 187
    return-wide v1
.end method

.method public static setNextAlert(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    const-string v3, "wanghaiying setNextAlert"

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 349
    invoke-static {p0}, Lcom/sprd/settings/timerpower/Alarms;->calculateNextAlerts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 350
    .local v1, "alarms":Ljava/util/List;, "Ljava/util/List<Lcom/sprd/settings/timerpower/Alarm;>;"
    const-string v3, "call disableAlert"

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 351
    invoke-static {p0}, Lcom/sprd/settings/timerpower/Alarms;->disableAlert(Landroid/content/Context;)V

    .line 352
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/settings/timerpower/Alarm;

    .line 353
    .local v0, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    if-eqz v0, :cond_0

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableAlert alarm.time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 355
    iget-wide v3, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-static {p0, v0, v3, v4}, Lcom/sprd/settings/timerpower/Alarms;->enableAlert(Landroid/content/Context;Lcom/sprd/settings/timerpower/Alarm;J)V

    goto :goto_0

    .line 358
    .end local v0    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    :cond_1
    return-void
.end method

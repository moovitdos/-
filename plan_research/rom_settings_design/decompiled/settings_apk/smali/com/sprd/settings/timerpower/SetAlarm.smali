.class public Lcom/sprd/settings/timerpower/SetAlarm;
.super Landroid/preference/PreferenceActivity;
.source "SetAlarm.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DAYS_ERROR:I

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private final ALARM_OFF:I

.field private final ALARM_ON:I

.field private bEnable:Z

.field public isSametimeAlarm:Z

.field private mAlarm:Lcom/sprd/settings/timerpower/Alarm;

.field private mHour:I

.field private mId:I

.field private mMinutes:I

.field private mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

.field private mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

.field private mTimePickerCancelled:Z

.field private mTimePickerDialog:Landroid/app/TimePickerDialog;

.field private mTimePref:Landroid/preference/Preference;

.field private sameAlarmToast:Landroid/widget/Toast;

.field private strLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, -0x1

    sput v0, Lcom/sprd/settings/timerpower/SetAlarm;->DAYS_ERROR:I

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sprd/settings/timerpower/SetAlarm;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->isSametimeAlarm:Z

    .line 57
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm;

    invoke-direct {v0}, Lcom/sprd/settings/timerpower/Alarm;-><init>()V

    iput-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->ALARM_ON:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->ALARM_OFF:I

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/timerpower/SetAlarm;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/SetAlarm;

    .prologue
    .line 36
    iget v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    return v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/timerpower/SetAlarm;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/SetAlarm;

    .prologue
    .line 36
    iget v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    return v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/timerpower/SetAlarm;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/SetAlarm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sprd/settings/timerpower/SetAlarm;->checkChangeTimeAndDate(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sprd/settings/timerpower/SetAlarm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/SetAlarm;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->strLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sprd/settings/timerpower/SetAlarm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/SetAlarm;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->bEnable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sprd/settings/timerpower/SetAlarm;Ljava/lang/String;Z)J
    .locals 2
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/SetAlarm;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sprd/settings/timerpower/SetAlarm;->saveAlarmAndEnableRevert(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private checkChangeTimeAndDate(II)V
    .locals 5
    .param p1, "hour"    # I
    .param p2, "minutes"    # I

    .prologue
    const/4 v4, 0x1

    .line 355
    const v1, 0x7f0b016b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 356
    .local v0, "revert":Landroid/widget/Button;
    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget v1, v1, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget v1, v1, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget-object v1, v1, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

    invoke-virtual {v2}, Lcom/sprd/settings/timerpower/RepeatPreference;->getDaysOfWeek()Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static formatToast(Landroid/content/Context;J)Ljava/lang/String;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v6, p1, v19

    .line 431
    .local v6, "delta":J
    const-wide/32 v19, 0x36ee80

    div-long v13, v6, v19

    .line 432
    .local v13, "hours":J
    const-wide/32 v19, 0xea60

    div-long v19, v6, v19

    const-wide/16 v21, 0x3c

    rem-long v17, v19, v21

    .line 433
    .local v17, "minutes":J
    const-wide/16 v19, 0x18

    div-long v4, v13, v19

    .line 434
    .local v4, "days":J
    const-wide/16 v19, 0x18

    rem-long v13, v13, v19

    .line 436
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-nez v19, :cond_0

    const-string v3, ""

    .line 440
    .local v3, "daySeq":Ljava/lang/String;
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-nez v19, :cond_2

    const-string v16, ""

    .line 444
    .local v16, "minSeq":Ljava/lang/String;
    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-nez v19, :cond_4

    const-string v12, ""

    .line 448
    .local v12, "hourSeq":Ljava/lang/String;
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_6

    const/4 v8, 0x1

    .line 449
    .local v8, "dispDays":Z
    :goto_3
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-lez v19, :cond_7

    const/4 v9, 0x1

    .line 450
    .local v9, "dispHour":Z
    :goto_4
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_8

    const/4 v10, 0x1

    .line 452
    .local v10, "dispMinute":Z
    :goto_5
    if-eqz v8, :cond_9

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_6
    if-eqz v9, :cond_a

    const/16 v19, 0x2

    :goto_7
    or-int v20, v20, v19

    if-eqz v10, :cond_b

    const/16 v19, 0x4

    :goto_8
    or-int v15, v20, v19

    .line 456
    .local v15, "index":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0077

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 457
    .local v11, "formats":[Ljava/lang/String;
    aget-object v19, v11, v15

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    const/16 v21, 0x2

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 436
    .end local v3    # "daySeq":Ljava/lang/String;
    .end local v8    # "dispDays":Z
    .end local v9    # "dispHour":Z
    .end local v10    # "dispMinute":Z
    .end local v11    # "formats":[Ljava/lang/String;
    .end local v12    # "hourSeq":Ljava/lang/String;
    .end local v15    # "index":I
    .end local v16    # "minSeq":Ljava/lang/String;
    :cond_0
    const-wide/16 v19, 0x1

    cmp-long v19, v4, v19

    if-nez v19, :cond_1

    const v19, 0x7f09082b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v19, 0x7f09082c

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 440
    .restart local v3    # "daySeq":Ljava/lang/String;
    :cond_2
    const-wide/16 v19, 0x1

    cmp-long v19, v17, v19

    if-nez v19, :cond_3

    const v19, 0x7f09082f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_3
    const v19, 0x7f090830

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 444
    .restart local v16    # "minSeq":Ljava/lang/String;
    :cond_4
    const-wide/16 v19, 0x1

    cmp-long v19, v13, v19

    if-nez v19, :cond_5

    const v19, 0x7f09082d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_5
    const v19, 0x7f09082e

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 448
    .restart local v12    # "hourSeq":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 449
    .restart local v8    # "dispDays":Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 450
    .restart local v9    # "dispHour":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 452
    .restart local v10    # "dispMinute":Z
    :cond_9
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_6

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method private getDaysCodeFromDB()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 296
    sget v6, Lcom/sprd/settings/timerpower/SetAlarm;->DAYS_ERROR:I

    .line 298
    .local v6, "code":I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 299
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 300
    sget-object v1, Lcom/sprd/settings/timerpower/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message!=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->strLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 302
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 303
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "daysofweek"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 306
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 309
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    return v6
.end method

.method private hasDuplicateAlarmDate()Z
    .locals 5

    .prologue
    .line 313
    sget v0, Lcom/sprd/settings/timerpower/SetAlarm;->DAYS_ERROR:I

    .local v0, "code":I
    sget v1, Lcom/sprd/settings/timerpower/SetAlarm;->DAYS_ERROR:I

    .line 314
    .local v1, "days":I
    const/4 v2, 0x0

    .line 316
    .local v2, "hasDuplicateDate":Z
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->getDaysCodeFromDB()I

    move-result v0

    .line 318
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget-object v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

    invoke-virtual {v4}, Lcom/sprd/settings/timerpower/RepeatPreference;->getDaysOfWeek()Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    move-result-object v4

    iput-object v4, v3, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .line 319
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    iput v4, v3, Lcom/sprd/settings/timerpower/Alarm;->id:I

    .line 320
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    iput v4, v3, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    .line 321
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    iput v4, v3, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    .line 322
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget-object v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->strLabel:Ljava/lang/String;

    iput-object v4, v3, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    .line 323
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget-boolean v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->bEnable:Z

    iput-boolean v4, v3, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    .line 324
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget-object v3, v3, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget-object v3, v3, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->getCoded()I

    move-result v1

    .line 326
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget-object v3, v3, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v3, v1, v0}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->hasDuplicateDate(II)Z

    move-result v2

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasDuplicateAlarm --- days ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasDuplicateAlarm --- hasDuplicateDate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 330
    :cond_0
    return v2
.end method

.method static popAlarmSetToast(Landroid/content/Context;IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "daysOfWeek"    # Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .prologue
    .line 413
    invoke-static {p1, p2, p3}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/sprd/settings/timerpower/SetAlarm;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 416
    return-void
.end method

.method static popAlarmSetToast(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 419
    invoke-static {p0, p1, p2}, Lcom/sprd/settings/timerpower/SetAlarm;->formatToast(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "toastText":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 421
    .local v0, "toast":Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sprd/settings/timerpower/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 422
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 423
    return-void
.end method

.method private sameAlarmShow(II)V
    .locals 9
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const v4, 0x7f090891

    const v8, 0x7f090832

    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "time":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 468
    .local v0, "is24HourFormat":Z
    if-nez v0, :cond_2

    .line 470
    const/16 v2, 0xc

    if-le p1, v2, :cond_1

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, -0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    if-ge p2, v6, :cond_0

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, -0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->sameAlarmToast:Landroid/widget/Toast;

    if-eqz v2, :cond_3

    .line 490
    iget-object v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->sameAlarmToast:Landroid/widget/Toast;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {p0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->sameAlarmToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 492
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->showTimePicker()V

    .line 499
    :goto_1
    return-void

    .line 477
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090892

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    if-ge p2, v6, :cond_0

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090892

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 484
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    if-ge p2, v6, :cond_0

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 496
    :cond_3
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v7

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->sameAlarmToast:Landroid/widget/Toast;

    .line 497
    iget-object v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->sameAlarmToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 498
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->showTimePicker()V

    goto/16 :goto_1
.end method

.method private saveAlarm(Ljava/lang/String;Z)J
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "bEnable"    # Z

    .prologue
    .line 382
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm;

    invoke-direct {v0}, Lcom/sprd/settings/timerpower/Alarm;-><init>()V

    .line 383
    .local v0, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    iget v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    iput v3, v0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    .line 384
    iget v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    iput v3, v0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    .line 385
    iget v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    iput v3, v0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    .line 386
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

    invoke-virtual {v3}, Lcom/sprd/settings/timerpower/RepeatPreference;->getDaysOfWeek()Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    move-result-object v3

    iput-object v3, v0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .line 387
    iput-object p1, v0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    .line 388
    iput-boolean p2, v0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    .line 390
    iget v3, v0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    iget v4, v0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    iget-object v5, v0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-static {v3, v4, v5}, Lcom/sprd/settings/timerpower/Alarms;->calculateAlarm(IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timerpower SetAlarm =========== >>>>> saveAlarm mId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timerpower SetAlarm =========== >>>>> saveAlarm mHour "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timerpower SetAlarm =========== >>>>> saveAlarm mMinutes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timerpower SetAlarm =========== >>>>> saveAlarm alarm.label "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 396
    const-wide/16 v1, 0x0

    .line 397
    .local v1, "time":J
    iget v3, v0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 398
    invoke-static {p0, v0}, Lcom/sprd/settings/timerpower/Alarms;->setAlarm(Landroid/content/Context;Lcom/sprd/settings/timerpower/Alarm;)J

    move-result-wide v1

    .line 400
    iget v3, v0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    iget-boolean v4, v0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    invoke-static {p0, v3, v4}, Lcom/sprd/settings/timerpower/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timerpower SetAlarm =========== >>>>> setAlarm  time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 404
    :cond_0
    return-wide v1
.end method

.method private saveAlarmAndEnableRevert(Ljava/lang/String;Z)J
    .locals 2
    .param p1, "strLabel"    # Ljava/lang/String;
    .param p2, "benable"    # Z

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Lcom/sprd/settings/timerpower/SetAlarm;->saveAlarm(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private setTimePickerDialog()V
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->getTime()Landroid/widget/TimePicker;

    move-result-object v0

    .line 278
    .local v0, "timePicker":Landroid/widget/TimePicker;
    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/sprd/settings/timerpower/SetAlarm$2;

    invoke-direct {v2, p0, v0}, Lcom/sprd/settings/timerpower/SetAlarm$2;-><init>(Lcom/sprd/settings/timerpower/SetAlarm;Landroid/widget/TimePicker;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 291
    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 292
    return-void
.end method

.method private showTimePicker()V
    .locals 7

    .prologue
    .line 270
    new-instance v0, Landroid/app/TimePickerDialog;

    const v2, 0x1030073

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    iget v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    .line 272
    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->setTimePickerDialog()V

    .line 274
    return-void
.end method

.method private updatePrefs(Lcom/sprd/settings/timerpower/Alarm;)V
    .locals 2
    .param p1, "alarm"    # Lcom/sprd/settings/timerpower/Alarm;

    .prologue
    .line 236
    iget v0, p1, Lcom/sprd/settings/timerpower/Alarm;->id:I

    iput v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    .line 237
    iget v0, p1, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    iput v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    .line 238
    iget v0, p1, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    iput v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    .line 239
    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

    iget-object v1, p1, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/sprd/settings/timerpower/RepeatPreference;->setDaysOfWeek(Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V

    .line 240
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->updateTime()V

    .line 241
    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePref:Landroid/preference/Preference;

    iget v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    iget v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

    invoke-virtual {v3}, Lcom/sprd/settings/timerpower/RepeatPreference;->getDaysOfWeek()Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/sprd/settings/timerpower/Alarms;->formatTime(Landroid/content/Context;IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->hasDuplicateAlarmDate()Z

    move-result v0

    .line 260
    .local v0, "hasDuplicateDate":Z
    iget-boolean v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePickerCancelled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->isSametimeAlarm:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->strLabel:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->bEnable:Z

    invoke-direct {p0, v1, v2}, Lcom/sprd/settings/timerpower/SetAlarm;->saveAlarm(Ljava/lang/String;Z)J

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 265
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v5, 0x7f040088

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 73
    new-instance v2, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v2, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    .line 74
    .local v2, "helperBar":Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 76
    const v5, 0x7f050001

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 78
    const-string v5, "time"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePref:Landroid/preference/Preference;

    .line 79
    const-string v5, "setRepeat"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/sprd/settings/timerpower/RepeatPreference;

    iput-object v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

    .line 80
    iget-object v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 83
    .local v3, "i":Landroid/content/Intent;
    const-string v5, "alarm_id"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower SetAlarm ============ >>>>  getIntExtra-Alarms.ALARM_ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In SetAlarm, alarm id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    iget v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    if-ne v5, v7, :cond_2

    .line 94
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm;

    .end local v0    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    invoke-direct {v0}, Lcom/sprd/settings/timerpower/Alarm;-><init>()V

    .line 108
    .restart local v0    # "alarm":Lcom/sprd/settings/timerpower/Alarm;
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    .line 110
    iget-object v5, v0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    iput-object v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->strLabel:Ljava/lang/String;

    .line 111
    iget-boolean v5, v0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    iput-boolean v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->bEnable:Z

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower SetAlarm ============ >>>>  getIntExtra-alarm.id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    invoke-direct {p0, v5}, Lcom/sprd/settings/timerpower/SetAlarm;->updatePrefs(Lcom/sprd/settings/timerpower/Alarm;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 122
    const v5, 0x7f0b016c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 123
    .local v1, "b":Landroid/widget/Button;
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 140
    const v5, 0x7f0b016b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 141
    .local v4, "revert":Landroid/widget/Button;
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    if-ne v5, v7, :cond_1

    .line 160
    iput-boolean v8, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePickerCancelled:Z

    .line 161
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->showTimePicker()V

    .line 163
    .end local v1    # "b":Landroid/widget/Button;
    .end local v4    # "revert":Landroid/widget/Button;
    :cond_1
    :goto_1
    return-void

    .line 97
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    invoke-static {p0, v5, v6}, Lcom/sprd/settings/timerpower/Alarms;->getAlarm(Landroid/content/Context;Landroid/content/ContentResolver;I)Lcom/sprd/settings/timerpower/Alarm;

    move-result-object v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 102
    :cond_3
    iget v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    if-ne v5, v8, :cond_4

    .line 103
    const v5, 0x7f090829

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 104
    :cond_4
    iget v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 105
    const v5, 0x7f09082a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    const v0, 0x7f090825

    invoke-interface {p1, v1, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    const v0, 0x7f090824

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 172
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 192
    :pswitch_0
    iget v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    .line 193
    .local v1, "newId":I
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    invoke-direct {p0, v3}, Lcom/sprd/settings/timerpower/SetAlarm;->updatePrefs(Lcom/sprd/settings/timerpower/Alarm;)V

    .line 195
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget v3, v3, Lcom/sprd/settings/timerpower/Alarm;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 196
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->strLabel:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->bEnable:Z

    invoke-direct {p0, v3, v4}, Lcom/sprd/settings/timerpower/SetAlarm;->saveAlarm(Ljava/lang/String;Z)J

    goto :goto_0

    .line 200
    .end local v1    # "newId":I
    :pswitch_1
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->hasDuplicateAlarmDate()Z

    move-result v0

    .line 202
    .local v0, "hasDuplicateDate":Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    iget v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    iget v6, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    invoke-static {v3, v4, v5, v6}, Lcom/sprd/settings/timerpower/Alarms;->isSametimeAlarm(Landroid/content/ContentResolver;III)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 203
    const-string v3, "show sameAlarm Dialog"

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 204
    iget v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    invoke-direct {p0, v3, v4}, Lcom/sprd/settings/timerpower/SetAlarm;->sameAlarmShow(II)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->strLabel:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/sprd/settings/timerpower/SetAlarm;->saveAlarm(Ljava/lang/String;Z)J

    .line 208
    iget v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    iget v4, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    iget-object v5, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

    invoke-virtual {v5}, Lcom/sprd/settings/timerpower/RepeatPreference;->getDaysOfWeek()Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/sprd/settings/timerpower/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 219
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    iget v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    iget v3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    invoke-static {v0, v1, v2, v3}, Lcom/sprd/settings/timerpower/Alarms;->isSametimeAlarm(Landroid/content/ContentResolver;III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->hasDuplicateAlarmDate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    iget v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    invoke-direct {p0, v0, v1}, Lcom/sprd/settings/timerpower/SetAlarm;->checkChangeTimeAndDate(II)V

    .line 232
    :goto_0
    return v4

    .line 224
    :cond_0
    sget-object v0, Lcom/sprd/settings/timerpower/SetAlarm;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprd/settings/timerpower/SetAlarm$1;

    invoke-direct {v1, p0}, Lcom/sprd/settings/timerpower/SetAlarm$1;-><init>(Lcom/sprd/settings/timerpower/SetAlarm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->showTimePicker()V

    .line 250
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 177
    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget v0, v0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    iget v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget v0, v0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    iget v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mOriginalAlarm:Lcom/sprd/settings/timerpower/Alarm;

    iget-object v0, v0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mRepeatPref:Lcom/sprd/settings/timerpower/RepeatPreference;

    invoke-virtual {v1}, Lcom/sprd/settings/timerpower/RepeatPreference;->getDaysOfWeek()Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 185
    :goto_0
    return v3

    .line 183
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mTimePickerCancelled:Z

    .line 336
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    invoke-static {v1, p2, p3, v2}, Lcom/sprd/settings/timerpower/Alarms;->isSametimeAlarm(Landroid/content/ContentResolver;III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprd/settings/timerpower/SetAlarm;->isSametimeAlarm:Z

    .line 338
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->hasDuplicateAlarmDate()Z

    move-result v0

    .line 339
    .local v0, "hasDuplicateDate":Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mId:I

    invoke-static {v1, p2, p3, v2}, Lcom/sprd/settings/timerpower/Alarms;->isSametimeAlarm(Landroid/content/ContentResolver;III)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0, p2, p3}, Lcom/sprd/settings/timerpower/SetAlarm;->sameAlarmShow(II)V

    .line 351
    :goto_0
    return-void

    .line 343
    :cond_0
    iput p2, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mHour:I

    .line 344
    iput p3, p0, Lcom/sprd/settings/timerpower/SetAlarm;->mMinutes:I

    .line 345
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/SetAlarm;->updateTime()V

    .line 349
    invoke-direct {p0, p2, p3}, Lcom/sprd/settings/timerpower/SetAlarm;->checkChangeTimeAndDate(II)V

    goto :goto_0
.end method

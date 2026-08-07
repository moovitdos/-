.class public Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;
.super Landroid/widget/FrameLayout;
.source "HebrewDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;,
        Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 121
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "MM/dd/yyyy"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 93
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mIsEnabled:Z

    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 126
    sget-object v13, Lcom/duoqin/calendar/hebrew/R$styleable;->HebrewDatePicker:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 128
    .local v3, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 130
    .local v11, "spinnersShown":Z
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 132
    .local v4, "calendarViewShown":Z
    const/4 v13, 0x0

    const/16 v14, 0x76c

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 134
    .local v12, "startYear":I
    const/4 v13, 0x1

    const/16 v14, 0x834

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 135
    .local v5, "endYear":I
    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "minDate":Ljava/lang/String;
    const/4 v13, 0x5

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "maxDate":Ljava/lang/String;
    const/4 v13, 0x6

    sget v14, Lcom/duoqin/calendar/hebrew/R$layout;->hebrew_date_picker:I

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 139
    .local v7, "layoutResourceId":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    sget-object v13, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HebrewDatePicker: spinnersShown = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", calendarViewShown = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", startYear = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", endYear = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", minDate = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", maxDate = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v13, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 149
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v6, v7, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 151
    new-instance v10, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;-><init>(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V

    .line 202
    .local v10, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    sget v13, Lcom/duoqin/calendar/hebrew/R$id;->pickers:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 205
    sget v13, Lcom/duoqin/calendar/hebrew/R$id;->calendar_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CalendarView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v14, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$2;-><init>(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V

    invoke-virtual {v13, v14}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 215
    sget v13, Lcom/duoqin/calendar/hebrew/R$id;->day:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v14, 0x10202f5

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 221
    sget-object v13, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HebrewDatePicker: mNumberOfMonths "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mNumberOfMonths:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget v13, Lcom/duoqin/calendar/hebrew/R$id;->month:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mNumberOfMonths:I

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0xc8

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v14, 0x10202f5

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 233
    sget v13, Lcom/duoqin/calendar/hebrew/R$id;->year:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v14, 0x10202f5

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 240
    if-nez v11, :cond_3

    if-nez v4, :cond_3

    .line 241
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setSpinnersShown(Z)V

    .line 248
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 249
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 256
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setMinDate(J)V

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 260
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 267
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setMaxDate(J)V

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->init(IIILcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$OnDateChangedListener;)V

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->reorderSpinners()V

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setContentDescriptions()V

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_2

    .line 282
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 284
    :cond_2
    return-void

    .line 243
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setSpinnersShown(Z)V

    .line 244
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_0

    .line 254
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    .line 265
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;III)V
    .locals 0
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$800(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$900(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateCalendarView()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 497
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 502
    :goto_0
    return-object v2

    .line 499
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 500
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 501
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 718
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 719
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mOnDateChangedListener:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mOnDateChangedListener:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$OnDateChangedListener;->onDateChanged(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;III)V

    .line 722
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    const/4 v1, 0x1

    .line 606
    :goto_0
    return v1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 6

    .prologue
    .line 512
    iget-object v4, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 515
    const-string v4, "yyyyMMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v1

    .line 517
    .local v1, "order":[C
    array-length v3, v1

    .line 518
    .local v3, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 519
    aget-char v4, v1, v0

    sparse-switch v4, :sswitch_data_0

    .line 533
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 521
    :sswitch_0
    iget-object v4, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 522
    iget-object v4, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v3, v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 518
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :sswitch_1
    iget-object v4, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 526
    iget-object v4, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v3, v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 529
    :sswitch_2
    iget-object v4, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 530
    iget-object v4, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v3, v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 536
    :cond_0
    return-void

    .line 519
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x10202f6

    const v2, 0x10202f4

    .line 744
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x104056b

    invoke-direct {p0, v0, v2, v1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 746
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x104056c

    invoke-direct {p0, v0, v3, v1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 749
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040569

    invoke-direct {p0, v0, v2, v1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 751
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104056a

    invoke-direct {p0, v0, v3, v1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 754
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104056d

    invoke-direct {p0, v0, v2, v1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 756
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104056e

    invoke-direct {p0, v0, v3, v1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 758
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v1, 0xd

    .line 463
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 467
    :cond_0
    iput-object p1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 469
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 470
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 471
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 472
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 474
    iput v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mNumberOfMonths:I

    .line 475
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Nisan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Iyar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Sivan"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Tammuz"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Av"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Elul"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Tishri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Heshvan"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Kislev"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Tevet"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Shevat"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Adar I"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Adar II"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 618
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 733
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 734
    const/4 v0, 0x5

    .line 738
    .local v0, "imeOptions":I
    :goto_0
    const v2, 0x10202f5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 739
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 740
    return-void

    .line 736
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 761
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 762
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 763
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 765
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 690
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 691
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 773
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 774
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 775
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 777
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 780
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 781
    :cond_2
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 783
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 627
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {v9}, Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;->buildHebrewDateImpl(Ljava/util/Calendar;)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v0

    .line 628
    .local v0, "currentHebrewDate":Lcom/duoqin/calendar/hebrew/HDate;
    if-nez v0, :cond_0

    .line 684
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-interface {v0}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v4

    .line 630
    .local v4, "hebrewYear":I
    invoke-interface {v0}, Lcom/duoqin/calendar/hebrew/HDate;->getMonth()I

    move-result v3

    .line 631
    .local v3, "hebrewMonth":I
    invoke-interface {v0}, Lcom/duoqin/calendar/hebrew/HDate;->getDay()I

    move-result v2

    .line 632
    .local v2, "hebrewDay":I
    sget-object v9, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

    invoke-virtual {v9, v4, v3}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->monthLength(II)I

    move-result v7

    .line 633
    .local v7, "monthLength":I
    sget-object v9, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

    invoke-virtual {v9, v4}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->monthsInYear(I)I

    move-result v8

    .line 634
    .local v8, "monthsInYear":I
    sget-object v9, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSpinners: currentHebrewDate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", monthLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", monthsInYear "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v10, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 637
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 638
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 639
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v13}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 640
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v14}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 641
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 642
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 643
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v13}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 663
    :goto_1
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v10, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v10}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iget-object v11, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v11}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v11

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 665
    .local v1, "displayedValues":[Ljava/lang/String;
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 668
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-static {v9}, Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;->buildHebrewDateImpl(Ljava/util/Calendar;)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v6

    .line 669
    .local v6, "minHebrewDate":Lcom/duoqin/calendar/hebrew/HDate;
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v9}, Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;->buildHebrewDateImpl(Ljava/util/Calendar;)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v5

    .line 670
    .local v5, "maxHebrewDate":Lcom/duoqin/calendar/hebrew/HDate;
    if-eqz v6, :cond_1

    if-nez v5, :cond_4

    .line 671
    :cond_1
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const/16 v10, 0x1662

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 672
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const/16 v10, 0x16a6

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 678
    :goto_2
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v13}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 681
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 682
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 683
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto/16 :goto_0

    .line 644
    .end local v1    # "displayedValues":[Ljava/lang/String;
    .end local v5    # "maxHebrewDate":Lcom/duoqin/calendar/hebrew/HDate;
    .end local v6    # "minHebrewDate":Lcom/duoqin/calendar/hebrew/HDate;
    :cond_2
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v10, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 645
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 646
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 647
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v13}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 648
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v14}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 649
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 650
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 651
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v13}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_1

    .line 653
    :cond_3
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 654
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 655
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v12}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 656
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v14}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 657
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 658
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 659
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v9, v12}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_1

    .line 674
    .restart local v1    # "displayedValues":[Ljava/lang/String;
    .restart local v5    # "maxHebrewDate":Lcom/duoqin/calendar/hebrew/HDate;
    .restart local v6    # "minHebrewDate":Lcom/duoqin/calendar/hebrew/HDate;
    :cond_4
    sget-object v9, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSpinners: minHebrewDate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", maxHebrewDate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-interface {v6}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 676
    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-interface {v5}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 559
    return-void
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$OnDateChangedListener;

    .prologue
    .line 588
    invoke-direct {p0, p1, p2, p3}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setDate(III)V

    .line 589
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateSpinners()V

    .line 590
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateCalendarView()V

    .line 591
    iput-object p4, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mOnDateChangedListener:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$OnDateChangedListener;

    .line 592
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 407
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 408
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 395
    const-class v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 401
    const-class v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 402
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 386
    const/16 v0, 0x14

    .line 387
    .local v0, "flags":I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 569
    move-object v0, p1

    check-cast v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;

    .line 570
    .local v0, "ss":Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 571
    invoke-static {v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->access$1200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;)I

    move-result v1

    invoke-static {v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->access$1300(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;)I

    move-result v2

    invoke-static {v0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;->access$1400(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->setDate(III)V

    .line 572
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateSpinners()V

    .line 573
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateCalendarView()V

    .line 574
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 563
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 564
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 436
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 437
    return-void

    .line 436
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 368
    iput-boolean p1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 344
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 345
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 350
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 351
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 353
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateCalendarView()V

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 308
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 309
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 314
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 315
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 317
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateCalendarView()V

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 454
    iget-object v1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 455
    return-void

    .line 454
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

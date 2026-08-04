package com.duoqin.calendar.hebrew.datepicker;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.CalendarView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.TextView;
import com.duoqin.calendar.hebrew.HDate;
import com.duoqin.calendar.hebrew.HebrewCalendarConvertUtil;
import com.duoqin.calendar.hebrew.impl.HebrewCalendar;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import libcore.icu.ICU;

/* loaded from: classes.dex */
public class HebrewDatePicker extends FrameLayout {
    private static final String LOG_TAG = HebrewDatePicker.class.getSimpleName();
    private final CalendarView mCalendarView;
    private Calendar mCurrentDate;
    private Locale mCurrentLocale;
    private final DateFormat mDateFormat;
    private final NumberPicker mDaySpinner;
    private final EditText mDaySpinnerInput;
    private boolean mIsEnabled;
    private Calendar mMaxDate;
    private Calendar mMinDate;
    private final NumberPicker mMonthSpinner;
    private final EditText mMonthSpinnerInput;
    private int mNumberOfMonths;
    private OnDateChangedListener mOnDateChangedListener;
    private String[] mShortMonths;
    private final LinearLayout mSpinners;
    private Calendar mTempDate;
    private final NumberPicker mYearSpinner;
    private final EditText mYearSpinnerInput;

    public interface OnDateChangedListener {
        void onDateChanged(HebrewDatePicker hebrewDatePicker, int i, int i2, int i3);
    }

    public HebrewDatePicker(Context context) {
        this(context, null);
    }

    public HebrewDatePicker(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.datePickerStyle);
    }

    public HebrewDatePicker(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDateFormat = new SimpleDateFormat("MM/dd/yyyy");
        this.mIsEnabled = true;
        setCurrentLocale(Locale.getDefault());
        TypedArray attributesArray = context.obtainStyledAttributes(attrs, com.duoqin.calendar.hebrew.R.styleable.HebrewDatePicker, defStyle, 0);
        boolean spinnersShown = attributesArray.getBoolean(2, true);
        boolean calendarViewShown = attributesArray.getBoolean(3, false);
        int startYear = attributesArray.getInt(0, 1900);
        int endYear = attributesArray.getInt(1, 2100);
        String minDate = attributesArray.getString(4);
        String maxDate = attributesArray.getString(5);
        int layoutResourceId = attributesArray.getResourceId(6, com.duoqin.calendar.hebrew.R.layout.hebrew_date_picker);
        attributesArray.recycle();
        Log.d(LOG_TAG, "HebrewDatePicker: spinnersShown = " + spinnersShown + ", calendarViewShown = " + calendarViewShown + ", startYear = " + startYear + ", endYear = " + endYear + ", minDate = " + minDate + ", maxDate = " + maxDate);
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        inflater.inflate(layoutResourceId, (ViewGroup) this, true);
        NumberPicker.OnValueChangeListener onChangeListener = new NumberPicker.OnValueChangeListener() { // from class: com.duoqin.calendar.hebrew.datepicker.HebrewDatePicker.1
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(NumberPicker picker, int oldVal, int newVal) {
                HebrewDatePicker.this.updateInputState();
                HebrewDatePicker.this.mTempDate.setTimeInMillis(HebrewDatePicker.this.mCurrentDate.getTimeInMillis());
                HDate tempHebrewDate = HebrewCalendarConvertUtil.buildHebrewDateImpl(HebrewDatePicker.this.mTempDate);
                if (tempHebrewDate != null) {
                    int hebrewYear = tempHebrewDate.getYear();
                    int hebrewMonth = tempHebrewDate.getMonth();
                    int hebrewDay = tempHebrewDate.getDay();
                    int monthLength = HebrewCalendar.INSTANCE.monthLength(hebrewYear, hebrewMonth);
                    Log.d(HebrewDatePicker.LOG_TAG, "onValueChange: hebrewYear " + hebrewYear + ", hebrewMonth = " + hebrewMonth + ", hebrewDay = " + hebrewDay + ", monthLength = " + monthLength);
                    Log.d(HebrewDatePicker.LOG_TAG, "onValueChange: oldVal " + oldVal + ", newVal = " + newVal);
                    if (picker != HebrewDatePicker.this.mDaySpinner) {
                        if (picker != HebrewDatePicker.this.mMonthSpinner) {
                            if (picker == HebrewDatePicker.this.mYearSpinner) {
                                HDate newYearGreDate = HebrewCalendarConvertUtil.buildGregorianDateImpl(newVal, hebrewMonth, hebrewDay);
                                if (newYearGreDate != null) {
                                    Log.d(HebrewDatePicker.LOG_TAG, "onValueChange: newYearGreDate " + newYearGreDate.toString());
                                    HebrewDatePicker.this.mTempDate.set(1, newYearGreDate.getYear());
                                    HebrewDatePicker.this.mTempDate.set(2, newYearGreDate.getMonth() - 1);
                                    HebrewDatePicker.this.mTempDate.set(5, newYearGreDate.getDay());
                                }
                            } else {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            HDate newMonthGreDate = HebrewCalendarConvertUtil.buildGregorianDateImpl(hebrewYear, newVal, hebrewDay);
                            if (newMonthGreDate != null) {
                                Log.d(HebrewDatePicker.LOG_TAG, "onValueChange: newMonthGreDate " + newMonthGreDate.toString());
                                HebrewDatePicker.this.mTempDate.set(1, newMonthGreDate.getYear());
                                HebrewDatePicker.this.mTempDate.set(2, newMonthGreDate.getMonth() - 1);
                                HebrewDatePicker.this.mTempDate.set(5, newMonthGreDate.getDay());
                            }
                        }
                    } else if (oldVal == monthLength && newVal == 1) {
                        HebrewDatePicker.this.mTempDate.add(5, 1);
                    } else if (oldVal != 1 || newVal != monthLength) {
                        HebrewDatePicker.this.mTempDate.add(5, newVal - oldVal);
                    } else {
                        HebrewDatePicker.this.mTempDate.add(5, -1);
                    }
                    HebrewDatePicker.this.setDate(HebrewDatePicker.this.mTempDate.get(1), HebrewDatePicker.this.mTempDate.get(2), HebrewDatePicker.this.mTempDate.get(5));
                    HebrewDatePicker.this.updateSpinners();
                    HebrewDatePicker.this.updateCalendarView();
                    HebrewDatePicker.this.notifyDateChanged();
                }
            }
        };
        this.mSpinners = (LinearLayout) findViewById(com.duoqin.calendar.hebrew.R.id.pickers);
        this.mCalendarView = (CalendarView) findViewById(com.duoqin.calendar.hebrew.R.id.calendar_view);
        this.mCalendarView.setOnDateChangeListener(new CalendarView.OnDateChangeListener() { // from class: com.duoqin.calendar.hebrew.datepicker.HebrewDatePicker.2
            @Override // android.widget.CalendarView.OnDateChangeListener
            public void onSelectedDayChange(CalendarView view, int year, int month, int monthDay) {
                HebrewDatePicker.this.setDate(year, month, monthDay);
                HebrewDatePicker.this.updateSpinners();
                HebrewDatePicker.this.notifyDateChanged();
            }
        });
        this.mDaySpinner = (NumberPicker) findViewById(com.duoqin.calendar.hebrew.R.id.day);
        this.mDaySpinner.setFormatter(NumberPicker.getTwoDigitFormatter());
        this.mDaySpinner.setOnLongPressUpdateInterval(100L);
        this.mDaySpinner.setOnValueChangedListener(onChangeListener);
        this.mDaySpinnerInput = (EditText) this.mDaySpinner.findViewById(R.id.flagInputMethodEditor);
        Log.e(LOG_TAG, "HebrewDatePicker: mNumberOfMonths " + this.mNumberOfMonths);
        this.mMonthSpinner = (NumberPicker) findViewById(com.duoqin.calendar.hebrew.R.id.month);
        this.mMonthSpinner.setMinValue(1);
        this.mMonthSpinner.setMaxValue(this.mNumberOfMonths);
        this.mMonthSpinner.setDisplayedValues(this.mShortMonths);
        this.mMonthSpinner.setOnLongPressUpdateInterval(200L);
        this.mMonthSpinner.setOnValueChangedListener(onChangeListener);
        this.mMonthSpinnerInput = (EditText) this.mMonthSpinner.findViewById(R.id.flagInputMethodEditor);
        this.mYearSpinner = (NumberPicker) findViewById(com.duoqin.calendar.hebrew.R.id.year);
        this.mYearSpinner.setOnLongPressUpdateInterval(100L);
        this.mYearSpinner.setOnValueChangedListener(onChangeListener);
        this.mYearSpinnerInput = (EditText) this.mYearSpinner.findViewById(R.id.flagInputMethodEditor);
        if (!spinnersShown && !calendarViewShown) {
            setSpinnersShown(true);
        } else {
            setSpinnersShown(spinnersShown);
            setCalendarViewShown(calendarViewShown);
        }
        this.mTempDate.clear();
        if (TextUtils.isEmpty(minDate) || !parseDate(minDate, this.mTempDate)) {
            this.mTempDate.set(startYear, 0, 1);
        }
        setMinDate(this.mTempDate.getTimeInMillis());
        this.mTempDate.clear();
        if (TextUtils.isEmpty(maxDate) || !parseDate(maxDate, this.mTempDate)) {
            this.mTempDate.set(endYear, 11, 31);
        }
        setMaxDate(this.mTempDate.getTimeInMillis());
        this.mCurrentDate.setTimeInMillis(System.currentTimeMillis());
        init(this.mCurrentDate.get(1), this.mCurrentDate.get(2), this.mCurrentDate.get(5), null);
        reorderSpinners();
        setContentDescriptions();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public void setMinDate(long minDate) {
        this.mTempDate.setTimeInMillis(minDate);
        if (this.mTempDate.get(1) != this.mMinDate.get(1) || this.mTempDate.get(6) == this.mMinDate.get(6)) {
            this.mMinDate.setTimeInMillis(minDate);
            this.mCalendarView.setMinDate(minDate);
            if (this.mCurrentDate.before(this.mMinDate)) {
                this.mCurrentDate.setTimeInMillis(this.mMinDate.getTimeInMillis());
                updateCalendarView();
            }
            updateSpinners();
        }
    }

    public void setMaxDate(long maxDate) {
        this.mTempDate.setTimeInMillis(maxDate);
        if (this.mTempDate.get(1) != this.mMaxDate.get(1) || this.mTempDate.get(6) == this.mMaxDate.get(6)) {
            this.mMaxDate.setTimeInMillis(maxDate);
            this.mCalendarView.setMaxDate(maxDate);
            if (this.mCurrentDate.after(this.mMaxDate)) {
                this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
                updateCalendarView();
            }
            updateSpinners();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        if (this.mIsEnabled != enabled) {
            super.setEnabled(enabled);
            this.mDaySpinner.setEnabled(enabled);
            this.mMonthSpinner.setEnabled(enabled);
            this.mYearSpinner.setEnabled(enabled);
            this.mCalendarView.setEnabled(enabled);
            this.mIsEnabled = enabled;
        }
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        onPopulateAccessibilityEvent(event);
        return true;
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent event) {
        super.onPopulateAccessibilityEvent(event);
        String selectedDateUtterance = DateUtils.formatDateTime(((View) this).mContext, this.mCurrentDate.getTimeInMillis(), 20);
        event.getText().add(selectedDateUtterance);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(HebrewDatePicker.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(HebrewDatePicker.class.getName());
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        setCurrentLocale(newConfig.locale);
    }

    public void setCalendarViewShown(boolean shown) {
        this.mCalendarView.setVisibility(shown ? 0 : 8);
    }

    public void setSpinnersShown(boolean shown) {
        this.mSpinners.setVisibility(shown ? 0 : 8);
    }

    private void setCurrentLocale(Locale locale) {
        if (!locale.equals(this.mCurrentLocale)) {
            this.mCurrentLocale = locale;
            this.mTempDate = getCalendarForLocale(this.mTempDate, locale);
            this.mMinDate = getCalendarForLocale(this.mMinDate, locale);
            this.mMaxDate = getCalendarForLocale(this.mMaxDate, locale);
            this.mCurrentDate = getCalendarForLocale(this.mCurrentDate, locale);
            this.mNumberOfMonths = 13;
            this.mShortMonths = new String[]{"Nisan", "Iyar", "Sivan", "Tammuz", "Av", "Elul", "Tishri", "Heshvan", "Kislev", "Tevet", "Shevat", "Adar I", "Adar II"};
        }
    }

    private Calendar getCalendarForLocale(Calendar oldCalendar, Locale locale) {
        if (oldCalendar == null) {
            return Calendar.getInstance(locale);
        }
        long currentTimeMillis = oldCalendar.getTimeInMillis();
        Calendar newCalendar = Calendar.getInstance(locale);
        newCalendar.setTimeInMillis(currentTimeMillis);
        return newCalendar;
    }

    private void reorderSpinners() {
        this.mSpinners.removeAllViews();
        String pattern = ICU.getBestDateTimePattern("yyyyMMMdd", Locale.getDefault().toString());
        char[] order = ICU.getDateFormatOrder(pattern);
        int spinnerCount = order.length;
        for (int i = 0; i < spinnerCount; i++) {
            switch (order[i]) {
                case 'M':
                    this.mSpinners.addView(this.mMonthSpinner);
                    setImeOptions(this.mMonthSpinner, spinnerCount, i);
                    break;
                case 'd':
                    this.mSpinners.addView(this.mDaySpinner);
                    setImeOptions(this.mDaySpinner, spinnerCount, i);
                    break;
                case 'y':
                    this.mSpinners.addView(this.mYearSpinner);
                    setImeOptions(this.mYearSpinner, spinnerCount, i);
                    break;
                default:
                    throw new IllegalArgumentException(Arrays.toString(order));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        dispatchThawSelfOnly(container);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable superState = super.onSaveInstanceState();
        return new SavedState(superState, getYear(), getMonth(), getDayOfMonth());
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        SavedState ss = (SavedState) state;
        super.onRestoreInstanceState(ss.getSuperState());
        setDate(ss.mYear, ss.mMonth, ss.mDay);
        updateSpinners();
        updateCalendarView();
    }

    public void init(int year, int monthOfYear, int dayOfMonth, OnDateChangedListener onDateChangedListener) {
        setDate(year, monthOfYear, dayOfMonth);
        updateSpinners();
        updateCalendarView();
        this.mOnDateChangedListener = onDateChangedListener;
    }

    private boolean parseDate(String date, Calendar outDate) {
        try {
            outDate.setTime(this.mDateFormat.parse(date));
            return true;
        } catch (ParseException e) {
            Log.w(LOG_TAG, "Date: " + date + " not in format: MM/dd/yyyy");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDate(int year, int month, int dayOfMonth) {
        this.mCurrentDate.set(year, month, dayOfMonth);
        if (this.mCurrentDate.before(this.mMinDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMinDate.getTimeInMillis());
        } else if (this.mCurrentDate.after(this.mMaxDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpinners() {
        HDate currentHebrewDate = HebrewCalendarConvertUtil.buildHebrewDateImpl(this.mCurrentDate);
        if (currentHebrewDate != null) {
            int hebrewYear = currentHebrewDate.getYear();
            int hebrewMonth = currentHebrewDate.getMonth();
            int hebrewDay = currentHebrewDate.getDay();
            int monthLength = HebrewCalendar.INSTANCE.monthLength(hebrewYear, hebrewMonth);
            int monthsInYear = HebrewCalendar.INSTANCE.monthsInYear(hebrewYear);
            Log.d(LOG_TAG, "updateSpinners: currentHebrewDate " + currentHebrewDate.toString() + ", monthLength = " + monthLength + ", monthsInYear " + monthsInYear);
            if (this.mCurrentDate.equals(this.mMinDate)) {
                this.mDaySpinner.setMinValue(hebrewDay);
                this.mDaySpinner.setMaxValue(monthLength);
                this.mDaySpinner.setWrapSelectorWheel(false);
                this.mMonthSpinner.setDisplayedValues(null);
                this.mMonthSpinner.setMinValue(hebrewMonth);
                this.mMonthSpinner.setMaxValue(monthsInYear);
                this.mMonthSpinner.setWrapSelectorWheel(false);
            } else if (this.mCurrentDate.equals(this.mMaxDate)) {
                this.mDaySpinner.setMinValue(1);
                this.mDaySpinner.setMaxValue(hebrewDay);
                this.mDaySpinner.setWrapSelectorWheel(false);
                this.mMonthSpinner.setDisplayedValues(null);
                this.mMonthSpinner.setMinValue(1);
                this.mMonthSpinner.setMaxValue(hebrewMonth);
                this.mMonthSpinner.setWrapSelectorWheel(false);
            } else {
                this.mDaySpinner.setMinValue(1);
                this.mDaySpinner.setMaxValue(monthLength);
                this.mDaySpinner.setWrapSelectorWheel(true);
                this.mMonthSpinner.setDisplayedValues(null);
                this.mMonthSpinner.setMinValue(1);
                this.mMonthSpinner.setMaxValue(monthsInYear);
                this.mMonthSpinner.setWrapSelectorWheel(true);
            }
            String[] displayedValues = (String[]) Arrays.copyOfRange(this.mShortMonths, this.mMonthSpinner.getMinValue() - 1, this.mMonthSpinner.getMaxValue());
            this.mMonthSpinner.setDisplayedValues(displayedValues);
            HDate minHebrewDate = HebrewCalendarConvertUtil.buildHebrewDateImpl(this.mMinDate);
            HDate maxHebrewDate = HebrewCalendarConvertUtil.buildHebrewDateImpl(this.mMaxDate);
            if (minHebrewDate == null || maxHebrewDate == null) {
                this.mYearSpinner.setMinValue(5730);
                this.mYearSpinner.setMaxValue(5798);
            } else {
                Log.d(LOG_TAG, "updateSpinners: minHebrewDate " + minHebrewDate + ", maxHebrewDate " + maxHebrewDate);
                this.mYearSpinner.setMinValue(minHebrewDate.getYear());
                this.mYearSpinner.setMaxValue(maxHebrewDate.getYear());
            }
            this.mYearSpinner.setWrapSelectorWheel(false);
            this.mYearSpinner.setValue(hebrewYear);
            this.mMonthSpinner.setValue(hebrewMonth);
            this.mDaySpinner.setValue(hebrewDay);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCalendarView() {
        this.mCalendarView.setDate(this.mCurrentDate.getTimeInMillis(), false, false);
    }

    public int getYear() {
        return this.mCurrentDate.get(1);
    }

    public int getMonth() {
        return this.mCurrentDate.get(2);
    }

    public int getDayOfMonth() {
        return this.mCurrentDate.get(5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDateChanged() {
        sendAccessibilityEvent(4);
        if (this.mOnDateChangedListener != null) {
            this.mOnDateChangedListener.onDateChanged(this, getYear(), getMonth(), getDayOfMonth());
        }
    }

    private void setImeOptions(NumberPicker spinner, int spinnerCount, int spinnerIndex) {
        int imeOptions;
        if (spinnerIndex < spinnerCount - 1) {
            imeOptions = 5;
        } else {
            imeOptions = 6;
        }
        TextView input = (TextView) spinner.findViewById(R.id.flagInputMethodEditor);
        input.setImeOptions(imeOptions);
    }

    private void setContentDescriptions() {
        trySetContentDescription(this.mDaySpinner, R.id.flagIncludeNotImportantViews, R.string.lockscreen_pattern_wrong);
        trySetContentDescription(this.mDaySpinner, R.id.flagNavigateNext, R.string.lockscreen_permanent_disabled_sim_instructions);
        trySetContentDescription(this.mMonthSpinner, R.id.flagIncludeNotImportantViews, R.string.lockscreen_pattern_correct);
        trySetContentDescription(this.mMonthSpinner, R.id.flagNavigateNext, R.string.lockscreen_pattern_instructions);
        trySetContentDescription(this.mYearSpinner, R.id.flagIncludeNotImportantViews, R.string.lockscreen_permanent_disabled_sim_message_short);
        trySetContentDescription(this.mYearSpinner, R.id.flagNavigateNext, R.string.lockscreen_return_to_call);
    }

    private void trySetContentDescription(View root, int viewId, int contDescResId) {
        View target = root.findViewById(viewId);
        if (target != null) {
            target.setContentDescription(((View) this).mContext.getString(contDescResId));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInputState() {
        InputMethodManager inputMethodManager = InputMethodManager.peekInstance();
        if (inputMethodManager != null) {
            if (inputMethodManager.isActive(this.mYearSpinnerInput)) {
                this.mYearSpinnerInput.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this.mMonthSpinnerInput)) {
                this.mMonthSpinnerInput.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this.mDaySpinnerInput)) {
                this.mDaySpinnerInput.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            }
        }
    }

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.duoqin.calendar.hebrew.datepicker.HebrewDatePicker.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        private final int mDay;
        private final int mMonth;
        private final int mYear;

        private SavedState(Parcelable superState, int year, int month, int day) {
            super(superState);
            this.mYear = year;
            this.mMonth = month;
            this.mDay = day;
        }

        private SavedState(Parcel in) {
            super(in);
            this.mYear = in.readInt();
            this.mMonth = in.readInt();
            this.mDay = in.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeInt(this.mYear);
            dest.writeInt(this.mMonth);
            dest.writeInt(this.mDay);
        }
    }
}

package com.sprd.classichome;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.format.DateFormat;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextClock;
import android.widget.TextView;
import com.duoqin.calendar.hebrew.HebrewCalendarConvertUtil;
import com.sprd.classichome.settings.LauncherSettings;
import com.sprd.simple.launcher.R;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public class HomeStatusView extends LinearLayout {
    private TextClock mClockView;
    private Context mContext;
    private TextClock mDateView;
    private TextView mLunarView;

    public HomeStatusView(Context context) {
        super(context);
    }

    public HomeStatusView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public HomeStatusView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // android.view.View
    protected void onFinishInflate() throws Resources.NotFoundException {
        super.onFinishInflate();
        this.mContext = getContext();
        this.mClockView = (TextClock) findViewById(R.id.gridhome_clock_view);
        this.mDateView = (TextClock) findViewById(R.id.gridhome_date_view);
        this.mLunarView = (TextView) findViewById(R.id.gridhome_lunar_date_view);
        refreshTime();
        applyCustomSettings();
    }

    public void refreshTime() throws Resources.NotFoundException {
        Patterns.update(this.mContext);
        if (this.mDateView != null) {
            this.mDateView.setFormat24Hour(Patterns.dateView);
            this.mDateView.setFormat12Hour(Patterns.dateView);
        }
        if (this.mClockView != null) {
            this.mClockView.setFormat12Hour(updateAmPmTextSize((int) getResources().getDimension(R.dimen.am_pm_widget_font_size), Patterns.clockView12));
            this.mClockView.setFormat24Hour(Patterns.clockView24);
        }
        updateLunarDateView();
        applyCustomSettings();
    }

    public void applyCustomSettings() {
        if (this.mContext == null) {
            this.mContext = getContext();
        }
        if (this.mClockView == null) {
            this.mClockView = (TextClock) findViewById(R.id.gridhome_clock_view);
        }
        if (this.mDateView == null) {
            this.mDateView = (TextClock) findViewById(R.id.gridhome_date_view);
        }
        if (this.mLunarView == null) {
            this.mLunarView = (TextView) findViewById(R.id.gridhome_lunar_date_view);
        }

        // 1. Clock Settings
        if (this.mClockView != null) {
            boolean clockEnabled = LauncherSettings.isClockEnabled(this.mContext);
            this.mClockView.setVisibility(clockEnabled ? View.VISIBLE : View.GONE);
            int clockSize = LauncherSettings.getClockSize(this.mContext);
            this.mClockView.setTextSize(clockSize);

            int clockColor = LauncherSettings.getClockColor(this.mContext);
            this.mClockView.setTextColor(clockColor);

            int fontStyle = LauncherSettings.getClockFontStyle(this.mContext);
            Typeface tf;
            switch (fontStyle) {
                case LauncherSettings.FONT_STYLE_BOLD:
                    tf = Typeface.DEFAULT_BOLD;
                    break;
                case LauncherSettings.FONT_STYLE_LIGHT:
                    tf = Typeface.create("sans-serif-light", Typeface.NORMAL);
                    break;
                case LauncherSettings.FONT_STYLE_MONOSPACE:
                    tf = Typeface.MONOSPACE;
                    break;
                case LauncherSettings.FONT_STYLE_SERIF:
                    tf = Typeface.SERIF;
                    break;
                default:
                    tf = Typeface.DEFAULT;
                    break;
            }
            this.mClockView.setTypeface(tf);

            // Clock time-format selection is deliberately NOT applied here.
            //
            // The implementation that actually runs on the device (HomeStatusView.smali,
            // applyCustomSettings) never reads getClockTimeFormat — the format comes
            // solely from Patterns.update() via the clock_12hr_format / clock_24hr_format
            // resources. Enabling it here would swap tested behaviour for untested
            // behaviour as a side effect of the Java migration.
            //
            // It ships later as its own change, with its own verification. The
            // clock_time_format preference and its settings row are inert until then.
        }

        // 2. Date Settings
        if (this.mDateView != null) {
            boolean dateEnabled = LauncherSettings.isDateEnabled(this.mContext);
            this.mDateView.setVisibility(dateEnabled ? View.VISIBLE : View.GONE);
            if (dateEnabled) {
                this.mDateView.setTextSize(LauncherSettings.getDateSize(this.mContext));
                this.mDateView.setTextColor(LauncherSettings.getDateColor(this.mContext));
            }
        }

        // 3. Hebrew Date Settings
        if (this.mLunarView != null) {
            boolean hebrewEnabled = LauncherSettings.isHebrewDateEnabled(this.mContext);
            this.mLunarView.setVisibility(hebrewEnabled ? View.VISIBLE : View.GONE);
            if (hebrewEnabled) {
                this.mLunarView.setTextSize(LauncherSettings.getHebrewDateSize(this.mContext));
                this.mLunarView.setTextColor(LauncherSettings.getHebrewDateColor(this.mContext));
                updateLunarDateView();
            }
        }

        // 4. Card Background
        try {
            setBackgroundDrawable(LauncherSettings.createCardBackground(this.mContext));
        } catch (Throwable t) {
            Log.e("HomeStatusView", "Unable to apply card background", t);
        }
    }

    public CharSequence updateAmPmTextSize(int i, String str) {
        if (i <= 0) {
            str.replaceAll("a", "").trim();
        }
        String strReplaceAll = str.replaceAll(" ", "\u200a");
        int iIndexOf = strReplaceAll.indexOf(97);
        if (iIndexOf == -1) {
            return strReplaceAll;
        }
        SpannableString spannableString = new SpannableString(strReplaceAll);
        spannableString.setSpan(new StyleSpan(1), iIndexOf, iIndexOf + 1, 33);
        spannableString.setSpan(new AbsoluteSizeSpan(i), iIndexOf, iIndexOf + 1, 33);
        spannableString.setSpan(new TypefaceSpan("sans-serif-condensed"), iIndexOf, iIndexOf + 1, 33);
        return spannableString;
    }

    public void updateLunarDateView() {
        try {
            Calendar calendar = Calendar.getInstance();
            int year = calendar.get(1);
            int month = calendar.get(2) + 1;
            int day = calendar.get(5);
            String hebrewDateStr = HebrewCalendarConvertUtil.buildHebrewDate(year, month, day);
            TextView textView = this.mLunarView;
            if (textView != null) {
                textView.setText(hebrewDateStr);
            }
        } catch (Throwable e) {
            Log.e("HomeStatusView", "Error getting Hebrew date from Duoqin lib", e);
        }
    }

    private static final class Patterns {
        static String cacheKey;
        static String clockView12;
        static String clockView24;
        static String dateView;

        private Patterns() {
        }

        static void update(Context context) throws Resources.NotFoundException {
            Locale locale = Locale.getDefault();
            Resources res = context.getResources();
            String dateViewSkel = res.getString(R.string.abbrev_wday_month_day_no_year);
            String clockView12Skel = res.getString(R.string.clock_12hr_format);
            String clockView24Skel = res.getString(R.string.clock_24hr_format);
            String key = locale.toString() + dateViewSkel + clockView12Skel + clockView24Skel;
            if (!key.equals(cacheKey)) {
                dateView = dateViewSkel;
                clockView12 = DateFormat.getBestDateTimePattern(Locale.ENGLISH, clockView12Skel);
                if (!clockView12Skel.contains("a")) {
                    clockView12 = clockView12.replaceAll("a", "").trim();
                }
                clockView24 = DateFormat.getBestDateTimePattern(locale, clockView24Skel);
                cacheKey = key;
            }
        }
    }
}

package com.duoqin.calendar.hebrew.impl;

import com.duoqin.calendar.hebrew.HCalendar;
import com.duoqin.calendar.hebrew.HDate;

/* loaded from: classes.dex */
public abstract class AbstractCalendar implements HCalendar {
    abstract long absDay(HDate hDate);

    abstract HDateImpl fromAbs(long j);

    abstract long getStart();

    abstract int[] nextYearMonth(int i, int i2);

    abstract int[] prevYearMonth(int i, int i2);

    public final HDateImpl fromYMD(int year, int month, int day) {
        int m = month > 0 ? month : monthsInYear(year) + 1 + month;
        int d = day > 0 ? day : monthLength(year, m) + 1 + day;
        return new HDateImpl(this, year, m, d);
    }

    public boolean isValidDate(int year, int month, int day) {
        if (year <= 0 || month == 0 || day == 0 || Math.abs(month) > monthsInYear(year)) {
            return false;
        }
        int m = month > 0 ? month : monthsInYear(year) + 1 + month;
        return Math.abs(day) <= monthLength(year, m);
    }

    public final HDateImpl addDays(HDate date, int numDays) {
        if (numDays < 0) {
            return subtractDays(date, -numDays);
        }
        int y = date.getYear();
        int m = date.getMonth();
        int d = date.getDay();
        int inc = numDays;
        HCalendar cal = date.getCalendar();
        while (inc > cal.monthLength(y, m) - d) {
            inc -= (cal.monthLength(y, m) - d) + 1;
            d = 1;
            int[] nextYearMonth = nextYearMonth(y, m);
            y = nextYearMonth[0];
            m = nextYearMonth[1];
        }
        return fromYMD(y, m, d + inc);
    }

    public HDateImpl subtractDays(HDate date, int numDays) {
        if (numDays < 0) {
            return addDays(date, -numDays);
        }
        int y = date.getYear();
        int m = date.getMonth();
        int d = date.getDay();
        int inc = numDays;
        HCalendar cal = date.getCalendar();
        while (inc >= d) {
            inc -= d;
            int[] prevYearMonth = prevYearMonth(y, m);
            y = prevYearMonth[0];
            m = prevYearMonth[1];
            d = cal.monthLength(y, m);
        }
        return fromYMD(y, m, d - inc);
    }

    public final HDate convert(HDate otherDate) {
        if (!getType().equals(otherDate.getCalendarType())) {
            long absDay = ((HDateImpl) otherDate).absDay();
            return fromAbs(absDay);
        }
        return otherDate;
    }
}

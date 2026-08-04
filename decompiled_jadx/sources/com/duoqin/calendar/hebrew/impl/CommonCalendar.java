package com.duoqin.calendar.hebrew.impl;

import com.duoqin.calendar.hebrew.HDate;

/* loaded from: classes.dex */
public abstract class CommonCalendar extends AbstractCalendar {
    @Override // com.duoqin.calendar.hebrew.HCalendar
    public final int monthLength(int year, int month) {
        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
            return 31;
        }
        if (month == 2) {
            return isLeap(year) ? 29 : 28;
        }
        return 30;
    }

    @Override // com.duoqin.calendar.hebrew.HCalendar
    public final int monthsInYear(int year) {
        return 12;
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    final int[] nextYearMonth(int year, int month) {
        return month == 12 ? new int[]{year + 1, 1} : new int[]{year, month + 1};
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    final int[] prevYearMonth(int year, int month) {
        return month == 1 ? new int[]{year - 1, 12} : new int[]{year, month - 1};
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    long absDay(HDate date) {
        long toReturn = getStart();
        int d = date.getDay();
        long toReturn2 = toReturn + d;
        int y = date.getYear();
        for (int m = date.getMonth(); m > 1; m--) {
            toReturn2 += monthLength(y, m - 1);
        }
        int y2 = y - 1;
        int fourHundredYearCycles = (y2 - 1) / 400;
        boolean isJulian = monthLength(1900, 2) == 29;
        int daysin400 = 146000 + (isJulian ? 100 : 97);
        long toReturn3 = toReturn2 + (fourHundredYearCycles * daysin400);
        for (int y3 = y2 - (fourHundredYearCycles * 400); y3 > 0; y3--) {
            toReturn3 += isLeap(y3) ? 366 : 365;
        }
        return toReturn3;
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    HDateImpl fromAbs(long absDay) {
        long absDayFromStart = absDay - getStart();
        boolean isJulian = monthLength(1900, 2) == 29;
        int daysin400 = 146000 + (isJulian ? 100 : 97);
        int cycles = (int) ((absDayFromStart - 1) / daysin400);
        HDate d0 = new HDateImpl(this, (cycles * 400) + 1, 1, 1);
        return (HDateImpl) d0.addDays((int) ((absDayFromStart - (cycles * daysin400)) - 1));
    }
}

package com.duoqin.calendar.hebrew;

import com.duoqin.calendar.hebrew.impl.GregorianCalendar;
import com.duoqin.calendar.hebrew.impl.HebrewCalendar;

/* loaded from: classes.dex */
public interface HCalendar {
    public static final HCalendar GREGORIAN = GregorianCalendar.INSTANCE;
    public static final HJewishCalendar HEBREW = HebrewCalendar.INSTANCE;

    HCalendarType getType();

    boolean isLeap(int i);

    int monthLength(int i, int i2);

    int monthsInYear(int i);
}

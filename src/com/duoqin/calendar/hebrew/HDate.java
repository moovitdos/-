package com.duoqin.calendar.hebrew;

/* loaded from: classes.dex */
public interface HDate extends Comparable<HDate> {
    HDate addDays(int i);

    HCalendar getCalendar();

    HCalendarType getCalendarType();

    int getDay();

    int getMonth();

    int getYear();
}

package com.duoqin.calendar.hebrew.impl;

import com.duoqin.calendar.hebrew.HCalendarType;

/* loaded from: classes.dex */
public final class GregorianCalendar extends CommonCalendar {
    public static final GregorianCalendar INSTANCE = new GregorianCalendar();

    private GregorianCalendar() {
    }

    @Override // com.duoqin.calendar.hebrew.HCalendar
    public boolean isLeap(int year) {
        return year % 4 == 0 && (year % 400 == 0 || year % 100 != 0);
    }

    @Override // com.duoqin.calendar.hebrew.HCalendar
    public HCalendarType getType() {
        return HCalendarType.GREGORIAN;
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    long getStart() {
        return 1373429L;
    }
}

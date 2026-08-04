package com.duoqin.calendar.hebrew;

import com.duoqin.calendar.hebrew.impl.GregorianCalendar;
import com.duoqin.calendar.hebrew.impl.HDateImpl;
import com.duoqin.calendar.hebrew.impl.HebrewCalendar;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public class HebrewCalendarConvertUtil {
    public static String buildHebrewDate(int year, int month, int day) {
        HDateImpl gregorianDate = GregorianCalendar.INSTANCE.fromYMD(year, month, day);
        HDate hebrewDate = HebrewCalendar.INSTANCE.convert(gregorianDate);
        if (hebrewDate == null) {
            return "";
        }
        String hebrewDateStr = hebrewDate.toString();
        return hebrewDateStr;
    }

    public static HDate buildHebrewDateImpl(Calendar calendar) {
        if (calendar == null) {
            return null;
        }
        int year = calendar.get(1);
        int month = calendar.get(2) + 1;
        int day = calendar.get(5);
        HDateImpl gregorianDate = GregorianCalendar.INSTANCE.fromYMD(year, month, day);
        return HebrewCalendar.INSTANCE.convert(gregorianDate);
    }

    public static HDate buildGregorianDateImpl(int year, int month, int day) {
        HDateImpl hebrewDate = HebrewCalendar.INSTANCE.fromYMD(year, month, day);
        return GregorianCalendar.INSTANCE.convert(hebrewDate);
    }

    public static boolean isHebrewSetting() {
        String language = getLanguageEnv();
        return language != null && "iw".equalsIgnoreCase(language.trim());
    }

    private static String getLanguageEnv() {
        Locale l = Locale.getDefault();
        String language = l.getLanguage();
        return language;
    }
}

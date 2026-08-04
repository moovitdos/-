package com.duoqin.calendar.hebrew.impl;

/* loaded from: classes.dex */
public class GematriaUtil {
    private static final String[] UNITS = {"א", "ב", "ג", "ד", "ה", "ו", "ז", "ח", "ט"};
    private static final String[] TENS = {"י", "כ", "ל", "מ", "נ", "ס", "ע", "פ", "צ"};
    private static final String[] HUNDREDS = {"ק", "ר", "ש", "ת", "תק", "תר", "תש", "תת", "תתק"};

    public static String formatDay(int day) {
        return day == 16 ? "ט\"ז" : day == 15 ? "ט\"ו" : formatNumber(day, false);
    }

    private static String formatNumber(int n, boolean isYear) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (n >= 1000) {
            sb.append("א");
            n -= 1000;
            i++;
        }
        while (n >= 100) {
            sb.append(HUNDREDS[(n / 100) - 1]);
            n %= 100;
        }
        while (n >= 10) {
            sb.append(TENS[(n / 10) - 1]);
            n %= 10;
        }
        if (n > 0) {
            sb.append(UNITS[n - 1]);
        }
        if (sb.length() > 1) {
            sb.insert(sb.length() - 1, "\"");
        } else if (isYear) {
            sb.append("'");
        }
        return sb.toString();
    }

    public static String formatYear(int year) {
        return UNITS[(year / 1000) - 1] + "'" + formatNumber(year % 1000, true);
    }
}

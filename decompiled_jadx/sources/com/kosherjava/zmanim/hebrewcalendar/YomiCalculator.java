package com.kosherjava.zmanim.hebrewcalendar;

import java.util.Calendar;
import java.util.GregorianCalendar;

/* loaded from: classes.dex */
public class YomiCalculator {
    private static final Calendar dafYomiStartDay = new GregorianCalendar(1923, 8, 11);
    private static final int dafYomiJulianStartDay = getJulianDay(dafYomiStartDay);
    private static final Calendar shekalimChangeDay = new GregorianCalendar(1975, 5, 24);
    private static final int shekalimJulianChangeDay = getJulianDay(shekalimChangeDay);

    public static Daf getDafYomiBavli(JewishCalendar jewishCalendar) {
        int cycleNo;
        int dafNo;
        int blatt;
        int[] blattPerMasechta = {64, 157, 105, 121, 22, 88, 56, 40, 35, 31, 32, 29, 27, 122, 112, 91, 66, 49, 90, 82, 119, 119, 176, 113, 24, 49, 76, 14, 120, 110, 142, 61, 34, 34, 28, 22, 4, 9, 5, 73};
        Calendar calendar = jewishCalendar.getGregorianCalendar();
        int julianDay = getJulianDay(calendar);
        if (calendar.before(dafYomiStartDay)) {
            throw new IllegalArgumentException(calendar + " is prior to organized Daf Yomi Bavli cycles that started on " + dafYomiStartDay);
        }
        if (calendar.equals(shekalimChangeDay) || calendar.after(shekalimChangeDay)) {
            int cycleNo2 = shekalimJulianChangeDay;
            cycleNo = ((julianDay - cycleNo2) / 2711) + 8;
            int cycleNo3 = shekalimJulianChangeDay;
            dafNo = (julianDay - cycleNo3) % 2711;
        } else {
            cycleNo = ((julianDay - dafYomiJulianStartDay) / 2702) + 1;
            int cycleNo4 = dafYomiJulianStartDay;
            dafNo = (julianDay - cycleNo4) % 2702;
        }
        int total = 0;
        int masechta = -1;
        if (cycleNo <= 7) {
            blattPerMasechta[4] = 13;
        } else {
            blattPerMasechta[4] = 22;
        }
        for (int j = 0; j < blattPerMasechta.length; j++) {
            masechta++;
            total = (blattPerMasechta[j] + total) - 1;
            if (dafNo < total) {
                int blatt2 = (blattPerMasechta[j] + 1) - (total - dafNo);
                if (masechta == 36) {
                    blatt = blatt2 + 21;
                } else if (masechta == 37) {
                    blatt = blatt2 + 24;
                } else if (masechta != 38) {
                    blatt = blatt2;
                } else {
                    blatt = blatt2 + 32;
                }
                Daf dafYomi = new Daf(masechta, blatt);
                return dafYomi;
            }
        }
        return null;
    }

    private static int getJulianDay(Calendar calendar) {
        int year = calendar.get(1);
        int month = calendar.get(2) + 1;
        int day = calendar.get(5);
        if (month <= 2) {
            year--;
            month += 12;
        }
        int a = year / 100;
        int b = (2 - a) + (a / 4);
        double d = year + 4716;
        Double.isNaN(d);
        double dFloor = Math.floor(d * 365.25d);
        double d2 = month + 1;
        Double.isNaN(d2);
        double dFloor2 = dFloor + Math.floor(d2 * 30.6001d);
        double d3 = day;
        Double.isNaN(d3);
        double d4 = dFloor2 + d3;
        double d5 = b;
        Double.isNaN(d5);
        return (int) ((d4 + d5) - 1524.5d);
    }
}

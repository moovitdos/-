package com.kosherjava.zmanim.hebrewcalendar;

import java.util.Calendar;
import java.util.GregorianCalendar;

/* loaded from: classes.dex */
public class YerushalmiYomiCalculator {
    private static final int DAY_MILIS = 86400000;
    private static final int WHOLE_SHAS_DAFS = 1554;
    private static final Calendar DAF_YOMI_START_DAY = new GregorianCalendar(1980, 1, 2);
    private static final int[] BLATT_PER_MASECHTA = {68, 37, 34, 44, 31, 59, 26, 33, 28, 20, 13, 92, 65, 71, 22, 22, 42, 26, 26, 33, 34, 22, 19, 85, 72, 47, 40, 47, 54, 48, 44, 37, 34, 44, 9, 57, 37, 19, 13};

    public static Daf getDafYomiYerushalmi(JewishCalendar calendar) {
        Calendar nextCycle = new GregorianCalendar();
        Calendar prevCycle = new GregorianCalendar();
        Calendar requested = calendar.getGregorianCalendar();
        int masechta = 0;
        if (calendar.getYomTovIndex() == 13 || calendar.getYomTovIndex() == 7) {
            return null;
        }
        if (requested.before(DAF_YOMI_START_DAY)) {
            throw new IllegalArgumentException(requested + " is prior to organized Daf Yomi Yerushalmi cycles that started on " + DAF_YOMI_START_DAY);
        }
        nextCycle.setTime(DAF_YOMI_START_DAY.getTime());
        while (requested.after(nextCycle)) {
            prevCycle.setTime(nextCycle.getTime());
            nextCycle.add(5, WHOLE_SHAS_DAFS);
            nextCycle.add(5, getNumOfSpecialDays(prevCycle, nextCycle));
        }
        int dafNo = (int) getDiffBetweenDays(prevCycle, requested);
        int specialDays = getNumOfSpecialDays(prevCycle, requested);
        int total = dafNo - specialDays;
        for (int j = 0; j < BLATT_PER_MASECHTA.length; j++) {
            if (total < BLATT_PER_MASECHTA[j]) {
                Daf dafYomi = new Daf(masechta, total + 1);
                return dafYomi;
            }
            total -= BLATT_PER_MASECHTA[j];
            masechta++;
        }
        return null;
    }

    private static int getNumOfSpecialDays(Calendar start, Calendar end) {
        int startYear = new JewishCalendar(start).getJewishYear();
        int endYear = new JewishCalendar(end).getJewishYear();
        int specialDays = 0;
        JewishCalendar yom_kippur = new JewishCalendar(5770, 7, 10);
        JewishCalendar tisha_beav = new JewishCalendar(5770, 5, 9);
        for (int i = startYear; i <= endYear; i++) {
            yom_kippur.setJewishYear(i);
            tisha_beav.setJewishYear(i);
            if (isBetween(start, yom_kippur.getGregorianCalendar(), end)) {
                specialDays++;
            }
            if (isBetween(start, tisha_beav.getGregorianCalendar(), end)) {
                specialDays++;
            }
        }
        return specialDays;
    }

    private static boolean isBetween(Calendar start, Calendar date, Calendar end) {
        return start.before(date) && end.after(date);
    }

    private static long getDiffBetweenDays(Calendar start, Calendar end) {
        return (end.getTimeInMillis() - start.getTimeInMillis()) / 86400000;
    }
}

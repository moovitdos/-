package com.sprd.common.util;

import android.content.Context;
import android.text.format.Time;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class LunarCalendarConvertUtil {
    private static long mBaseDayTime;
    private static final long mMilliSecondsForSolarTerm;
    private static final short[] mLunarCalendarBaseInfo = {1213, 1198, 2647, 1357, 3366, 3477, 1621, 1386, 2477, 1373, 1198, 2651, 2637, 3365, 3365, 2900, 3434, 2778, 2395, 1175, 1175, 2635, 2891, 1701, 1748, 2741, 694, 2391, 1327, 1175, 1622, 3402, 3749, 1769, 1453, 694, 2158, 2350, 3213, 3221, 3402, 3466, 2901, 1386, 2651, 605, 2349, 3371, 2709, 2901, 1738, 2901, 1333, 1242, 2653, 1111, 1325, 2714, 3733, 1706, 2794, 2741, 1206, 2734, 2647, 1318, 3878, 3477, 1461, 1386, 2413, 1245, 1197, 2637, 3405, 3365, 3413, 2900, 2906, 2394, 2395, 1179, 2711, 2635, 2855, 1701, 1748, 2804, 2742, 2391, 1199, 1175, 1611, 1866, 3749, 1717, 1372, 2742, 2413, 2350, 3222, 3477, 3402, 3493, 1877, 1386, 2747, 605, 2349, 3243, 2709, 2890, 2986, 2773, 1373, 1210, 2651, 1303, 1323, 2707, 1941, 1706, 2773, 1461, 1206, 2670, 2638, 3366, 3750, 3411, 1450, 1898, 2413, 1213, 1197, 2637, 3339, 3365, 3410, 3540, 2906, 1389, 1371, 1179, 2647, 2635, 2725, 2853, 1746, 2778};
    private static final byte[] mLunarCalendarSpecialInfo = {8, 0, 0, 5, 0, 0, 20, 0, 0, 2, 0, 6, 0, 0, 21, 0, 0, 2, 0, 23, 0, 0, 5, 0, 0, 20, 0, 0, 2, 0, 6, 0, 0, 5, 0, 0, 19, 0, 23, 0, 0, 22, 0, 0, 20, 0, 0, 2, 0, 7, 0, 0, 21, 0, 0, 19, 0, 8, 0, 0, 6, 0, 0, 4, 0, 0, 3, 0, 7, 0, 0, 5, 0, 0, 4, 0, 8, 0, 0, 22, 0, 0, 4, 0, 10, 0, 0, 6, 0, 0, 5, 0, 0, 3, 0, 8, 0, 0, 5, 0, 0, 4, 0, 0, 2, 0, 7, 0, 0, 5, 0, 0, 4, 0, 9, 0, 0, 22, 0, 0, 4, 0, 0, 2, 0, 6, 0, 0, 5, 0, 0, 3, 0, 7, 0, 0, 22, 0, 0, 5, 0, 0, 2, 0, 7, 0, 0, 21, 0, 0};
    private static final long[] mSolarTermInfo = {0, 21208, 42467, 63836, 85337, 107014, 128867, 150921, 173149, 195551, 218072, 240693, 263343, 285989, 308563, 331033, 353350, 375494, 397447, 419210, 440795, 462224, 483532, 504758};
    private static final int[] mAllLunarDays = {25219, 25573, 25928, 26312, 26666, 27020, 27404, 27758, 28142, 28496, 28851, 29235, 29590, 29944, 30328, 30682, 31066, 31420, 31774, 32158, 32513, 32868, 33252, 33606, 33960, 34343, 34698, 35082, 35436, 35791, 36175, 36529, 36883, 37267, 37621, 37976, 38360, 38714, 39099, 39453, 39807, 40191, 40545, 40899, 41283, 41638, 42022, 42376, 42731, 43115, 43469, 43823, 44207, 44561, 44916, 45300, 45654, 46038, 46392, 46746, 47130, 47485, 47839, 48223, 48578, 48962, 49316, 49670, 50054, 50408, 50762};
    private static final int[] mLunarDays = {354, 355, 384, 354, 354, 384, 354, 384, 354, 355, 384, 355, 354, 384, 354, 384, 354, 354, 384, 355, 355, 384, 354, 354, 383, 355, 384, 354, 355, 384, 354, 354, 384, 354, 355, 384, 354, 385, 354, 354, 384, 354, 354, 384, 355, 384, 354, 355, 384, 354, 354, 384, 354, 355, 384, 354, 384, 354, 354, 384, 355, 354, 384, 355, 384, 354, 354, 384, 354, 354, 384, 355, 355, 384, 354, 384, 354, 354, 384, 354, 355};
    private static int mBeginYear = 1969;
    private static final Calendar mOffDateCalendar = Calendar.getInstance();

    static {
        mBaseDayTime = 0L;
        mBaseDayTime = new Date(0, 0, 31).getTime();
        mOffDateCalendar.set(1900, 0, 6, 2, 5, 0);
        mMilliSecondsForSolarTerm = mOffDateCalendar.getTime().getTime();
    }

    public static int getSolarTermDayOfMonth(int year, int n) {
        mOffDateCalendar.setTime(new Date((long) ((3.15569259747E10d * (year - 1900)) + (mSolarTermInfo[n] * 60000) + mMilliSecondsForSolarTerm)));
        return mOffDateCalendar.get(5);
    }

    public static int getLunarMonthDays(int lunarYear, int lunarMonth) {
        return isLunarBigMonth(lunarYear, lunarMonth) ? 30 : 29;
    }

    public static boolean isLunarBigMonth(int lunarYear, int lunarMonth) {
        short lunarYearBaseInfo = mLunarCalendarBaseInfo[lunarYear - 1900];
        return ((4096 >>> lunarMonth) & lunarYearBaseInfo) != 0;
    }

    public static final int getLeapMonth(int lunarYear) {
        return mLunarCalendarSpecialInfo[lunarYear - 1900] & 15;
    }

    public static final int getLeapMonthDays(int lunarYear) {
        if (getLeapMonth(lunarYear) == 0) {
            return 0;
        }
        if ((mLunarCalendarSpecialInfo[lunarYear - 1900] & 16) != 0) {
            return 30;
        }
        return 29;
    }

    public static void parseLunarCalendar(int year, int month, int day, LunarCalendar lunarCalendar) {
        int daysOfLunarMonth;
        int daysOfLunarYear;
        if (lunarCalendar != null) {
            boolean isLeapMonth = false;
            Date presentDate = new Date(year - 1900, month, day);
            int offsetDayNum = (int) Math.ceil(((presentDate.getTime() - mBaseDayTime) * 1.0d) / 8.64E7d);
            mBeginYear = year - 1;
            if (mBeginYear < 1969) {
                mBeginYear = 1969;
            }
            int offsetDayNum2 = offsetDayNum - mAllLunarDays[mBeginYear - 1969];
            int lunarYear = mBeginYear;
            while (lunarYear < 2050 && offsetDayNum2 >= (daysOfLunarYear = mLunarDays[lunarYear - 1969])) {
                offsetDayNum2 -= daysOfLunarYear;
                lunarYear++;
            }
            if (offsetDayNum2 >= 0 && lunarYear != 2050) {
                int leapLunarMonth = getLeapMonth(lunarYear);
                int lunarMonth = 1;
                while (lunarMonth <= 12) {
                    if (isLeapMonth) {
                        daysOfLunarMonth = getLeapMonthDays(lunarYear);
                    } else {
                        daysOfLunarMonth = getLunarMonthDays(lunarYear, lunarMonth);
                    }
                    if (offsetDayNum2 < daysOfLunarMonth) {
                        break;
                    }
                    offsetDayNum2 -= daysOfLunarMonth;
                    if (lunarMonth == leapLunarMonth) {
                        if (!isLeapMonth) {
                            lunarMonth--;
                            isLeapMonth = true;
                        } else {
                            isLeapMonth = false;
                        }
                    }
                    lunarMonth++;
                }
                int lunarDay = offsetDayNum2 + 1;
                lunarCalendar.mLunarYear = lunarYear;
                lunarCalendar.mLunarMonth = lunarMonth;
                lunarCalendar.mLunarDay = lunarDay;
                lunarCalendar.mIsLeapMonth = isLeapMonth;
                lunarCalendar.mSolarYear = year;
                lunarCalendar.mSolarMonth = month;
                lunarCalendar.mSolarDay = day;
            }
        }
    }

    public static void parseLunarCalendarYear(int year, int month, int day, LunarCalendar lunarCalendar) {
        if (lunarCalendar != null) {
            Date presentDate = new Date(year - 1900, month, day);
            int offsetDayNum = (int) Math.ceil(((presentDate.getTime() - mBaseDayTime) * 1.0d) / 8.64E7d);
            mBeginYear = year - 1;
            if (mBeginYear < 1969) {
                mBeginYear = 1969;
            }
            int offsetDayNum2 = offsetDayNum - mAllLunarDays[mBeginYear - 1969];
            int lunarYear = mBeginYear;
            while (lunarYear < 2050) {
                int daysOfLunarYear = mLunarDays[lunarYear - 1969];
                if (offsetDayNum2 < daysOfLunarYear) {
                    break;
                }
                offsetDayNum2 -= daysOfLunarYear;
                lunarYear++;
            }
            if (offsetDayNum2 >= 0 && lunarYear != 2050) {
                lunarCalendar.mLunarYear = lunarYear;
            }
        }
    }

    public static boolean isLunarSetting() {
        String language = getLanguageEnv();
        return language != null && (language.trim().equals("zh-CN") || language.trim().equals("zh-TW"));
    }

    private static String getLanguageEnv() {
        Locale l = Locale.getDefault();
        String language = l.getLanguage();
        String country = l.getCountry().toLowerCase();
        if ("zh".equals(language)) {
            if ("cn".equals(country)) {
                return "zh-CN";
            }
            if ("tw".equals(country)) {
                return "zh-TW";
            }
            return language;
        }
        if ("pt".equals(language)) {
            if ("br".equals(country)) {
                return "pt-BR";
            }
            if ("pt".equals(country)) {
                return "pt-PT";
            }
            return language;
        }
        return language;
    }

    public static String bulidLunarYear(Time time, Context context) {
        LunarCalendar lunarInfo = new LunarCalendar(context);
        if (time.year < 1970 || time.year > 2037) {
            return null;
        }
        parseLunarCalendarYear(time.year, time.month, time.monthDay, lunarInfo);
        String lunaryearString = lunarInfo.getLunarYear(lunarInfo.mLunarYear);
        return lunaryearString + "(" + lunarInfo.animalsYear(lunarInfo.mLunarYear) + ")";
    }

    public static String buildLunarMonthDay(Time time, Context context) {
        StringBuffer dayString = new StringBuffer();
        LunarCalendar lunarInfo = new LunarCalendar(context);
        parseLunarCalendar(time.year, time.month, time.monthDay, lunarInfo);
        String[] detailInfo = lunarInfo.getLunarCalendarInfo(false);
        if (detailInfo != null) {
            dayString.append(detailInfo[1] + detailInfo[2]);
            if (detailInfo[3].length() != 0) {
                dayString.append(", " + detailInfo[3]);
            }
            if (detailInfo[5].length() != 0) {
                dayString.append(", " + detailInfo[5]);
            }
        }
        return dayString.toString();
    }
}

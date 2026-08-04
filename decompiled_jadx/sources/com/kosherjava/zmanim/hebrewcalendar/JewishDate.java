package com.kosherjava.zmanim.hebrewcalendar;

import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes.dex */
public class JewishDate implements Comparable<JewishDate>, Cloneable {
    public static final int ADAR = 12;
    public static final int ADAR_II = 13;
    public static final int AV = 5;
    private static final int CHALAKIM_MOLAD_TOHU = 31524;
    private static final int CHALAKIM_PER_DAY = 25920;
    private static final int CHALAKIM_PER_HOUR = 1080;
    private static final int CHALAKIM_PER_MINUTE = 18;
    private static final long CHALAKIM_PER_MONTH = 765433;
    public static final int CHASERIM = 0;
    public static final int CHESHVAN = 8;
    public static final int ELUL = 6;
    public static final int IYAR = 2;
    private static final int JEWISH_EPOCH = -1373429;
    public static final int KESIDRAN = 1;
    public static final int KISLEV = 9;
    public static final int NISSAN = 1;
    public static final int SHELAIMIM = 2;
    public static final int SHEVAT = 11;
    public static final int SIVAN = 3;
    public static final int TAMMUZ = 4;
    public static final int TEVES = 10;
    public static final int TISHREI = 7;
    private int dayOfWeek;
    private int gregorianAbsDate;
    private int gregorianDayOfMonth;
    private int gregorianMonth;
    private int gregorianYear;
    private int jewishDay;
    private int jewishMonth;
    private int jewishYear;
    private int moladChalakim;
    private int moladHours;
    private int moladMinutes;

    public int getMoladHours() {
        return this.moladHours;
    }

    public void setMoladHours(int moladHours) {
        this.moladHours = moladHours;
    }

    public int getMoladMinutes() {
        return this.moladMinutes;
    }

    public void setMoladMinutes(int moladMinutes) {
        this.moladMinutes = moladMinutes;
    }

    public void setMoladChalakim(int moladChalakim) {
        this.moladChalakim = moladChalakim;
    }

    public int getMoladChalakim() {
        return this.moladChalakim;
    }

    int getLastDayOfGregorianMonth(int month) {
        return getLastDayOfGregorianMonth(month, this.gregorianYear);
    }

    boolean isGregorianLeapYear(int year) {
        return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
    }

    private static int getLastDayOfGregorianMonth(int month, int year) {
        switch (month) {
            case 2:
                if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
                    return 29;
                }
                return 28;
            case 4:
            case 6:
            case 9:
            case 11:
                return 30;
            default:
                return 31;
        }
    }

    private void absDateToDate(int absDate) {
        int year = absDate / 366;
        while (absDate >= gregorianDateToAbsDate(year + 1, 1, 1)) {
            year++;
        }
        int month = 1;
        while (absDate > gregorianDateToAbsDate(year, month, getLastDayOfGregorianMonth(month, year))) {
            month++;
        }
        int dayOfMonth = (absDate - gregorianDateToAbsDate(year, month, 1)) + 1;
        setInternalGregorianDate(year, month, dayOfMonth);
    }

    public int getAbsDate() {
        return this.gregorianAbsDate;
    }

    private static int gregorianDateToAbsDate(int year, int month, int dayOfMonth) {
        int absDate = dayOfMonth;
        for (int m = month - 1; m > 0; m--) {
            absDate += getLastDayOfGregorianMonth(m, year);
        }
        int m2 = year - 1;
        return ((((m2 * 365) + absDate) + ((year - 1) / 4)) - ((year - 1) / 100)) + ((year - 1) / 400);
    }

    private static boolean isJewishLeapYear(int year) {
        return ((year * 7) + 1) % 19 < 7;
    }

    public boolean isJewishLeapYear() {
        return isJewishLeapYear(getJewishYear());
    }

    private static int getLastMonthOfJewishYear(int year) {
        return isJewishLeapYear(year) ? 13 : 12;
    }

    public static int getJewishCalendarElapsedDays(int year) {
        long chalakimSince = getChalakimSinceMoladTohu(year, 7);
        int moladDay = (int) (chalakimSince / 25920);
        int moladParts = (int) (chalakimSince - (moladDay * 25920));
        return addDechiyos(year, moladDay, moladParts);
    }

    private static int addDechiyos(int year, int moladDay, int moladParts) {
        int roshHashanaDay = moladDay;
        if (moladParts >= 19440 || ((moladDay % 7 == 2 && moladParts >= 9924 && !isJewishLeapYear(year)) || (moladDay % 7 == 1 && moladParts >= 16789 && isJewishLeapYear(year - 1)))) {
            roshHashanaDay++;
        }
        if (roshHashanaDay % 7 == 0 || roshHashanaDay % 7 == 3 || roshHashanaDay % 7 == 5) {
            return roshHashanaDay + 1;
        }
        return roshHashanaDay;
    }

    private static long getChalakimSinceMoladTohu(int year, int month) {
        int monthOfYear = getJewishMonthOfYear(year, month);
        int monthsElapsed = (((year - 1) / 19) * 235) + (((year - 1) % 19) * 12) + (((((year - 1) % 19) * 7) + 1) / 19) + (monthOfYear - 1);
        return (monthsElapsed * CHALAKIM_PER_MONTH) + 31524;
    }

    public long getChalakimSinceMoladTohu() {
        return getChalakimSinceMoladTohu(this.jewishYear, this.jewishMonth);
    }

    private static int getJewishMonthOfYear(int year, int month) {
        boolean isLeapYear = isJewishLeapYear(year);
        return (((isLeapYear ? 6 : 5) + month) % (isLeapYear ? 13 : 12)) + 1;
    }

    private static void validateJewishDate(int year, int month, int dayOfMonth, int hours, int minutes, int chalakim) {
        if (month >= 1 && month <= getLastMonthOfJewishYear(year)) {
            if (dayOfMonth < 1 || dayOfMonth > 30) {
                throw new IllegalArgumentException("The Jewish day of month can't be < 1 or > 30.  " + dayOfMonth + " is invalid.");
            }
            if (year < 3761 || ((year == 3761 && month >= 7 && month < 10) || (year == 3761 && month == 10 && dayOfMonth < 18))) {
                throw new IllegalArgumentException("A Jewish date earlier than 18 Teves, 3761 (1/1/1 Gregorian) can't be set. " + year + ", " + month + ", " + dayOfMonth + " is invalid.");
            }
            if (hours < 0 || hours > 23) {
                throw new IllegalArgumentException("Hours < 0 or > 23 can't be set. " + hours + " is invalid.");
            }
            if (minutes < 0 || minutes > 59) {
                throw new IllegalArgumentException("Minutes < 0 or > 59 can't be set. " + minutes + " is invalid.");
            }
            if (chalakim < 0 || chalakim > 17) {
                throw new IllegalArgumentException("Chalakim/parts < 0 or > 17 can't be set. " + chalakim + " is invalid. For larger numbers such as 793 (TaShTzaG) break the chalakim into minutes (18 chalakim per minutes, so it would be 44 minutes and 1 chelek in the case of 793 (TaShTzaG)");
            }
            return;
        }
        throw new IllegalArgumentException("The Jewish month has to be between 1 and 12 (or 13 on a leap year). " + month + " is invalid for the year " + year + ".");
    }

    private static void validateGregorianDate(int year, int month, int dayOfMonth) {
        validateGregorianMonth(month);
        validateGregorianDayOfMonth(dayOfMonth);
        validateGregorianYear(year);
    }

    private static void validateGregorianMonth(int month) {
        if (month > 11 || month < 0) {
            throw new IllegalArgumentException("The Gregorian month has to be between 0 - 11. " + month + " is invalid.");
        }
    }

    private static void validateGregorianDayOfMonth(int dayOfMonth) {
        if (dayOfMonth <= 0) {
            throw new IllegalArgumentException("The day of month can't be less than 1. " + dayOfMonth + " is invalid.");
        }
    }

    private static void validateGregorianYear(int year) {
        if (year < 1) {
            throw new IllegalArgumentException("Years < 1 can't be claculated. " + year + " is invalid.");
        }
    }

    public static int getDaysInJewishYear(int year) {
        return getJewishCalendarElapsedDays(year + 1) - getJewishCalendarElapsedDays(year);
    }

    public int getDaysInJewishYear() {
        return getDaysInJewishYear(getJewishYear());
    }

    private static boolean isCheshvanLong(int year) {
        return getDaysInJewishYear(year) % 10 == 5;
    }

    public boolean isCheshvanLong() {
        return isCheshvanLong(getJewishYear());
    }

    private static boolean isKislevShort(int year) {
        return getDaysInJewishYear(year) % 10 == 3;
    }

    public boolean isKislevShort() {
        return isKislevShort(getJewishYear());
    }

    public int getCheshvanKislevKviah() {
        if (isCheshvanLong() && !isKislevShort()) {
            return 2;
        }
        if (!isCheshvanLong() && isKislevShort()) {
            return 0;
        }
        return 1;
    }

    private static int getDaysInJewishMonth(int month, int year) {
        if (month == 2 || month == 4 || month == 6) {
            return 29;
        }
        if (month != 8 || isCheshvanLong(year)) {
            if ((month != 9 || !isKislevShort(year)) && month != 10) {
                if ((month == 12 && !isJewishLeapYear(year)) || month == 13) {
                    return 29;
                }
                return 30;
            }
            return 29;
        }
        return 29;
    }

    public int getDaysInJewishMonth() {
        return getDaysInJewishMonth(getJewishMonth(), getJewishYear());
    }

    private void absDateToJewishDate() {
        this.jewishYear = (this.gregorianAbsDate - JEWISH_EPOCH) / 366;
        while (this.gregorianAbsDate >= jewishDateToAbsDate(this.jewishYear + 1, 7, 1)) {
            this.jewishYear++;
        }
        if (this.gregorianAbsDate < jewishDateToAbsDate(this.jewishYear, 1, 1)) {
            this.jewishMonth = 7;
        } else {
            this.jewishMonth = 1;
        }
        while (this.gregorianAbsDate > jewishDateToAbsDate(this.jewishYear, this.jewishMonth, getDaysInJewishMonth())) {
            this.jewishMonth++;
        }
        this.jewishDay = (this.gregorianAbsDate - jewishDateToAbsDate(this.jewishYear, this.jewishMonth, 1)) + 1;
    }

    private static int jewishDateToAbsDate(int year, int month, int dayOfMonth) {
        int elapsed = getDaysSinceStartOfJewishYear(year, month, dayOfMonth);
        return getJewishCalendarElapsedDays(year) + elapsed + JEWISH_EPOCH;
    }

    public JewishDate getMolad() {
        JewishDate moladDate = new JewishDate(getChalakimSinceMoladTohu());
        if (moladDate.getMoladHours() >= 6) {
            moladDate.forward(5, 1);
        }
        moladDate.setMoladHours((moladDate.getMoladHours() + 18) % 24);
        return moladDate;
    }

    private static int moladToAbsDate(long chalakim) {
        return ((int) (chalakim / 25920)) + JEWISH_EPOCH;
    }

    public JewishDate(long molad) {
        absDateToDate(moladToAbsDate(molad));
        int conjunctionDay = (int) (molad / 25920);
        int conjunctionParts = (int) (molad - (conjunctionDay * 25920));
        setMoladTime(conjunctionParts);
    }

    private void setMoladTime(int chalakim) {
        setMoladHours(chalakim / CHALAKIM_PER_HOUR);
        int adjustedChalakim = chalakim - (getMoladHours() * CHALAKIM_PER_HOUR);
        setMoladMinutes(adjustedChalakim / 18);
        setMoladChalakim(adjustedChalakim - (this.moladMinutes * 18));
    }

    private static int getDaysSinceStartOfJewishYear(int year, int month, int dayOfMonth) {
        int elapsedDays = dayOfMonth;
        if (month < 7) {
            for (int m = 7; m <= getLastMonthOfJewishYear(year); m++) {
                elapsedDays += getDaysInJewishMonth(m, year);
            }
            for (int m2 = 1; m2 < month; m2++) {
                elapsedDays += getDaysInJewishMonth(m2, year);
            }
        } else {
            for (int m3 = 7; m3 < month; m3++) {
                elapsedDays += getDaysInJewishMonth(m3, year);
            }
        }
        return elapsedDays;
    }

    public int getDaysSinceStartOfJewishYear() {
        return getDaysSinceStartOfJewishYear(getJewishYear(), getJewishMonth(), getJewishDayOfMonth());
    }

    public JewishDate(int jewishYear, int jewishMonth, int jewishDayOfMonth) {
        setJewishDate(jewishYear, jewishMonth, jewishDayOfMonth);
    }

    public JewishDate() {
        resetDate();
    }

    public JewishDate(Date date) {
        setDate(date);
    }

    public JewishDate(Calendar calendar) {
        setDate(calendar);
    }

    public JewishDate(LocalDate localDate) {
        setDate(localDate);
    }

    public void setDate(Calendar calendar) {
        if (calendar.get(0) == 0) {
            throw new IllegalArgumentException("Calendars with a BC era are not supported. The year " + calendar.get(1) + " BC is invalid.");
        }
        this.gregorianMonth = calendar.get(2) + 1;
        this.gregorianDayOfMonth = calendar.get(5);
        this.gregorianYear = calendar.get(1);
        this.gregorianAbsDate = gregorianDateToAbsDate(this.gregorianYear, this.gregorianMonth, this.gregorianDayOfMonth);
        absDateToJewishDate();
        this.dayOfWeek = Math.abs(this.gregorianAbsDate % 7) + 1;
    }

    public void setDate(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        setDate(cal);
    }

    public void setDate(LocalDate localDate) {
        Calendar cal = Calendar.getInstance();
        cal.set(localDate.getYear(), localDate.getMonthValue() - 1, localDate.getDayOfMonth());
        setDate(cal);
    }

    public void setGregorianDate(int year, int month, int dayOfMonth) {
        validateGregorianDate(year, month, dayOfMonth);
        setInternalGregorianDate(year, month + 1, dayOfMonth);
    }

    private void setInternalGregorianDate(int year, int month, int dayOfMonth) {
        if (dayOfMonth > getLastDayOfGregorianMonth(month, year)) {
            dayOfMonth = getLastDayOfGregorianMonth(month, year);
        }
        this.gregorianMonth = month;
        this.gregorianDayOfMonth = dayOfMonth;
        this.gregorianYear = year;
        this.gregorianAbsDate = gregorianDateToAbsDate(this.gregorianYear, this.gregorianMonth, this.gregorianDayOfMonth);
        absDateToJewishDate();
        this.dayOfWeek = Math.abs(this.gregorianAbsDate % 7) + 1;
    }

    public void setJewishDate(int year, int month, int dayOfMonth) {
        setJewishDate(year, month, dayOfMonth, 0, 0, 0);
    }

    public void setJewishDate(int year, int month, int dayOfMonth, int hours, int minutes, int chalakim) {
        validateJewishDate(year, month, dayOfMonth, hours, minutes, chalakim);
        if (dayOfMonth > getDaysInJewishMonth(month, year)) {
            dayOfMonth = getDaysInJewishMonth(month, year);
        }
        this.jewishMonth = month;
        this.jewishDay = dayOfMonth;
        this.jewishYear = year;
        this.moladHours = hours;
        this.moladMinutes = minutes;
        this.moladChalakim = chalakim;
        this.gregorianAbsDate = jewishDateToAbsDate(this.jewishYear, this.jewishMonth, this.jewishDay);
        absDateToDate(this.gregorianAbsDate);
        this.dayOfWeek = Math.abs(this.gregorianAbsDate % 7) + 1;
    }

    public Calendar getGregorianCalendar() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(getGregorianYear(), getGregorianMonth(), getGregorianDayOfMonth());
        return calendar;
    }

    public LocalDate getLocalDate() {
        return LocalDate.of(getGregorianYear(), getGregorianMonth() + 1, getGregorianDayOfMonth());
    }

    public void resetDate() {
        Calendar calendar = Calendar.getInstance();
        setDate(calendar);
    }

    public String toString() {
        return new HebrewDateFormatter().format(this);
    }

    public void forward(int field, int amount) {
        if (field != 5 && field != 2 && field != 1) {
            throw new IllegalArgumentException("Unsupported field was passed to Forward. Only Calendar.DATE, Calendar.MONTH or Calendar.YEAR are supported.");
        }
        if (amount < 1) {
            throw new IllegalArgumentException("JewishDate.forward() does not support amounts less than 1. See JewishDate.back()");
        }
        if (field == 5) {
            for (int i = 0; i < amount; i++) {
                if (this.gregorianDayOfMonth == getLastDayOfGregorianMonth(this.gregorianMonth, this.gregorianYear)) {
                    this.gregorianDayOfMonth = 1;
                    if (this.gregorianMonth == 12) {
                        this.gregorianYear++;
                        this.gregorianMonth = 1;
                    } else {
                        this.gregorianMonth++;
                    }
                } else {
                    this.gregorianDayOfMonth++;
                }
                if (this.jewishDay != getDaysInJewishMonth()) {
                    this.jewishDay++;
                } else if (this.jewishMonth == 6) {
                    this.jewishYear++;
                    this.jewishMonth++;
                    this.jewishDay = 1;
                } else if (this.jewishMonth == getLastMonthOfJewishYear(this.jewishYear)) {
                    this.jewishMonth = 1;
                    this.jewishDay = 1;
                } else {
                    this.jewishMonth++;
                    this.jewishDay = 1;
                }
                if (this.dayOfWeek == 7) {
                    this.dayOfWeek = 1;
                } else {
                    this.dayOfWeek++;
                }
                this.gregorianAbsDate++;
            }
            return;
        }
        if (field == 2) {
            forwardJewishMonth(amount);
        } else if (field == 1) {
            setJewishYear(getJewishYear() + amount);
        }
    }

    private void forwardJewishMonth(int amount) {
        if (amount < 1) {
            throw new IllegalArgumentException("the amount of months to forward has to be greater than zero.");
        }
        for (int i = 0; i < amount; i++) {
            if (getJewishMonth() == 6) {
                setJewishMonth(7);
                setJewishYear(getJewishYear() + 1);
            } else if ((isJewishLeapYear() || getJewishMonth() != 12) && (!isJewishLeapYear() || getJewishMonth() != 13)) {
                setJewishMonth(getJewishMonth() + 1);
            } else {
                setJewishMonth(1);
            }
        }
    }

    public void back() {
        if (this.gregorianDayOfMonth == 1) {
            if (this.gregorianMonth == 1) {
                this.gregorianMonth = 12;
                this.gregorianYear--;
            } else {
                this.gregorianMonth--;
            }
            this.gregorianDayOfMonth = getLastDayOfGregorianMonth(this.gregorianMonth, this.gregorianYear);
        } else {
            this.gregorianDayOfMonth--;
        }
        if (this.jewishDay == 1) {
            if (this.jewishMonth == 1) {
                this.jewishMonth = getLastMonthOfJewishYear(this.jewishYear);
            } else if (this.jewishMonth == 7) {
                this.jewishYear--;
                this.jewishMonth--;
            } else {
                this.jewishMonth--;
            }
            this.jewishDay = getDaysInJewishMonth();
        } else {
            this.jewishDay--;
        }
        if (this.dayOfWeek == 1) {
            this.dayOfWeek = 7;
        } else {
            this.dayOfWeek--;
        }
        this.gregorianAbsDate--;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof JewishDate)) {
            return false;
        }
        JewishDate jewishDate = (JewishDate) object;
        return this.gregorianAbsDate == jewishDate.getAbsDate();
    }

    @Override // java.lang.Comparable
    public int compareTo(JewishDate jewishDate) {
        return Integer.compare(this.gregorianAbsDate, jewishDate.getAbsDate());
    }

    public int getGregorianMonth() {
        return this.gregorianMonth - 1;
    }

    public int getGregorianDayOfMonth() {
        return this.gregorianDayOfMonth;
    }

    public int getGregorianYear() {
        return this.gregorianYear;
    }

    public int getJewishMonth() {
        return this.jewishMonth;
    }

    public int getJewishDayOfMonth() {
        return this.jewishDay;
    }

    public int getJewishYear() {
        return this.jewishYear;
    }

    public int getDayOfWeek() {
        return this.dayOfWeek;
    }

    public void setGregorianMonth(int month) {
        validateGregorianMonth(month);
        setInternalGregorianDate(this.gregorianYear, month + 1, this.gregorianDayOfMonth);
    }

    public void setGregorianYear(int year) {
        validateGregorianYear(year);
        setInternalGregorianDate(year, this.gregorianMonth, this.gregorianDayOfMonth);
    }

    public void setGregorianDayOfMonth(int dayOfMonth) {
        validateGregorianDayOfMonth(dayOfMonth);
        setInternalGregorianDate(this.gregorianYear, this.gregorianMonth, dayOfMonth);
    }

    public void setJewishMonth(int month) {
        setJewishDate(this.jewishYear, month, this.jewishDay);
    }

    public void setJewishYear(int year) {
        setJewishDate(year, this.jewishMonth, this.jewishDay);
    }

    public void setJewishDayOfMonth(int dayOfMonth) {
        setJewishDate(this.jewishYear, this.jewishMonth, dayOfMonth);
    }

    public Object clone() {
        JewishDate clone = null;
        try {
            clone = (JewishDate) super.clone();
        } catch (CloneNotSupportedException e) {
        }
        clone.setInternalGregorianDate(this.gregorianYear, this.gregorianMonth, this.gregorianDayOfMonth);
        return clone;
    }

    public int hashCode() {
        int result = (17 * 37) + getClass().hashCode();
        return result + (result * 37) + this.gregorianAbsDate;
    }
}

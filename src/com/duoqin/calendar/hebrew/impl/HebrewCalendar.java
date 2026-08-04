package com.duoqin.calendar.hebrew.impl;

import com.duoqin.calendar.hebrew.HCalendarType;
import com.duoqin.calendar.hebrew.HDate;
import com.duoqin.calendar.hebrew.HJewishCalendar;

/* loaded from: classes.dex */
public class HebrewCalendar extends AbstractCalendar implements HJewishCalendar {
    public static final HebrewCalendar INSTANCE = new HebrewCalendar();
    private static final boolean[] LEAP_CYCLE = {true, false, false, true, false, false, true, false, true, false, false, true, false, false, true, false, false, true, false};
    private static final HTime FIRST_MOLAD = new HTime(2, 5, 204);
    private static final HTime ONE_MONTH = new HTime(29, 12, 793);

    private HebrewCalendar() {
    }

    @Override // com.duoqin.calendar.hebrew.HCalendar
    public boolean isLeap(int year) {
        return LEAP_CYCLE[year % 19];
    }

    /* renamed from: com.duoqin.calendar.hebrew.impl.HebrewCalendar$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth = new int[HJewishCalendar.JewishMonth.values().length];

        static {
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.NISAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.SIVAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.AV.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.TISHRI.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.SHEVAT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.TEVET.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.IYAR.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.TAMUZ.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.ELUL.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.ADAR_2.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.ADAR.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.HESHVAN.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.KISLEV.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    @Override // com.duoqin.calendar.hebrew.HCalendar
    public int monthLength(int year, int month) {
        switch (AnonymousClass1.$SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.get(month).ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return 30;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                return 29;
            case 11:
                return !isLeap(year) ? 29 : 30;
            case 12:
                return getYearType(year) != HJewishCalendar.YearType.FULL ? 29 : 30;
            case 13:
                return getYearType(year) != HJewishCalendar.YearType.SHORT ? 30 : 29;
            default:
                throw new IllegalStateException("Bad month " + month);
        }
    }

    HTime molad(int year, int month) {
        int numMonthsPastThisYear;
        int cycles = (year - 1) / 19;
        int preMonths = cycles * 235;
        for (int i = 1; i <= (year - 1) % 19; i++) {
            preMonths += isLeap(i) ? 13 : 12;
        }
        if (month > 6) {
            numMonthsPastThisYear = month - 7;
        } else {
            numMonthsPastThisYear = (month - 1) + (isLeap(year) ? 7 : 6);
        }
        return FIRST_MOLAD.add(ONE_MONTH.times(preMonths + numMonthsPastThisYear));
    }

    long absDayRoshHashana(int year) {
        HTime moladTime = molad(year, 7);
        long candidate = moladTime.getDay();
        int dw = ((int) ((candidate - 1) % 7)) + 1;
        if (moladTime.getHour() >= 18 || ((!isLeap(year) && dw == 3 && (moladTime.getHour() > 9 || (moladTime.getHour() == 9 && moladTime.getPart() >= 204))) || (isLeap(year - 1) && dw == 2 && (moladTime.getHour() > 15 || (moladTime.getHour() == 15 && moladTime.getPart() >= 589))))) {
            dw = dw == 7 ? 1 : dw + 1;
            candidate++;
        }
        if (dw == 1 || dw == 4 || dw == 6) {
            return candidate + 1;
        }
        return candidate;
    }

    @Override // com.duoqin.calendar.hebrew.HCalendar
    public HCalendarType getType() {
        return HCalendarType.HEBREW;
    }

    @Override // com.duoqin.calendar.hebrew.HCalendar
    public final int monthsInYear(int year) {
        return isLeap(year) ? 13 : 12;
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    long absDay(HDate date) {
        int year = date.getYear();
        int month = date.getMonth();
        long toReturn = absDayRoshHashana(year) - 1;
        int m = 7;
        while (m != month) {
            toReturn += monthLength(date.getYear(), m);
            int[] nextYM = nextYearMonth(year, m);
            m = nextYM[1];
            if (nextYM[0] != year) {
                throw new IllegalStateException("ran through whol year without finding month " + month);
            }
        }
        return toReturn + date.getDay();
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    final int[] nextYearMonth(int year, int month) {
        if (month == 6) {
            return new int[]{year + 1, 7};
        }
        if (month < monthsInYear(year)) {
            return new int[]{year, month + 1};
        }
        return new int[]{year, 1};
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    final int[] prevYearMonth(int year, int month) {
        if (month == 7) {
            return new int[]{year - 1, 6};
        }
        if (month > 1) {
            return new int[]{year, month - 1};
        }
        return new int[]{year, monthsInYear(year)};
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    final long getStart() {
        return 0L;
    }

    @Override // com.duoqin.calendar.hebrew.impl.AbstractCalendar
    public HDateImpl fromAbs(long absDayFromBeginning) {
        HTime cycle19 = ONE_MONTH.times(235);
        int cyclesToSkip = (int) (absDayFromBeginning / (cycle19.getDay() + 1));
        HDateImpl startDay = new HDateImpl(this, (cyclesToSkip * 19) + 1, 7, 1);
        return startDay.addDays((int) (absDayFromBeginning - absDay(startDay)));
    }

    public HJewishCalendar.YearType getYearType(int year) {
        long rosh0 = absDay(new HDateImpl(this, year, 7, 1));
        long rosh1 = absDay(new HDateImpl(this, year + 1, 7, 1));
        int yearLength = (int) (rosh1 - rosh0);
        int excessLength = isLeap(year) ? yearLength - 383 : yearLength - 353;
        switch (excessLength) {
            case 0:
                return HJewishCalendar.YearType.SHORT;
            case 1:
                return HJewishCalendar.YearType.NORMAL;
            case 2:
                return HJewishCalendar.YearType.FULL;
            default:
                throw new IllegalStateException("Invalid year length " + yearLength + " for year=" + year);
        }
    }
}

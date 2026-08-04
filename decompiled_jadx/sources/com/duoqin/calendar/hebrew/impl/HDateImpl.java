package com.duoqin.calendar.hebrew.impl;

import com.duoqin.calendar.hebrew.HCalendar;
import com.duoqin.calendar.hebrew.HCalendarType;
import com.duoqin.calendar.hebrew.HDate;
import com.duoqin.calendar.hebrew.HJewishCalendar;

/* loaded from: classes.dex */
public class HDateImpl implements HDate {
    private AbstractCalendar _calendar;
    private final int _day;
    private final int _month;
    private final int _year;

    public HDateImpl(AbstractCalendar calendar, int year, int month, int day) {
        this._calendar = calendar;
        this._year = year;
        this._month = month;
        this._day = day;
        if (!this._calendar.isValidDate(year, month, day)) {
            throw new IllegalStateException("Invalid date created for calendar " + this._calendar.getType() + ": " + this);
        }
    }

    @Override // com.duoqin.calendar.hebrew.HDate
    public final int getYear() {
        return this._year;
    }

    @Override // com.duoqin.calendar.hebrew.HDate
    public final int getMonth() {
        return this._month;
    }

    @Override // com.duoqin.calendar.hebrew.HDate
    public final int getDay() {
        return this._day;
    }

    @Override // com.duoqin.calendar.hebrew.HDate
    public final HCalendar getCalendar() {
        return this._calendar;
    }

    @Override // com.duoqin.calendar.hebrew.HDate
    public final HCalendarType getCalendarType() {
        return this._calendar.getType();
    }

    public long absDay() {
        return this._calendar.absDay(this);
    }

    @Override // com.duoqin.calendar.hebrew.HDate
    public final HDateImpl addDays(int numDays) {
        return this._calendar.addDays(this, numDays);
    }

    public String toString() {
        if (HCalendarType.HEBREW.equals(getCalendarType())) {
            String month = String.valueOf(getMonth());
            switch (AnonymousClass1.$SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.get(getMonth()).ordinal()]) {
                case 1:
                    month = "ניסן";
                    break;
                case 2:
                    month = "אייר";
                    break;
                case 3:
                    month = "סיון";
                    break;
                case 4:
                    month = "תמוז";
                    break;
                case 5:
                    month = "אב";
                    break;
                case 6:
                    month = "אלול";
                    break;
                case 7:
                    month = "תשרי";
                    break;
                case 8:
                    month = "חשון";
                    break;
                case 9:
                    month = "כסלו";
                    break;
                case 10:
                    month = "טבת";
                    break;
                case 11:
                    month = "שבט";
                    break;
                case 12:
                    month = "אדר א'";
                    break;
                case 13:
                    month = "אדר ב'";
                    break;
            }
            return GematriaUtil.formatDay(getDay()) + " " + month + " " + GematriaUtil.formatYear(getYear());
        }
        return String.format("%d %d %d", Integer.valueOf(getDay()), Integer.valueOf(getMonth()), Integer.valueOf(getYear()));
    }

    /* renamed from: com.duoqin.calendar.hebrew.impl.HDateImpl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth = new int[HJewishCalendar.JewishMonth.values().length];

        static {
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.NISAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.IYAR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.SIVAN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.TAMUZ.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.AV.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.ELUL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.TISHRI.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.HESHVAN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.KISLEV.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.TEVET.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.SHEVAT.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.ADAR.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$duoqin$calendar$hebrew$HJewishCalendar$JewishMonth[HJewishCalendar.JewishMonth.ADAR_2.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    public boolean equals(Object o) {
        if (o == null || !(o instanceof HDate)) {
            return false;
        }
        HDate other = (HDate) o;
        return other.getCalendarType().equals(getCalendarType()) && other.getYear() == getYear() && other.getMonth() == getMonth() && other.getDay() == getDay();
    }

    @Override // java.lang.Comparable
    public int compareTo(HDate o) {
        if (!o.getCalendarType().equals(getCalendarType())) {
            return Long.compare(absDay(), ((HDateImpl) o).absDay());
        }
        HDateImpl other = (HDateImpl) o;
        if (other._year != this._year) {
            return other._year - this._year;
        }
        if (other._month != this._month) {
            return Integer.compare(chronologicalMonthOrder(this._month), chronologicalMonthOrder(other._month));
        }
        return Integer.compare(this._day, other._day);
    }

    private int chronologicalMonthOrder(int m) {
        boolean isHebrew = this._calendar.getType().equals(HCalendarType.HEBREW);
        return (!isHebrew || m >= 7) ? m : m + 13;
    }
}

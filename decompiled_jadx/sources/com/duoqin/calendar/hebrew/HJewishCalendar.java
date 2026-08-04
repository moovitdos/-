package com.duoqin.calendar.hebrew;

/* loaded from: classes.dex */
public interface HJewishCalendar extends HCalendar {

    public enum YearType {
        SHORT,
        NORMAL,
        FULL
    }

    public enum JewishMonth {
        NISAN(1),
        IYAR(2),
        SIVAN(3),
        TAMUZ(4),
        AV(5),
        ELUL(6),
        TISHRI(7),
        HESHVAN(8),
        KISLEV(9),
        TEVET(10),
        SHEVAT(11),
        ADAR(12),
        ADAR_2(13);

        private static final JewishMonth[] _cache = new JewishMonth[13];
        private final int _num;

        static {
            JewishMonth[] arr$ = values();
            for (JewishMonth jm : arr$) {
                _cache[jm.getOrdinalNumber() - 1] = jm;
            }
        }

        JewishMonth(int n) {
            this._num = n;
        }

        public int getOrdinalNumber() {
            return this._num;
        }

        public static JewishMonth get(int num) {
            if (num < 1 || num > 13) {
                throw new IllegalArgumentException("Month ordinal can only be between 1 and 13: " + num);
            }
            return _cache[num - 1];
        }
    }
}

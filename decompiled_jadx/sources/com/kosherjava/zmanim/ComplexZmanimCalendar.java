package com.kosherjava.zmanim;

import com.kosherjava.zmanim.hebrewcalendar.JewishCalendar;
import com.kosherjava.zmanim.util.GeoLocation;
import com.kosherjava.zmanim.util.ZmanimFormatter;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes.dex */
public class ComplexZmanimCalendar extends ZmanimCalendar {
    protected static final double ZENITH_10_POINT_2 = 100.2d;
    protected static final double ZENITH_11_DEGREES = 101.0d;
    protected static final double ZENITH_11_POINT_5 = 101.5d;
    protected static final double ZENITH_13_POINT_24 = 103.24d;
    protected static final double ZENITH_16_POINT_9 = 106.9d;
    protected static final double ZENITH_19_DEGREES = 109.0d;
    protected static final double ZENITH_19_POINT_8 = 109.8d;
    protected static final double ZENITH_1_POINT_583 = 91.583d;
    protected static final double ZENITH_26_DEGREES = 116.0d;
    protected static final double ZENITH_3_POINT_65 = 93.65d;
    protected static final double ZENITH_3_POINT_676 = 93.676d;
    protected static final double ZENITH_3_POINT_7 = 93.7d;
    protected static final double ZENITH_3_POINT_8 = 93.8d;
    protected static final double ZENITH_4_POINT_37 = 94.37d;
    protected static final double ZENITH_4_POINT_61 = 94.61d;
    protected static final double ZENITH_4_POINT_8 = 94.8d;
    protected static final double ZENITH_5_POINT_88 = 95.88d;
    protected static final double ZENITH_5_POINT_95 = 95.95d;
    protected static final double ZENITH_6_DEGREES = 96.0d;
    protected static final double ZENITH_6_POINT_45 = 96.45d;
    protected static final double ZENITH_7_POINT_083 = 97.08333333333333d;
    protected static final double ZENITH_7_POINT_65 = 97.65d;
    protected static final double ZENITH_7_POINT_67 = 97.67d;
    protected static final double ZENITH_9_POINT_3 = 99.3d;
    protected static final double ZENITH_9_POINT_5 = 99.5d;
    protected static final double ZENITH_9_POINT_75 = 99.75d;
    protected static final double ZENITH_MINUS_2_POINT_1 = 87.9d;
    protected static final double ZENITH_MINUS_2_POINT_8 = 87.2d;
    protected static final double ZENITH_MINUS_3_POINT_05 = 86.95d;
    private double ateretTorahSunsetOffset;

    public ComplexZmanimCalendar(GeoLocation location) {
        super(location);
        this.ateretTorahSunsetOffset = 40.0d;
    }

    public ComplexZmanimCalendar() {
        this.ateretTorahSunsetOffset = 40.0d;
    }

    public long getShaahZmanis19Point8Degrees() {
        return getTemporalHour(getAlos19Point8Degrees(), getTzais19Point8Degrees());
    }

    public long getShaahZmanis18Degrees() {
        return getTemporalHour(getAlos18Degrees(), getTzais18Degrees());
    }

    public long getShaahZmanis26Degrees() {
        return getTemporalHour(getAlos26Degrees(), getTzais26Degrees());
    }

    public long getShaahZmanis16Point1Degrees() {
        return getTemporalHour(getAlos16Point1Degrees(), getTzais16Point1Degrees());
    }

    public long getShaahZmanis60Minutes() {
        return getTemporalHour(getAlos60(), getTzais60());
    }

    public long getShaahZmanis72Minutes() {
        return getShaahZmanisMGA();
    }

    public long getShaahZmanis72MinutesZmanis() {
        return getTemporalHour(getAlos72Zmanis(), getTzais72Zmanis());
    }

    public long getShaahZmanis90Minutes() {
        return getTemporalHour(getAlos90(), getTzais90());
    }

    public long getShaahZmanis90MinutesZmanis() {
        return getTemporalHour(getAlos90Zmanis(), getTzais90Zmanis());
    }

    public long getShaahZmanis96MinutesZmanis() {
        return getTemporalHour(getAlos96Zmanis(), getTzais96Zmanis());
    }

    public long getShaahZmanisAteretTorah() {
        return getTemporalHour(getAlos72Zmanis(), getTzaisAteretTorah());
    }

    public long getShaahZmanisAlos16Point1ToTzais3Point8() {
        return getTemporalHour(getAlos16Point1Degrees(), getTzaisGeonim3Point8Degrees());
    }

    public long getShaahZmanisAlos16Point1ToTzais3Point7() {
        return getTemporalHour(getAlos16Point1Degrees(), getTzaisGeonim3Point7Degrees());
    }

    public long getShaahZmanis96Minutes() {
        return getTemporalHour(getAlos96(), getTzais96());
    }

    public long getShaahZmanis120Minutes() {
        return getTemporalHour(getAlos120(), getTzais120());
    }

    public long getShaahZmanis120MinutesZmanis() {
        return getTemporalHour(getAlos120Zmanis(), getTzais120Zmanis());
    }

    @Deprecated
    public Date getPlagHamincha120MinutesZmanis() {
        return getPlagHamincha(getAlos120Zmanis(), getTzais120Zmanis());
    }

    @Deprecated
    public Date getPlagHamincha120Minutes() {
        return getPlagHamincha(getAlos120(), getTzais120());
    }

    public Date getAlos60() {
        return getTimeOffset(getSunrise(), -3600000L);
    }

    public Date getAlos72Zmanis() {
        return getZmanisBasedOffset(-1.2d);
    }

    public Date getAlos96() {
        return getTimeOffset(getElevationAdjustedSunrise(), -5760000L);
    }

    public Date getAlos90Zmanis() {
        return getZmanisBasedOffset(-1.5d);
    }

    public Date getAlos96Zmanis() {
        return getZmanisBasedOffset(-1.6d);
    }

    public Date getAlos90() {
        return getTimeOffset(getElevationAdjustedSunrise(), -5400000L);
    }

    @Deprecated
    public Date getAlos120() {
        return getTimeOffset(getElevationAdjustedSunrise(), -7200000L);
    }

    @Deprecated
    public Date getAlos120Zmanis() {
        return getZmanisBasedOffset(-2.0d);
    }

    @Deprecated
    public Date getAlos26Degrees() {
        return getSunriseOffsetByDegrees(ZENITH_26_DEGREES);
    }

    public Date getAlos18Degrees() {
        return getSunriseOffsetByDegrees(108.0d);
    }

    public Date getAlos19Degrees() {
        return getSunriseOffsetByDegrees(ZENITH_19_DEGREES);
    }

    public Date getAlos19Point8Degrees() {
        return getSunriseOffsetByDegrees(ZENITH_19_POINT_8);
    }

    public Date getAlos16Point1Degrees() {
        return getSunriseOffsetByDegrees(106.1d);
    }

    public Date getMisheyakir11Point5Degrees() {
        return getSunriseOffsetByDegrees(ZENITH_11_POINT_5);
    }

    public Date getMisheyakir11Degrees() {
        return getSunriseOffsetByDegrees(ZENITH_11_DEGREES);
    }

    public Date getMisheyakir10Point2Degrees() {
        return getSunriseOffsetByDegrees(ZENITH_10_POINT_2);
    }

    public Date getMisheyakir7Point65Degrees() {
        return getSunriseOffsetByDegrees(ZENITH_7_POINT_65);
    }

    public Date getMisheyakir9Point5Degrees() {
        return getSunriseOffsetByDegrees(ZENITH_9_POINT_5);
    }

    public Date getSofZmanShmaMGA19Point8Degrees() {
        return getSofZmanShma(getAlos19Point8Degrees(), getTzais19Point8Degrees());
    }

    public Date getSofZmanShmaMGA16Point1Degrees() {
        return getSofZmanShma(getAlos16Point1Degrees(), getTzais16Point1Degrees());
    }

    public Date getSofZmanShmaMGA18Degrees() {
        return getSofZmanShma(getAlos18Degrees(), getTzais18Degrees());
    }

    public Date getSofZmanShmaMGA72Minutes() {
        return getSofZmanShmaMGA();
    }

    public Date getSofZmanShmaMGA72MinutesZmanis() {
        return getSofZmanShma(getAlos72Zmanis(), getTzais72Zmanis());
    }

    public Date getSofZmanShmaMGA90Minutes() {
        return getSofZmanShma(getAlos90(), getTzais90());
    }

    public Date getSofZmanShmaMGA90MinutesZmanis() {
        return getSofZmanShma(getAlos90Zmanis(), getTzais90Zmanis());
    }

    public Date getSofZmanShmaMGA96Minutes() {
        return getSofZmanShma(getAlos96(), getTzais96());
    }

    public Date getSofZmanShmaMGA96MinutesZmanis() {
        return getSofZmanShma(getAlos96Zmanis(), getTzais96Zmanis());
    }

    public Date getSofZmanShma3HoursBeforeChatzos() {
        return getTimeOffset(getChatzos(), -10800000L);
    }

    public Date getSofZmanShmaMGA120Minutes() {
        return getSofZmanShma(getAlos120(), getTzais120());
    }

    public Date getSofZmanShmaAlos16Point1ToSunset() {
        return getSofZmanShma(getAlos16Point1Degrees(), getElevationAdjustedSunset());
    }

    public Date getSofZmanShmaAlos16Point1ToTzaisGeonim7Point083Degrees() {
        return getSofZmanShma(getAlos16Point1Degrees(), getTzaisGeonim7Point083Degrees());
    }

    @Deprecated
    public Date getSofZmanShmaKolEliyahu() {
        Date chatzos = getFixedLocalChatzos();
        if (chatzos == null || getSunrise() == null) {
            return null;
        }
        long diff = (chatzos.getTime() - getElevationAdjustedSunrise().getTime()) / 2;
        return getTimeOffset(chatzos, -diff);
    }

    public Date getSofZmanTfilaMGA19Point8Degrees() {
        return getSofZmanTfila(getAlos19Point8Degrees(), getTzais19Point8Degrees());
    }

    public Date getSofZmanTfilaMGA16Point1Degrees() {
        return getSofZmanTfila(getAlos16Point1Degrees(), getTzais16Point1Degrees());
    }

    public Date getSofZmanTfilaMGA18Degrees() {
        return getSofZmanTfila(getAlos18Degrees(), getTzais18Degrees());
    }

    public Date getSofZmanTfilaMGA72Minutes() {
        return getSofZmanTfilaMGA();
    }

    public Date getSofZmanTfilaMGA72MinutesZmanis() {
        return getSofZmanTfila(getAlos72Zmanis(), getTzais72Zmanis());
    }

    public Date getSofZmanTfilaMGA90Minutes() {
        return getSofZmanTfila(getAlos90(), getTzais90());
    }

    public Date getSofZmanTfilaMGA90MinutesZmanis() {
        return getSofZmanTfila(getAlos90Zmanis(), getTzais90Zmanis());
    }

    public Date getSofZmanTfilaMGA96Minutes() {
        return getSofZmanTfila(getAlos96(), getTzais96());
    }

    public Date getSofZmanTfilaMGA96MinutesZmanis() {
        return getSofZmanTfila(getAlos96Zmanis(), getTzais96Zmanis());
    }

    public Date getSofZmanTfilaMGA120Minutes() {
        return getSofZmanTfila(getAlos120(), getTzais120());
    }

    public Date getSofZmanTfila2HoursBeforeChatzos() {
        return getTimeOffset(getChatzos(), -7200000L);
    }

    public Date getMinchaGedola30Minutes() {
        return getTimeOffset(getChatzos(), 1800000L);
    }

    public Date getMinchaGedola72Minutes() {
        return getMinchaGedola(getAlos72(), getTzais72());
    }

    public Date getMinchaGedola16Point1Degrees() {
        return getMinchaGedola(getAlos16Point1Degrees(), getTzais16Point1Degrees());
    }

    public Date getMinchaGedolaAhavatShalom() {
        if (getMinchaGedola30Minutes() == null || getMinchaGedola() == null) {
            return null;
        }
        return getMinchaGedola30Minutes().compareTo(getTimeOffset(getChatzos(), getShaahZmanisAlos16Point1ToTzais3Point7() / 2)) > 0 ? getMinchaGedola30Minutes() : getTimeOffset(getChatzos(), getShaahZmanisAlos16Point1ToTzais3Point7() / 2);
    }

    public Date getMinchaGedolaGreaterThan30() {
        if (getMinchaGedola30Minutes() == null || getMinchaGedola() == null) {
            return null;
        }
        return getMinchaGedola30Minutes().compareTo(getMinchaGedola()) > 0 ? getMinchaGedola30Minutes() : getMinchaGedola();
    }

    public Date getMinchaKetana16Point1Degrees() {
        return getMinchaKetana(getAlos16Point1Degrees(), getTzais16Point1Degrees());
    }

    public Date getMinchaKetanaAhavatShalom() {
        Date tzaisGeonim3Point8Degrees = getTzaisGeonim3Point8Degrees();
        double d = -getShaahZmanisAlos16Point1ToTzais3Point8();
        Double.isNaN(d);
        return getTimeOffset(tzaisGeonim3Point8Degrees, d * 2.5d);
    }

    public Date getMinchaKetana72Minutes() {
        return getMinchaKetana(getAlos72(), getTzais72());
    }

    public Date getPlagHamincha60Minutes() {
        return getPlagHamincha(getAlos60(), getTzais60());
    }

    @Deprecated
    public Date getPlagHamincha72Minutes() {
        return getPlagHamincha(getAlos72(), getTzais72());
    }

    @Deprecated
    public Date getPlagHamincha90Minutes() {
        return getPlagHamincha(getAlos90(), getTzais90());
    }

    @Deprecated
    public Date getPlagHamincha96Minutes() {
        return getPlagHamincha(getAlos96(), getTzais96());
    }

    @Deprecated
    public Date getPlagHamincha96MinutesZmanis() {
        return getPlagHamincha(getAlos96Zmanis(), getTzais96Zmanis());
    }

    @Deprecated
    public Date getPlagHamincha90MinutesZmanis() {
        return getPlagHamincha(getAlos90Zmanis(), getTzais90Zmanis());
    }

    @Deprecated
    public Date getPlagHamincha72MinutesZmanis() {
        return getPlagHamincha(getAlos72Zmanis(), getTzais72Zmanis());
    }

    @Deprecated
    public Date getPlagHamincha16Point1Degrees() {
        return getPlagHamincha(getAlos16Point1Degrees(), getTzais16Point1Degrees());
    }

    @Deprecated
    public Date getPlagHamincha19Point8Degrees() {
        return getPlagHamincha(getAlos19Point8Degrees(), getTzais19Point8Degrees());
    }

    @Deprecated
    public Date getPlagHamincha26Degrees() {
        return getPlagHamincha(getAlos26Degrees(), getTzais26Degrees());
    }

    @Deprecated
    public Date getPlagHamincha18Degrees() {
        return getPlagHamincha(getAlos18Degrees(), getTzais18Degrees());
    }

    @Deprecated
    public Date getPlagAlosToSunset() {
        return getPlagHamincha(getAlos16Point1Degrees(), getElevationAdjustedSunset());
    }

    public Date getPlagAlos16Point1ToTzaisGeonim7Point083Degrees() {
        return getPlagHamincha(getAlos16Point1Degrees(), getTzaisGeonim7Point083Degrees());
    }

    public Date getPlagAhavatShalom() {
        Date tzaisGeonim3Point8Degrees = getTzaisGeonim3Point8Degrees();
        double d = -getShaahZmanisAlos16Point1ToTzais3Point8();
        Double.isNaN(d);
        return getTimeOffset(tzaisGeonim3Point8Degrees, d * 1.25d);
    }

    public Date getBainHashmashosRT13Point24Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_13_POINT_24);
    }

    @Deprecated
    public Date getBainHasmashosRT13Point24Degrees() {
        return getBainHashmashosRT13Point24Degrees();
    }

    public Date getBainHashmashosRT58Point5Minutes() {
        return getTimeOffset(getElevationAdjustedSunset(), 3510000.0d);
    }

    @Deprecated
    public Date getBainHasmashosRT58Point5Minutes() {
        return getBainHashmashosRT58Point5Minutes();
    }

    public Date getBainHashmashosRT13Point5MinutesBefore7Point083Degrees() {
        return getTimeOffset(getSunsetOffsetByDegrees(ZENITH_7_POINT_083), -810000.0d);
    }

    @Deprecated
    public Date getBainHasmashosRT13Point5MinutesBefore7Point083Degrees() {
        return getBainHashmashosRT13Point5MinutesBefore7Point083Degrees();
    }

    public Date getBainHashmashosRT2Stars() {
        Date alos19Point8 = getAlos19Point8Degrees();
        Date sunrise = getElevationAdjustedSunrise();
        if (alos19Point8 == null || sunrise == null) {
            return null;
        }
        Date elevationAdjustedSunset = getElevationAdjustedSunset();
        double time = sunrise.getTime() - alos19Point8.getTime();
        Double.isNaN(time);
        return getTimeOffset(elevationAdjustedSunset, time * 0.2777777777777778d);
    }

    @Deprecated
    public Date getBainHasmashosRT2Stars() {
        return getBainHashmashosRT2Stars();
    }

    public Date getBainHashmashosYereim18Minutes() {
        return getTimeOffset(getElevationAdjustedSunset(), -1080000L);
    }

    @Deprecated
    public Date getBainHasmashosYereim18Minutes() {
        return getBainHashmashosYereim18Minutes();
    }

    public Date getBainHashmashosYereim3Point05Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_MINUS_3_POINT_05);
    }

    @Deprecated
    public Date getBainHasmashosYereim3Point05Degrees() {
        return getBainHashmashosYereim3Point05Degrees();
    }

    public Date getBainHashmashosYereim16Point875Minutes() {
        return getTimeOffset(getElevationAdjustedSunset(), -1012500.0d);
    }

    @Deprecated
    public Date getBainHasmashosYereim16Point875Minutes() {
        return getBainHashmashosYereim16Point875Minutes();
    }

    public Date getBainHashmashosYereim2Point8Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_MINUS_2_POINT_8);
    }

    @Deprecated
    public Date getBainHasmashosYereim2Point8Degrees() {
        return getBainHashmashosYereim2Point8Degrees();
    }

    public Date getBainHashmashosYereim13Point5Minutes() {
        return getTimeOffset(getElevationAdjustedSunset(), -810000.0d);
    }

    @Deprecated
    public Date getBainHasmashosYereim13Point5Minutes() {
        return getBainHashmashosYereim13Point5Minutes();
    }

    public Date getBainHashmashosYereim2Point1Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_MINUS_2_POINT_1);
    }

    @Deprecated
    public Date getBainHasmashosYereim2Point1Degrees() {
        return getBainHashmashosYereim2Point1Degrees();
    }

    public Date getTzaisGeonim3Point7Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_3_POINT_7);
    }

    public Date getTzaisGeonim3Point8Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_3_POINT_8);
    }

    public Date getTzaisGeonim5Point95Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_5_POINT_95);
    }

    public Date getTzaisGeonim3Point65Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_3_POINT_65);
    }

    public Date getTzaisGeonim3Point676Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_3_POINT_676);
    }

    public Date getTzaisGeonim4Point61Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_4_POINT_61);
    }

    public Date getTzaisGeonim4Point37Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_4_POINT_37);
    }

    public Date getTzaisGeonim5Point88Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_5_POINT_88);
    }

    public Date getTzaisGeonim4Point8Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_4_POINT_8);
    }

    public Date getTzaisGeonim6Point45Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_6_POINT_45);
    }

    public Date getTzaisGeonim7Point083Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_7_POINT_083);
    }

    public Date getTzaisGeonim7Point67Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_7_POINT_67);
    }

    public Date getTzaisGeonim8Point5Degrees() {
        return getSunsetOffsetByDegrees(98.5d);
    }

    public Date getTzaisGeonim9Point3Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_9_POINT_3);
    }

    public Date getTzaisGeonim9Point75Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_9_POINT_75);
    }

    public Date getTzais60() {
        return getTimeOffset(getElevationAdjustedSunset(), ZmanimFormatter.HOUR_MILLIS);
    }

    public Date getTzaisAteretTorah() {
        return getTimeOffset(getElevationAdjustedSunset(), getAteretTorahSunsetOffset() * 60000.0d);
    }

    public double getAteretTorahSunsetOffset() {
        return this.ateretTorahSunsetOffset;
    }

    public void setAteretTorahSunsetOffset(double ateretTorahSunsetOffset) {
        this.ateretTorahSunsetOffset = ateretTorahSunsetOffset;
    }

    public Date getSofZmanShmaAteretTorah() {
        return getSofZmanShma(getAlos72Zmanis(), getTzaisAteretTorah());
    }

    public Date getSofZmanTfilahAteretTorah() {
        return getSofZmanTfila(getAlos72Zmanis(), getTzaisAteretTorah());
    }

    public Date getMinchaGedolaAteretTorah() {
        return getMinchaGedola(getAlos72Zmanis(), getTzaisAteretTorah());
    }

    public Date getMinchaKetanaAteretTorah() {
        return getMinchaKetana(getAlos72Zmanis(), getTzaisAteretTorah());
    }

    public Date getPlagHaminchaAteretTorah() {
        return getPlagHamincha(getAlos72Zmanis(), getTzaisAteretTorah());
    }

    public Date getTzais72Zmanis() {
        return getZmanisBasedOffset(1.2d);
    }

    private Date getZmanisBasedOffset(double hours) {
        long shaahZmanis = getShaahZmanisGra();
        if (shaahZmanis == Long.MIN_VALUE || hours == 0.0d) {
            return null;
        }
        if (hours > 0.0d) {
            Date elevationAdjustedSunset = getElevationAdjustedSunset();
            double d = shaahZmanis;
            Double.isNaN(d);
            return getTimeOffset(elevationAdjustedSunset, (long) (d * hours));
        }
        Date elevationAdjustedSunrise = getElevationAdjustedSunrise();
        double d2 = shaahZmanis;
        Double.isNaN(d2);
        return getTimeOffset(elevationAdjustedSunrise, (long) (d2 * hours));
    }

    public Date getTzais90Zmanis() {
        return getZmanisBasedOffset(1.5d);
    }

    public Date getTzais96Zmanis() {
        return getZmanisBasedOffset(1.6d);
    }

    public Date getTzais90() {
        return getTimeOffset(getElevationAdjustedSunset(), 5400000L);
    }

    @Deprecated
    public Date getTzais120() {
        return getTimeOffset(getElevationAdjustedSunset(), 7200000L);
    }

    @Deprecated
    public Date getTzais120Zmanis() {
        return getZmanisBasedOffset(2.0d);
    }

    public Date getTzais16Point1Degrees() {
        return getSunsetOffsetByDegrees(106.1d);
    }

    @Deprecated
    public Date getTzais26Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_26_DEGREES);
    }

    public Date getTzais18Degrees() {
        return getSunsetOffsetByDegrees(108.0d);
    }

    public Date getTzais19Point8Degrees() {
        return getSunsetOffsetByDegrees(ZENITH_19_POINT_8);
    }

    public Date getTzais96() {
        return getTimeOffset(getElevationAdjustedSunset(), 5760000L);
    }

    public Date getFixedLocalChatzos() {
        double rawOffset = getGeoLocation().getTimeZone().getRawOffset();
        Double.isNaN(rawOffset);
        return getTimeOffset(getDateFromTime(12.0d - (rawOffset / 3600000.0d), true), -getGeoLocation().getLocalMeanTimeOffset());
    }

    @Deprecated
    public Date getSofZmanShmaFixedLocal() {
        return getTimeOffset(getFixedLocalChatzos(), -10800000L);
    }

    @Deprecated
    public Date getSofZmanTfilaFixedLocal() {
        return getTimeOffset(getFixedLocalChatzos(), -7200000L);
    }

    public Date getSofZmanKidushLevanaBetweenMoldos(Date alos, Date tzais) {
        JewishCalendar jewishCalendar = new JewishCalendar();
        jewishCalendar.setGregorianDate(getCalendar().get(1), getCalendar().get(2), getCalendar().get(5));
        if (jewishCalendar.getJewishDayOfMonth() < 11 || jewishCalendar.getJewishDayOfMonth() > 16) {
            return null;
        }
        return getMoladBasedTime(jewishCalendar.getSofZmanKidushLevanaBetweenMoldos(), alos, tzais, false);
    }

    private Date getMoladBasedTime(Date moladBasedTime, Date alos, Date tzais, boolean techila) {
        Date lastMidnight = getMidnightLastNight();
        Date midnightTonigh = getMidnightTonight();
        if (!moladBasedTime.before(lastMidnight) && !moladBasedTime.after(midnightTonigh)) {
            if (alos != null || tzais != null) {
                if (techila && !moladBasedTime.before(tzais) && !moladBasedTime.after(alos)) {
                    return tzais;
                }
                return alos;
            }
            return moladBasedTime;
        }
        return null;
    }

    public Date getSofZmanKidushLevanaBetweenMoldos() {
        return getSofZmanKidushLevanaBetweenMoldos(null, null);
    }

    public Date getSofZmanKidushLevana15Days(Date alos, Date tzais) {
        JewishCalendar jewishCalendar = new JewishCalendar();
        jewishCalendar.setGregorianDate(getCalendar().get(1), getCalendar().get(2), getCalendar().get(5));
        if (jewishCalendar.getJewishDayOfMonth() < 11 || jewishCalendar.getJewishDayOfMonth() > 17) {
            return null;
        }
        return getMoladBasedTime(jewishCalendar.getSofZmanKidushLevana15Days(), alos, tzais, false);
    }

    public Date getSofZmanKidushLevana15Days() {
        return getSofZmanKidushLevana15Days(null, null);
    }

    public Date getTchilasZmanKidushLevana3Days() {
        return getTchilasZmanKidushLevana3Days(null, null);
    }

    public Date getTchilasZmanKidushLevana3Days(Date alos, Date tzais) {
        JewishCalendar jewishCalendar = new JewishCalendar();
        jewishCalendar.setGregorianDate(getCalendar().get(1), getCalendar().get(2), getCalendar().get(5));
        if (jewishCalendar.getJewishDayOfMonth() > 5 && jewishCalendar.getJewishDayOfMonth() < 30) {
            return null;
        }
        Date zman = getMoladBasedTime(jewishCalendar.getTchilasZmanKidushLevana3Days(), alos, tzais, true);
        if (zman == null && jewishCalendar.getJewishDayOfMonth() == 30) {
            jewishCalendar.forward(2, 1);
            return getMoladBasedTime(jewishCalendar.getTchilasZmanKidushLevana3Days(), null, null, true);
        }
        return zman;
    }

    public Date getZmanMolad() {
        JewishCalendar jewishCalendar = new JewishCalendar();
        jewishCalendar.setGregorianDate(getCalendar().get(1), getCalendar().get(2), getCalendar().get(5));
        if (jewishCalendar.getJewishDayOfMonth() > 2 && jewishCalendar.getJewishDayOfMonth() < 27) {
            return null;
        }
        Date molad = getMoladBasedTime(jewishCalendar.getMoladAsDate(), null, null, true);
        if (molad == null && jewishCalendar.getJewishDayOfMonth() > 26) {
            jewishCalendar.forward(2, 1);
            return getMoladBasedTime(jewishCalendar.getMoladAsDate(), null, null, true);
        }
        return molad;
    }

    private Date getMidnightLastNight() {
        Calendar midnight = (Calendar) getCalendar().clone();
        midnight.set(11, 0);
        midnight.set(12, 0);
        midnight.set(13, 0);
        midnight.set(14, 0);
        return midnight.getTime();
    }

    private Date getMidnightTonight() {
        Calendar midnight = (Calendar) getCalendar().clone();
        midnight.add(6, 1);
        midnight.set(11, 0);
        midnight.set(12, 0);
        midnight.set(13, 0);
        midnight.set(14, 0);
        return midnight.getTime();
    }

    public Date getTchilasZmanKidushLevana7Days(Date alos, Date tzais) {
        JewishCalendar jewishCalendar = new JewishCalendar();
        jewishCalendar.setGregorianDate(getCalendar().get(1), getCalendar().get(2), getCalendar().get(5));
        if (jewishCalendar.getJewishDayOfMonth() < 4 || jewishCalendar.getJewishDayOfMonth() > 9) {
            return null;
        }
        return getMoladBasedTime(jewishCalendar.getTchilasZmanKidushLevana7Days(), alos, tzais, true);
    }

    public Date getTchilasZmanKidushLevana7Days() {
        return getTchilasZmanKidushLevana7Days(null, null);
    }

    public Date getSofZmanAchilasChametzGRA() {
        return getSofZmanTfilaGRA();
    }

    public Date getSofZmanAchilasChametzMGA72Minutes() {
        return getSofZmanTfilaMGA72Minutes();
    }

    public Date getSofZmanAchilasChametzMGA16Point1Degrees() {
        return getSofZmanTfilaMGA16Point1Degrees();
    }

    public Date getSofZmanBiurChametzGRA() {
        return getTimeOffset(getElevationAdjustedSunrise(), getShaahZmanisGra() * 5);
    }

    public Date getSofZmanBiurChametzMGA72Minutes() {
        return getTimeOffset(getAlos72(), getShaahZmanisMGA() * 5);
    }

    public Date getSofZmanBiurChametzMGA16Point1Degrees() {
        return getTimeOffset(getAlos16Point1Degrees(), getShaahZmanis16Point1Degrees() * 5);
    }

    public Date getSolarMidnight() {
        ZmanimCalendar clonedCal = (ZmanimCalendar) clone();
        clonedCal.getCalendar().add(5, 1);
        return getTimeOffset(getChatzos(), (clonedCal.getChatzos().getTime() - getChatzos().getTime()) / 2);
    }

    private Date getSunriseBaalHatanya() {
        return getSunriseOffsetByDegrees(ZENITH_1_POINT_583);
    }

    private Date getSunsetBaalHatanya() {
        return getSunsetOffsetByDegrees(ZENITH_1_POINT_583);
    }

    public long getShaahZmanisBaalHatanya() {
        return getTemporalHour(getSunriseBaalHatanya(), getSunsetBaalHatanya());
    }

    public Date getAlosBaalHatanya() {
        return getSunriseOffsetByDegrees(ZENITH_16_POINT_9);
    }

    public Date getSofZmanShmaBaalHatanya() {
        return getSofZmanShma(getSunriseBaalHatanya(), getSunsetBaalHatanya());
    }

    public Date getSofZmanTfilaBaalHatanya() {
        return getSofZmanTfila(getSunriseBaalHatanya(), getSunsetBaalHatanya());
    }

    public Date getSofZmanAchilasChametzBaalHatanya() {
        return getSofZmanTfilaBaalHatanya();
    }

    public Date getSofZmanBiurChametzBaalHatanya() {
        return getTimeOffset(getSunriseBaalHatanya(), getShaahZmanisBaalHatanya() * 5);
    }

    public Date getMinchaGedolaBaalHatanya() {
        return getMinchaGedola(getSunriseBaalHatanya(), getSunsetBaalHatanya());
    }

    public Date getMinchaGedolaBaalHatanyaGreaterThan30() {
        if (getMinchaGedola30Minutes() == null || getMinchaGedolaBaalHatanya() == null) {
            return null;
        }
        return getMinchaGedola30Minutes().compareTo(getMinchaGedolaBaalHatanya()) > 0 ? getMinchaGedola30Minutes() : getMinchaGedolaBaalHatanya();
    }

    public Date getMinchaKetanaBaalHatanya() {
        return getMinchaKetana(getSunriseBaalHatanya(), getSunsetBaalHatanya());
    }

    public Date getPlagHaminchaBaalHatanya() {
        return getPlagHamincha(getSunriseBaalHatanya(), getSunsetBaalHatanya());
    }

    public Date getTzaisBaalHatanya() {
        return getSunsetOffsetByDegrees(96.0d);
    }

    public Date getFixedLocalChatzosBasedZmanim(Date startOfHalfDay, Date endOfHalfDay, double hours) {
        if (startOfHalfDay == null || endOfHalfDay == null) {
            return null;
        }
        long shaahZmanis = (endOfHalfDay.getTime() - startOfHalfDay.getTime()) / 6;
        double time = startOfHalfDay.getTime();
        double d = shaahZmanis;
        Double.isNaN(d);
        Double.isNaN(time);
        return new Date((long) (time + (d * hours)));
    }

    public Date getSofZmanShmaMGA18DegreesToFixedLocalChatzos() {
        return getFixedLocalChatzosBasedZmanim(getAlos18Degrees(), getFixedLocalChatzos(), 3.0d);
    }

    public Date getSofZmanShmaMGA16Point1DegreesToFixedLocalChatzos() {
        return getFixedLocalChatzosBasedZmanim(getAlos16Point1Degrees(), getFixedLocalChatzos(), 3.0d);
    }

    public Date getSofZmanShmaMGA90MinutesToFixedLocalChatzos() {
        return getFixedLocalChatzosBasedZmanim(getAlos90(), getFixedLocalChatzos(), 3.0d);
    }

    public Date getSofZmanShmaMGA72MinutesToFixedLocalChatzos() {
        return getFixedLocalChatzosBasedZmanim(getAlos72(), getFixedLocalChatzos(), 3.0d);
    }

    public Date getSofZmanShmaGRASunriseToFixedLocalChatzos() {
        return getFixedLocalChatzosBasedZmanim(getSunrise(), getFixedLocalChatzos(), 3.0d);
    }

    public Date getSofZmanTfilaGRASunriseToFixedLocalChatzos() {
        return getFixedLocalChatzosBasedZmanim(getSunrise(), getFixedLocalChatzos(), 4.0d);
    }

    public Date getMinchaGedolaGRAFixedLocalChatzos30Minutes() {
        return getTimeOffset(getFixedLocalChatzos(), 1800000L);
    }

    public Date getMinchaKetanaGRAFixedLocalChatzosToSunset() {
        return getFixedLocalChatzosBasedZmanim(getFixedLocalChatzos(), getSunset(), 3.5d);
    }

    public Date getPlagHaminchaGRAFixedLocalChatzosToSunset() {
        return getFixedLocalChatzosBasedZmanim(getFixedLocalChatzos(), getSunset(), 4.75d);
    }

    public Date getTzais50() {
        return getTimeOffset(getElevationAdjustedSunset(), 3000000L);
    }

    public Date getSamuchLeMinchaKetanaGRA() {
        return getSamuchLeMinchaKetana(getElevationAdjustedSunrise(), getElevationAdjustedSunset());
    }

    public Date getSamuchLeMinchaKetana16Point1Degrees() {
        return getSamuchLeMinchaKetana(getAlos16Point1Degrees(), getTzais16Point1Degrees());
    }

    public Date getSamuchLeMinchaKetana72Minutes() {
        return getSamuchLeMinchaKetana(getAlos72(), getTzais72());
    }
}

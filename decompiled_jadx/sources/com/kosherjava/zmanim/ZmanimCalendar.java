package com.kosherjava.zmanim;

import com.kosherjava.zmanim.hebrewcalendar.JewishCalendar;
import com.kosherjava.zmanim.util.GeoLocation;
import java.util.Date;

/* loaded from: classes.dex */
public class ZmanimCalendar extends AstronomicalCalendar {
    protected static final double ZENITH_16_POINT_1 = 106.1d;
    protected static final double ZENITH_8_POINT_5 = 98.5d;
    private double candleLightingOffset;
    private boolean useElevation;

    public boolean isUseElevation() {
        return this.useElevation;
    }

    public void setUseElevation(boolean useElevation) {
        this.useElevation = useElevation;
    }

    protected Date getElevationAdjustedSunrise() {
        if (isUseElevation()) {
            return super.getSunrise();
        }
        return getSeaLevelSunrise();
    }

    protected Date getElevationAdjustedSunset() {
        if (isUseElevation()) {
            return super.getSunset();
        }
        return getSeaLevelSunset();
    }

    public Date getTzais() {
        return getSunsetOffsetByDegrees(ZENITH_8_POINT_5);
    }

    public Date getAlosHashachar() {
        return getSunriseOffsetByDegrees(ZENITH_16_POINT_1);
    }

    public Date getAlos72() {
        return getTimeOffset(getElevationAdjustedSunrise(), -4320000L);
    }

    public Date getChatzos() {
        return getSunTransit();
    }

    public Date getSofZmanShma(Date startOfDay, Date endOfDay) {
        return getShaahZmanisBasedZman(startOfDay, endOfDay, 3.0d);
    }

    public Date getSofZmanShmaGRA() {
        return getSofZmanShma(getElevationAdjustedSunrise(), getElevationAdjustedSunset());
    }

    public Date getSofZmanShmaMGA() {
        return getSofZmanShma(getAlos72(), getTzais72());
    }

    public Date getTzais72() {
        return getTimeOffset(getElevationAdjustedSunset(), 4320000L);
    }

    public Date getCandleLighting() {
        return getTimeOffset(getSeaLevelSunset(), (-getCandleLightingOffset()) * 60000.0d);
    }

    public Date getSofZmanTfila(Date startOfDay, Date endOfDay) {
        return getShaahZmanisBasedZman(startOfDay, endOfDay, 4.0d);
    }

    public Date getSofZmanTfilaGRA() {
        return getSofZmanTfila(getElevationAdjustedSunrise(), getElevationAdjustedSunset());
    }

    public Date getSofZmanTfilaMGA() {
        return getSofZmanTfila(getAlos72(), getTzais72());
    }

    public Date getMinchaGedola(Date startOfDay, Date endOfDay) {
        return getShaahZmanisBasedZman(startOfDay, endOfDay, 6.5d);
    }

    public Date getMinchaGedola() {
        return getMinchaGedola(getElevationAdjustedSunrise(), getElevationAdjustedSunset());
    }

    public Date getSamuchLeMinchaKetana(Date startOfDay, Date endOfDay) {
        return getShaahZmanisBasedZman(startOfDay, endOfDay, 9.0d);
    }

    public Date getMinchaKetana(Date startOfDay, Date endOfDay) {
        return getShaahZmanisBasedZman(startOfDay, endOfDay, 9.5d);
    }

    public Date getMinchaKetana() {
        return getMinchaKetana(getElevationAdjustedSunrise(), getElevationAdjustedSunset());
    }

    public Date getPlagHamincha(Date startOfDay, Date endOfDay) {
        return getShaahZmanisBasedZman(startOfDay, endOfDay, 10.75d);
    }

    public Date getPlagHamincha() {
        return getPlagHamincha(getElevationAdjustedSunrise(), getElevationAdjustedSunset());
    }

    public long getShaahZmanisGra() {
        return getTemporalHour(getElevationAdjustedSunrise(), getElevationAdjustedSunset());
    }

    public long getShaahZmanisMGA() {
        return getTemporalHour(getAlos72(), getTzais72());
    }

    public ZmanimCalendar() {
        this.candleLightingOffset = 18.0d;
    }

    public ZmanimCalendar(GeoLocation location) {
        super(location);
        this.candleLightingOffset = 18.0d;
    }

    public double getCandleLightingOffset() {
        return this.candleLightingOffset;
    }

    public void setCandleLightingOffset(double candleLightingOffset) {
        this.candleLightingOffset = candleLightingOffset;
    }

    public boolean isAssurBemlacha(Date currentTime, Date tzais, boolean inIsrael) {
        JewishCalendar jewishCalendar = new JewishCalendar();
        jewishCalendar.setGregorianDate(getCalendar().get(1), getCalendar().get(2), getCalendar().get(5));
        jewishCalendar.setInIsrael(inIsrael);
        if (!jewishCalendar.hasCandleLighting() || currentTime.compareTo(getElevationAdjustedSunset()) < 0) {
            return jewishCalendar.isAssurBemelacha() && currentTime.compareTo(tzais) <= 0;
        }
        return true;
    }

    public Date getShaahZmanisBasedZman(Date startOfDay, Date endOfDay, double hours) {
        long shaahZmanis = getTemporalHour(startOfDay, endOfDay);
        double d = shaahZmanis;
        Double.isNaN(d);
        return getTimeOffset(startOfDay, d * hours);
    }
}

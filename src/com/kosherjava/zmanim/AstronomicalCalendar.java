package com.kosherjava.zmanim;

import com.kosherjava.zmanim.util.AstronomicalCalculator;
import com.kosherjava.zmanim.util.GeoLocation;
import com.kosherjava.zmanim.util.ZmanimFormatter;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class AstronomicalCalendar implements Cloneable {
    public static final double ASTRONOMICAL_ZENITH = 108.0d;
    public static final double CIVIL_ZENITH = 96.0d;
    public static final double GEOMETRIC_ZENITH = 90.0d;
    static final long HOUR_MILLIS = 3600000;
    static final long MINUTE_MILLIS = 60000;
    public static final double NAUTICAL_ZENITH = 102.0d;
    private AstronomicalCalculator astronomicalCalculator;
    private Calendar calendar;
    private GeoLocation geoLocation;

    public Date getSunrise() {
        double sunrise = getUTCSunrise(90.0d);
        if (Double.isNaN(sunrise)) {
            return null;
        }
        return getDateFromTime(sunrise, true);
    }

    public Date getSeaLevelSunrise() {
        double sunrise = getUTCSeaLevelSunrise(90.0d);
        if (Double.isNaN(sunrise)) {
            return null;
        }
        return getDateFromTime(sunrise, true);
    }

    public Date getBeginCivilTwilight() {
        return getSunriseOffsetByDegrees(96.0d);
    }

    public Date getBeginNauticalTwilight() {
        return getSunriseOffsetByDegrees(102.0d);
    }

    public Date getBeginAstronomicalTwilight() {
        return getSunriseOffsetByDegrees(108.0d);
    }

    public Date getSunset() {
        double sunset = getUTCSunset(90.0d);
        if (Double.isNaN(sunset)) {
            return null;
        }
        return getDateFromTime(sunset, false);
    }

    public Date getSeaLevelSunset() {
        double sunset = getUTCSeaLevelSunset(90.0d);
        if (Double.isNaN(sunset)) {
            return null;
        }
        return getDateFromTime(sunset, false);
    }

    public Date getEndCivilTwilight() {
        return getSunsetOffsetByDegrees(96.0d);
    }

    public Date getEndNauticalTwilight() {
        return getSunsetOffsetByDegrees(102.0d);
    }

    public Date getEndAstronomicalTwilight() {
        return getSunsetOffsetByDegrees(108.0d);
    }

    public static Date getTimeOffset(Date time, double offset) {
        return getTimeOffset(time, (long) offset);
    }

    public static Date getTimeOffset(Date time, long offset) {
        if (time == null || offset == Long.MIN_VALUE) {
            return null;
        }
        return new Date(time.getTime() + offset);
    }

    public Date getSunriseOffsetByDegrees(double offsetZenith) {
        double dawn = getUTCSunrise(offsetZenith);
        if (Double.isNaN(dawn)) {
            return null;
        }
        return getDateFromTime(dawn, true);
    }

    public Date getSunsetOffsetByDegrees(double offsetZenith) {
        double sunset = getUTCSunset(offsetZenith);
        if (Double.isNaN(sunset)) {
            return null;
        }
        return getDateFromTime(sunset, false);
    }

    public AstronomicalCalendar() {
        this(new GeoLocation());
    }

    public AstronomicalCalendar(GeoLocation geoLocation) {
        setCalendar(Calendar.getInstance(geoLocation.getTimeZone()));
        setGeoLocation(geoLocation);
        setAstronomicalCalculator(AstronomicalCalculator.getDefault());
    }

    public double getUTCSunrise(double zenith) {
        return getAstronomicalCalculator().getUTCSunrise(getAdjustedCalendar(), getGeoLocation(), zenith, true);
    }

    public double getUTCSeaLevelSunrise(double zenith) {
        return getAstronomicalCalculator().getUTCSunrise(getAdjustedCalendar(), getGeoLocation(), zenith, false);
    }

    public double getUTCSunset(double zenith) {
        return getAstronomicalCalculator().getUTCSunset(getAdjustedCalendar(), getGeoLocation(), zenith, true);
    }

    public double getUTCSeaLevelSunset(double zenith) {
        return getAstronomicalCalculator().getUTCSunset(getAdjustedCalendar(), getGeoLocation(), zenith, false);
    }

    public long getTemporalHour() {
        return getTemporalHour(getSeaLevelSunrise(), getSeaLevelSunset());
    }

    public long getTemporalHour(Date startOfday, Date endOfDay) {
        if (startOfday == null || endOfDay == null) {
            return Long.MIN_VALUE;
        }
        return (endOfDay.getTime() - startOfday.getTime()) / 12;
    }

    public Date getSunTransit() {
        double noon = getAstronomicalCalculator().getUTCNoon(getAdjustedCalendar(), getGeoLocation());
        return getDateFromTime(noon, false);
    }

    public Date getSunTransit(Date startOfDay, Date endOfDay) {
        long temporalHour = getTemporalHour(startOfDay, endOfDay);
        return getTimeOffset(startOfDay, 6 * temporalHour);
    }

    protected Date getDateFromTime(double time, boolean isSunrise) {
        if (Double.isNaN(time)) {
            return null;
        }
        Calendar adjustedCalendar = getAdjustedCalendar();
        Calendar cal = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        cal.clear();
        cal.set(1, adjustedCalendar.get(1));
        cal.set(2, adjustedCalendar.get(2));
        cal.set(5, adjustedCalendar.get(5));
        int hours = (int) time;
        double d = hours;
        Double.isNaN(d);
        double calculatedTime = (time - d) * 60.0d;
        int minutes = (int) calculatedTime;
        double d2 = minutes;
        Double.isNaN(d2);
        double calculatedTime2 = 60.0d * (calculatedTime - d2);
        int seconds = (int) calculatedTime2;
        double d3 = seconds;
        Double.isNaN(d3);
        double calculatedTime3 = calculatedTime2 - d3;
        int localTimeHours = ((int) getGeoLocation().getLongitude()) / 15;
        if (isSunrise && localTimeHours + hours > 18) {
            cal.add(5, -1);
        } else if (!isSunrise && localTimeHours + hours < 6) {
            cal.add(5, 1);
        }
        cal.set(11, hours);
        cal.set(12, minutes);
        cal.set(13, seconds);
        cal.set(14, (int) (1000.0d * calculatedTime3));
        return cal.getTime();
    }

    public double getSunriseSolarDipFromOffset(double minutes) {
        Date offsetByDegrees = getSeaLevelSunrise();
        Date offsetByTime = getTimeOffset(getSeaLevelSunrise(), -(60000.0d * minutes));
        BigDecimal degrees = new BigDecimal(0);
        BigDecimal incrementor = new BigDecimal("0.0001");
        while (true) {
            if (offsetByDegrees != null && ((minutes >= 0.0d || offsetByDegrees.getTime() >= offsetByTime.getTime()) && (minutes <= 0.0d || offsetByDegrees.getTime() <= offsetByTime.getTime()))) {
                break;
            }
            if (minutes > 0.0d) {
                degrees = degrees.add(incrementor);
            } else {
                degrees = degrees.subtract(incrementor);
            }
            offsetByDegrees = getSunriseOffsetByDegrees(degrees.doubleValue() + 90.0d);
        }
        return degrees.doubleValue();
    }

    public double getSunsetSolarDipFromOffset(double minutes) {
        Date offsetByDegrees = getSeaLevelSunset();
        Date offsetByTime = getTimeOffset(getSeaLevelSunset(), 60000.0d * minutes);
        BigDecimal degrees = new BigDecimal(0);
        BigDecimal incrementor = new BigDecimal("0.001");
        while (true) {
            if (offsetByDegrees != null && ((minutes <= 0.0d || offsetByDegrees.getTime() >= offsetByTime.getTime()) && (minutes >= 0.0d || offsetByDegrees.getTime() <= offsetByTime.getTime()))) {
                break;
            }
            if (minutes > 0.0d) {
                degrees = degrees.add(incrementor);
            } else {
                degrees = degrees.subtract(incrementor);
            }
            offsetByDegrees = getSunsetOffsetByDegrees(degrees.doubleValue() + 90.0d);
        }
        return degrees.doubleValue();
    }

    private Calendar getAdjustedCalendar() {
        int offset = getGeoLocation().getAntimeridianAdjustment();
        if (offset == 0) {
            return getCalendar();
        }
        Calendar adjustedCalendar = (Calendar) getCalendar().clone();
        adjustedCalendar.add(5, offset);
        return adjustedCalendar;
    }

    public String toString() {
        return ZmanimFormatter.toXML(this);
    }

    public String toJSON() {
        return ZmanimFormatter.toJSON(this);
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof AstronomicalCalendar)) {
            return false;
        }
        AstronomicalCalendar aCal = (AstronomicalCalendar) object;
        return getCalendar().equals(aCal.getCalendar()) && getGeoLocation().equals(aCal.getGeoLocation()) && getAstronomicalCalculator().equals(aCal.getAstronomicalCalculator());
    }

    public int hashCode() {
        int result = (17 * 37) + getClass().hashCode();
        int result2 = result + (result * 37) + getCalendar().hashCode();
        int result3 = result2 + (result2 * 37) + getGeoLocation().hashCode();
        return result3 + (result3 * 37) + getAstronomicalCalculator().hashCode();
    }

    public GeoLocation getGeoLocation() {
        return this.geoLocation;
    }

    public void setGeoLocation(GeoLocation geoLocation) {
        this.geoLocation = geoLocation;
        getCalendar().setTimeZone(geoLocation.getTimeZone());
    }

    public AstronomicalCalculator getAstronomicalCalculator() {
        return this.astronomicalCalculator;
    }

    public void setAstronomicalCalculator(AstronomicalCalculator astronomicalCalculator) {
        this.astronomicalCalculator = astronomicalCalculator;
    }

    public Calendar getCalendar() {
        return this.calendar;
    }

    public void setCalendar(Calendar calendar) {
        this.calendar = calendar;
        if (getGeoLocation() != null) {
            getCalendar().setTimeZone(getGeoLocation().getTimeZone());
        }
    }

    public Object clone() {
        AstronomicalCalendar clone = null;
        try {
            clone = (AstronomicalCalendar) super.clone();
        } catch (CloneNotSupportedException e) {
        }
        clone.setGeoLocation((GeoLocation) getGeoLocation().clone());
        clone.setCalendar((Calendar) getCalendar().clone());
        clone.setAstronomicalCalculator((AstronomicalCalculator) getAstronomicalCalculator().clone());
        return clone;
    }
}

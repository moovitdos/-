package com.kosherjava.zmanim.util;

import java.util.Calendar;

/* loaded from: classes.dex */
public class SunTimesCalculator extends AstronomicalCalculator {
    private static final double DEG_PER_HOUR = 15.0d;

    @Override // com.kosherjava.zmanim.util.AstronomicalCalculator
    public String getCalculatorName() {
        return "US Naval Almanac Algorithm";
    }

    @Override // com.kosherjava.zmanim.util.AstronomicalCalculator
    public double getUTCSunrise(Calendar calendar, GeoLocation geoLocation, double zenith, boolean adjustForElevation) {
        double elevation = adjustForElevation ? geoLocation.getElevation() : 0.0d;
        double adjustedZenith = adjustZenith(zenith, elevation);
        double doubleTime = getTimeUTC(calendar, geoLocation, adjustedZenith, true);
        return doubleTime;
    }

    @Override // com.kosherjava.zmanim.util.AstronomicalCalculator
    public double getUTCSunset(Calendar calendar, GeoLocation geoLocation, double zenith, boolean adjustForElevation) {
        double elevation = adjustForElevation ? geoLocation.getElevation() : 0.0d;
        double adjustedZenith = adjustZenith(zenith, elevation);
        double doubleTime = getTimeUTC(calendar, geoLocation, adjustedZenith, false);
        return doubleTime;
    }

    private static double sinDeg(double deg) {
        return Math.sin(((2.0d * deg) * 3.141592653589793d) / 360.0d);
    }

    private static double acosDeg(double x) {
        return (Math.acos(x) * 360.0d) / 6.283185307179586d;
    }

    private static double asinDeg(double x) {
        return (Math.asin(x) * 360.0d) / 6.283185307179586d;
    }

    private static double tanDeg(double deg) {
        return Math.tan(((2.0d * deg) * 3.141592653589793d) / 360.0d);
    }

    private static double cosDeg(double deg) {
        return Math.cos(((2.0d * deg) * 3.141592653589793d) / 360.0d);
    }

    private static double getHoursFromMeridian(double longitude) {
        return longitude / DEG_PER_HOUR;
    }

    private static double getApproxTimeDays(int dayOfYear, double hoursFromMeridian, boolean isSunrise) {
        if (isSunrise) {
            double d = dayOfYear;
            Double.isNaN(d);
            return d + ((6.0d - hoursFromMeridian) / 24.0d);
        }
        double d2 = dayOfYear;
        Double.isNaN(d2);
        return d2 + ((18.0d - hoursFromMeridian) / 24.0d);
    }

    private static double getMeanAnomaly(int dayOfYear, double longitude, boolean isSunrise) {
        return (getApproxTimeDays(dayOfYear, getHoursFromMeridian(longitude), isSunrise) * 0.9856d) - 3.289d;
    }

    private static double getSunTrueLongitude(double sunMeanAnomaly) {
        double l = (sinDeg(sunMeanAnomaly) * 1.916d) + sunMeanAnomaly + (sinDeg(2.0d * sunMeanAnomaly) * 0.02d) + 282.634d;
        if (l >= 360.0d) {
            l -= 360.0d;
        }
        if (l < 0.0d) {
            return l + 360.0d;
        }
        return l;
    }

    private static double getSunRightAscensionHours(double sunTrueLongitude) {
        double a = tanDeg(sunTrueLongitude) * 0.91764d;
        double ra = Math.atan(a) * 57.29577951308232d;
        double lQuadrant = Math.floor(sunTrueLongitude / 90.0d) * 90.0d;
        double raQuadrant = Math.floor(ra / 90.0d) * 90.0d;
        return (ra + (lQuadrant - raQuadrant)) / DEG_PER_HOUR;
    }

    private static double getCosLocalHourAngle(double sunTrueLongitude, double latitude, double zenith) {
        double sinDec = sinDeg(sunTrueLongitude) * 0.39782d;
        double cosDec = cosDeg(asinDeg(sinDec));
        return (cosDeg(zenith) - (sinDeg(latitude) * sinDec)) / (cosDeg(latitude) * cosDec);
    }

    private static double getLocalMeanTime(double localHour, double sunRightAscensionHours, double approxTimeDays) {
        return ((localHour + sunRightAscensionHours) - (0.06571d * approxTimeDays)) - 6.622d;
    }

    private static double getTimeUTC(Calendar calendar, GeoLocation geoLocation, double zenith, boolean isSunrise) {
        double localHourAngle;
        int dayOfYear = calendar.get(6);
        double sunMeanAnomaly = getMeanAnomaly(dayOfYear, geoLocation.getLongitude(), isSunrise);
        double sunTrueLong = getSunTrueLongitude(sunMeanAnomaly);
        double sunRightAscensionHours = getSunRightAscensionHours(sunTrueLong);
        double cosLocalHourAngle = getCosLocalHourAngle(sunTrueLong, geoLocation.getLatitude(), zenith);
        if (isSunrise) {
            localHourAngle = 360.0d - acosDeg(cosLocalHourAngle);
        } else {
            double localHourAngle2 = acosDeg(cosLocalHourAngle);
            localHourAngle = localHourAngle2;
        }
        double localHour = localHourAngle / DEG_PER_HOUR;
        double sunRightAscensionHours2 = getApproxTimeDays(dayOfYear, getHoursFromMeridian(geoLocation.getLongitude()), isSunrise);
        double localMeanTime = getLocalMeanTime(localHour, sunRightAscensionHours, sunRightAscensionHours2);
        double pocessedTime = localMeanTime - getHoursFromMeridian(geoLocation.getLongitude());
        while (pocessedTime < 0.0d) {
            pocessedTime += 24.0d;
        }
        while (pocessedTime >= 24.0d) {
            pocessedTime -= 24.0d;
        }
        return pocessedTime;
    }

    @Override // com.kosherjava.zmanim.util.AstronomicalCalculator
    public double getUTCNoon(Calendar calendar, GeoLocation geoLocation) {
        double sunrise = getUTCSunrise(calendar, geoLocation, 90.0d, true);
        double sunset = getUTCSunset(calendar, geoLocation, 90.0d, true);
        return ((sunset - sunrise) / 2.0d) + sunrise;
    }
}

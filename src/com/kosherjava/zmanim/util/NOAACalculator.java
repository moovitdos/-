package com.kosherjava.zmanim.util;

import java.util.Calendar;

/* loaded from: classes.dex */
public class NOAACalculator extends AstronomicalCalculator {
    private static final double JULIAN_DAYS_PER_CENTURY = 36525.0d;
    private static final double JULIAN_DAY_JAN_1_2000 = 2451545.0d;

    @Override // com.kosherjava.zmanim.util.AstronomicalCalculator
    public String getCalculatorName() {
        return "US National Oceanic and Atmospheric Administration Algorithm";
    }

    @Override // com.kosherjava.zmanim.util.AstronomicalCalculator
    public double getUTCSunrise(Calendar calendar, GeoLocation geoLocation, double zenith, boolean adjustForElevation) {
        double elevation = adjustForElevation ? geoLocation.getElevation() : 0.0d;
        double adjustedZenith = adjustZenith(zenith, elevation);
        double sunrise = getSunriseUTC(getJulianDay(calendar), geoLocation.getLatitude(), -geoLocation.getLongitude(), adjustedZenith);
        double sunrise2 = sunrise / 60.0d;
        while (sunrise2 < 0.0d) {
            sunrise2 += 24.0d;
        }
        while (sunrise2 >= 24.0d) {
            sunrise2 -= 24.0d;
        }
        return sunrise2;
    }

    @Override // com.kosherjava.zmanim.util.AstronomicalCalculator
    public double getUTCSunset(Calendar calendar, GeoLocation geoLocation, double zenith, boolean adjustForElevation) {
        double elevation = adjustForElevation ? geoLocation.getElevation() : 0.0d;
        double adjustedZenith = adjustZenith(zenith, elevation);
        double sunset = getSunsetUTC(getJulianDay(calendar), geoLocation.getLatitude(), -geoLocation.getLongitude(), adjustedZenith);
        double sunset2 = sunset / 60.0d;
        while (sunset2 < 0.0d) {
            sunset2 += 24.0d;
        }
        while (sunset2 >= 24.0d) {
            sunset2 -= 24.0d;
        }
        return sunset2;
    }

    private static double getJulianDay(Calendar calendar) {
        int year = calendar.get(1);
        int month = calendar.get(2) + 1;
        int day = calendar.get(5);
        if (month <= 2) {
            year--;
            month += 12;
        }
        int a = year / 100;
        int b = (2 - a) + (a / 4);
        double d = year + 4716;
        Double.isNaN(d);
        double dFloor = Math.floor(d * 365.25d);
        double d2 = month + 1;
        Double.isNaN(d2);
        double dFloor2 = dFloor + Math.floor(d2 * 30.6001d);
        double d3 = day;
        Double.isNaN(d3);
        double d4 = dFloor2 + d3;
        double d5 = b;
        Double.isNaN(d5);
        return (d4 + d5) - 1524.5d;
    }

    private static double getJulianCenturiesFromJulianDay(double julianDay) {
        return (julianDay - JULIAN_DAY_JAN_1_2000) / JULIAN_DAYS_PER_CENTURY;
    }

    private static double getJulianDayFromJulianCenturies(double julianCenturies) {
        return (JULIAN_DAYS_PER_CENTURY * julianCenturies) + JULIAN_DAY_JAN_1_2000;
    }

    private static double getSunGeometricMeanLongitude(double julianCenturies) {
        double longitude = (((3.032E-4d * julianCenturies) + 36000.76983d) * julianCenturies) + 280.46646d;
        while (longitude > 360.0d) {
            longitude -= 360.0d;
        }
        while (longitude < 0.0d) {
            longitude += 360.0d;
        }
        return longitude;
    }

    private static double getSunGeometricMeanAnomaly(double julianCenturies) {
        return ((35999.05029d - (1.537E-4d * julianCenturies)) * julianCenturies) + 357.52911d;
    }

    private static double getEarthOrbitEccentricity(double julianCenturies) {
        return 0.016708634d - (((1.267E-7d * julianCenturies) + 4.2037E-5d) * julianCenturies);
    }

    private static double getSunEquationOfCenter(double julianCenturies) {
        double m = getSunGeometricMeanAnomaly(julianCenturies);
        double mrad = Math.toRadians(m);
        double sinm = Math.sin(mrad);
        double sin2m = Math.sin(mrad + mrad);
        double sin3m = Math.sin(mrad + mrad + mrad);
        return ((1.914602d - (((1.4E-5d * julianCenturies) + 0.004817d) * julianCenturies)) * sinm) + ((0.019993d - (1.01E-4d * julianCenturies)) * sin2m) + (2.89E-4d * sin3m);
    }

    private static double getSunTrueLongitude(double julianCenturies) {
        double sunLongitude = getSunGeometricMeanLongitude(julianCenturies);
        double center = getSunEquationOfCenter(julianCenturies);
        return sunLongitude + center;
    }

    private static double getSunApparentLongitude(double julianCenturies) {
        double sunTrueLongitude = getSunTrueLongitude(julianCenturies);
        double omega = 125.04d - (1934.136d * julianCenturies);
        double lambda = (sunTrueLongitude - 0.00569d) - (Math.sin(Math.toRadians(omega)) * 0.00478d);
        return lambda;
    }

    private static double getMeanObliquityOfEcliptic(double julianCenturies) {
        double seconds = 21.448d - ((((5.9E-4d - (0.001813d * julianCenturies)) * julianCenturies) + 46.815d) * julianCenturies);
        return (((seconds / 60.0d) + 26.0d) / 60.0d) + 23.0d;
    }

    private static double getObliquityCorrection(double julianCenturies) {
        double obliquityOfEcliptic = getMeanObliquityOfEcliptic(julianCenturies);
        double omega = 125.04d - (1934.136d * julianCenturies);
        return (Math.cos(Math.toRadians(omega)) * 0.00256d) + obliquityOfEcliptic;
    }

    private static double getSunDeclination(double julianCenturies) {
        double obliquityCorrection = getObliquityCorrection(julianCenturies);
        double lambda = getSunApparentLongitude(julianCenturies);
        double sint = Math.sin(Math.toRadians(obliquityCorrection)) * Math.sin(Math.toRadians(lambda));
        double theta = Math.toDegrees(Math.asin(sint));
        return theta;
    }

    private static double getEquationOfTime(double julianCenturies) {
        double epsilon = getObliquityCorrection(julianCenturies);
        double geomMeanLongSun = getSunGeometricMeanLongitude(julianCenturies);
        double eccentricityEarthOrbit = getEarthOrbitEccentricity(julianCenturies);
        double geomMeanAnomalySun = getSunGeometricMeanAnomaly(julianCenturies);
        double y = Math.tan(Math.toRadians(epsilon) / 2.0d);
        double y2 = y * y;
        double sin2l0 = Math.sin(Math.toRadians(geomMeanLongSun) * 2.0d);
        double sinm = Math.sin(Math.toRadians(geomMeanAnomalySun));
        double cos2l0 = Math.cos(Math.toRadians(geomMeanLongSun) * 2.0d);
        double sin4l0 = Math.sin(Math.toRadians(geomMeanLongSun) * 4.0d);
        double sin2m = Math.sin(Math.toRadians(geomMeanAnomalySun) * 2.0d);
        double equationOfTime = ((((y2 * sin2l0) - ((2.0d * eccentricityEarthOrbit) * sinm)) + ((((eccentricityEarthOrbit * 4.0d) * y2) * sinm) * cos2l0)) - (((0.5d * y2) * y2) * sin4l0)) - (((1.25d * eccentricityEarthOrbit) * eccentricityEarthOrbit) * sin2m);
        return Math.toDegrees(equationOfTime) * 4.0d;
    }

    private static double getSunHourAngleAtSunrise(double lat, double solarDec, double zenith) {
        double latRad = Math.toRadians(lat);
        double sdRad = Math.toRadians(solarDec);
        return Math.acos((Math.cos(Math.toRadians(zenith)) / (Math.cos(latRad) * Math.cos(sdRad))) - (Math.tan(latRad) * Math.tan(sdRad)));
    }

    private static double getSunHourAngleAtSunset(double lat, double solarDec, double zenith) {
        double latRad = Math.toRadians(lat);
        double sdRad = Math.toRadians(solarDec);
        double hourAngle = Math.acos((Math.cos(Math.toRadians(zenith)) / (Math.cos(latRad) * Math.cos(sdRad))) - (Math.tan(latRad) * Math.tan(sdRad)));
        return -hourAngle;
    }

    public static double getSolarElevation(Calendar cal, double lat, double lon) {
        double julianDay = getJulianDay(cal);
        double julianCenturies = getJulianCenturiesFromJulianDay(julianDay);
        Double eot = Double.valueOf(getEquationOfTime(julianCenturies));
        double d = cal.get(11);
        Double.isNaN(d);
        double d2 = cal.get(12);
        double dDoubleValue = eot.doubleValue();
        Double.isNaN(d2);
        double d3 = d2 + dDoubleValue;
        double d4 = cal.get(13);
        Double.isNaN(d4);
        double longitude = d + 12.0d + ((d3 + (d4 / 60.0d)) / 60.0d);
        double hourAngle_rad = Math.toRadians(lon - ((-((longitude * 360.0d) / 24.0d)) % 360.0d));
        double declination = getSunDeclination(julianCenturies);
        double dec_rad = Math.toRadians(declination);
        double lat_rad = Math.toRadians(lat);
        return Math.toDegrees(Math.asin((Math.sin(lat_rad) * Math.sin(dec_rad)) + (Math.cos(lat_rad) * Math.cos(dec_rad) * Math.cos(hourAngle_rad))));
    }

    public static double getSolarAzimuth(Calendar cal, double lat, double lon) {
        double julianDay = getJulianDay(cal);
        double julianCenturies = getJulianCenturiesFromJulianDay(julianDay);
        Double eot = Double.valueOf(getEquationOfTime(julianCenturies));
        double d = cal.get(11);
        Double.isNaN(d);
        double d2 = cal.get(12);
        double dDoubleValue = eot.doubleValue();
        Double.isNaN(d2);
        double d3 = d2 + dDoubleValue;
        double d4 = cal.get(13);
        Double.isNaN(d4);
        double longitude = d + 12.0d + ((d3 + (d4 / 60.0d)) / 60.0d);
        double hourAngle_rad = Math.toRadians(lon - ((-((longitude * 360.0d) / 24.0d)) % 360.0d));
        double declination = getSunDeclination(julianCenturies);
        double dec_rad = Math.toRadians(declination);
        double lat_rad = Math.toRadians(lat);
        return Math.toDegrees(Math.atan(Math.sin(hourAngle_rad) / ((Math.cos(hourAngle_rad) * Math.sin(lat_rad)) - (Math.tan(dec_rad) * Math.cos(lat_rad))))) + 180.0d;
    }

    private static double getSunriseUTC(double julianDay, double latitude, double longitude, double zenith) {
        double julianCenturies = getJulianCenturiesFromJulianDay(julianDay);
        double noonmin = getSolarNoonUTC(julianCenturies, longitude);
        double tnoon = getJulianCenturiesFromJulianDay(julianDay + (noonmin / 1440.0d));
        double eqTime = getEquationOfTime(tnoon);
        double solarDec = getSunDeclination(tnoon);
        double hourAngle = getSunHourAngleAtSunrise(latitude, solarDec, zenith);
        double delta = longitude - Math.toDegrees(hourAngle);
        double timeDiff = delta * 4.0d;
        double timeUTC = (timeDiff + 720.0d) - eqTime;
        double newt = getJulianCenturiesFromJulianDay(getJulianDayFromJulianCenturies(julianCenturies) + (timeUTC / 1440.0d));
        double eqTime2 = getEquationOfTime(newt);
        double solarDec2 = getSunDeclination(newt);
        double hourAngle2 = getSunHourAngleAtSunrise(latitude, solarDec2, zenith);
        double delta2 = longitude - Math.toDegrees(hourAngle2);
        double timeDiff2 = 4.0d * delta2;
        double timeUTC2 = (timeDiff2 + 720.0d) - eqTime2;
        return timeUTC2;
    }

    @Override // com.kosherjava.zmanim.util.AstronomicalCalculator
    public double getUTCNoon(Calendar calendar, GeoLocation geoLocation) {
        double julianDay = getJulianDay(calendar);
        double julianCenturies = getJulianCenturiesFromJulianDay(julianDay);
        double noon = getSolarNoonUTC(julianCenturies, -geoLocation.getLongitude());
        double noon2 = noon / 60.0d;
        while (noon2 < 0.0d) {
            noon2 += 24.0d;
        }
        while (noon2 >= 24.0d) {
            noon2 -= 24.0d;
        }
        return noon2;
    }

    private static double getSolarNoonUTC(double julianCenturies, double longitude) {
        double tnoon = getJulianCenturiesFromJulianDay(getJulianDayFromJulianCenturies(julianCenturies) + (longitude / 360.0d));
        double eqTime = getEquationOfTime(tnoon);
        double solNoonUTC = ((longitude * 4.0d) + 720.0d) - eqTime;
        double newt = getJulianCenturiesFromJulianDay((getJulianDayFromJulianCenturies(julianCenturies) - 0.5d) + (solNoonUTC / 1440.0d));
        double eqTime2 = getEquationOfTime(newt);
        return ((4.0d * longitude) + 720.0d) - eqTime2;
    }

    private static double getSunsetUTC(double julianDay, double latitude, double longitude, double zenith) {
        double julianCenturies = getJulianCenturiesFromJulianDay(julianDay);
        double noonmin = getSolarNoonUTC(julianCenturies, longitude);
        double tnoon = getJulianCenturiesFromJulianDay(julianDay + (noonmin / 1440.0d));
        double eqTime = getEquationOfTime(tnoon);
        double solarDec = getSunDeclination(tnoon);
        double hourAngle = getSunHourAngleAtSunset(latitude, solarDec, zenith);
        double delta = longitude - Math.toDegrees(hourAngle);
        double timeDiff = delta * 4.0d;
        double timeUTC = (timeDiff + 720.0d) - eqTime;
        double newt = getJulianCenturiesFromJulianDay(getJulianDayFromJulianCenturies(julianCenturies) + (timeUTC / 1440.0d));
        double eqTime2 = getEquationOfTime(newt);
        double solarDec2 = getSunDeclination(newt);
        double hourAngle2 = getSunHourAngleAtSunset(latitude, solarDec2, zenith);
        double delta2 = longitude - Math.toDegrees(hourAngle2);
        double timeDiff2 = 4.0d * delta2;
        double timeUTC2 = (timeDiff2 + 720.0d) - eqTime2;
        return timeUTC2;
    }
}

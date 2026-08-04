package com.kosherjava.zmanim.util;

import java.util.Calendar;

/* loaded from: classes.dex */
public abstract class AstronomicalCalculator implements Cloneable {
    private static final double GEOMETRIC_ZENITH = 90.0d;
    private double refraction = 0.5666666666666667d;
    private double solarRadius = 0.26666666666666666d;
    private double earthRadius = 6356.9d;

    public abstract String getCalculatorName();

    public abstract double getUTCNoon(Calendar calendar, GeoLocation geoLocation);

    public abstract double getUTCSunrise(Calendar calendar, GeoLocation geoLocation, double d, boolean z);

    public abstract double getUTCSunset(Calendar calendar, GeoLocation geoLocation, double d, boolean z);

    public double getEarthRadius() {
        return this.earthRadius;
    }

    public void setEarthRadius(double earthRadius) {
        this.earthRadius = earthRadius;
    }

    public static AstronomicalCalculator getDefault() {
        return new NOAACalculator();
    }

    double getElevationAdjustment(double elevation) {
        double elevationAdjustment = Math.toDegrees(Math.acos(this.earthRadius / (this.earthRadius + (elevation / 1000.0d))));
        return elevationAdjustment;
    }

    double adjustZenith(double zenith, double elevation) {
        if (zenith != 90.0d) {
            return zenith;
        }
        double adjustedZenith = zenith + getSolarRadius() + getRefraction() + getElevationAdjustment(elevation);
        return adjustedZenith;
    }

    public double getRefraction() {
        return this.refraction;
    }

    public void setRefraction(double refraction) {
        this.refraction = refraction;
    }

    public double getSolarRadius() {
        return this.solarRadius;
    }

    public void setSolarRadius(double solarRadius) {
        this.solarRadius = solarRadius;
    }

    public Object clone() {
        try {
            AstronomicalCalculator clone = (AstronomicalCalculator) super.clone();
            return clone;
        } catch (CloneNotSupportedException e) {
            System.out.print("Required by the compiler. Should never be reached since we implement clone()");
            return null;
        }
    }
}

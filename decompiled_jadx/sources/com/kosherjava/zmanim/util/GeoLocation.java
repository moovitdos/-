package com.kosherjava.zmanim.util;

import java.util.TimeZone;

/* loaded from: classes.dex */
public class GeoLocation implements Cloneable {
    private static final int DISTANCE = 0;
    private static final int FINAL_BEARING = 2;
    private static final long HOUR_MILLIS = 3600000;
    private static final int INITIAL_BEARING = 1;
    private static final long MINUTE_MILLIS = 60000;
    private double elevation;
    private double latitude;
    private String locationName;
    private double longitude;
    private TimeZone timeZone;

    public double getElevation() {
        return this.elevation;
    }

    public void setElevation(double elevation) {
        if (elevation < 0.0d) {
            throw new IllegalArgumentException("Elevation cannot be negative");
        }
        if (Double.isNaN(elevation) || Double.isInfinite(elevation)) {
            throw new IllegalArgumentException("Elevation must not be NaN or infinite");
        }
        this.elevation = elevation;
    }

    public GeoLocation(String name, double latitude, double longitude, TimeZone timeZone) {
        this(name, latitude, longitude, 0.0d, timeZone);
    }

    public GeoLocation(String name, double latitude, double longitude, double elevation, TimeZone timeZone) {
        setLocationName(name);
        setLatitude(latitude);
        setLongitude(longitude);
        setElevation(elevation);
        setTimeZone(timeZone);
    }

    public GeoLocation() {
        setLocationName("Greenwich, England");
        setLongitude(0.0d);
        setLatitude(51.4772d);
        setTimeZone(TimeZone.getTimeZone("GMT"));
    }

    public void setLatitude(double latitude) {
        if (latitude > 90.0d || latitude < -90.0d) {
            throw new IllegalArgumentException("Latitude must be between -90 and  90");
        }
        this.latitude = latitude;
    }

    public void setLatitude(int degrees, int minutes, double seconds, String direction) {
        double d = degrees;
        double d2 = minutes;
        Double.isNaN(d2);
        Double.isNaN(d);
        double tempLat = d + ((d2 + (seconds / 60.0d)) / 60.0d);
        if (tempLat > 90.0d || tempLat < 0.0d) {
            throw new IllegalArgumentException("Latitude must be between 0 and  90. Use direction of S instead of negative.");
        }
        if (direction.equals("S")) {
            tempLat *= -1.0d;
        } else if (!direction.equals("N")) {
            throw new IllegalArgumentException("Latitude direction must be N or S");
        }
        this.latitude = tempLat;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public void setLongitude(double longitude) {
        if (longitude > 180.0d || longitude < -180.0d) {
            throw new IllegalArgumentException("Longitude must be between -180 and  180");
        }
        this.longitude = longitude;
    }

    public void setLongitude(int degrees, int minutes, double seconds, String direction) {
        double d = degrees;
        double d2 = minutes;
        Double.isNaN(d2);
        Double.isNaN(d);
        double longTemp = d + ((d2 + (seconds / 60.0d)) / 60.0d);
        if (longTemp > 180.0d || this.longitude < 0.0d) {
            throw new IllegalArgumentException("Longitude must be between 0 and  180.  Use a direction of W instead of negative.");
        }
        if (direction.equals("W")) {
            longTemp *= -1.0d;
        } else if (!direction.equals("E")) {
            throw new IllegalArgumentException("Longitude direction must be E or W");
        }
        this.longitude = longTemp;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getLocationName() {
        return this.locationName;
    }

    public void setLocationName(String name) {
        this.locationName = name;
    }

    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    public void setTimeZone(TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public long getLocalMeanTimeOffset() {
        double longitude = getLongitude() * 4.0d * 60000.0d;
        double rawOffset = getTimeZone().getRawOffset();
        Double.isNaN(rawOffset);
        return (long) (longitude - rawOffset);
    }

    public int getAntimeridianAdjustment() {
        double localMeanTimeOffset = getLocalMeanTimeOffset();
        Double.isNaN(localMeanTimeOffset);
        double localHoursOffset = localMeanTimeOffset / 3600000.0d;
        if (localHoursOffset >= 20.0d) {
            return 1;
        }
        if (localHoursOffset <= -20.0d) {
            return -1;
        }
        return 0;
    }

    public double getGeodesicInitialBearing(GeoLocation location) {
        return vincentyFormula(location, 1);
    }

    public double getGeodesicFinalBearing(GeoLocation location) {
        return vincentyFormula(location, 2);
    }

    public double getGeodesicDistance(GeoLocation location) {
        return vincentyFormula(location, 0);
    }

    private double vincentyFormula(GeoLocation location, int formula) {
        double sinSigma = 6378137.0d;
        double cosSigma = 6356752.3142d;
        double L = Math.toRadians(location.getLongitude() - getLongitude());
        double U1 = Math.atan((1.0d - 0.0033528106647474805d) * Math.tan(Math.toRadians(getLatitude())));
        double U2 = Math.atan((1.0d - 0.0033528106647474805d) * Math.tan(Math.toRadians(location.getLatitude())));
        double sinU1 = Math.sin(U1);
        double cosU1 = Math.cos(U1);
        double sinU2 = Math.sin(U2);
        double cosU2 = Math.cos(U2);
        double lambda = L;
        double lambdaP = 6.283185307179586d;
        double iterLimit = 20.0d;
        double sinLambda = 0.0d;
        double cosLambda = 0.0d;
        double C = 0.0d;
        double cosSigma2 = 0.0d;
        double sigma = 0.0d;
        double cosSqAlpha = 0.0d;
        double cos2SigmaM = 0.0d;
        while (Math.abs(lambda - lambdaP) > 1.0E-12d) {
            double d = iterLimit - 1.0d;
            iterLimit = d;
            if (d <= 0.0d) {
                break;
            }
            sinLambda = Math.sin(lambda);
            cosLambda = Math.cos(lambda);
            double a = sinSigma;
            double sinSigma2 = Math.sqrt((cosU2 * sinLambda * cosU2 * sinLambda) + (((cosU1 * sinU2) - ((sinU1 * cosU2) * cosLambda)) * ((cosU1 * sinU2) - ((sinU1 * cosU2) * cosLambda))));
            if (sinSigma2 == 0.0d) {
                return 0.0d;
            }
            double b = cosSigma;
            double b2 = (sinU1 * sinU2) + (cosU1 * cosU2 * cosLambda);
            sigma = Math.atan2(sinSigma2, b2);
            double sinAlpha = ((cosU1 * cosU2) * sinLambda) / sinSigma2;
            cosSqAlpha = 1.0d - (sinAlpha * sinAlpha);
            double cos2SigmaM2 = b2 - (((sinU1 * 2.0d) * sinU2) / cosSqAlpha);
            if (Double.isNaN(cos2SigmaM2)) {
                cos2SigmaM2 = 0.0d;
            }
            cos2SigmaM = cos2SigmaM2;
            double C2 = (0.0033528106647474805d / 16.0d) * cosSqAlpha * (((4.0d - (3.0d * cosSqAlpha)) * 0.0033528106647474805d) + 4.0d);
            lambdaP = lambda;
            lambda = L + ((1.0d - C2) * 0.0033528106647474805d * sinAlpha * (sigma + (C2 * sinSigma2 * (cos2SigmaM + (C2 * b2 * (((2.0d * cos2SigmaM) * cos2SigmaM) - 1.0d))))));
            C = sinSigma2;
            cosSigma2 = b2;
            sinSigma = a;
            cosSigma = b;
        }
        double a2 = sinSigma;
        double b3 = cosSigma;
        if (iterLimit == 0.0d) {
            return Double.NaN;
        }
        double uSq = (((a2 * a2) - (b3 * b3)) * cosSqAlpha) / (b3 * b3);
        double A = ((uSq / 16384.0d) * (((((320.0d - (175.0d * uSq)) * uSq) - 768.0d) * uSq) + 4096.0d)) + 1.0d;
        double B = (uSq / 1024.0d) * (((((74.0d - (47.0d * uSq)) * uSq) - 128.0d) * uSq) + 256.0d);
        double deltaSigma = B * C * (cos2SigmaM + ((B / 4.0d) * (((((2.0d * cos2SigmaM) * cos2SigmaM) - 1.0d) * cosSigma2) - ((((B / 6.0d) * cos2SigmaM) * (((C * 4.0d) * C) - 3.0d)) * (((4.0d * cos2SigmaM) * cos2SigmaM) - 3.0d)))));
        double distance = b3 * A * (sigma - deltaSigma);
        double fwdAz = Math.toDegrees(Math.atan2(cosU2 * sinLambda, (cosU1 * sinU2) - ((sinU1 * cosU2) * cosLambda)));
        double fwdAz2 = -sinU1;
        double revAz = Math.toDegrees(Math.atan2(cosU1 * sinLambda, (fwdAz2 * cosU2) + (cosU1 * sinU2 * cosLambda)));
        if (formula != 0) {
            if (formula == 1) {
                return fwdAz;
            }
            if (formula != 2) {
                return Double.NaN;
            }
            return revAz;
        }
        return distance;
    }

    public double getRhumbLineBearing(GeoLocation location) {
        double dLon = Math.toRadians(location.getLongitude() - getLongitude());
        double dPhi = Math.log(Math.tan((Math.toRadians(location.getLatitude()) / 2.0d) + 0.7853981633974483d) / Math.tan((Math.toRadians(getLatitude()) / 2.0d) + 0.7853981633974483d));
        if (Math.abs(dLon) > 3.141592653589793d) {
            dLon = dLon > 0.0d ? -(6.283185307179586d - dLon) : dLon + 6.283185307179586d;
        }
        return Math.toDegrees(Math.atan2(dLon, dPhi));
    }

    public double getRhumbLineDistance(GeoLocation location) {
        double dLat = Math.toRadians(location.getLatitude()) - Math.toRadians(getLatitude());
        double dLon = Math.abs(Math.toRadians(location.getLongitude()) - Math.toRadians(getLongitude()));
        double dPhi = Math.log(Math.tan((Math.toRadians(location.getLatitude()) / 2.0d) + 0.7853981633974483d) / Math.tan((Math.toRadians(getLatitude()) / 2.0d) + 0.7853981633974483d));
        double q = dLat / dPhi;
        if (Math.abs(q) > Double.MAX_VALUE) {
            q = Math.cos(Math.toRadians(getLatitude()));
        }
        if (dLon > 3.141592653589793d) {
            dLon = 6.283185307179586d - dLon;
        }
        double d = Math.sqrt((dLat * dLat) + (q * q * dLon * dLon));
        return d * 6378137.0d;
    }

    public String toXML() {
        StringBuilder sb = new StringBuilder();
        sb.append("<GeoLocation>\n");
        sb.append("\t<LocationName>").append(getLocationName()).append("</LocationName>\n");
        sb.append("\t<Latitude>").append(getLatitude()).append("</Latitude>\n");
        sb.append("\t<Longitude>").append(getLongitude()).append("</Longitude>\n");
        sb.append("\t<Elevation>").append(getElevation()).append(" Meters").append("</Elevation>\n");
        sb.append("\t<TimezoneName>").append(getTimeZone().getID()).append("</TimezoneName>\n");
        sb.append("\t<TimeZoneDisplayName>").append(getTimeZone().getDisplayName()).append("</TimeZoneDisplayName>\n");
        sb.append("\t<TimezoneGMTOffset>").append(getTimeZone().getRawOffset() / 3600000).append("</TimezoneGMTOffset>\n");
        sb.append("\t<TimezoneDSTOffset>").append(getTimeZone().getDSTSavings() / 3600000).append("</TimezoneDSTOffset>\n");
        sb.append("</GeoLocation>");
        return sb.toString();
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof GeoLocation)) {
            return false;
        }
        GeoLocation geo = (GeoLocation) object;
        if (Double.doubleToLongBits(this.latitude) == Double.doubleToLongBits(geo.latitude) && Double.doubleToLongBits(this.longitude) == Double.doubleToLongBits(geo.longitude) && this.elevation == geo.elevation && (this.locationName != null ? this.locationName.equals(geo.locationName) : geo.locationName == null)) {
            if (this.timeZone == null) {
                if (geo.timeZone == null) {
                    return true;
                }
            } else if (this.timeZone.equals(geo.timeZone)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long latLong = Double.doubleToLongBits(this.latitude);
        long lonLong = Double.doubleToLongBits(this.longitude);
        long elevLong = Double.doubleToLongBits(this.elevation);
        int latInt = (int) ((latLong >>> 32) ^ latLong);
        int lonInt = (int) ((lonLong >>> 32) ^ lonLong);
        int elevInt = (int) ((elevLong >>> 32) ^ elevLong);
        int result = (17 * 37) + getClass().hashCode();
        int result2 = result + (result * 37) + latInt;
        int result3 = result2 + (result2 * 37) + lonInt;
        int result4 = result3 + (result3 * 37) + elevInt;
        int result5 = result4 + (result4 * 37) + (this.locationName == null ? 0 : this.locationName.hashCode());
        return result5 + (result5 * 37) + (this.timeZone != null ? this.timeZone.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("\nLocation Name:\t\t\t").append(getLocationName());
        sb.append("\nLatitude:\t\t\t").append(getLatitude()).append("°");
        sb.append("\nLongitude:\t\t\t").append(getLongitude()).append("°");
        sb.append("\nElevation:\t\t\t").append(getElevation()).append(" Meters");
        sb.append("\nTimezone ID:\t\t\t").append(getTimeZone().getID());
        sb.append("\nTimezone Display Name:\t\t").append(getTimeZone().getDisplayName()).append(" (").append(getTimeZone().getDisplayName(false, 0)).append(")");
        sb.append("\nTimezone GMT Offset:\t\t").append(getTimeZone().getRawOffset() / 3600000);
        sb.append("\nTimezone DST Offset:\t\t").append(getTimeZone().getDSTSavings() / 3600000);
        return sb.toString();
    }

    public Object clone() {
        GeoLocation clone = null;
        try {
            clone = (GeoLocation) super.clone();
        } catch (CloneNotSupportedException e) {
        }
        clone.timeZone = (TimeZone) getTimeZone().clone();
        clone.locationName = getLocationName();
        return clone;
    }
}

package com.kosherjava.zmanim.util;

/* loaded from: classes.dex */
public class GeoLocationUtils {
    private static int DISTANCE = 0;
    private static int INITIAL_BEARING = 1;
    private static int FINAL_BEARING = 2;

    public static double getGeodesicInitialBearing(GeoLocation location, GeoLocation destination) {
        return vincentyFormula(location, destination, INITIAL_BEARING);
    }

    public static double getGeodesicFinalBearing(GeoLocation location, GeoLocation destination) {
        return vincentyFormula(location, destination, FINAL_BEARING);
    }

    public static double getGeodesicDistance(GeoLocation location, GeoLocation destination) {
        return vincentyFormula(location, destination, DISTANCE);
    }

    private static double vincentyFormula(GeoLocation location, GeoLocation destination, int formula) {
        double sinSigma = 6378137.0d;
        double cosSigma = 6356752.3142d;
        double L = Math.toRadians(destination.getLongitude() - location.getLongitude());
        double U1 = Math.atan((1.0d - 0.0033528106647474805d) * Math.tan(Math.toRadians(location.getLatitude())));
        double U2 = Math.atan((1.0d - 0.0033528106647474805d) * Math.tan(Math.toRadians(destination.getLatitude())));
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
        if (formula != DISTANCE) {
            if (formula == INITIAL_BEARING) {
                return fwdAz;
            }
            if (formula != FINAL_BEARING) {
                return Double.NaN;
            }
            return revAz;
        }
        return distance;
    }

    public static double getRhumbLineBearing(GeoLocation location, GeoLocation destination) {
        double dLon = Math.toRadians(destination.getLongitude() - location.getLongitude());
        double dPhi = Math.log(Math.tan((Math.toRadians(destination.getLatitude()) / 2.0d) + 0.7853981633974483d) / Math.tan((Math.toRadians(location.getLatitude()) / 2.0d) + 0.7853981633974483d));
        if (Math.abs(dLon) > 3.141592653589793d) {
            dLon = dLon > 0.0d ? -(6.283185307179586d - dLon) : dLon + 6.283185307179586d;
        }
        return Math.toDegrees(Math.atan2(dLon, dPhi));
    }

    public static double getRhumbLineDistance(GeoLocation location, GeoLocation destination) {
        double dLat = Math.toRadians(location.getLatitude()) - Math.toRadians(destination.getLatitude());
        double dLon = Math.abs(Math.toRadians(location.getLongitude()) - Math.toRadians(destination.getLongitude()));
        double dPhi = Math.log(Math.tan((Math.toRadians(location.getLatitude()) / 2.0d) + 0.7853981633974483d) / Math.tan((Math.toRadians(destination.getLatitude()) / 2.0d) + 0.7853981633974483d));
        double q = dLat / dPhi;
        if (Math.abs(q) > Double.MAX_VALUE) {
            q = Math.cos(Math.toRadians(destination.getLatitude()));
        }
        if (dLon > 3.141592653589793d) {
            dLon = 6.283185307179586d - dLon;
        }
        double d = Math.sqrt((dLat * dLat) + (q * q * dLon * dLon));
        return d * 6378137.0d;
    }
}

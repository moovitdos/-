package com.kosherjava.zmanim.util;

import java.util.TimeZone;

/* loaded from: classes.dex */
public class Time {
    private static final int HOUR_MILLIS = 3600000;
    private static final int MINUTE_MILLIS = 60000;
    private static final int SECOND_MILLIS = 1000;
    private int hours;
    private boolean isNegative;
    private int milliseconds;
    private int minutes;
    private int seconds;

    public Time(int hours, int minutes, int seconds, int milliseconds) {
        this.hours = 0;
        this.minutes = 0;
        this.seconds = 0;
        this.milliseconds = 0;
        this.isNegative = false;
        this.hours = hours;
        this.minutes = minutes;
        this.seconds = seconds;
        this.milliseconds = milliseconds;
    }

    public Time(double millis) {
        this((int) millis);
    }

    public Time(int millis) {
        this.hours = 0;
        this.minutes = 0;
        this.seconds = 0;
        this.milliseconds = 0;
        this.isNegative = false;
        int adjustedMillis = millis;
        if (adjustedMillis < 0) {
            this.isNegative = true;
            adjustedMillis = Math.abs(adjustedMillis);
        }
        this.hours = adjustedMillis / HOUR_MILLIS;
        int adjustedMillis2 = adjustedMillis - (this.hours * HOUR_MILLIS);
        this.minutes = adjustedMillis2 / MINUTE_MILLIS;
        int adjustedMillis3 = adjustedMillis2 - (this.minutes * MINUTE_MILLIS);
        this.seconds = adjustedMillis3 / SECOND_MILLIS;
        this.milliseconds = adjustedMillis3 - (this.seconds * SECOND_MILLIS);
    }

    public boolean isNegative() {
        return this.isNegative;
    }

    public void setIsNegative(boolean isNegative) {
        this.isNegative = isNegative;
    }

    public int getHours() {
        return this.hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public int getMinutes() {
        return this.minutes;
    }

    public void setMinutes(int minutes) {
        this.minutes = minutes;
    }

    public int getSeconds() {
        return this.seconds;
    }

    public void setSeconds(int seconds) {
        this.seconds = seconds;
    }

    public int getMilliseconds() {
        return this.milliseconds;
    }

    public void setMilliseconds(int milliseconds) {
        this.milliseconds = milliseconds;
    }

    public double getTime() {
        return (this.hours * HOUR_MILLIS) + (this.minutes * MINUTE_MILLIS) + (this.seconds * SECOND_MILLIS) + this.milliseconds;
    }

    public String toString() {
        return new ZmanimFormatter(TimeZone.getTimeZone("UTC")).format(this);
    }
}

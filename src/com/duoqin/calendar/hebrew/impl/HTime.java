package com.duoqin.calendar.hebrew.impl;

/* loaded from: classes.dex */
final class HTime {
    private long _day;
    private int _hour;
    private int _part;

    HTime(long day, int hour, int part) {
        this._day = day;
        this._hour = hour;
        this._part = part;
    }

    private HTime normalize(long day, int hour, int part) {
        long d = day;
        int h = hour;
        int p = part;
        if (p > 1079) {
            h += p / 1080;
            p %= 1080;
        } else if (p < 0) {
            h = (h - (Math.abs(p) / 1080)) - 1;
            p = 1080 - (Math.abs(p) % 1080);
        }
        if (h > 23) {
            d += h / 24;
            h %= 24;
        } else if (h < 0) {
            d = (d - (Math.abs(h) / 24)) - 1;
            h = 24 - (Math.abs(h) % 24);
        }
        return new HTime(d, h, p);
    }

    HTime add(HTime toAdd) {
        return normalize(this._day + toAdd._day, this._hour + toAdd._hour, this._part + toAdd._part);
    }

    HTime times(int n) {
        return normalize(this._day * n, this._hour * n, this._part * n);
    }

    public long getDay() {
        return this._day;
    }

    public int getHour() {
        return this._hour;
    }

    public int getPart() {
        return this._part;
    }

    public boolean equals(Object o) {
        if (!(o instanceof HTime)) {
            return false;
        }
        HTime htime = (HTime) o;
        return htime._day == this._day && htime._hour == this._hour && htime._part == this._part;
    }

    public String toString() {
        return "HTime[d=" + this._day + ",h=" + this._hour + ",p=" + this._part + "]";
    }
}

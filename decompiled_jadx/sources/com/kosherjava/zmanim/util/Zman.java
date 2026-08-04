package com.kosherjava.zmanim.util;

import java.util.Comparator;
import java.util.Date;

/* loaded from: classes.dex */
public class Zman {
    private String description;
    private long duration;
    private String label;
    private Date zman;
    public static final Comparator<Zman> DATE_ORDER = new Comparator<Zman>() { // from class: com.kosherjava.zmanim.util.Zman.1
        @Override // java.util.Comparator
        public int compare(Zman zman1, Zman zman2) {
            long secondTime = Long.MAX_VALUE;
            long firstTime = (zman1 == null || zman1.getZman() == null) ? Long.MAX_VALUE : zman1.getZman().getTime();
            if (zman2 != null && zman2.getZman() != null) {
                secondTime = zman2.getZman().getTime();
            }
            return Long.valueOf(firstTime).compareTo(Long.valueOf(secondTime));
        }
    };
    public static final Comparator<Zman> NAME_ORDER = new Comparator<Zman>() { // from class: com.kosherjava.zmanim.util.Zman.2
        @Override // java.util.Comparator
        public int compare(Zman zman1, Zman zman2) {
            String secondLabel = "";
            String firstLabel = (zman1 == null || zman1.getLabel() == null) ? "" : zman1.getLabel();
            if (zman2 != null && zman2.getLabel() != null) {
                secondLabel = zman2.getLabel();
            }
            return firstLabel.compareTo(secondLabel);
        }
    };
    public static final Comparator<Zman> DURATION_ORDER = new Comparator<Zman>() { // from class: com.kosherjava.zmanim.util.Zman.3
        @Override // java.util.Comparator
        public int compare(Zman zman1, Zman zman2) {
            long firstDuration = zman1 == null ? Long.MAX_VALUE : zman1.getDuration();
            long secondDuration = zman2 != null ? zman2.getDuration() : Long.MAX_VALUE;
            if (firstDuration == secondDuration) {
                return 0;
            }
            return firstDuration > secondDuration ? 1 : -1;
        }
    };

    public Zman(Date date, String label) {
        this.label = label;
        this.zman = date;
    }

    public Zman(long duration, String label) {
        this.label = label;
        this.duration = duration;
    }

    public Date getZman() {
        return this.zman;
    }

    public void setZman(Date date) {
        this.zman = date;
    }

    public long getDuration() {
        return this.duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("\nLabel:\t\t\t").append(getLabel());
        sb.append("\nZman:\t\t\t").append(getZman());
        sb.append("\nDuration:\t\t\t").append(getDuration());
        sb.append("\nDescription:\t\t\t").append(getDescription());
        return sb.toString();
    }
}

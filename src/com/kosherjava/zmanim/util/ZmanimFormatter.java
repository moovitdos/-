package com.kosherjava.zmanim.util;

import com.kosherjava.zmanim.AstronomicalCalendar;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class ZmanimFormatter {
    public static final int DECIMAL_FORMAT = 1;
    public static final long HOUR_MILLIS = 3600000;
    static final long MINUTE_MILLIS = 60000;
    public static final int SEXAGESIMAL_FORMAT = 2;
    public static final int SEXAGESIMAL_MILLIS_FORMAT = 4;
    public static final int SEXAGESIMAL_SECONDS_FORMAT = 3;
    public static final int SEXAGESIMAL_XSD_FORMAT = 0;
    public static final int XSD_DURATION_FORMAT = 5;
    private SimpleDateFormat dateFormat;
    private DecimalFormat hourNF;
    private boolean prependZeroHours;
    private int timeFormat;
    private TimeZone timeZone;
    private boolean useMillis;
    private boolean useSeconds;
    private static DecimalFormat minuteSecondNF = new DecimalFormat("00");
    private static DecimalFormat milliNF = new DecimalFormat("000");

    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    public void setTimeZone(TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public ZmanimFormatter(TimeZone timeZone) {
        this(0, new SimpleDateFormat("h:mm:ss"), timeZone);
    }

    public ZmanimFormatter(int format, SimpleDateFormat dateFormat, TimeZone timeZone) {
        this.prependZeroHours = false;
        this.useSeconds = false;
        this.useMillis = false;
        this.timeZone = null;
        this.timeFormat = 0;
        setTimeZone(timeZone);
        String hourFormat = this.prependZeroHours ? "00" : "0";
        this.hourNF = new DecimalFormat(hourFormat);
        setTimeFormat(format);
        dateFormat.setTimeZone(timeZone);
        setDateFormat(dateFormat);
    }

    public void setTimeFormat(int format) {
        this.timeFormat = format;
        switch (format) {
            case 0:
                setSettings(true, true, true);
                break;
            case 2:
                setSettings(false, false, false);
                break;
            case 3:
                setSettings(false, true, false);
                break;
            case 4:
                setSettings(false, true, true);
                break;
        }
    }

    public void setDateFormat(SimpleDateFormat simpleDateFormat) {
        this.dateFormat = simpleDateFormat;
    }

    public SimpleDateFormat getDateFormat() {
        return this.dateFormat;
    }

    private void setSettings(boolean prependZeroHours, boolean useSeconds, boolean useMillis) {
        this.prependZeroHours = prependZeroHours;
        this.useSeconds = useSeconds;
        this.useMillis = useMillis;
    }

    public String format(double milliseconds) {
        return format((int) milliseconds);
    }

    public String format(int millis) {
        return format(new Time(millis));
    }

    public String format(Time time) {
        if (this.timeFormat == 5) {
            return formatXSDDurationTime(time);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.hourNF.format(time.getHours()));
        sb.append(":");
        sb.append(minuteSecondNF.format(time.getMinutes()));
        if (this.useSeconds) {
            sb.append(":");
            sb.append(minuteSecondNF.format(time.getSeconds()));
        }
        if (this.useMillis) {
            sb.append(".");
            sb.append(milliNF.format(time.getMilliseconds()));
        }
        return sb.toString();
    }

    public String formatDateTime(Date dateTime, Calendar calendar) {
        this.dateFormat.setCalendar(calendar);
        if (this.dateFormat.toPattern().equals("yyyy-MM-dd'T'HH:mm:ss")) {
            return getXSDateTime(dateTime, calendar);
        }
        return this.dateFormat.format(dateTime);
    }

    public String getXSDateTime(Date dateTime, Calendar calendar) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
        dateFormat.setTimeZone(getTimeZone());
        StringBuilder sb = new StringBuilder(dateFormat.format(dateTime));
        int offset = calendar.get(15) + calendar.get(16);
        if (offset == 0) {
            sb.append("Z");
        } else {
            int hrs = offset / 3600000;
            int min = offset % 3600000;
            char posneg = hrs < 0 ? '-' : '+';
            sb.append(posneg + formatDigits(hrs) + ':' + formatDigits(min));
        }
        return sb.toString();
    }

    private static String formatDigits(int digits) {
        String dd = String.valueOf(Math.abs(digits));
        return dd.length() == 1 ? '0' + dd : dd;
    }

    public String formatXSDDurationTime(long millis) {
        return formatXSDDurationTime(new Time(millis));
    }

    public String formatXSDDurationTime(Time time) {
        StringBuilder duration = new StringBuilder();
        if (time.getHours() != 0 || time.getMinutes() != 0 || time.getSeconds() != 0 || time.getMilliseconds() != 0) {
            duration.append("P");
            duration.append("T");
            if (time.getHours() != 0) {
                duration.append(time.getHours() + "H");
            }
            if (time.getMinutes() != 0) {
                duration.append(time.getMinutes() + "M");
            }
            if (time.getSeconds() != 0 || time.getMilliseconds() != 0) {
                duration.append(time.getSeconds() + "." + milliNF.format(time.getMilliseconds()));
                duration.append("S");
            }
            if (duration.length() == 1) {
                duration.append("T0S");
            }
            if (time.isNegative()) {
                duration.insert(0, "-");
            }
        }
        return duration.toString();
    }

    public static String toXML(AstronomicalCalendar astronomicalCalendar) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i;
        boolean daylight;
        Method[] theMethods;
        List<String> otherList;
        ZmanimFormatter formatter = new ZmanimFormatter(5, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss"), astronomicalCalendar.getGeoLocation().getTimeZone());
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        df.setTimeZone(astronomicalCalendar.getGeoLocation().getTimeZone());
        Date date = astronomicalCalendar.getCalendar().getTime();
        TimeZone tz = astronomicalCalendar.getGeoLocation().getTimeZone();
        boolean daylight2 = tz.useDaylightTime() && tz.inDaylightTime(date);
        StringBuilder sb = new StringBuilder("<");
        if (astronomicalCalendar.getClass().getName().equals("com.kosherjava.zmanim.AstronomicalCalendar")) {
            sb.append("AstronomicalTimes");
        } else if (astronomicalCalendar.getClass().getName().equals("com.kosherjava.zmanim.ComplexZmanimCalendar")) {
            sb.append("Zmanim");
        } else if (astronomicalCalendar.getClass().getName().equals("com.kosherjava.zmanim.ZmanimCalendar")) {
            sb.append("BasicZmanim");
        }
        sb.append(" date=\"").append(df.format(date)).append("\"");
        sb.append(" type=\"").append(astronomicalCalendar.getClass().getName()).append("\"");
        sb.append(" algorithm=\"").append(astronomicalCalendar.getAstronomicalCalculator().getCalculatorName()).append("\"");
        sb.append(" location=\"").append(astronomicalCalendar.getGeoLocation().getLocationName()).append("\"");
        sb.append(" latitude=\"").append(astronomicalCalendar.getGeoLocation().getLatitude()).append("\"");
        sb.append(" longitude=\"").append(astronomicalCalendar.getGeoLocation().getLongitude()).append("\"");
        sb.append(" elevation=\"").append(astronomicalCalendar.getGeoLocation().getElevation()).append("\"");
        sb.append(" timeZoneName=\"").append(tz.getDisplayName(daylight2, 1)).append("\"");
        sb.append(" timeZoneID=\"").append(tz.getID()).append("\"");
        StringBuilder sbAppend = sb.append(" timeZoneOffset=\"");
        double offset = tz.getOffset(astronomicalCalendar.getCalendar().getTimeInMillis());
        Double.isNaN(offset);
        sbAppend.append(offset / 3600000.0d).append("\"");
        sb.append(">\n");
        Method[] theMethods2 = astronomicalCalendar.getClass().getMethods();
        String tagName = "";
        Object value = null;
        List<Zman> dateList = new ArrayList<>();
        List<Zman> durationList = new ArrayList<>();
        List<String> otherList2 = new ArrayList<>();
        int i2 = 0;
        while (true) {
            String tagName2 = tagName;
            Date date2 = date;
            TimeZone tz2 = tz;
            if (i2 >= theMethods2.length) {
                break;
            }
            if (!includeMethod(theMethods2[i2])) {
                i = i2;
                daylight = daylight2;
                theMethods = theMethods2;
                otherList = otherList2;
                tagName = tagName2;
            } else {
                i = i2;
                String tagName3 = theMethods2[i2].getName().substring(3);
                try {
                    daylight = daylight2;
                    try {
                        theMethods = theMethods2;
                        try {
                            value = theMethods2[i].invoke(astronomicalCalendar, null);
                            if (value == null) {
                                otherList = otherList2;
                                try {
                                    otherList.add("<" + tagName3 + ">N/A</" + tagName3 + ">");
                                } catch (Exception e) {
                                    e = e;
                                    e.printStackTrace();
                                    tagName = tagName3;
                                    i2 = i + 1;
                                    otherList2 = otherList;
                                    date = date2;
                                    tz = tz2;
                                    daylight2 = daylight;
                                    theMethods2 = theMethods;
                                }
                            } else {
                                otherList = otherList2;
                                if (value instanceof Date) {
                                    dateList.add(new Zman((Date) value, tagName3));
                                } else if (!(value instanceof Long) && !(value instanceof Integer)) {
                                    otherList.add("<" + tagName3 + ">" + value + "</" + tagName3 + ">");
                                } else if (((Long) value).longValue() == Long.MIN_VALUE) {
                                    otherList.add("<" + tagName3 + ">N/A</" + tagName3 + ">");
                                } else {
                                    durationList.add(new Zman((int) ((Long) value).longValue(), tagName3));
                                }
                            }
                            tagName = tagName3;
                        } catch (Exception e2) {
                            e = e2;
                            otherList = otherList2;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        theMethods = theMethods2;
                        otherList = otherList2;
                    }
                } catch (Exception e4) {
                    e = e4;
                    daylight = daylight2;
                    theMethods = theMethods2;
                    otherList = otherList2;
                }
            }
            i2 = i + 1;
            otherList2 = otherList;
            date = date2;
            tz = tz2;
            daylight2 = daylight;
            theMethods2 = theMethods;
        }
        List<String> otherList3 = otherList2;
        Collections.sort(dateList, Zman.DATE_ORDER);
        for (int i3 = 0; i3 < dateList.size(); i3++) {
            Zman zman = dateList.get(i3);
            sb.append("\t<").append(zman.getLabel()).append(">");
            sb.append(formatter.formatDateTime(zman.getZman(), astronomicalCalendar.getCalendar()));
            sb.append("</").append(zman.getLabel()).append(">\n");
        }
        Collections.sort(durationList, Zman.DURATION_ORDER);
        int i4 = 0;
        while (i4 < durationList.size()) {
            Zman zman2 = durationList.get(i4);
            sb.append("\t<" + zman2.getLabel()).append(">");
            sb.append(formatter.format((int) zman2.getDuration())).append("</").append(zman2.getLabel()).append(">\n");
            i4++;
            value = value;
        }
        for (int i5 = 0; i5 < otherList3.size(); i5++) {
            sb.append("\t").append(otherList3.get(i5)).append("\n");
        }
        if (astronomicalCalendar.getClass().getName().equals("com.kosherjava.zmanim.AstronomicalCalendar")) {
            sb.append("</AstronomicalTimes>");
        } else if (astronomicalCalendar.getClass().getName().equals("com.kosherjava.zmanim.ComplexZmanimCalendar")) {
            sb.append("</Zmanim>");
        } else if (astronomicalCalendar.getClass().getName().equals("com.kosherjava.zmanim.ZmanimCalendar")) {
            sb.append("</BasicZmanim>");
        }
        return sb.toString();
    }

    public static String toJSON(AstronomicalCalendar astronomicalCalendar) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        DateFormat df;
        Date date;
        TimeZone tz;
        ZmanimFormatter formatter = new ZmanimFormatter(5, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss"), astronomicalCalendar.getGeoLocation().getTimeZone());
        DateFormat df2 = new SimpleDateFormat("yyyy-MM-dd");
        df2.setTimeZone(astronomicalCalendar.getGeoLocation().getTimeZone());
        Date date2 = astronomicalCalendar.getCalendar().getTime();
        TimeZone tz2 = astronomicalCalendar.getGeoLocation().getTimeZone();
        boolean daylight = tz2.useDaylightTime() && tz2.inDaylightTime(date2);
        StringBuilder sb = new StringBuilder("{\n\"metadata\":{\n");
        sb.append("\t\"date\":\"").append(df2.format(date2)).append("\",\n");
        sb.append("\t\"type\":\"").append(astronomicalCalendar.getClass().getName()).append("\",\n");
        sb.append("\t\"algorithm\":\"").append(astronomicalCalendar.getAstronomicalCalculator().getCalculatorName()).append("\",\n");
        sb.append("\t\"location\":\"").append(astronomicalCalendar.getGeoLocation().getLocationName()).append("\",\n");
        sb.append("\t\"latitude\":\"").append(astronomicalCalendar.getGeoLocation().getLatitude()).append("\",\n");
        sb.append("\t\"longitude\":\"").append(astronomicalCalendar.getGeoLocation().getLongitude()).append("\",\n");
        sb.append("\t\"elevation\":\"").append(astronomicalCalendar.getGeoLocation().getElevation()).append("\",\n");
        sb.append("\t\"timeZoneName\":\"").append(tz2.getDisplayName(daylight, 1)).append("\",\n");
        sb.append("\t\"timeZoneID\":\"").append(tz2.getID()).append("\",\n");
        StringBuilder sbAppend = sb.append("\t\"timeZoneOffset\":\"");
        double offset = tz2.getOffset(astronomicalCalendar.getCalendar().getTimeInMillis());
        Double.isNaN(offset);
        sbAppend.append(offset / 3600000.0d).append("\"");
        sb.append("},\n\"");
        if (astronomicalCalendar.getClass().getName().equals("com.kosherjava.zmanim.AstronomicalCalendar")) {
            sb.append("AstronomicalTimes");
        } else if (astronomicalCalendar.getClass().getName().equals("com.kosherjava.zmanim.ComplexZmanimCalendar")) {
            sb.append("Zmanim");
        } else if (astronomicalCalendar.getClass().getName().equals("com.kosherjava.zmanim.ZmanimCalendar")) {
            sb.append("BasicZmanim");
        }
        sb.append("\":{\n");
        Method[] theMethods = astronomicalCalendar.getClass().getMethods();
        String tagName = "";
        List<Zman> dateList = new ArrayList<>();
        List<Zman> durationList = new ArrayList<>();
        List<String> otherList = new ArrayList<>();
        int i = 0;
        while (true) {
            String tagName2 = tagName;
            if (i >= theMethods.length) {
                break;
            }
            if (!includeMethod(theMethods[i])) {
                df = df2;
                date = date2;
                tz = tz2;
                tagName = tagName2;
            } else {
                df = df2;
                String tagName3 = theMethods[i].getName().substring(3);
                try {
                    date = date2;
                    try {
                        tz = tz2;
                    } catch (Exception e) {
                        e = e;
                        tz = tz2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    date = date2;
                    tz = tz2;
                }
                try {
                    Object value = theMethods[i].invoke(astronomicalCalendar, null);
                    if (value == null) {
                        otherList.add("\"" + tagName3 + "\":\"N/A\",");
                    } else if (value instanceof Date) {
                        dateList.add(new Zman((Date) value, tagName3));
                    } else if (!(value instanceof Long) && !(value instanceof Integer)) {
                        otherList.add("\"" + tagName3 + "\":\"" + value + "\",");
                    } else if (((Long) value).longValue() == Long.MIN_VALUE) {
                        otherList.add("\"" + tagName3 + "\":\"N/A\"");
                    } else {
                        durationList.add(new Zman((int) ((Long) value).longValue(), tagName3));
                    }
                    tagName = tagName3;
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    tagName = tagName3;
                    i++;
                    df2 = df;
                    date2 = date;
                    tz2 = tz;
                }
            }
            i++;
            df2 = df;
            date2 = date;
            tz2 = tz;
        }
        Collections.sort(dateList, Zman.DATE_ORDER);
        for (int i2 = 0; i2 < dateList.size(); i2++) {
            Zman zman = dateList.get(i2);
            sb.append("\t\"").append(zman.getLabel()).append("\":\"");
            sb.append(formatter.formatDateTime(zman.getZman(), astronomicalCalendar.getCalendar()));
            sb.append("\",\n");
        }
        Collections.sort(durationList, Zman.DURATION_ORDER);
        for (int i3 = 0; i3 < durationList.size(); i3++) {
            Zman zman2 = durationList.get(i3);
            sb.append("\t\"" + zman2.getLabel()).append("\":\"");
            sb.append(formatter.format((int) zman2.getDuration())).append("\",\n");
        }
        for (int i4 = 0; i4 < otherList.size(); i4++) {
            sb.append("\t").append(otherList.get(i4)).append("\n");
        }
        int i5 = sb.length();
        sb.setLength(i5 - 2);
        sb.append("}\n}");
        return sb.toString();
    }

    private static boolean includeMethod(Method method) {
        List<String> methodWhiteList = new ArrayList<>();
        List<String> methodBlackList = new ArrayList<>();
        if (methodWhiteList.contains(method.getName())) {
            return true;
        }
        if (!methodBlackList.contains(method.getName()) && method.getParameterTypes().length <= 0 && method.getName().startsWith("get")) {
            return method.getReturnType().getName().endsWith("Date") || method.getReturnType().getName().endsWith("long");
        }
        return false;
    }
}

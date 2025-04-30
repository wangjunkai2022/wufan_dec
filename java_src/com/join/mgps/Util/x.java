package com.join.mgps.Util;

import com.facebook.common.statfs.StatFsHelper;
import java.sql.Timestamp;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.regex.Pattern;
/* compiled from: DateUtils.java */
/* loaded from: classes3.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public static final SimpleDateFormat f27875a = new SimpleDateFormat("yyyyMMddHHmmssSSS");

    /* renamed from: b  reason: collision with root package name */
    public static final SimpleDateFormat f27876b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

    /* renamed from: c  reason: collision with root package name */
    public static final SimpleDateFormat f27877c = new SimpleDateFormat("HH:mm:ss");

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f27878d = Pattern.compile("^[0-9]{4}[/-][0-9]{1,2}[/-][0-9]{1,2}( +[0-9]{2}(:[0-9]{2}(:[0-9]{2}\\.?[0-9]{0,3})?)?)?$");

    public static String A(long j4) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Long.valueOf(j4));
    }

    public static String B(long j4) {
        return new SimpleDateFormat("EEEE").format(Long.valueOf(j4));
    }

    public static String C(long j4) {
        return new SimpleDateFormat("yyyy.MM.dd").format(Long.valueOf(j4));
    }

    public static Date D(String str) {
        return new SimpleDateFormat("yyyy-MM-dd").parse(str, new ParsePosition(0));
    }

    public static Date E(String str) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str, new ParsePosition(0));
    }

    public static synchronized Date F(String str) {
        Date date;
        synchronized (x.class) {
            try {
            } catch (Exception e4) {
                e4.printStackTrace();
                date = null;
            }
            if (f27878d.matcher(str).matches()) {
                String replaceAll = str.replaceAll("[/ :.-]", "");
                if (replaceAll.length() >= 8) {
                    while (replaceAll.length() < 17) {
                        replaceAll = replaceAll + "0";
                    }
                    date = f27875a.parse(replaceAll);
                } else {
                    throw new Exception();
                }
            } else {
                throw new Exception(str + " is not a date format.");
            }
        }
        return date;
    }

    public static int a(long j4, long j5) {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
            String format = simpleDateFormat.format(Long.valueOf(j4));
            String format2 = simpleDateFormat.format(Long.valueOf(j5));
            if (format.equals("0")) {
                format = "19000101";
            }
            calendar.setTime(simpleDateFormat.parse(format));
            calendar2.setTime(simpleDateFormat.parse(format2));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return (int) (((((calendar2.getTimeInMillis() - calendar.getTimeInMillis()) / 1000) / 60) / 60) / 24);
    }

    public static synchronized String b(Object obj) {
        String format;
        synchronized (x.class) {
            format = obj instanceof Date ? f27876b.format((Date) obj) : null;
        }
        return format;
    }

    public static synchronized String c(Timestamp timestamp) {
        String format;
        synchronized (x.class) {
            format = f27876b.format((Date) timestamp);
        }
        return format;
    }

    public static synchronized String d(Date date) {
        String format;
        synchronized (x.class) {
            format = f27876b.format(date);
        }
        return format;
    }

    public static String e(Date date, String str) {
        return new SimpleDateFormat(str).format(date);
    }

    public static String f(int i2) {
        String str;
        String str2;
        if (i2 >= 0 && i2 < 60) {
            if (i2 < 10) {
                return "00:0" + i2;
            }
            return "00:" + i2;
        } else if (i2 >= 60 && i2 < 3600) {
            int i4 = i2 / 60;
            int i5 = i2 % 60;
            if (i4 < 10) {
                str = "0" + i4;
            } else {
                str = "" + i4;
            }
            if (i5 < 10) {
                str2 = "0" + i5;
            } else {
                str2 = "" + i5;
            }
            return str + ":" + str2;
        } else {
            return (i2 / 3600) + "小时";
        }
    }

    public static String g(int i2) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        if (i2 >= 0 && i2 < 60) {
            if (i2 < 10) {
                return "00:0" + i2;
            }
            return "00:" + i2;
        } else if (i2 >= 60 && i2 < 3600) {
            int i4 = i2 / 60;
            int i5 = i2 % 60;
            if (i4 < 10) {
                str4 = "0" + i4;
            } else {
                str4 = "" + i4;
            }
            if (i5 < 10) {
                str5 = "0" + i5;
            } else {
                str5 = "" + i5;
            }
            return str4 + ":" + str5;
        } else {
            int i6 = i2 / 3600;
            int i7 = (i2 - (i6 * 3600)) / 60;
            int i8 = i2 % 60;
            if (i6 < 10) {
                str = "0" + i6;
            } else {
                str = "" + i6;
            }
            if (i7 < 10) {
                str2 = "0" + i7;
            } else {
                str2 = "" + i7;
            }
            if (i8 < 10) {
                str3 = "0" + i8;
            } else {
                str3 = "" + i8;
            }
            return str + ":" + str2 + ":" + str3;
        }
    }

    public static String h(long j4) {
        return new SimpleDateFormat("HH").format(new Date(j4));
    }

    public static Date i() {
        return new Date();
    }

    public static String j(long j4) {
        return new SimpleDateFormat("yyyy.MM.dd").format(new Date(j4));
    }

    public static String k(long j4) {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(j4));
    }

    public static String l() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    public static String m(long j4) {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(j4));
    }

    public static String n() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()).substring(14, 16);
    }

    public static String o(long j4) {
        return new SimpleDateFormat("MM月dd日").format(Long.valueOf(j4));
    }

    public static String p(long j4) {
        return new SimpleDateFormat("MM月dd日 HH:mm").format(Long.valueOf(j4));
    }

    public static String q(long j4) {
        return new SimpleDateFormat("yyyy").format(Long.valueOf(j4));
    }

    public static String r(String str) {
        return new SimpleDateFormat(str).format(new Date());
    }

    public static boolean s(String str) {
        Date D = D(str);
        GregorianCalendar gregorianCalendar = (GregorianCalendar) Calendar.getInstance();
        gregorianCalendar.setTime(D);
        int i2 = gregorianCalendar.get(1);
        if (i2 % StatFsHelper.f11741h == 0) {
            return true;
        }
        return i2 % 4 == 0 && i2 % 100 != 0;
    }

    public static boolean t(long j4) {
        Date date = new Date(j4);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(date).equals(simpleDateFormat.format(new Date()));
    }

    public static String u(long j4) {
        return new SimpleDateFormat("yyyy.MM.dd HH:mm").format(Long.valueOf(j4 * 1000));
    }

    public static String v(long j4) {
        return new SimpleDateFormat("HH:mm:ss").format(Long.valueOf(j4 - 28800000));
    }

    public static String w(long j4) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Long.valueOf(j4 * 1000));
    }

    public static String x(long j4, String str) {
        return new SimpleDateFormat(str).format(Long.valueOf(j4));
    }

    public static String y(long j4) {
        return new SimpleDateFormat("dd").format(Long.valueOf(j4));
    }

    public static String z(long j4) {
        return new SimpleDateFormat("HH:mm").format(Long.valueOf(j4));
    }
}

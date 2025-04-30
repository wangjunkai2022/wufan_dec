package com.fasterxml.jackson.databind.util;

import com.ss.android.download.api.constant.BaseConstants;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
@Deprecated
/* loaded from: classes2.dex */
public class ISO8601Utils {
    protected static final int DEF_8601_LEN = 29;
    private static final TimeZone TIMEZONE_Z = TimeZone.getTimeZone("UTC");

    private static boolean checkOffset(String str, int i2, char c4) {
        return i2 < str.length() && str.charAt(i2) == c4;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_Z);
    }

    private static int indexOfNonDigit(String str, int i2) {
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (charAt < '0' || charAt > '9') {
                return i2;
            }
            i2++;
        }
        return str.length();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00cf A[Catch: Exception -> 0x01a3, TryCatch #0 {Exception -> 0x01a3, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:47:0x00c9, B:49:0x00cf, B:51:0x00d5, B:71:0x016a, B:55:0x00df, B:56:0x00fa, B:57:0x00fb, B:59:0x010c, B:62:0x0115, B:64:0x0134, B:67:0x0143, B:68:0x0165, B:70:0x0168, B:73:0x019b, B:74:0x01a2, B:40:0x00b0, B:41:0x00b3), top: B:86:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019b A[Catch: Exception -> 0x01a3, TryCatch #0 {Exception -> 0x01a3, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:47:0x00c9, B:49:0x00cf, B:51:0x00d5, B:71:0x016a, B:55:0x00df, B:56:0x00fa, B:57:0x00fb, B:59:0x010c, B:62:0x0115, B:64:0x0134, B:67:0x0143, B:68:0x0165, B:70:0x0168, B:73:0x019b, B:74:0x01a2, B:40:0x00b0, B:41:0x00b3), top: B:86:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date parse(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static int parseInt(String str, int i2, int i4) throws NumberFormatException {
        int i5;
        int i6;
        if (i2 < 0 || i4 > str.length() || i2 > i4) {
            throw new NumberFormatException(str);
        }
        if (i2 < i4) {
            i5 = i2 + 1;
            int digit = Character.digit(str.charAt(i2), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i2, i4));
            }
            i6 = -digit;
        } else {
            i5 = i2;
            i6 = 0;
        }
        while (i5 < i4) {
            int i7 = i5 + 1;
            int digit2 = Character.digit(str.charAt(i5), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i2, i4));
            }
            i6 = (i6 * 10) - digit2;
            i5 = i7;
        }
        return -i6;
    }

    public static String format(Date date, boolean z3) {
        return format(date, z3, TIMEZONE_Z);
    }

    @Deprecated
    public static String format(Date date, boolean z3, TimeZone timeZone) {
        return format(date, z3, timeZone, Locale.US);
    }

    public static String format(Date date, boolean z3, TimeZone timeZone, Locale locale) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, locale);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(30);
        sb.append(String.format("%04d-%02d-%02dT%02d:%02d:%02d", Integer.valueOf(gregorianCalendar.get(1)), Integer.valueOf(gregorianCalendar.get(2) + 1), Integer.valueOf(gregorianCalendar.get(5)), Integer.valueOf(gregorianCalendar.get(11)), Integer.valueOf(gregorianCalendar.get(12)), Integer.valueOf(gregorianCalendar.get(13))));
        if (z3) {
            sb.append(String.format(".%03d", Integer.valueOf(gregorianCalendar.get(14))));
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i2 = offset / BaseConstants.Time.MINUTE;
            int abs = Math.abs(i2 / 60);
            int abs2 = Math.abs(i2 % 60);
            Object[] objArr = new Object[3];
            objArr[0] = Character.valueOf(offset < 0 ? '-' : '+');
            objArr[1] = Integer.valueOf(abs);
            objArr[2] = Integer.valueOf(abs2);
            sb.append(String.format("%c%02d:%02d", objArr));
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }
}

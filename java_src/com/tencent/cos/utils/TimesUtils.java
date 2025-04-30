package com.tencent.cos.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
/* loaded from: classes4.dex */
public class TimesUtils {
    public static String timeUtils(long j4, String str) {
        Date date = new Date(j4);
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        return new SimpleDateFormat(str, Locale.CHINA).format(gregorianCalendar.getTime());
    }
}

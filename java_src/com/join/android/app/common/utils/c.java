package com.join.android.app.common.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/* compiled from: DateUtils.java */
/* loaded from: classes.dex */
public class c {
    public static String a(long j4) {
        long currentTimeMillis = System.currentTimeMillis() - j4;
        if (currentTimeMillis < 60000) {
            return "刚刚";
        }
        if (currentTimeMillis < 3600000) {
            return (currentTimeMillis / 60000) + "分钟前";
        } else if (currentTimeMillis < 86400000) {
            return (currentTimeMillis / 3600000) + "小时前";
        } else if (currentTimeMillis < 2592000000L) {
            return (currentTimeMillis / 86400000) + "天前";
        } else if (currentTimeMillis < 31104000000L) {
            return (currentTimeMillis / 2592000000L) + "月前";
        } else {
            return (currentTimeMillis / 31104000000L) + "年前";
        }
    }

    public static String b(long j4) {
        long currentTimeMillis = System.currentTimeMillis() - j4;
        if (currentTimeMillis < 60000) {
            return "刚刚";
        }
        if (currentTimeMillis < 3600000) {
            return (currentTimeMillis / 60000) + "分钟前";
        } else if (currentTimeMillis < 86400000) {
            return (currentTimeMillis / 3600000) + "小时前";
        } else if (currentTimeMillis < 2592000000L) {
            return (currentTimeMillis / 86400000) + "天前";
        } else if (currentTimeMillis < 31104000000L) {
            return (currentTimeMillis / 2592000000L) + "月前";
        } else {
            return (currentTimeMillis / 31104000000L) + "年前";
        }
    }

    public static String c(long j4) {
        long currentTimeMillis = System.currentTimeMillis();
        long j5 = j4 - currentTimeMillis;
        if (g(j4)) {
            return "今天";
        }
        if (j5 >= 0) {
            if (j5 < 3600000) {
                return "今天";
            }
            if (j5 < 86400000) {
                return "明天";
            }
            if (j5 < 2592000000L) {
                return (j5 / 86400000) + "天后";
            } else if (j5 < 31104000000L) {
                return (j5 / 2592000000L) + "月后";
            } else {
                return (j5 / 31104000000L) + "年后";
            }
        }
        long j6 = currentTimeMillis - j4;
        if (j6 >= 60000 && j6 >= 3600000) {
            if (j6 < 86400000) {
                return "昨天";
            }
            if (j6 < 2592000000L) {
                return (j6 / 86400000) + "天前";
            } else if (j6 < 31104000000L) {
                return (j6 / 2592000000L) + "月前";
            } else {
                return (j6 / 31104000000L) + "年前";
            }
        }
        return "今天";
    }

    public static String d(long j4) {
        long currentTimeMillis = j4 - System.currentTimeMillis();
        if (currentTimeMillis < 0) {
            return "已开服";
        }
        if (currentTimeMillis < 3600000) {
            return (currentTimeMillis / 60000) + "天";
        } else if (currentTimeMillis < 86400000) {
            return (currentTimeMillis / 3600000) + "天";
        } else if (currentTimeMillis < 2592000000L) {
            return (currentTimeMillis / 86400000) + "天";
        } else if (currentTimeMillis < 31104000000L) {
            return (currentTimeMillis / 2592000000L) + "月";
        } else {
            return (currentTimeMillis / 31104000000L) + "年";
        }
    }

    public static String e(long j4) {
        int i2 = (int) (j4 / 1000);
        int i4 = i2 % 60;
        int i5 = (i2 / 60) % 60;
        int i6 = i2 / 3600;
        return i6 > 0 ? String.format("%02d:%02d:%02d", Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i4)) : String.format("%02d:%02d", Integer.valueOf(i5), Integer.valueOf(i4));
    }

    public static String f(long j4) {
        Date date = new Date(j4);
        String[] strArr = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i2 = calendar.get(7) - 1;
        if (i2 < 0) {
            i2 = 0;
        }
        return strArr[i2];
    }

    public static boolean g(long j4) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j4);
        int i2 = calendar.get(1);
        int i4 = calendar.get(2);
        int i5 = calendar.get(5);
        calendar.setTimeInMillis(System.currentTimeMillis());
        return i2 == calendar.get(1) && i4 == calendar.get(2) && i5 == calendar.get(5);
    }

    public static String h(String str, Long l4) {
        return new SimpleDateFormat(str).format(new Date(l4.longValue()));
    }
}

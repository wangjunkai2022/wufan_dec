package com.join.mgps.Util;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.regex.Pattern;
/* compiled from: StringUtils.java */
/* loaded from: classes.dex */
public class d2 {
    public static String a(long j4) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (j4 <= 999999) {
            return decimalFormat.format(j4) + "魅力";
        } else if (j4 <= 99999999) {
            DecimalFormat decimalFormat2 = new DecimalFormat("##0.0");
            StringBuilder sb = new StringBuilder();
            double d4 = j4;
            Double.isNaN(d4);
            sb.append(decimalFormat2.format(d4 / 10000.0d));
            sb.append("万魅力");
            return sb.toString();
        } else if (j4 <= 99999999999L) {
            DecimalFormat decimalFormat3 = new DecimalFormat("##0.00");
            StringBuilder sb2 = new StringBuilder();
            double d5 = j4;
            Double.isNaN(d5);
            sb2.append(decimalFormat3.format(d5 / 10000.0d));
            sb2.append("亿魅力");
            return sb2.toString();
        } else {
            return "1000+亿魅力";
        }
    }

    public static String b(int i2) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (i2 < 10000) {
            return decimalFormat.format(i2) + "";
        } else if (i2 < 1000000) {
            DecimalFormat decimalFormat2 = new DecimalFormat("##0.0");
            StringBuilder sb = new StringBuilder();
            double d4 = i2;
            Double.isNaN(d4);
            sb.append(decimalFormat2.format(d4 / 10000.0d));
            sb.append("万");
            return sb.toString();
        } else {
            return "100万+";
        }
    }

    public static String c(int i2) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (i2 < 10000) {
            return decimalFormat.format(i2) + "热度";
        } else if (i2 < 1000000) {
            DecimalFormat decimalFormat2 = new DecimalFormat("##0.0");
            StringBuilder sb = new StringBuilder();
            double d4 = i2;
            Double.isNaN(d4);
            sb.append(decimalFormat2.format(d4 / 10000.0d));
            sb.append("万热度");
            return sb.toString();
        } else if (i2 < 10000000) {
            StringBuilder sb2 = new StringBuilder();
            double d5 = i2;
            Double.isNaN(d5);
            sb2.append(decimalFormat.format(d5 / 10000.0d));
            sb2.append("万热度");
            return sb2.toString();
        } else {
            return "999万+热度";
        }
    }

    public static String d(int i2) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (i2 < 10000) {
            return decimalFormat.format(i2) + "";
        } else if (i2 < 1000000) {
            DecimalFormat decimalFormat2 = new DecimalFormat("##0.0");
            StringBuilder sb = new StringBuilder();
            double d4 = i2;
            Double.isNaN(d4);
            sb.append(decimalFormat2.format(d4 / 10000.0d));
            sb.append("万");
            return sb.toString();
        } else if (i2 < 10000000) {
            StringBuilder sb2 = new StringBuilder();
            double d5 = i2;
            Double.isNaN(d5);
            sb2.append(decimalFormat.format(d5 / 10000.0d));
            sb2.append("万");
            return sb2.toString();
        } else {
            return "999万+";
        }
    }

    public static String e(int i2) {
        DecimalFormat decimalFormat;
        DecimalFormat decimalFormat2 = new DecimalFormat("#");
        if (i2 < 1000) {
            return decimalFormat2.format(i2) + "";
        } else if (i2 < 10000) {
            new DecimalFormat("##0.0").setRoundingMode(RoundingMode.DOWN);
            return decimalFormat.format(i2 / 1000.0f) + "K";
        } else if (i2 < 100000) {
            DecimalFormat decimalFormat3 = new DecimalFormat("##0.0");
            decimalFormat3.setRoundingMode(RoundingMode.DOWN);
            StringBuilder sb = new StringBuilder();
            double d4 = i2;
            Double.isNaN(d4);
            sb.append(decimalFormat3.format(d4 / 10000.0d));
            sb.append("W");
            return sb.toString();
        } else {
            return "10W+";
        }
    }

    public static String f(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        int lastIndexOf2 = str.lastIndexOf(46);
        if (lastIndexOf2 == -1) {
            lastIndexOf2 = str.length();
        }
        if (lastIndexOf == -1) {
            return str.substring(0, lastIndexOf2);
        }
        return str.substring(lastIndexOf + 1, lastIndexOf2);
    }

    public static String g(String str) {
        return str == null ? "" : str;
    }

    public static boolean h(String str) {
        return str == null || str.equals("");
    }

    public static boolean i(String str) {
        return (str == null || str.equals("")) ? false : true;
    }

    public static boolean j(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    public static double k(double d4) {
        if (d4 <= 0.0d || d4 > 1.0d) {
            if (d4 <= 1.0d || d4 > 2.0d) {
                if (d4 <= 2.0d || d4 > 3.0d) {
                    if (d4 <= 3.0d || d4 > 4.0d) {
                        if (d4 <= 4.0d || d4 > 5.0d) {
                            if (d4 <= 5.0d || d4 > 6.0d) {
                                if (d4 <= 6.0d || d4 > 7.0d) {
                                    if (d4 <= 7.0d || d4 > 8.0d) {
                                        if (d4 <= 8.0d || d4 > 9.0d) {
                                            return (d4 <= 9.0d || d4 > 10.0d) ? 0.0d : 5.0d;
                                        }
                                        return 4.5d;
                                    }
                                    return 4.0d;
                                }
                                return 3.5d;
                            }
                            return 3.0d;
                        }
                        return 2.5d;
                    }
                    return 2.0d;
                }
                return 1.5d;
            }
            return 1.0d;
        }
        return 0.5d;
    }

    public static String l(double d4) {
        return new DecimalFormat("0.00").format((Math.floor(d4) * 1.0d) / 100.0d);
    }
}

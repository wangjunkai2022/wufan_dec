package com.ta.utdid2.android.utils;
/* loaded from: classes4.dex */
public class i {
    public static String a(Object obj) {
        if (obj != null) {
            if (obj instanceof String) {
                return (String) obj;
            }
            if (obj instanceof Integer) {
                StringBuilder sb = new StringBuilder();
                sb.append(((Integer) obj).intValue());
                return sb.toString();
            } else if (obj instanceof Long) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(((Long) obj).longValue());
                return sb2.toString();
            } else if (obj instanceof Double) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(((Double) obj).doubleValue());
                return sb3.toString();
            } else if (obj instanceof Float) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(((Float) obj).floatValue());
                return sb4.toString();
            } else if (obj instanceof Short) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append((int) ((Short) obj).shortValue());
                return sb5.toString();
            } else if (obj instanceof Byte) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append((int) ((Byte) obj).byteValue());
                return sb6.toString();
            } else if (obj instanceof Boolean) {
                return ((Boolean) obj).toString();
            } else {
                if (obj instanceof Character) {
                    return ((Character) obj).toString();
                }
                return obj.toString();
            }
        }
        return "";
    }

    public static int b(String str) {
        if (str.length() > 0) {
            int i2 = 0;
            for (char c4 : str.toCharArray()) {
                i2 = (i2 * 31) + c4;
            }
            return i2;
        }
        return 0;
    }

    public static boolean c(String str) {
        return str == null || str.length() <= 0;
    }
}

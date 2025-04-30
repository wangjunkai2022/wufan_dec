package com.tencent.cos.utils;
/* loaded from: classes4.dex */
public class StringUtils {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final String sfEmptyString = "";

    public static String bytesToAscii(byte[] bArr, int i2) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < i2; i4++) {
            try {
                sb.append((char) ((bArr[i4] + 256) % 256));
            } catch (Exception unused) {
                return null;
            }
        }
        return sb.toString();
    }

    public static String getEmptyString(String str) {
        return str == null ? "" : str;
    }

    public static boolean isIpv4String(String str) {
        int parseInt;
        int parseInt2;
        if (str == null) {
            return false;
        }
        String[] split = str.split("\\.");
        if (split.length != 4) {
            return false;
        }
        try {
            int parseInt3 = Integer.parseInt(split[0]);
            if (parseInt3 > 0 && parseInt3 <= 255 && (parseInt = Integer.parseInt(split[1])) >= 0 && parseInt <= 255 && (parseInt2 = Integer.parseInt(split[2])) >= 0 && parseInt2 <= 255) {
                int parseInt4 = Integer.parseInt(split[3]);
                if (parseInt4 >= 0 && parseInt4 <= 255) {
                    return true;
                }
            }
        } catch (NumberFormatException unused) {
        }
        return false;
    }

    public static boolean objEqual(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static String toHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            char[] cArr = HEX_DIGITS;
            sb.append(cArr[(bArr[i2] & 240) >>> 4]);
            sb.append(cArr[bArr[i2] & 15]);
        }
        return sb.toString();
    }
}

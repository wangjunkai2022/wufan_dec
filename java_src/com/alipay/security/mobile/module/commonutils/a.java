package com.alipay.security.mobile.module.commonutils;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes2.dex */
public final class a {
    public static String a(Map<String, String> map, String str, String str2) {
        String str3;
        return (map == null || (str3 = map.get(str)) == null) ? str2 : str3;
    }

    public static boolean b(String str) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            for (int i2 = 0; i2 < length; i2++) {
                if (!Character.isWhitespace(str.charAt(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean c(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    public static boolean d(String str) {
        return !b(str);
    }

    private static boolean e(String str, String str2) {
        return str == null ? str2 == null : str.equalsIgnoreCase(str2);
    }

    public static String f(String str) {
        return b(str) ? "" : str;
    }

    public static String g(String str) {
        try {
            if (b(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < digest.length; i2++) {
                sb.append(String.format("%02x", Byte.valueOf(digest[i2])));
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String h(String str) {
        try {
            byte[] array = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(str.length()).array();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length());
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes("UTF-8"));
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            byte[] bArr = new byte[byteArrayOutputStream.toByteArray().length + 4];
            System.arraycopy(array, 0, bArr, 0, 4);
            System.arraycopy(byteArrayOutputStream.toByteArray(), 0, bArr, 4, byteArrayOutputStream.toByteArray().length);
            return Base64.encodeToString(bArr, 8);
        } catch (Exception unused) {
            return "";
        }
    }

    private static boolean i(String str) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            for (int i2 = 0; i2 < length; i2++) {
                if (!Character.isWhitespace(str.charAt(i2)) && str.charAt(i2) != '0') {
                    return false;
                }
            }
        }
        return true;
    }
}

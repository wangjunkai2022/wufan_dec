package com.alipay.security.mobile.module.commonutils.crypto;

import java.security.MessageDigest;
/* loaded from: classes2.dex */
public final class d {
    public static String a(String str) {
        try {
            if (com.alipay.security.mobile.module.commonutils.a.b(str)) {
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

    private static String b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < digest.length; i2++) {
                sb.append(String.format("%02x", Byte.valueOf(digest[i2])));
            }
            return sb.toString();
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    private static byte[] c(String str) {
        try {
            if (com.alipay.security.mobile.module.commonutils.a.b(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            return messageDigest.digest();
        } catch (Exception unused) {
            return null;
        }
    }

    private static String d(String str) {
        try {
            if (com.alipay.security.mobile.module.commonutils.a.b(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < 16; i2++) {
                sb.append(String.format("%02x", Byte.valueOf(digest[i2])));
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}

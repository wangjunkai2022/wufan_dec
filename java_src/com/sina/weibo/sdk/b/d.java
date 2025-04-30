package com.sina.weibo.sdk.b;

import java.security.MessageDigest;
/* loaded from: classes4.dex */
public final class d {
    private static final char[] aj = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            char[] cArr = new char[32];
            int i2 = 0;
            for (int i4 = 0; i4 < 16; i4++) {
                byte b4 = digest[i4];
                int i5 = i2 + 1;
                char[] cArr2 = aj;
                cArr[i2] = cArr2[(b4 >>> 4) & 15];
                i2 = i5 + 1;
                cArr[i5] = cArr2[b4 & 15];
            }
            return new String(cArr);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String f(String str) {
        try {
            return a(str.getBytes());
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}

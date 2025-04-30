package com.switfpass.pay.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes4.dex */
public class w {
    private w() {
    }

    public static final String a(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[digest.length << 1];
            int i2 = 0;
            for (byte b4 : digest) {
                int i4 = i2 + 1;
                cArr2[i2] = cArr[(b4 >>> 4) & 15];
                i2 = i4 + 1;
                cArr2[i4] = cArr[b4 & 15];
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (int i2 = 0; i2 < digest.length; i2++) {
                int i4 = digest[i2];
                if (i4 < 0) {
                    i4 += 256;
                }
                if (i4 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i4));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            return "";
        }
    }
}

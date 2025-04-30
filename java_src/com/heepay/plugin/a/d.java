package com.heepay.plugin.a;

import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;
/* loaded from: classes2.dex */
public class d {
    public static byte a(char c4) {
        int i2;
        if (c4 < '0' || c4 > '9') {
            char c5 = 'a';
            if (c4 < 'a' || c4 > 'f') {
                c5 = 'A';
                if (c4 < 'A' || c4 > 'F') {
                    return (byte) 0;
                }
            }
            i2 = (c4 - c5) + 10;
        } else {
            i2 = c4 - '0';
        }
        return (byte) i2;
    }

    private static char a(byte b4) {
        byte b5 = (byte) (b4 & 15);
        return (char) (b5 < 10 ? b5 + 48 : (b5 + 65) - 10);
    }

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b4 : digest) {
                String hexString = Integer.toHexString(b4 & 255);
                int length = hexString.length();
                if (length == 0) {
                    hexString = "00";
                } else if (length == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString().toLowerCase();
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static String a(String str, String str2, String str3) {
        String substring = str2.substring(0, 8);
        String substring2 = str2.substring(8, 16);
        String substring3 = str2.substring(16, 24);
        boolean equalsIgnoreCase = "ToHex16".equalsIgnoreCase(str3);
        byte[] bytes = str.getBytes("UTF-8");
        int length = (bytes.length + 8) & (-8);
        if (length != bytes.length) {
            byte[] bArr = new byte[length];
            for (int i2 = 0; i2 < bytes.length; i2++) {
                bArr[i2] = bytes[i2];
            }
            for (int length2 = bytes.length; length2 < length; length2++) {
                bArr[length2] = (byte) (length - bytes.length);
            }
            bytes = bArr;
        }
        byte[] bArr2 = new byte[bytes.length];
        byte[] bArr3 = new byte[8];
        int i4 = 0;
        while (true) {
            int i5 = i4 + 8;
            if (i5 > bytes.length) {
                break;
            }
            byte[] bArr4 = new byte[8];
            for (int i6 = 0; i6 < 8; i6++) {
                bArr4[i6] = bytes[i4 + i6];
            }
            if (i4 == 0) {
                bArr3 = substring.getBytes("UTF-8");
            } else {
                for (int i7 = 0; i7 < 8; i7++) {
                    bArr3[i7] = bArr2[(i4 + i7) - 8];
                }
            }
            byte[] b4 = b(a(b(bArr4, substring, "DES/ECB/NoPadding", bArr3), substring2, "DES/ECB/NoPadding", null), substring3, "DES/ECB/NoPadding", null);
            for (int i8 = 0; i8 < 8; i8++) {
                bArr2[i4 + i8] = b4[i8];
            }
            i4 = i5;
        }
        return equalsIgnoreCase ? a(bArr2) : c.a(bArr2);
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < bArr.length; i2++) {
            stringBuffer.append(a((byte) ((bArr[i2] & 240) >> 4)));
            stringBuffer.append(a((byte) (bArr[i2] & 15)));
        }
        return stringBuffer.toString();
    }

    public static byte[] a(PublicKey publicKey, String str) {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKey);
        return cipher.doFinal(str.getBytes("UTF-8"));
    }

    public static byte[] a(byte[] bArr, String str, String str2, byte[] bArr2) {
        Cipher cipher = Cipher.getInstance(str2);
        SecretKey generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(str.getBytes("UTF-8")));
        if (!str2.contains("/CBC/") || bArr2 == null) {
            cipher.init(2, generateSecret);
        } else {
            cipher.init(2, generateSecret, new IvParameterSpec(bArr2));
        }
        return cipher.doFinal(bArr);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        SecretKey generateSecret = SecretKeyFactory.getInstance("desede").generateSecret(new DESedeKeySpec(bArr));
        Cipher cipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
        cipher.init(1, generateSecret, new IvParameterSpec(bArr2));
        return cipher.doFinal(bArr3);
    }

    public static byte[] b(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i4 = i2 * 2;
            bArr[i2] = (byte) ((a(str.charAt(i4)) << 4) + a(str.charAt(i4 + 1)));
        }
        return bArr;
    }

    public static byte[] b(byte[] bArr, String str, String str2, byte[] bArr2) {
        Cipher cipher = Cipher.getInstance(str2);
        SecretKey generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(str.getBytes("UTF-8")));
        if (str2.contains("/CBC/")) {
            cipher.init(1, generateSecret, new IvParameterSpec(bArr2));
        } else {
            cipher.init(1, generateSecret);
        }
        return cipher.doFinal(bArr);
    }

    public static PublicKey c(String str) {
        try {
            return CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(b(str))).getPublicKey();
        } catch (Exception unused) {
            com.heepay.plugin.c.c.e("WebService", "数据分析出错");
            return null;
        }
    }
}

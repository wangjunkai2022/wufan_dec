package com.join.mgps.Util;

import com.papa91.pay.core.PapaCore;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3.dex */
public class AESUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final String f27374a = "AESUtils";

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b4 : bArr) {
            String hexString = Integer.toHexString(b4 & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    private static byte b(char c4) {
        return (byte) net.lingala.zip4j.crypto.PBKDF2.a.f72880a.indexOf(c4);
    }

    public static String c(String str) {
        try {
            byte[] g4 = g(str.toLowerCase());
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            new IvParameterSpec("5efd3f6060e20330".getBytes());
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(g4));
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String d(String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
            int blockSize = cipher.getBlockSize();
            byte[] bytes = str.getBytes();
            int length = bytes.length;
            if (length % blockSize != 0) {
                length += blockSize - (length % blockSize);
            }
            byte[] bArr = new byte[length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            new IvParameterSpec("5efd3f6060e20330".getBytes());
            cipher.init(1, secretKeySpec);
            return a(cipher.doFinal(bArr));
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static String decrypt(String str) {
        if (d2.h(str)) {
            return "";
        }
        t0.d("appcrypt5", str);
        if (str.contains("#isEncrypted#")) {
            try {
                byte[] nativeDecrypt = PapaCore.nativeDecrypt(k.a(str.replace("#isEncrypted#", "")));
                t0.d("appcrypt7", new String(nativeDecrypt));
                return new String(k.a(new String(nativeDecrypt)));
            } catch (Exception e4) {
                e4.printStackTrace();
                return "";
            }
        }
        return str;
    }

    public static byte[] decryptBuf(String str) {
        if (d2.h(str)) {
            return new byte[0];
        }
        t0.d("appcrypt5", str);
        if (str.contains("#isEncrypted#")) {
            try {
                byte[] nativeDecrypt = PapaCore.nativeDecrypt(k.a(str.replace("#isEncrypted#", "")));
                t0.d("appcrypt7", new String(nativeDecrypt));
                return k.a(new String(nativeDecrypt));
            } catch (Exception e4) {
                e4.printStackTrace();
                return new byte[0];
            }
        }
        return new byte[0];
    }

    public static String e(byte[] bArr) {
        String str;
        String str2 = "";
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            str2 = k.b(PapaCore.nativeEncrypt(k.b(bArr).getBytes()));
            str = str2 + "#isEncrypted#";
        } catch (Exception e4) {
            e4.printStackTrace();
            str = str2;
        }
        t0.d("appcrypt4", str);
        return str;
    }

    public static String encrypt(String str) {
        return d2.h(str) ? "" : e(str.getBytes());
    }

    public static String f(String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS7Padding");
            cipher.init(1, new SecretKeySpec("625202f9149e061d".getBytes(), "AES"));
            return a(cipher.doFinal(str.getBytes())).toUpperCase();
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static byte[] g(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        String upperCase = str.toUpperCase();
        int length = upperCase.length() / 2;
        char[] charArray = upperCase.toCharArray();
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i4 = i2 * 2;
            bArr[i2] = (byte) (b(charArray[i4 + 1]) | (b(charArray[i4]) << 4));
        }
        return bArr;
    }
}

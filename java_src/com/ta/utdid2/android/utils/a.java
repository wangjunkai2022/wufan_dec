package com.ta.utdid2.android.utils;

import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f59135a = "AESUtils";

    private static void a(StringBuffer stringBuffer, byte b4) {
        stringBuffer.append(net.lingala.zip4j.crypto.PBKDF2.a.f72880a.charAt((b4 >> 4) & 15));
        stringBuffer.append(net.lingala.zip4j.crypto.PBKDF2.a.f72880a.charAt(b4 & 15));
    }

    public static String b(String str, String str2) {
        try {
            return new String(c(g(str.getBytes()), h(str2)));
        } catch (Exception unused) {
            return null;
        }
    }

    private static byte[] c(byte[] bArr, byte[] bArr2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
        return cipher.doFinal(bArr2);
    }

    public static String d(String str, String str2) {
        byte[] bArr;
        try {
            bArr = e(g(str.getBytes()), str2.getBytes());
        } catch (Exception e4) {
            e4.printStackTrace();
            bArr = null;
        }
        if (bArr != null) {
            return j(bArr);
        }
        return null;
    }

    private static byte[] e(byte[] bArr, byte[] bArr2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
        return cipher.doFinal(bArr2);
    }

    public static String f(String str) {
        return new String(h(str));
    }

    private static byte[] g(byte[] bArr) throws Exception {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
        secureRandom.setSeed(bArr);
        keyGenerator.init(128, secureRandom);
        return keyGenerator.generateKey().getEncoded();
    }

    public static byte[] h(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i4 = i2 * 2;
            bArr[i2] = Integer.valueOf(str.substring(i4, i4 + 2), 16).byteValue();
        }
        return bArr;
    }

    public static String i(String str) {
        return j(str.getBytes());
    }

    public static String j(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b4 : bArr) {
            a(stringBuffer, b4);
        }
        return stringBuffer.toString();
    }
}

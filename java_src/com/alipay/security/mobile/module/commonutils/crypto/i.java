package com.alipay.security.mobile.module.commonutils.crypto;

import android.annotation.SuppressLint;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final String f9896a = "SecurityUtils";

    /* renamed from: b  reason: collision with root package name */
    private static String f9897b = new String("idnjfhncnsfuobcnt847y929o449u474w7j3h22aoddc98euk#%&&)*&^%#");

    public static String a() {
        String str = new String();
        for (int i2 = 0; i2 < f9897b.length() - 1; i2 += 4) {
            str = str + f9897b.charAt(i2);
        }
        return str;
    }

    private static String b(String str) {
        return g(str.getBytes());
    }

    public static String c(String str, String str2) {
        byte[] bArr;
        try {
            byte[] d4 = d(str.getBytes());
            byte[] bytes = str2.getBytes();
            SecretKeySpec secretKeySpec = new SecretKeySpec(d4, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
            bArr = cipher.doFinal(bytes);
        } catch (Exception unused) {
            bArr = null;
        }
        return g(bArr);
    }

    @SuppressLint({"TrulyRandom"})
    private static byte[] d(byte[] bArr) {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
        h.a(secureRandom, h.b(new String(a.b("c2VlZA==")), SecureRandom.class, bArr.getClass()), new Object[]{bArr});
        keyGenerator.init(128, secureRandom);
        return keyGenerator.generateKey().getEncoded();
    }

    private static String e(String str) {
        return new String(h(str));
    }

    public static String f(String str, String str2) {
        try {
            byte[] d4 = d(str.getBytes());
            byte[] h4 = h(str2);
            SecretKeySpec secretKeySpec = new SecretKeySpec(d4, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
            return new String(cipher.doFinal(h4));
        } catch (Exception unused) {
            return null;
        }
    }

    private static String g(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b4 : bArr) {
            stringBuffer.append(net.lingala.zip4j.crypto.PBKDF2.a.f72880a.charAt((b4 >> 4) & 15));
            stringBuffer.append(net.lingala.zip4j.crypto.PBKDF2.a.f72880a.charAt(b4 & 15));
        }
        return stringBuffer.toString();
    }

    private static byte[] h(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i4 = i2 * 2;
            bArr[i2] = Integer.valueOf(str.substring(i4, i4 + 2), 16).byteValue();
        }
        return bArr;
    }
}

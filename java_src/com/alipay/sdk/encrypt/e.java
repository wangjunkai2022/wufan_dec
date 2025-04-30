package com.alipay.sdk.encrypt;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static String f9771a = "DESede/CBC/PKCS5Padding";

    public static String a(String str, String str2) {
        try {
            return a.b(b(str, str2.getBytes()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] b(String str, byte[] bArr) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), "DESede");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(new byte[8]);
            Cipher cipher = Cipher.getInstance(f9771a);
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String c(String str, String str2) {
        try {
            return new String(d(str, a.d(str2)));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] d(String str, byte[] bArr) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), "DESede");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(new byte[8]);
            Cipher cipher = Cipher.getInstance(f9771a);
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}

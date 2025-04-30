package com.alipay.sdk.encrypt;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public final class b {
    public static String a(int i2, String str, String str2) {
        byte[] bytes;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "DES");
            Cipher cipher = Cipher.getInstance("DES");
            cipher.init(i2, secretKeySpec);
            if (i2 == 2) {
                bytes = a.d(str);
            } else {
                bytes = str.getBytes("UTF-8");
            }
            byte[] doFinal = cipher.doFinal(bytes);
            if (i2 == 2) {
                return new String(doFinal);
            }
            return a.b(doFinal);
        } catch (Exception unused) {
            return null;
        }
    }

    private static String b(String str, String str2) {
        return a(1, str, str2);
    }

    private static String c(String str, String str2) {
        return a(2, str, str2);
    }
}

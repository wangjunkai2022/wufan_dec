package com.netease.nis.basesdk;

import android.util.Base64;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
/* loaded from: classes4.dex */
public class EncryptUtil {
    public static String RSAEncrypt(String str, String str2) {
        try {
            PublicKey a4 = a(str2);
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, a4);
            return new String(Base64.encode(cipher.doFinal(str.getBytes()), 2));
        } catch (Exception e4) {
            Logger.e(e4.getMessage());
            return null;
        }
    }

    private static PublicKey a(String str) {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 2)));
    }

    public static String getRandomString(int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < i2; i4++) {
            double random = Math.random();
            double d4 = 61;
            Double.isNaN(d4);
            sb.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt((int) Math.round(random * d4)));
        }
        return sb.toString();
    }
}

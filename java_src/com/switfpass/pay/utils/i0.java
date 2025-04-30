package com.switfpass.pay.utils;

import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
/* loaded from: classes4.dex */
public class i0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f58998a = "SHA1WithRSA";

    public static boolean a(String str, String str2, String str3) {
        try {
            PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(c.c(str3)));
            Signature signature = Signature.getInstance(f58998a);
            signature.initVerify(generatePublic);
            signature.update(str.getBytes("utf-8"));
            new StringBuilder("content :   ").append(str);
            new StringBuilder("sign:   ").append(str2);
            boolean verify = signature.verify(c.c(str2));
            new StringBuilder("bverify = ").append(verify);
            return verify;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static String b(String str, String str2) {
        try {
            PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(c.c(str2)));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, generatePublic);
            return new String(c.d(cipher.doFinal(str.getBytes("UTF-8"))));
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String c(String str) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[32];
            int i2 = 0;
            for (int i4 = 0; i4 < 16; i4++) {
                byte b4 = digest[i4];
                int i5 = i2 + 1;
                cArr2[i2] = cArr[(b4 >>> 4) & 15];
                i2 = i5 + 1;
                cArr2[i5] = cArr[b4 & 15];
            }
            return new String(cArr2);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String d(String str, String str2) {
        try {
            PrivateKey generatePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(c.c(str2)));
            Signature signature = Signature.getInstance(f58998a);
            signature.initSign(generatePrivate);
            signature.update(str.getBytes("UTF-8"));
            return c.d(signature.sign());
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}

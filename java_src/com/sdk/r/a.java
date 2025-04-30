package com.sdk.r;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
public class a extends com.sdk.i.a {
    public static final String TAG = "com.sdk.r.a";
    public static boolean isDebug = com.sdk.f.g.f56647b;

    public static String a(int i2) {
        Random random = new Random();
        String str = "";
        for (int i4 = 0; i4 < i2; i4++) {
            String str2 = random.nextInt(2) % 2 == 0 ? MethodReflectParams.CHAR : "num";
            if (MethodReflectParams.CHAR.equalsIgnoreCase(str2)) {
                int i5 = random.nextInt(2) % 2 == 0 ? 65 : 97;
                str = str + ((char) (random.nextInt(26) + i5));
            } else if ("num".equalsIgnoreCase(str2)) {
                str = str + String.valueOf(random.nextInt(10));
            }
        }
        return str;
    }

    public static String a(String str, String str2, String str3) {
        if (str != null) {
            try {
                if (str.length() != 0 && str.trim().length() != 0) {
                    if (str2 != null) {
                        if (str2.length() == 16) {
                            if (str3.length() == 16) {
                                byte[] a4 = c.a(str);
                                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                                cipher.init(2, new SecretKeySpec(str2.getBytes("utf-8"), "AES"), new IvParameterSpec(str3.getBytes("utf-8")));
                                return new String(cipher.doFinal(a4), "utf-8");
                            }
                            throw new Exception(" iv decrypt key length error");
                        }
                        throw new Exception("decrypt key length error");
                    }
                    throw new Exception("decrypt key is null");
                }
                return null;
            } catch (Exception e4) {
                throw new Exception("decrypt errot", e4);
            }
        }
        return null;
    }

    public static String b(String str, String str2, String str3) {
        if (str != null) {
            try {
                if (str.length() != 0 && str.trim().length() != 0) {
                    if (str2 == null) {
                        com.sdk.i.a.logError(TAG, "EncryptCbcIv", "encrypt key is null", isDebug);
                        return null;
                    } else if (str2.length() != 16) {
                        com.sdk.i.a.logError(TAG, "EncryptCbcIv", "encrypt key length error", isDebug);
                        return null;
                    } else if (str3.length() != 16) {
                        com.sdk.i.a.logError(TAG, "EncryptCbcIv", "ivStr length error", isDebug);
                        return null;
                    } else {
                        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                        cipher.init(1, new SecretKeySpec(str2.getBytes("utf-8"), "AES"), new IvParameterSpec(str3.getBytes("utf-8")));
                        return c.a(cipher.doFinal(str.getBytes("utf-8")));
                    }
                }
            } catch (Exception e4) {
                com.sdk.i.a.logError(TAG, "EncryptCbcIv", e4.getMessage(), isDebug);
                return null;
            }
        }
        com.sdk.i.a.logError(TAG, "EncryptCbcIv", "encrypt content is null", isDebug);
        return null;
    }
}

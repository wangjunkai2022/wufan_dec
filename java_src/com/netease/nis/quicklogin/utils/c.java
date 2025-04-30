package com.netease.nis.quicklogin.utils;

import android.os.Build;
import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: EncryptUtils.java */
/* loaded from: classes4.dex */
public class c {
    public static String a(String str, String str2, String str3) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        if (Build.VERSION.SDK_INT >= 19) {
            cipher.init(2, secretKeySpec, new GCMParameterSpec(128, str3.getBytes()));
        } else {
            cipher.init(2, secretKeySpec, new IvParameterSpec(str3.getBytes()));
        }
        return new String(cipher.doFinal(Base64.decode(str, 2)));
    }

    public static String b(String str, String str2, String str3) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        if (Build.VERSION.SDK_INT >= 19) {
            cipher.init(1, secretKeySpec, new GCMParameterSpec(128, str3.getBytes()));
        } else {
            cipher.init(1, secretKeySpec, new IvParameterSpec(str3.getBytes()));
        }
        return new String(Base64.encode(cipher.doFinal(str.getBytes()), 2));
    }
}

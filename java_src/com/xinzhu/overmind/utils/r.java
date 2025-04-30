package com.xinzhu.overmind.utils;

import android.content.pm.ActivityInfo;
import android.content.pm.Signature;
import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
/* compiled from: PackageUtils.java */
/* loaded from: classes3.dex */
public final class r {
    private r() {
    }

    public static String a(@NonNull byte[] data) {
        byte[] b4 = b(data);
        if (b4 == null) {
            return null;
        }
        return k.k(b4, true);
    }

    public static byte[] b(@NonNull byte[] data) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
            messageDigest.update(data);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    @NonNull
    public static String c(@NonNull Signature[] signatures) {
        if (signatures.length == 1) {
            return a(signatures[0].toByteArray());
        }
        return d(e(signatures));
    }

    @NonNull
    public static String d(@NonNull String[] sha256Digests) {
        if (sha256Digests.length == 1) {
            return sha256Digests[0];
        }
        Arrays.sort(sha256Digests);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (String str : sha256Digests) {
            try {
                byteArrayOutputStream.write(str.getBytes());
            } catch (IOException unused) {
            }
        }
        return a(byteArrayOutputStream.toByteArray());
    }

    @NonNull
    public static String[] e(@NonNull Signature[] signatures) {
        int length = signatures.length;
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr[i2] = a(signatures[i2].toByteArray());
        }
        return strArr;
    }

    public static String f(ActivityInfo info) {
        if (info.launchMode == 3) {
            return "SINGLE_INSTANCE_" + info.packageName + "_" + info.name;
        }
        String str = info.taskAffinity;
        if (str == null && info.applicationInfo.taskAffinity == null) {
            return info.packageName;
        }
        return str != null ? str : info.applicationInfo.taskAffinity;
    }
}

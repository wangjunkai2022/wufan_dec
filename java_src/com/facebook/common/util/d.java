package com.facebook.common.util;

import android.util.Base64;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: SecureHashUtil.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f11763a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: b  reason: collision with root package name */
    private static final int f11764b = 4096;

    public static String a(byte[] bArr) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b4 : bArr) {
            int i2 = b4 & 255;
            byte[] bArr2 = f11763a;
            sb.append((char) bArr2[i2 >>> 4]);
            sb.append((char) bArr2[i2 & 15]);
        }
        return sb.toString();
    }

    private static String b(InputStream inputStream, String str) throws IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    return a(messageDigest.digest());
                }
            }
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        } catch (NoSuchAlgorithmException e5) {
            throw new RuntimeException(e5);
        }
    }

    private static String c(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr, 0, bArr.length);
            return a(messageDigest.digest());
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        } catch (NoSuchAlgorithmException e5) {
            throw new RuntimeException(e5);
        }
    }

    public static String d(InputStream inputStream) throws IOException {
        return b(inputStream, "MD5");
    }

    public static String e(String str) {
        try {
            return f(str.getBytes("utf-8"));
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String f(byte[] bArr) {
        return c(bArr, "MD5");
    }

    public static String g(String str) {
        try {
            return h(str.getBytes("utf-8"));
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String h(byte[] bArr) {
        return c(bArr, "SHA-1");
    }

    public static String i(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr, 0, bArr.length);
            return Base64.encodeToString(messageDigest.digest(), 11);
        } catch (NoSuchAlgorithmException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String j(byte[] bArr) {
        return c(bArr, "SHA-256");
    }
}

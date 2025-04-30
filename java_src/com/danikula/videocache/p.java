package com.danikula.videocache;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
/* compiled from: ProxyCacheUtils.java */
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    static final int f11162a = 8192;

    /* renamed from: b  reason: collision with root package name */
    static final int f11163b = 16;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, long j4, int i2) {
        n.e(bArr, "Buffer must be not null!");
        boolean z3 = true;
        n.c(j4 >= 0, "Data offset must be positive!");
        n.c((i2 < 0 || i2 > bArr.length) ? false : false, "Length must be in range [0..buffer.length]");
    }

    private static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i2])));
        }
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e4) {
                h.f("Error closing resource", e4);
            }
        }
    }

    public static String d(String str) {
        try {
            return b(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e4) {
            throw new IllegalStateException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(String str) {
        try {
            return URLDecoder.decode(str, "utf-8");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("Error decoding url", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String f(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("Error encoding url", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g(String str) {
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (TextUtils.isEmpty(fileExtensionFromUrl)) {
            return null;
        }
        return singleton.getMimeTypeFromExtension(fileExtensionFromUrl);
    }

    static String h(byte[] bArr, int i2) {
        int min = Math.min(16, Math.max(i2, 0));
        String arrays = Arrays.toString(Arrays.copyOfRange(bArr, 0, min));
        if (min < i2) {
            return arrays.substring(0, arrays.length() - 1) + ", ...]";
        }
        return arrays;
    }
}

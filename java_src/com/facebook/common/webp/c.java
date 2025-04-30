package com.facebook.common.webp;

import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import javax.annotation.Nullable;
/* compiled from: WebpSupportStatus.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f11774a;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f11775b;

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f11776c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public static b f11777d = null;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f11778e = false;

    /* renamed from: f  reason: collision with root package name */
    private static final String f11779f = "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==";

    /* renamed from: g  reason: collision with root package name */
    private static final int f11780g = 20;

    /* renamed from: h  reason: collision with root package name */
    private static final int f11781h = 21;

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f11782i;

    /* renamed from: j  reason: collision with root package name */
    private static final byte[] f11783j;

    /* renamed from: k  reason: collision with root package name */
    private static final byte[] f11784k;

    /* renamed from: l  reason: collision with root package name */
    private static final byte[] f11785l;

    /* renamed from: m  reason: collision with root package name */
    private static final byte[] f11786m;

    static {
        int i2 = Build.VERSION.SDK_INT;
        f11774a = i2 <= 17;
        f11775b = i2 >= 14;
        f11776c = e();
        f11777d = null;
        f11778e = false;
        f11782i = a("RIFF");
        f11783j = a("WEBP");
        f11784k = a("VP8 ");
        f11785l = a("VP8L");
        f11786m = a("VP8X");
    }

    private static byte[] a(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException("ASCII not found!", e4);
        }
    }

    public static boolean b(byte[] bArr, int i2) {
        return k(bArr, i2 + 12, f11786m) && ((bArr[i2 + 20] & 2) == 2);
    }

    public static boolean c(byte[] bArr, int i2, int i4) {
        return i4 >= 21 && k(bArr, i2 + 12, f11786m);
    }

    public static boolean d(byte[] bArr, int i2) {
        return k(bArr, i2 + 12, f11786m) && ((bArr[i2 + 20] & 16) == 16);
    }

    private static boolean e() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 17) {
            return false;
        }
        if (i2 == 17) {
            byte[] decode = Base64.decode(f11779f, 0);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
            if (options.outHeight != 1 || options.outWidth != 1) {
                return false;
            }
        }
        return true;
    }

    public static boolean f(byte[] bArr, int i2) {
        return k(bArr, i2 + 12, f11785l);
    }

    public static boolean g(byte[] bArr, int i2) {
        return k(bArr, i2 + 12, f11784k);
    }

    public static boolean h(byte[] bArr, int i2, int i4) {
        return i4 >= 20 && k(bArr, i2, f11782i) && k(bArr, i2 + 8, f11783j);
    }

    public static boolean i(byte[] bArr, int i2, int i4) {
        if (g(bArr, i2)) {
            return f11775b;
        }
        if (f(bArr, i2)) {
            return f11776c;
        }
        if (!c(bArr, i2, i4) || b(bArr, i2)) {
            return false;
        }
        return f11776c;
    }

    @Nullable
    public static b j() {
        if (f11778e) {
            return f11777d;
        }
        b bVar = null;
        try {
            bVar = (b) Class.forName("com.facebook.webpsupport.WebpBitmapFactoryImpl").newInstance();
        } catch (Throwable unused) {
        }
        f11778e = true;
        return bVar;
    }

    private static boolean k(byte[] bArr, int i2, byte[] bArr2) {
        if (bArr2 == null || bArr == null || bArr2.length + i2 > bArr.length) {
            return false;
        }
        for (int i4 = 0; i4 < bArr2.length; i4++) {
            if (bArr[i4 + i2] != bArr2[i4]) {
                return false;
            }
        }
        return true;
    }
}

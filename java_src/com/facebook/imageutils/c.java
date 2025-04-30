package com.facebook.imageutils;

import com.facebook.common.internal.h;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: JfifUtil.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final int f13373a = 255;

    /* renamed from: b  reason: collision with root package name */
    public static final int f13374b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13375c = 216;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13376d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13377e = 217;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13378f = 218;

    /* renamed from: g  reason: collision with root package name */
    public static final int f13379g = 225;

    /* renamed from: h  reason: collision with root package name */
    public static final int f13380h = 192;

    /* renamed from: i  reason: collision with root package name */
    public static final int f13381i = 208;

    /* renamed from: j  reason: collision with root package name */
    public static final int f13382j = 215;

    /* renamed from: k  reason: collision with root package name */
    public static final int f13383k = 1165519206;

    private c() {
    }

    public static int a(int i2) {
        return e.a(i2);
    }

    public static int b(InputStream inputStream) {
        try {
            int e4 = e(inputStream);
            if (e4 == 0) {
                return 0;
            }
            return e.d(inputStream, e4);
        } catch (IOException unused) {
            return 0;
        }
    }

    public static int c(byte[] bArr) {
        return b(new ByteArrayInputStream(bArr));
    }

    private static boolean d(int i2) {
        switch (i2) {
            case 192:
            case 193:
            case 194:
            case 195:
            case 197:
            case 198:
            case 199:
            case 201:
            case 202:
            case 203:
            case 205:
            case 206:
            case 207:
                return true;
            case 196:
            case 200:
            case 204:
            default:
                return false;
        }
    }

    private static int e(InputStream inputStream) throws IOException {
        int a4;
        if (f(inputStream, 225) && (a4 = d.a(inputStream, 2, false) - 2) > 6) {
            int a5 = d.a(inputStream, 4, false);
            int a6 = d.a(inputStream, 2, false);
            int i2 = (a4 - 4) - 2;
            if (a5 == 1165519206 && a6 == 0) {
                return i2;
            }
        }
        return 0;
    }

    public static boolean f(InputStream inputStream, int i2) throws IOException {
        h.i(inputStream);
        while (d.a(inputStream, 1, false) == 255) {
            int i4 = 255;
            while (i4 == 255) {
                i4 = d.a(inputStream, 1, false);
            }
            if ((i2 != 192 || !d(i4)) && i4 != i2) {
                if (i4 != 216 && i4 != 1) {
                    if (i4 == 217 || i4 == 218) {
                        break;
                    }
                    inputStream.skip(d.a(inputStream, 2, false) - 2);
                }
            } else {
                return true;
            }
        }
        return false;
    }
}

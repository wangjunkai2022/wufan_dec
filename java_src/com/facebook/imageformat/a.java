package com.facebook.imageformat;

import com.facebook.common.internal.f;
import com.facebook.common.internal.h;
import com.facebook.imageformat.c;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import javax.annotation.Nullable;
/* compiled from: DefaultImageFormatChecker.java */
/* loaded from: classes.dex */
public class a implements c.a {

    /* renamed from: b  reason: collision with root package name */
    private static final int f12355b = 20;

    /* renamed from: c  reason: collision with root package name */
    private static final int f12356c = 21;

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f12357d;

    /* renamed from: e  reason: collision with root package name */
    private static final int f12358e;

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f12359f;

    /* renamed from: g  reason: collision with root package name */
    private static final int f12360g;

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f12361h;

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f12362i;

    /* renamed from: j  reason: collision with root package name */
    private static final int f12363j = 6;

    /* renamed from: k  reason: collision with root package name */
    private static final byte[] f12364k;

    /* renamed from: l  reason: collision with root package name */
    private static final int f12365l;

    /* renamed from: m  reason: collision with root package name */
    private static final byte[] f12366m;

    /* renamed from: n  reason: collision with root package name */
    private static final int f12367n;

    /* renamed from: o  reason: collision with root package name */
    private static final String f12368o = "ftyp";

    /* renamed from: p  reason: collision with root package name */
    private static final String[] f12369p;

    /* renamed from: q  reason: collision with root package name */
    private static final int f12370q;

    /* renamed from: a  reason: collision with root package name */
    final int f12371a = f.a(21, 20, f12358e, f12360g, 6, f12365l, f12367n, f12370q);

    static {
        byte[] bArr = {-1, -40, -1};
        f12357d = bArr;
        f12358e = bArr.length;
        byte[] bArr2 = {-119, 80, 78, 71, 13, 10, BinaryMemcacheOpcodes.PREPENDQ, 10};
        f12359f = bArr2;
        f12360g = bArr2.length;
        f12361h = e.a("GIF87a");
        f12362i = e.a("GIF89a");
        byte[] a4 = e.a("BM");
        f12364k = a4;
        f12365l = a4.length;
        byte[] bArr3 = {0, 0, 1, 0};
        f12366m = bArr3;
        f12367n = bArr3.length;
        String[] strArr = {"heic", "heix", "hevc", "hevx", "mif1", "msf1"};
        f12369p = strArr;
        f12370q = e.a(f12368o + strArr[0]).length;
    }

    private static c c(byte[] bArr, int i2) {
        h.d(com.facebook.common.webp.c.h(bArr, 0, i2));
        if (com.facebook.common.webp.c.g(bArr, 0)) {
            return b.f12377f;
        }
        if (com.facebook.common.webp.c.f(bArr, 0)) {
            return b.f12378g;
        }
        if (com.facebook.common.webp.c.c(bArr, 0, i2)) {
            if (com.facebook.common.webp.c.b(bArr, 0)) {
                return b.f12381j;
            }
            if (com.facebook.common.webp.c.d(bArr, 0)) {
                return b.f12380i;
            }
            return b.f12379h;
        }
        return c.f12384c;
    }

    private static boolean d(byte[] bArr, int i2) {
        byte[] bArr2 = f12364k;
        if (i2 < bArr2.length) {
            return false;
        }
        return e.c(bArr, bArr2);
    }

    private static boolean e(byte[] bArr, int i2) {
        if (i2 < 6) {
            return false;
        }
        return e.c(bArr, f12361h) || e.c(bArr, f12362i);
    }

    private static boolean f(byte[] bArr, int i2) {
        String[] strArr;
        if (i2 >= f12370q && bArr[3] >= 8) {
            for (String str : f12369p) {
                if (e.b(bArr, bArr.length, e.a(f12368o + str), f12370q) > -1) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private static boolean g(byte[] bArr, int i2) {
        byte[] bArr2 = f12366m;
        if (i2 < bArr2.length) {
            return false;
        }
        return e.c(bArr, bArr2);
    }

    private static boolean h(byte[] bArr, int i2) {
        byte[] bArr2 = f12357d;
        return i2 >= bArr2.length && e.c(bArr, bArr2);
    }

    private static boolean i(byte[] bArr, int i2) {
        byte[] bArr2 = f12359f;
        return i2 >= bArr2.length && e.c(bArr, bArr2);
    }

    @Override // com.facebook.imageformat.c.a
    @Nullable
    public final c a(byte[] bArr, int i2) {
        h.i(bArr);
        if (com.facebook.common.webp.c.h(bArr, 0, i2)) {
            return c(bArr, i2);
        }
        if (h(bArr, i2)) {
            return b.f12372a;
        }
        if (i(bArr, i2)) {
            return b.f12373b;
        }
        if (e(bArr, i2)) {
            return b.f12374c;
        }
        if (d(bArr, i2)) {
            return b.f12375d;
        }
        if (g(bArr, i2)) {
            return b.f12376e;
        }
        if (f(bArr, i2)) {
            return b.f12382k;
        }
        return c.f12384c;
    }

    @Override // com.facebook.imageformat.c.a
    public int b() {
        return this.f12371a;
    }
}

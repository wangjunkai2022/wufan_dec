package com.facebook.imagepipeline.image;

import android.graphics.ColorSpace;
import android.util.Pair;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.k;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.SharedReference;
import com.facebook.imageutils.HeifExifUtil;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;
/* compiled from: EncodedImage.java */
@Immutable
/* loaded from: classes.dex */
public class e implements Closeable {

    /* renamed from: l  reason: collision with root package name */
    public static final int f12761l = -1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f12762m = -1;

    /* renamed from: n  reason: collision with root package name */
    public static final int f12763n = -1;

    /* renamed from: o  reason: collision with root package name */
    public static final int f12764o = -1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f12765p = 1;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.references.a<PooledByteBuffer> f12766a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final k<FileInputStream> f12767b;

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.imageformat.c f12768c;

    /* renamed from: d  reason: collision with root package name */
    private int f12769d;

    /* renamed from: e  reason: collision with root package name */
    private int f12770e;

    /* renamed from: f  reason: collision with root package name */
    private int f12771f;

    /* renamed from: g  reason: collision with root package name */
    private int f12772g;

    /* renamed from: h  reason: collision with root package name */
    private int f12773h;

    /* renamed from: i  reason: collision with root package name */
    private int f12774i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private com.facebook.imagepipeline.common.a f12775j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private ColorSpace f12776k;

    public e(com.facebook.common.references.a<PooledByteBuffer> aVar) {
        this.f12768c = com.facebook.imageformat.c.f12384c;
        this.f12769d = -1;
        this.f12770e = 0;
        this.f12771f = -1;
        this.f12772g = -1;
        this.f12773h = 1;
        this.f12774i = -1;
        com.facebook.common.internal.h.d(com.facebook.common.references.a.o(aVar));
        this.f12766a = aVar.clone();
        this.f12767b = null;
    }

    private void A() {
        if (this.f12771f < 0 || this.f12772g < 0) {
            z();
        }
    }

    private com.facebook.imageutils.b B() {
        InputStream inputStream;
        try {
            inputStream = p();
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            com.facebook.imageutils.b d4 = com.facebook.imageutils.a.d(inputStream);
            this.f12776k = d4.a();
            Pair<Integer, Integer> b4 = d4.b();
            if (b4 != null) {
                this.f12771f = ((Integer) b4.first).intValue();
                this.f12772g = ((Integer) b4.second).intValue();
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            return d4;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private Pair<Integer, Integer> C() {
        Pair<Integer, Integer> g4 = com.facebook.imageutils.f.g(p());
        if (g4 != null) {
            this.f12771f = ((Integer) g4.first).intValue();
            this.f12772g = ((Integer) g4.second).intValue();
        }
        return g4;
    }

    @Nullable
    public static e b(e eVar) {
        if (eVar != null) {
            return eVar.a();
        }
        return null;
    }

    public static void d(@Nullable e eVar) {
        if (eVar != null) {
            eVar.close();
        }
    }

    public static boolean w(e eVar) {
        return eVar.f12769d >= 0 && eVar.f12771f >= 0 && eVar.f12772g >= 0;
    }

    public static boolean y(@Nullable e eVar) {
        return eVar != null && eVar.x();
    }

    public void D(@Nullable com.facebook.imagepipeline.common.a aVar) {
        this.f12775j = aVar;
    }

    public void E(int i2) {
        this.f12770e = i2;
    }

    public void F(int i2) {
        this.f12772g = i2;
    }

    public void G(com.facebook.imageformat.c cVar) {
        this.f12768c = cVar;
    }

    public void H(int i2) {
        this.f12769d = i2;
    }

    public void I(int i2) {
        this.f12773h = i2;
    }

    public void J(int i2) {
        this.f12774i = i2;
    }

    public void K(int i2) {
        this.f12771f = i2;
    }

    @Nullable
    public e a() {
        e eVar;
        k<FileInputStream> kVar = this.f12767b;
        if (kVar != null) {
            eVar = new e(kVar, this.f12774i);
        } else {
            com.facebook.common.references.a d4 = com.facebook.common.references.a.d(this.f12766a);
            if (d4 == null) {
                eVar = null;
            } else {
                try {
                    eVar = new e(d4);
                } finally {
                    com.facebook.common.references.a.g(d4);
                }
            }
        }
        if (eVar != null) {
            eVar.e(this);
        }
        return eVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.facebook.common.references.a.g(this.f12766a);
    }

    public void e(e eVar) {
        this.f12768c = eVar.o();
        this.f12771f = eVar.u();
        this.f12772g = eVar.n();
        this.f12769d = eVar.q();
        this.f12770e = eVar.k();
        this.f12773h = eVar.r();
        this.f12774i = eVar.s();
        this.f12775j = eVar.h();
        this.f12776k = eVar.i();
    }

    public com.facebook.common.references.a<PooledByteBuffer> g() {
        return com.facebook.common.references.a.d(this.f12766a);
    }

    @Nullable
    public com.facebook.imagepipeline.common.a h() {
        return this.f12775j;
    }

    @Nullable
    public ColorSpace i() {
        A();
        return this.f12776k;
    }

    public int k() {
        A();
        return this.f12770e;
    }

    public String m(int i2) {
        com.facebook.common.references.a<PooledByteBuffer> g4 = g();
        if (g4 == null) {
            return "";
        }
        int min = Math.min(s(), i2);
        byte[] bArr = new byte[min];
        try {
            PooledByteBuffer i4 = g4.i();
            if (i4 == null) {
                return "";
            }
            i4.c(0, bArr, 0, min);
            g4.close();
            StringBuilder sb = new StringBuilder(min * 2);
            for (int i5 = 0; i5 < min; i5++) {
                sb.append(String.format("%02X", Byte.valueOf(bArr[i5])));
            }
            return sb.toString();
        } finally {
            g4.close();
        }
    }

    public int n() {
        A();
        return this.f12772g;
    }

    public com.facebook.imageformat.c o() {
        A();
        return this.f12768c;
    }

    @Nullable
    public InputStream p() {
        k<FileInputStream> kVar = this.f12767b;
        if (kVar != null) {
            return kVar.get();
        }
        com.facebook.common.references.a d4 = com.facebook.common.references.a.d(this.f12766a);
        if (d4 != null) {
            try {
                return new com.facebook.common.memory.h((PooledByteBuffer) d4.i());
            } finally {
                com.facebook.common.references.a.g(d4);
            }
        }
        return null;
    }

    public int q() {
        A();
        return this.f12769d;
    }

    public int r() {
        return this.f12773h;
    }

    public int s() {
        com.facebook.common.references.a<PooledByteBuffer> aVar = this.f12766a;
        if (aVar != null && aVar.i() != null) {
            return this.f12766a.i().size();
        }
        return this.f12774i;
    }

    @VisibleForTesting
    @Nullable
    public synchronized SharedReference<PooledByteBuffer> t() {
        com.facebook.common.references.a<PooledByteBuffer> aVar;
        aVar = this.f12766a;
        return aVar != null ? aVar.k() : null;
    }

    public int u() {
        A();
        return this.f12771f;
    }

    public boolean v(int i2) {
        if (this.f12768c == com.facebook.imageformat.b.f12372a && this.f12767b == null) {
            com.facebook.common.internal.h.i(this.f12766a);
            PooledByteBuffer i4 = this.f12766a.i();
            return i4.j(i2 + (-2)) == -1 && i4.j(i2 - 1) == -39;
        }
        return true;
    }

    public synchronized boolean x() {
        boolean z3;
        if (!com.facebook.common.references.a.o(this.f12766a)) {
            z3 = this.f12767b != null;
        }
        return z3;
    }

    public void z() {
        Pair<Integer, Integer> b4;
        com.facebook.imageformat.c d4 = com.facebook.imageformat.d.d(p());
        this.f12768c = d4;
        if (com.facebook.imageformat.b.c(d4)) {
            b4 = C();
        } else {
            b4 = B().b();
        }
        if (d4 == com.facebook.imageformat.b.f12372a && this.f12769d == -1) {
            if (b4 != null) {
                int b5 = com.facebook.imageutils.c.b(p());
                this.f12770e = b5;
                this.f12769d = com.facebook.imageutils.c.a(b5);
            }
        } else if (d4 == com.facebook.imageformat.b.f12382k && this.f12769d == -1) {
            int a4 = HeifExifUtil.a(p());
            this.f12770e = a4;
            this.f12769d = com.facebook.imageutils.c.a(a4);
        } else {
            this.f12769d = 0;
        }
    }

    public e(k<FileInputStream> kVar) {
        this.f12768c = com.facebook.imageformat.c.f12384c;
        this.f12769d = -1;
        this.f12770e = 0;
        this.f12771f = -1;
        this.f12772g = -1;
        this.f12773h = 1;
        this.f12774i = -1;
        com.facebook.common.internal.h.i(kVar);
        this.f12766a = null;
        this.f12767b = kVar;
    }

    public e(k<FileInputStream> kVar, int i2) {
        this(kVar);
        this.f12774i = i2;
    }
}

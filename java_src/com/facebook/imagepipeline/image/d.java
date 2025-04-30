package com.facebook.imagepipeline.image;

import android.graphics.Bitmap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: CloseableStaticBitmap.java */
@ThreadSafe
/* loaded from: classes.dex */
public class d extends b {
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.common.references.a<Bitmap> f12756b;

    /* renamed from: c  reason: collision with root package name */
    private volatile Bitmap f12757c;

    /* renamed from: d  reason: collision with root package name */
    private final h f12758d;

    /* renamed from: e  reason: collision with root package name */
    private final int f12759e;

    /* renamed from: f  reason: collision with root package name */
    private final int f12760f;

    public d(Bitmap bitmap, com.facebook.common.references.c<Bitmap> cVar, h hVar, int i2) {
        this(bitmap, cVar, hVar, i2, 0);
    }

    private synchronized com.facebook.common.references.a<Bitmap> k() {
        com.facebook.common.references.a<Bitmap> aVar;
        aVar = this.f12756b;
        this.f12756b = null;
        this.f12757c = null;
        return aVar;
    }

    private static int m(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getHeight();
    }

    private static int n(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth();
    }

    @Override // com.facebook.imagepipeline.image.f
    public int a() {
        int i2;
        if (this.f12759e % 180 == 0 && (i2 = this.f12760f) != 5 && i2 != 7) {
            return n(this.f12757c);
        }
        return m(this.f12757c);
    }

    @Override // com.facebook.imagepipeline.image.c, com.facebook.imagepipeline.image.f
    public h b() {
        return this.f12758d;
    }

    @Override // com.facebook.imagepipeline.image.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.facebook.common.references.a<Bitmap> k4 = k();
        if (k4 != null) {
            k4.close();
        }
    }

    @Override // com.facebook.imagepipeline.image.c
    public int d() {
        return com.facebook.imageutils.a.g(this.f12757c);
    }

    @Override // com.facebook.imagepipeline.image.b
    public Bitmap g() {
        return this.f12757c;
    }

    @Override // com.facebook.imagepipeline.image.f
    public int getHeight() {
        int i2;
        if (this.f12759e % 180 == 0 && (i2 = this.f12760f) != 5 && i2 != 7) {
            return m(this.f12757c);
        }
        return n(this.f12757c);
    }

    @Nullable
    public synchronized com.facebook.common.references.a<Bitmap> h() {
        return com.facebook.common.references.a.d(this.f12756b);
    }

    public synchronized com.facebook.common.references.a<Bitmap> i() {
        com.facebook.common.internal.h.j(this.f12756b, "Cannot convert a closed static bitmap");
        return k();
    }

    @Override // com.facebook.imagepipeline.image.c
    public synchronized boolean isClosed() {
        return this.f12756b == null;
    }

    public int o() {
        return this.f12760f;
    }

    public int p() {
        return this.f12759e;
    }

    public d(Bitmap bitmap, com.facebook.common.references.c<Bitmap> cVar, h hVar, int i2, int i4) {
        this.f12757c = (Bitmap) com.facebook.common.internal.h.i(bitmap);
        this.f12756b = com.facebook.common.references.a.q(this.f12757c, (com.facebook.common.references.c) com.facebook.common.internal.h.i(cVar));
        this.f12758d = hVar;
        this.f12759e = i2;
        this.f12760f = i4;
    }

    public d(com.facebook.common.references.a<Bitmap> aVar, h hVar, int i2) {
        this(aVar, hVar, i2, 0);
    }

    public d(com.facebook.common.references.a<Bitmap> aVar, h hVar, int i2, int i4) {
        com.facebook.common.references.a<Bitmap> aVar2 = (com.facebook.common.references.a) com.facebook.common.internal.h.i(aVar.b());
        this.f12756b = aVar2;
        this.f12757c = aVar2.i();
        this.f12758d = hVar;
        this.f12759e = i2;
        this.f12760f = i4;
    }
}

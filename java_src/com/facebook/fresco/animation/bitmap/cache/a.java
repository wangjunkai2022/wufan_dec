package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import com.facebook.fresco.animation.bitmap.a;
import com.facebook.imagepipeline.image.d;
import com.facebook.imagepipeline.image.g;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: FrescoFrameCache.java */
/* loaded from: classes.dex */
public class a implements com.facebook.fresco.animation.bitmap.a {

    /* renamed from: e  reason: collision with root package name */
    private static final Class<?> f12265e = a.class;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.impl.c f12266a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f12267b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12268c = new SparseArray<>();
    @GuardedBy("this")
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.common.references.a<com.facebook.imagepipeline.image.c> f12269d;

    public a(com.facebook.imagepipeline.animated.impl.c cVar, boolean z3) {
        this.f12266a = cVar;
        this.f12267b = z3;
    }

    @VisibleForTesting
    @Nullable
    static com.facebook.common.references.a<Bitmap> i(@Nullable com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
        d dVar;
        try {
            if (com.facebook.common.references.a.o(aVar) && (aVar.i() instanceof d) && (dVar = (d) aVar.i()) != null) {
                return dVar.h();
            }
            return null;
        } finally {
            com.facebook.common.references.a.g(aVar);
        }
    }

    @Nullable
    private static com.facebook.common.references.a<com.facebook.imagepipeline.image.c> j(com.facebook.common.references.a<Bitmap> aVar) {
        return com.facebook.common.references.a.p(new d(aVar, g.f12777d, 0));
    }

    private static int k(@Nullable com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar) {
        if (com.facebook.common.references.a.o(aVar)) {
            return l(aVar.i());
        }
        return 0;
    }

    private static int l(@Nullable com.facebook.imagepipeline.image.c cVar) {
        if (cVar instanceof com.facebook.imagepipeline.image.b) {
            return com.facebook.imageutils.a.g(((com.facebook.imagepipeline.image.b) cVar).g());
        }
        return 0;
    }

    private synchronized int m() {
        int i2;
        i2 = 0;
        for (int i4 = 0; i4 < this.f12268c.size(); i4++) {
            i2 += k(this.f12268c.valueAt(i4));
        }
        return i2;
    }

    private synchronized void n(int i2) {
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f12268c.get(i2);
        if (aVar != null) {
            this.f12268c.delete(i2);
            com.facebook.common.references.a.g(aVar);
            com.facebook.common.logging.a.W(f12265e, "removePreparedReference(%d) removed. Pending frames: %s", Integer.valueOf(i2), this.f12268c);
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void a(int i2, com.facebook.common.references.a<Bitmap> aVar, int i4) {
        h.i(aVar);
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> j4 = j(aVar);
        if (j4 == null) {
            com.facebook.common.references.a.g(j4);
            return;
        }
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> a4 = this.f12266a.a(i2, j4);
        if (com.facebook.common.references.a.o(a4)) {
            com.facebook.common.references.a.g(this.f12268c.get(i2));
            this.f12268c.put(i2, a4);
            com.facebook.common.logging.a.W(f12265e, "cachePreparedFrame(%d) cached. Pending frames: %s", Integer.valueOf(i2), this.f12268c);
        }
        com.facebook.common.references.a.g(j4);
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void b(int i2, com.facebook.common.references.a<Bitmap> aVar, int i4) {
        h.i(aVar);
        n(i2);
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> j4 = j(aVar);
        if (j4 != null) {
            com.facebook.common.references.a.g(this.f12269d);
            this.f12269d = this.f12266a.a(i2, j4);
        }
        com.facebook.common.references.a.g(j4);
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized int c() {
        return k(this.f12269d) + m();
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized void clear() {
        com.facebook.common.references.a.g(this.f12269d);
        this.f12269d = null;
        for (int i2 = 0; i2 < this.f12268c.size(); i2++) {
            com.facebook.common.references.a.g(this.f12268c.valueAt(i2));
        }
        this.f12268c.clear();
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized com.facebook.common.references.a<Bitmap> d(int i2) {
        return i(com.facebook.common.references.a.d(this.f12269d));
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized com.facebook.common.references.a<Bitmap> e(int i2, int i4, int i5) {
        if (this.f12267b) {
            return i(this.f12266a.d());
        }
        return null;
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public void f(a.InterfaceC0071a interfaceC0071a) {
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    public synchronized boolean g(int i2) {
        return this.f12266a.b(i2);
    }

    @Override // com.facebook.fresco.animation.bitmap.a
    @Nullable
    public synchronized com.facebook.common.references.a<Bitmap> h(int i2) {
        return i(this.f12266a.c(i2));
    }
}

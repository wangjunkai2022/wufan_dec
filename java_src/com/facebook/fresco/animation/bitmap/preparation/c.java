package com.facebook.fresco.animation.bitmap.preparation;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.facebook.imagepipeline.bitmaps.f;
import java.util.concurrent.ExecutorService;
/* compiled from: DefaultBitmapFramePreparer.java */
/* loaded from: classes2.dex */
public class c implements b {

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f12274f = c.class;

    /* renamed from: a  reason: collision with root package name */
    private final f f12275a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.b f12276b;

    /* renamed from: c  reason: collision with root package name */
    private final Bitmap.Config f12277c;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f12278d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<Runnable> f12279e = new SparseArray<>();

    /* compiled from: DefaultBitmapFramePreparer.java */
    /* loaded from: classes2.dex */
    private class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.facebook.fresco.animation.bitmap.a f12280a;

        /* renamed from: b  reason: collision with root package name */
        private final com.facebook.fresco.animation.backend.a f12281b;

        /* renamed from: c  reason: collision with root package name */
        private final int f12282c;

        /* renamed from: d  reason: collision with root package name */
        private final int f12283d;

        public a(com.facebook.fresco.animation.backend.a aVar, com.facebook.fresco.animation.bitmap.a aVar2, int i2, int i4) {
            this.f12281b = aVar;
            this.f12280a = aVar2;
            this.f12282c = i2;
            this.f12283d = i4;
        }

        private boolean a(int i2, int i4) {
            com.facebook.common.references.a<Bitmap> e4;
            int i5 = 2;
            try {
                if (i4 == 1) {
                    e4 = this.f12280a.e(i2, this.f12281b.g(), this.f12281b.e());
                } else if (i4 != 2) {
                    return false;
                } else {
                    e4 = c.this.f12275a.e(this.f12281b.g(), this.f12281b.e(), c.this.f12277c);
                    i5 = -1;
                }
                boolean b4 = b(i2, e4, i4);
                com.facebook.common.references.a.g(e4);
                return (b4 || i5 == -1) ? b4 : a(i2, i5);
            } catch (RuntimeException e5) {
                com.facebook.common.logging.a.l0(c.f12274f, "Failed to create frame bitmap", e5);
                return false;
            } finally {
                com.facebook.common.references.a.g(null);
            }
        }

        private boolean b(int i2, com.facebook.common.references.a<Bitmap> aVar, int i4) {
            if (com.facebook.common.references.a.o(aVar) && c.this.f12276b.a(i2, aVar.i())) {
                com.facebook.common.logging.a.V(c.f12274f, "Frame %d ready.", Integer.valueOf(this.f12282c));
                synchronized (c.this.f12279e) {
                    this.f12280a.a(this.f12282c, aVar, i4);
                }
                return true;
            }
            return false;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f12280a.g(this.f12282c)) {
                    com.facebook.common.logging.a.V(c.f12274f, "Frame %d is cached already.", Integer.valueOf(this.f12282c));
                    synchronized (c.this.f12279e) {
                        c.this.f12279e.remove(this.f12283d);
                    }
                    return;
                }
                if (a(this.f12282c, 1)) {
                    com.facebook.common.logging.a.V(c.f12274f, "Prepared frame frame %d.", Integer.valueOf(this.f12282c));
                } else {
                    com.facebook.common.logging.a.s(c.f12274f, "Could not prepare frame %d.", Integer.valueOf(this.f12282c));
                }
                synchronized (c.this.f12279e) {
                    c.this.f12279e.remove(this.f12283d);
                }
            } catch (Throwable th) {
                synchronized (c.this.f12279e) {
                    c.this.f12279e.remove(this.f12283d);
                    throw th;
                }
            }
        }
    }

    public c(f fVar, com.facebook.fresco.animation.bitmap.b bVar, Bitmap.Config config, ExecutorService executorService) {
        this.f12275a = fVar;
        this.f12276b = bVar;
        this.f12277c = config;
        this.f12278d = executorService;
    }

    private static int g(com.facebook.fresco.animation.backend.a aVar, int i2) {
        return (aVar.hashCode() * 31) + i2;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.b
    public boolean a(com.facebook.fresco.animation.bitmap.a aVar, com.facebook.fresco.animation.backend.a aVar2, int i2) {
        int g4 = g(aVar2, i2);
        synchronized (this.f12279e) {
            if (this.f12279e.get(g4) != null) {
                com.facebook.common.logging.a.V(f12274f, "Already scheduled decode job for frame %d", Integer.valueOf(i2));
                return true;
            } else if (aVar.g(i2)) {
                com.facebook.common.logging.a.V(f12274f, "Frame %d is cached already.", Integer.valueOf(i2));
                return true;
            } else {
                a aVar3 = new a(aVar2, aVar, i2, g4);
                this.f12279e.put(g4, aVar3);
                this.f12278d.execute(aVar3);
                return true;
            }
        }
    }
}

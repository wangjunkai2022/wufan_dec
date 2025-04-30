package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.facebook.common.internal.h;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.d;
import com.facebook.imagepipeline.animated.base.e;
import com.facebook.imagepipeline.animated.base.f;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* compiled from: AnimatedDrawableBackendImpl.java */
/* loaded from: classes.dex */
public class a implements com.facebook.imagepipeline.animated.base.a {

    /* renamed from: a  reason: collision with root package name */
    private final o0.a f12430a;

    /* renamed from: b  reason: collision with root package name */
    private final f f12431b;

    /* renamed from: c  reason: collision with root package name */
    private final d f12432c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f12433d;

    /* renamed from: e  reason: collision with root package name */
    private final int[] f12434e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f12435f;

    /* renamed from: g  reason: collision with root package name */
    private final int f12436g;

    /* renamed from: h  reason: collision with root package name */
    private final AnimatedDrawableFrameInfo[] f12437h;

    /* renamed from: i  reason: collision with root package name */
    private final Rect f12438i = new Rect();

    /* renamed from: j  reason: collision with root package name */
    private final Rect f12439j = new Rect();
    @GuardedBy("this")
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Bitmap f12440k;

    public a(o0.a aVar, f fVar, Rect rect) {
        this.f12430a = aVar;
        this.f12431b = fVar;
        d e4 = fVar.e();
        this.f12432c = e4;
        int[] j4 = e4.j();
        this.f12434e = j4;
        aVar.a(j4);
        this.f12436g = aVar.e(j4);
        this.f12435f = aVar.c(j4);
        this.f12433d = t(e4, rect);
        this.f12437h = new AnimatedDrawableFrameInfo[e4.b()];
        for (int i2 = 0; i2 < this.f12432c.b(); i2++) {
            this.f12437h[i2] = this.f12432c.f(i2);
        }
    }

    private synchronized void s() {
        Bitmap bitmap = this.f12440k;
        if (bitmap != null) {
            bitmap.recycle();
            this.f12440k = null;
        }
    }

    private static Rect t(d dVar, Rect rect) {
        if (rect == null) {
            return new Rect(0, 0, dVar.a(), dVar.getHeight());
        }
        return new Rect(0, 0, Math.min(rect.width(), dVar.a()), Math.min(rect.height(), dVar.getHeight()));
    }

    private synchronized void u(int i2, int i4) {
        Bitmap bitmap = this.f12440k;
        if (bitmap != null && (bitmap.getWidth() < i2 || this.f12440k.getHeight() < i4)) {
            s();
        }
        if (this.f12440k == null) {
            this.f12440k = Bitmap.createBitmap(i2, i4, Bitmap.Config.ARGB_8888);
        }
        this.f12440k.eraseColor(0);
    }

    private void v(Canvas canvas, e eVar) {
        int a4 = eVar.a();
        int height = eVar.getHeight();
        int d4 = eVar.d();
        int e4 = eVar.e();
        synchronized (this) {
            u(a4, height);
            eVar.b(a4, height, this.f12440k);
            this.f12438i.set(0, 0, a4, height);
            this.f12439j.set(0, 0, a4, height);
            canvas.save();
            canvas.translate(d4, e4);
            canvas.drawBitmap(this.f12440k, this.f12438i, this.f12439j, (Paint) null);
            canvas.restore();
        }
    }

    private void w(Canvas canvas, e eVar) {
        double width = this.f12433d.width();
        double a4 = this.f12432c.a();
        Double.isNaN(width);
        Double.isNaN(a4);
        double d4 = width / a4;
        double height = this.f12433d.height();
        double height2 = this.f12432c.getHeight();
        Double.isNaN(height);
        Double.isNaN(height2);
        double d5 = height / height2;
        double a5 = eVar.a();
        Double.isNaN(a5);
        int round = (int) Math.round(a5 * d4);
        double height3 = eVar.getHeight();
        Double.isNaN(height3);
        int round2 = (int) Math.round(height3 * d5);
        double d6 = eVar.d();
        Double.isNaN(d6);
        int i2 = (int) (d6 * d4);
        double e4 = eVar.e();
        Double.isNaN(e4);
        int i4 = (int) (e4 * d5);
        synchronized (this) {
            int width2 = this.f12433d.width();
            int height4 = this.f12433d.height();
            u(width2, height4);
            eVar.b(round, round2, this.f12440k);
            this.f12438i.set(0, 0, width2, height4);
            this.f12439j.set(i2, i4, width2 + i2, height4 + i4);
            canvas.drawBitmap(this.f12440k, this.f12438i, this.f12439j, (Paint) null);
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int a() {
        return this.f12432c.a();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int b() {
        return this.f12432c.b();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int c() {
        return this.f12436g;
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int d() {
        return this.f12432c.d();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public synchronized void e() {
        s();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public AnimatedDrawableFrameInfo f(int i2) {
        return this.f12437h[i2];
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public void g(int i2, Canvas canvas) {
        e g4 = this.f12432c.g(i2);
        try {
            if (this.f12432c.e()) {
                w(canvas, g4);
            } else {
                v(canvas, g4);
            }
        } finally {
            g4.dispose();
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int getHeight() {
        return this.f12432c.getHeight();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public com.facebook.imagepipeline.animated.base.a h(Rect rect) {
        return t(this.f12432c, rect).equals(this.f12433d) ? this : new a(this.f12430a, this.f12431b, rect);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public boolean i(int i2) {
        return this.f12431b.g(i2);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int j(int i2) {
        return this.f12430a.b(this.f12435f, i2);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public com.facebook.common.references.a<Bitmap> k(int i2) {
        return this.f12431b.c(i2);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int l(int i2) {
        h.g(i2, this.f12435f.length);
        return this.f12435f[i2];
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public synchronized int m() {
        Bitmap bitmap;
        bitmap = this.f12440k;
        return (bitmap != null ? 0 + this.f12430a.d(bitmap) : 0) + this.f12432c.c();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int n(int i2) {
        return this.f12434e[i2];
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int o() {
        return this.f12433d.height();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int p() {
        return this.f12433d.width();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int q() {
        return this.f12431b.d();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public f r() {
        return this.f12431b;
    }
}

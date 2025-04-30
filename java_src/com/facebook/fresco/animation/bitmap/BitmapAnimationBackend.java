package com.facebook.fresco.animation.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import com.facebook.fresco.animation.backend.c;
import com.facebook.fresco.animation.backend.d;
import com.facebook.imagepipeline.bitmaps.f;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class BitmapAnimationBackend implements com.facebook.fresco.animation.backend.a, c.b {

    /* renamed from: o  reason: collision with root package name */
    public static final int f12247o = -1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f12248p = 0;

    /* renamed from: q  reason: collision with root package name */
    public static final int f12249q = 1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f12250r = 2;

    /* renamed from: s  reason: collision with root package name */
    public static final int f12251s = 3;

    /* renamed from: t  reason: collision with root package name */
    private static final Class<?> f12252t = BitmapAnimationBackend.class;

    /* renamed from: c  reason: collision with root package name */
    private final f f12253c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.a f12254d;

    /* renamed from: e  reason: collision with root package name */
    private final d f12255e;

    /* renamed from: f  reason: collision with root package name */
    private final b f12256f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.preparation.a f12257g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.preparation.b f12258h;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Rect f12260j;

    /* renamed from: k  reason: collision with root package name */
    private int f12261k;

    /* renamed from: l  reason: collision with root package name */
    private int f12262l;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private a f12264n;

    /* renamed from: m  reason: collision with root package name */
    private Bitmap.Config f12263m = Bitmap.Config.ARGB_8888;

    /* renamed from: i  reason: collision with root package name */
    private final Paint f12259i = new Paint(6);

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FrameType {
    }

    /* loaded from: classes2.dex */
    public interface a {
        void a(BitmapAnimationBackend bitmapAnimationBackend, int i2, int i4);

        void b(BitmapAnimationBackend bitmapAnimationBackend, int i2);

        void c(BitmapAnimationBackend bitmapAnimationBackend, int i2);
    }

    public BitmapAnimationBackend(f fVar, com.facebook.fresco.animation.bitmap.a aVar, d dVar, b bVar, @Nullable com.facebook.fresco.animation.bitmap.preparation.a aVar2, @Nullable com.facebook.fresco.animation.bitmap.preparation.b bVar2) {
        this.f12253c = fVar;
        this.f12254d = aVar;
        this.f12255e = dVar;
        this.f12256f = bVar;
        this.f12257g = aVar2;
        this.f12258h = bVar2;
        q();
    }

    private boolean l(int i2, @Nullable com.facebook.common.references.a<Bitmap> aVar, Canvas canvas, int i4) {
        if (com.facebook.common.references.a.o(aVar)) {
            if (this.f12260j == null) {
                canvas.drawBitmap(aVar.i(), 0.0f, 0.0f, this.f12259i);
            } else {
                canvas.drawBitmap(aVar.i(), (Rect) null, this.f12260j, this.f12259i);
            }
            if (i4 != 3) {
                this.f12254d.b(i2, aVar, i4);
            }
            a aVar2 = this.f12264n;
            if (aVar2 != null) {
                aVar2.a(this, i2, i4);
                return true;
            }
            return true;
        }
        return false;
    }

    private boolean m(Canvas canvas, int i2, int i4) {
        com.facebook.common.references.a<Bitmap> h4;
        boolean l4;
        int i5 = 3;
        boolean z3 = false;
        try {
            if (i4 == 0) {
                h4 = this.f12254d.h(i2);
                l4 = l(i2, h4, canvas, 0);
                i5 = 1;
            } else if (i4 == 1) {
                h4 = this.f12254d.e(i2, this.f12261k, this.f12262l);
                if (n(i2, h4) && l(i2, h4, canvas, 1)) {
                    z3 = true;
                }
                l4 = z3;
                i5 = 2;
            } else if (i4 == 2) {
                h4 = this.f12253c.e(this.f12261k, this.f12262l, this.f12263m);
                if (n(i2, h4) && l(i2, h4, canvas, 2)) {
                    z3 = true;
                }
                l4 = z3;
            } else if (i4 != 3) {
                return false;
            } else {
                h4 = this.f12254d.d(i2);
                l4 = l(i2, h4, canvas, 3);
                i5 = -1;
            }
            com.facebook.common.references.a.g(h4);
            return (l4 || i5 == -1) ? l4 : m(canvas, i2, i5);
        } catch (RuntimeException e4) {
            com.facebook.common.logging.a.l0(f12252t, "Failed to create frame bitmap", e4);
            return false;
        } finally {
            com.facebook.common.references.a.g(null);
        }
    }

    private boolean n(int i2, @Nullable com.facebook.common.references.a<Bitmap> aVar) {
        if (com.facebook.common.references.a.o(aVar)) {
            boolean a4 = this.f12256f.a(i2, aVar.i());
            if (!a4) {
                com.facebook.common.references.a.g(aVar);
            }
            return a4;
        }
        return false;
    }

    private void q() {
        int g4 = this.f12256f.g();
        this.f12261k = g4;
        if (g4 == -1) {
            Rect rect = this.f12260j;
            this.f12261k = rect == null ? -1 : rect.width();
        }
        int e4 = this.f12256f.e();
        this.f12262l = e4;
        if (e4 == -1) {
            Rect rect2 = this.f12260j;
            this.f12262l = rect2 != null ? rect2.height() : -1;
        }
    }

    @Override // com.facebook.fresco.animation.backend.c.b
    public void a() {
        clear();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int b() {
        return this.f12255e.b();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int c() {
        return this.f12254d.c();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void clear() {
        this.f12254d.clear();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int d() {
        return this.f12255e.d();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int e() {
        return this.f12262l;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void f(@Nullable Rect rect) {
        this.f12260j = rect;
        this.f12256f.f(rect);
        q();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int g() {
        return this.f12261k;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void h(@Nullable ColorFilter colorFilter) {
        this.f12259i.setColorFilter(colorFilter);
    }

    @Override // com.facebook.fresco.animation.backend.a
    public boolean i(Drawable drawable, Canvas canvas, int i2) {
        com.facebook.fresco.animation.bitmap.preparation.b bVar;
        a aVar;
        a aVar2 = this.f12264n;
        if (aVar2 != null) {
            aVar2.c(this, i2);
        }
        boolean m4 = m(canvas, i2, 0);
        if (!m4 && (aVar = this.f12264n) != null) {
            aVar.b(this, i2);
        }
        com.facebook.fresco.animation.bitmap.preparation.a aVar3 = this.f12257g;
        if (aVar3 != null && (bVar = this.f12258h) != null) {
            aVar3.a(bVar, this.f12254d, this, i2);
        }
        return m4;
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int j(int i2) {
        return this.f12255e.j(i2);
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void k(@IntRange(from = 0, to = 255) int i2) {
        this.f12259i.setAlpha(i2);
    }

    public void o(Bitmap.Config config) {
        this.f12263m = config;
    }

    public void p(@Nullable a aVar) {
        this.f12264n = aVar;
    }
}

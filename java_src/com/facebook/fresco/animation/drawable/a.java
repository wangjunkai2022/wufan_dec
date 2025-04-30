package com.facebook.fresco.animation.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.drawee.drawable.e;
import javax.annotation.Nullable;
/* compiled from: AnimatedDrawable2.java */
/* loaded from: classes.dex */
public class a extends Drawable implements Animatable, e0.a {

    /* renamed from: o  reason: collision with root package name */
    private static final Class<?> f12295o = a.class;

    /* renamed from: p  reason: collision with root package name */
    private static final c f12296p = new d();

    /* renamed from: q  reason: collision with root package name */
    private static final int f12297q = 8;

    /* renamed from: r  reason: collision with root package name */
    private static final int f12298r = 0;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private com.facebook.fresco.animation.backend.a f12299a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.fresco.animation.frame.b f12300b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f12301c;

    /* renamed from: d  reason: collision with root package name */
    private long f12302d;

    /* renamed from: e  reason: collision with root package name */
    private long f12303e;

    /* renamed from: f  reason: collision with root package name */
    private long f12304f;

    /* renamed from: g  reason: collision with root package name */
    private int f12305g;

    /* renamed from: h  reason: collision with root package name */
    private long f12306h;

    /* renamed from: i  reason: collision with root package name */
    private long f12307i;

    /* renamed from: j  reason: collision with root package name */
    private int f12308j;

    /* renamed from: k  reason: collision with root package name */
    private volatile c f12309k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private volatile b f12310l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private e f12311m;

    /* renamed from: n  reason: collision with root package name */
    private final Runnable f12312n;

    /* compiled from: AnimatedDrawable2.java */
    /* renamed from: com.facebook.fresco.animation.drawable.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class RunnableC0072a implements Runnable {
        RunnableC0072a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.unscheduleSelf(aVar.f12312n);
            a.this.invalidateSelf();
        }
    }

    /* compiled from: AnimatedDrawable2.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(a aVar, com.facebook.fresco.animation.frame.b bVar, int i2, boolean z3, boolean z4, long j4, long j5, long j6, long j7, long j8, long j9, long j10);
    }

    public a() {
        this(null);
    }

    @Nullable
    private static com.facebook.fresco.animation.frame.b b(@Nullable com.facebook.fresco.animation.backend.a aVar) {
        if (aVar == null) {
            return null;
        }
        return new com.facebook.fresco.animation.frame.a(aVar);
    }

    private long l() {
        return SystemClock.uptimeMillis();
    }

    private void m() {
        this.f12308j++;
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.V(f12295o, "Dropped a frame. Count: %s", Integer.valueOf(this.f12308j));
        }
    }

    private void n(long j4) {
        long j5 = this.f12302d + j4;
        this.f12304f = j5;
        scheduleSelf(this.f12312n, j5);
    }

    @Nullable
    public com.facebook.fresco.animation.backend.a c() {
        return this.f12299a;
    }

    public long d() {
        return this.f12308j;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        long j4;
        long j5;
        a aVar;
        long j6;
        if (this.f12299a == null || this.f12300b == null) {
            return;
        }
        long l4 = l();
        long max = this.f12301c ? (l4 - this.f12302d) + this.f12307i : Math.max(this.f12303e, 0L);
        int c4 = this.f12300b.c(max, this.f12303e);
        if (c4 == -1) {
            c4 = this.f12299a.b() - 1;
            this.f12309k.b(this);
            this.f12301c = false;
        } else if (c4 == 0 && this.f12305g != -1 && l4 >= this.f12304f) {
            this.f12309k.e(this);
        }
        int i2 = c4;
        boolean i4 = this.f12299a.i(this, canvas, i2);
        if (i4) {
            this.f12309k.c(this, i2);
            this.f12305g = i2;
        }
        if (!i4) {
            m();
        }
        long l5 = l();
        if (this.f12301c) {
            long b4 = this.f12300b.b(l5 - this.f12302d);
            if (b4 != -1) {
                long j7 = this.f12306h + b4;
                n(j7);
                j5 = j7;
            } else {
                j5 = -1;
            }
            j4 = b4;
        } else {
            j4 = -1;
            j5 = -1;
        }
        b bVar = this.f12310l;
        if (bVar != null) {
            bVar.a(this, this.f12300b, i2, i4, this.f12301c, this.f12302d, max, this.f12303e, l4, l5, j4, j5);
            aVar = this;
            j6 = max;
        } else {
            aVar = this;
            j6 = max;
        }
        aVar.f12303e = j6;
    }

    @Override // e0.a
    public void e() {
        com.facebook.fresco.animation.backend.a aVar = this.f12299a;
        if (aVar != null) {
            aVar.clear();
        }
    }

    public int f() {
        com.facebook.fresco.animation.backend.a aVar = this.f12299a;
        if (aVar == null) {
            return 0;
        }
        return aVar.b();
    }

    public int g() {
        com.facebook.fresco.animation.backend.a aVar = this.f12299a;
        if (aVar == null) {
            return 0;
        }
        return aVar.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        com.facebook.fresco.animation.backend.a aVar = this.f12299a;
        if (aVar == null) {
            return super.getIntrinsicHeight();
        }
        return aVar.e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        com.facebook.fresco.animation.backend.a aVar = this.f12299a;
        if (aVar == null) {
            return super.getIntrinsicWidth();
        }
        return aVar.g();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public long h() {
        if (this.f12299a == null) {
            return 0L;
        }
        com.facebook.fresco.animation.frame.b bVar = this.f12300b;
        if (bVar != null) {
            return bVar.e();
        }
        int i2 = 0;
        for (int i4 = 0; i4 < this.f12299a.b(); i4++) {
            i2 += this.f12299a.j(i4);
        }
        return i2;
    }

    public long i() {
        return this.f12302d;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f12301c;
    }

    public boolean j() {
        com.facebook.fresco.animation.frame.b bVar = this.f12300b;
        return bVar != null && bVar.d();
    }

    public void k(int i2) {
        com.facebook.fresco.animation.frame.b bVar;
        if (this.f12299a == null || (bVar = this.f12300b) == null) {
            return;
        }
        this.f12303e = bVar.a(i2);
        long l4 = l() - this.f12303e;
        this.f12302d = l4;
        this.f12304f = l4;
        invalidateSelf();
    }

    public void o(@Nullable com.facebook.fresco.animation.backend.a aVar) {
        this.f12299a = aVar;
        if (aVar != null) {
            this.f12300b = new com.facebook.fresco.animation.frame.a(aVar);
            this.f12299a.f(getBounds());
            e eVar = this.f12311m;
            if (eVar != null) {
                eVar.a(this);
            }
        }
        this.f12300b = b(this.f12299a);
        stop();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        com.facebook.fresco.animation.backend.a aVar = this.f12299a;
        if (aVar != null) {
            aVar.f(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        if (this.f12301c) {
            return false;
        }
        long j4 = i2;
        if (this.f12303e != j4) {
            this.f12303e = j4;
            invalidateSelf();
            return true;
        }
        return false;
    }

    public void p(@Nullable c cVar) {
        if (cVar == null) {
            cVar = f12296p;
        }
        this.f12309k = cVar;
    }

    public void q(@Nullable b bVar) {
        this.f12310l = bVar;
    }

    public void r(long j4) {
        this.f12306h = j4;
    }

    public void s(long j4) {
        this.f12307i = j4;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.f12311m == null) {
            this.f12311m = new e();
        }
        this.f12311m.b(i2);
        com.facebook.fresco.animation.backend.a aVar = this.f12299a;
        if (aVar != null) {
            aVar.k(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f12311m == null) {
            this.f12311m = new e();
        }
        this.f12311m.c(colorFilter);
        com.facebook.fresco.animation.backend.a aVar = this.f12299a;
        if (aVar != null) {
            aVar.h(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        com.facebook.fresco.animation.backend.a aVar;
        if (this.f12301c || (aVar = this.f12299a) == null || aVar.b() <= 1) {
            return;
        }
        this.f12301c = true;
        long l4 = l();
        this.f12302d = l4;
        this.f12304f = l4;
        this.f12303e = -1L;
        this.f12305g = -1;
        invalidateSelf();
        this.f12309k.a(this);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f12301c) {
            this.f12301c = false;
            this.f12302d = 0L;
            this.f12304f = 0L;
            this.f12303e = -1L;
            this.f12305g = -1;
            unscheduleSelf(this.f12312n);
            this.f12309k.b(this);
        }
    }

    public a(@Nullable com.facebook.fresco.animation.backend.a aVar) {
        this.f12306h = 8L;
        this.f12307i = 0L;
        this.f12309k = f12296p;
        this.f12310l = null;
        this.f12312n = new RunnableC0072a();
        this.f12299a = aVar;
        this.f12300b = b(aVar);
    }
}

package com.facebook.drawee.debug;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.drawee.drawable.r;
import j0.b;
import javax.annotation.Nullable;
/* compiled from: DebugControllerOverlayDrawable.java */
/* loaded from: classes.dex */
public class a extends Drawable implements b {
    private static final float A = 0.5f;
    private static final int B = -26624;
    private static final int C = -1;
    private static final int D = 2;
    private static final int E = 40;
    private static final int F = 10;
    private static final int G = 8;
    private static final int H = 10;
    private static final int I = 9;
    private static final int J = 8;

    /* renamed from: v  reason: collision with root package name */
    private static final String f11978v = "none";
    @VisibleForTesting

    /* renamed from: w  reason: collision with root package name */
    static final int f11979w = 1716301648;
    @VisibleForTesting

    /* renamed from: x  reason: collision with root package name */
    static final int f11980x = 1728026624;
    @VisibleForTesting

    /* renamed from: y  reason: collision with root package name */
    static final int f11981y = 1727284022;

    /* renamed from: z  reason: collision with root package name */
    private static final float f11982z = 0.1f;

    /* renamed from: a  reason: collision with root package name */
    private String f11983a;

    /* renamed from: b  reason: collision with root package name */
    private String f11984b;

    /* renamed from: c  reason: collision with root package name */
    private int f11985c;

    /* renamed from: d  reason: collision with root package name */
    private int f11986d;

    /* renamed from: e  reason: collision with root package name */
    private int f11987e;

    /* renamed from: f  reason: collision with root package name */
    private String f11988f;

    /* renamed from: g  reason: collision with root package name */
    private r.c f11989g;

    /* renamed from: h  reason: collision with root package name */
    private int f11990h;

    /* renamed from: i  reason: collision with root package name */
    private int f11991i;

    /* renamed from: j  reason: collision with root package name */
    private int f11992j = 80;

    /* renamed from: k  reason: collision with root package name */
    private final Paint f11993k = new Paint(1);

    /* renamed from: l  reason: collision with root package name */
    private final Matrix f11994l = new Matrix();

    /* renamed from: m  reason: collision with root package name */
    private final Rect f11995m = new Rect();

    /* renamed from: n  reason: collision with root package name */
    private final RectF f11996n = new RectF();

    /* renamed from: o  reason: collision with root package name */
    private int f11997o;

    /* renamed from: p  reason: collision with root package name */
    private int f11998p;

    /* renamed from: q  reason: collision with root package name */
    private int f11999q;

    /* renamed from: r  reason: collision with root package name */
    private int f12000r;

    /* renamed from: s  reason: collision with root package name */
    private int f12001s;

    /* renamed from: t  reason: collision with root package name */
    private long f12002t;

    /* renamed from: u  reason: collision with root package name */
    private String f12003u;

    public a() {
        e();
    }

    private void b(Canvas canvas, String str, @Nullable Object... objArr) {
        if (objArr == null) {
            canvas.drawText(str, this.f12000r, this.f12001s, this.f11993k);
        } else {
            canvas.drawText(String.format(str, objArr), this.f12000r, this.f12001s, this.f11993k);
        }
        this.f12001s += this.f11999q;
    }

    private void d(Rect rect, int i2, int i4) {
        int min = Math.min(40, Math.max(10, Math.min(rect.width() / i4, rect.height() / i2)));
        this.f11993k.setTextSize(min);
        int i5 = min + 8;
        this.f11999q = i5;
        int i6 = this.f11992j;
        if (i6 == 80) {
            this.f11999q = i5 * (-1);
        }
        this.f11997o = rect.left + 10;
        this.f11998p = i6 == 80 ? rect.bottom - 10 : rect.top + 10 + 10;
    }

    @Override // j0.b
    public void a(long j4) {
        this.f12002t = j4;
        invalidateSelf();
    }

    @VisibleForTesting
    int c(int i2, int i4, @Nullable r.c cVar) {
        int width = getBounds().width();
        int height = getBounds().height();
        if (width > 0 && height > 0 && i2 > 0 && i4 > 0) {
            if (cVar != null) {
                Rect rect = this.f11995m;
                rect.top = 0;
                rect.left = 0;
                rect.right = width;
                rect.bottom = height;
                this.f11994l.reset();
                cVar.a(this.f11994l, this.f11995m, i2, i4, 0.0f, 0.0f);
                RectF rectF = this.f11996n;
                rectF.top = 0.0f;
                rectF.left = 0.0f;
                rectF.right = i2;
                rectF.bottom = i4;
                this.f11994l.mapRect(rectF);
                width = Math.min(width, (int) this.f11996n.width());
                height = Math.min(height, (int) this.f11996n.height());
            }
            float f4 = width;
            float f5 = f4 * 0.1f;
            float f6 = f4 * 0.5f;
            float f7 = height;
            float f8 = 0.1f * f7;
            float f9 = f7 * 0.5f;
            int abs = Math.abs(i2 - width);
            int abs2 = Math.abs(i4 - height);
            float f10 = abs;
            if (f10 < f5 && abs2 < f8) {
                return f11979w;
            }
            if (f10 < f6 && abs2 < f9) {
                return f11980x;
            }
        }
        return f11981y;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.f11993k.setStyle(Paint.Style.STROKE);
        this.f11993k.setStrokeWidth(2.0f);
        this.f11993k.setColor(B);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f11993k);
        this.f11993k.setStyle(Paint.Style.FILL);
        this.f11993k.setColor(c(this.f11985c, this.f11986d, this.f11989g));
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f11993k);
        this.f11993k.setStyle(Paint.Style.FILL);
        this.f11993k.setStrokeWidth(0.0f);
        this.f11993k.setColor(-1);
        this.f12000r = this.f11997o;
        this.f12001s = this.f11998p;
        String str = this.f11984b;
        if (str != null) {
            b(canvas, "IDs: %s, %s", this.f11983a, str);
        } else {
            b(canvas, "ID: %s", this.f11983a);
        }
        b(canvas, "D: %dx%d", Integer.valueOf(bounds.width()), Integer.valueOf(bounds.height()));
        b(canvas, "I: %dx%d", Integer.valueOf(this.f11985c), Integer.valueOf(this.f11986d));
        b(canvas, "I: %d KiB", Integer.valueOf(this.f11987e / 1024));
        String str2 = this.f11988f;
        if (str2 != null) {
            b(canvas, "i format: %s", str2);
        }
        int i2 = this.f11990h;
        if (i2 > 0) {
            b(canvas, "anim: f %d, l %d", Integer.valueOf(i2), Integer.valueOf(this.f11991i));
        }
        r.c cVar = this.f11989g;
        if (cVar != null) {
            b(canvas, "scale: %s", cVar);
        }
        long j4 = this.f12002t;
        if (j4 >= 0) {
            b(canvas, "t: %d ms", Long.valueOf(j4));
        }
        String str3 = this.f12003u;
        if (str3 != null) {
            b(canvas, "origin: %s", str3);
        }
    }

    public void e() {
        this.f11985c = -1;
        this.f11986d = -1;
        this.f11987e = -1;
        this.f11990h = -1;
        this.f11991i = -1;
        this.f11988f = null;
        g(null);
        this.f12002t = -1L;
        this.f12003u = null;
        invalidateSelf();
    }

    public void f(int i2, int i4) {
        this.f11990h = i2;
        this.f11991i = i4;
        invalidateSelf();
    }

    public void g(@Nullable String str) {
        if (str == null) {
            str = "none";
        }
        this.f11983a = str;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h(int i2, int i4) {
        this.f11985c = i2;
        this.f11986d = i4;
        invalidateSelf();
    }

    public void i(long j4) {
        this.f12002t = j4;
    }

    public void j(@Nullable String str) {
        this.f11988f = str;
    }

    public void k(@Nullable String str) {
        this.f11984b = str;
        invalidateSelf();
    }

    public void l(int i2) {
        this.f11987e = i2;
    }

    public void m(String str) {
        this.f12003u = str;
        invalidateSelf();
    }

    public void n(r.c cVar) {
        this.f11989g = cVar;
    }

    public void o(int i2) {
        this.f11992j = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        d(rect, 9, 8);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}

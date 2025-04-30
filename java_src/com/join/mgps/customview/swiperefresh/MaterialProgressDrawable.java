package com.join.mgps.customview.swiperefresh;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import androidx.annotation.NonNull;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.join.android.app.mgsim.wufun.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class MaterialProgressDrawable extends Drawable implements Animatable {
    private static final int A = 1332;
    private static final float B = 5.0f;
    private static final int C = 10;
    private static final int D = 5;
    private static final float E = 5.0f;
    private static final int F = 12;
    private static final int G = 6;
    private static final float H = 0.8f;
    public static Bitmap I = null;

    /* renamed from: n  reason: collision with root package name */
    private static final float f47146n = 1080.0f;

    /* renamed from: o  reason: collision with root package name */
    static final int f47147o = 0;

    /* renamed from: p  reason: collision with root package name */
    static final int f47148p = 1;

    /* renamed from: q  reason: collision with root package name */
    private static final int f47149q = 40;

    /* renamed from: r  reason: collision with root package name */
    private static final float f47150r = 8.75f;

    /* renamed from: s  reason: collision with root package name */
    private static final float f47151s = 2.5f;

    /* renamed from: t  reason: collision with root package name */
    private static final int f47152t = 40;

    /* renamed from: u  reason: collision with root package name */
    private static final float f47153u = 12.5f;

    /* renamed from: v  reason: collision with root package name */
    private static final float f47154v = 3.0f;

    /* renamed from: x  reason: collision with root package name */
    private static final float f47156x = 0.75f;

    /* renamed from: y  reason: collision with root package name */
    private static final float f47157y = 0.5f;

    /* renamed from: z  reason: collision with root package name */
    private static final float f47158z = 0.5f;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<Animation> f47159a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final d f47160b;

    /* renamed from: c  reason: collision with root package name */
    private float f47161c;

    /* renamed from: d  reason: collision with root package name */
    private Resources f47162d;

    /* renamed from: e  reason: collision with root package name */
    private View f47163e;

    /* renamed from: f  reason: collision with root package name */
    private Animation f47164f;

    /* renamed from: g  reason: collision with root package name */
    float f47165g;

    /* renamed from: h  reason: collision with root package name */
    private double f47166h;

    /* renamed from: i  reason: collision with root package name */
    private double f47167i;

    /* renamed from: j  reason: collision with root package name */
    boolean f47168j;

    /* renamed from: k  reason: collision with root package name */
    private final Drawable.Callback f47169k;

    /* renamed from: l  reason: collision with root package name */
    private static final Interpolator f47144l = new LinearInterpolator();

    /* renamed from: m  reason: collision with root package name */
    static final Interpolator f47145m = new FastOutSlowInInterpolator();

    /* renamed from: w  reason: collision with root package name */
    private static final int[] f47155w = {-16777216};

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ProgressDrawableSize {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f47170a;

        a(d dVar) {
            this.f47170a = dVar;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            MaterialProgressDrawable materialProgressDrawable = MaterialProgressDrawable.this;
            if (materialProgressDrawable.f47168j) {
                materialProgressDrawable.a(f4, this.f47170a);
                return;
            }
            float c4 = materialProgressDrawable.c(this.f47170a);
            float l4 = this.f47170a.l();
            float n4 = this.f47170a.n();
            float m4 = this.f47170a.m();
            MaterialProgressDrawable.this.n(f4, this.f47170a);
            if (f4 <= 0.5f) {
                float f5 = MaterialProgressDrawable.H - c4;
                Interpolator interpolator = MaterialProgressDrawable.f47145m;
                this.f47170a.F(n4 + (f5 * interpolator.getInterpolation(f4 / 0.5f)));
            }
            if (f4 > 0.5f) {
                float f6 = MaterialProgressDrawable.H - c4;
                Interpolator interpolator2 = MaterialProgressDrawable.f47145m;
                this.f47170a.B(l4 + (f6 * interpolator2.getInterpolation((f4 - 0.5f) / 0.5f)));
            }
            this.f47170a.D(m4 + (0.25f * f4));
            MaterialProgressDrawable materialProgressDrawable2 = MaterialProgressDrawable.this;
            materialProgressDrawable2.i((f4 * 216.0f) + ((materialProgressDrawable2.f47165g / 5.0f) * MaterialProgressDrawable.f47146n));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f47172a;

        b(d dVar) {
            this.f47172a = dVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            this.f47172a.H();
            this.f47172a.p();
            d dVar = this.f47172a;
            dVar.F(dVar.e());
            MaterialProgressDrawable materialProgressDrawable = MaterialProgressDrawable.this;
            if (materialProgressDrawable.f47168j) {
                materialProgressDrawable.f47168j = false;
                animation.setDuration(1332L);
                this.f47172a.E(false);
                return;
            }
            materialProgressDrawable.f47165g = (materialProgressDrawable.f47165g + 1.0f) % 5.0f;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            MaterialProgressDrawable.this.f47165g = 0.0f;
        }
    }

    /* loaded from: classes3.dex */
    class c implements Drawable.Callback {
        c() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            MaterialProgressDrawable.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
            MaterialProgressDrawable.this.scheduleSelf(runnable, j4);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            MaterialProgressDrawable.this.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final RectF f47175a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        private final Paint f47176b;

        /* renamed from: c  reason: collision with root package name */
        private final Paint f47177c;

        /* renamed from: d  reason: collision with root package name */
        private final Drawable.Callback f47178d;

        /* renamed from: e  reason: collision with root package name */
        private float f47179e;

        /* renamed from: f  reason: collision with root package name */
        private float f47180f;

        /* renamed from: g  reason: collision with root package name */
        private float f47181g;

        /* renamed from: h  reason: collision with root package name */
        private float f47182h;

        /* renamed from: i  reason: collision with root package name */
        private float f47183i;

        /* renamed from: j  reason: collision with root package name */
        private int[] f47184j;

        /* renamed from: k  reason: collision with root package name */
        private int f47185k;

        /* renamed from: l  reason: collision with root package name */
        private float f47186l;

        /* renamed from: m  reason: collision with root package name */
        private float f47187m;

        /* renamed from: n  reason: collision with root package name */
        private float f47188n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f47189o;

        /* renamed from: p  reason: collision with root package name */
        private Path f47190p;

        /* renamed from: q  reason: collision with root package name */
        private float f47191q;

        /* renamed from: r  reason: collision with root package name */
        private double f47192r;

        /* renamed from: s  reason: collision with root package name */
        private int f47193s;

        /* renamed from: t  reason: collision with root package name */
        private int f47194t;

        /* renamed from: u  reason: collision with root package name */
        private int f47195u;

        /* renamed from: v  reason: collision with root package name */
        private final Paint f47196v;

        /* renamed from: w  reason: collision with root package name */
        private int f47197w;

        /* renamed from: x  reason: collision with root package name */
        private int f47198x;

        d(Drawable.Callback callback) {
            Paint paint = new Paint();
            this.f47176b = paint;
            Paint paint2 = new Paint();
            this.f47177c = paint2;
            this.f47179e = 0.0f;
            this.f47180f = 0.0f;
            this.f47181g = 0.0f;
            this.f47182h = 5.0f;
            this.f47183i = MaterialProgressDrawable.f47151s;
            this.f47196v = new Paint(1);
            this.f47178d = callback;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
        }

        private void b(Canvas canvas, float f4, float f5, Rect rect) {
            if (this.f47189o) {
                Path path = this.f47190p;
                if (path == null) {
                    Path path2 = new Path();
                    this.f47190p = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f6 = (((int) this.f47183i) / 2) * this.f47191q;
                double cos = this.f47192r * Math.cos(0.0d);
                double exactCenterX = rect.exactCenterX();
                Double.isNaN(exactCenterX);
                double sin = this.f47192r * Math.sin(0.0d);
                double exactCenterY = rect.exactCenterY();
                Double.isNaN(exactCenterY);
                float f7 = (float) (sin + exactCenterY);
                this.f47190p.moveTo(0.0f, 0.0f);
                this.f47190p.lineTo(this.f47193s * this.f47191q, 0.0f);
                Path path3 = this.f47190p;
                float f8 = this.f47191q;
                path3.lineTo((this.f47193s * f8) / 2.0f, this.f47194t * f8);
                this.f47190p.offset(((float) (cos + exactCenterX)) - f6, f7);
                this.f47190p.close();
                this.f47177c.setColor(this.f47198x);
                canvas.rotate((f4 + f5) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.f47190p, this.f47177c);
            }
        }

        private int h() {
            return (this.f47185k + 1) % this.f47184j.length;
        }

        private void q() {
            this.f47178d.invalidateDrawable(null);
        }

        public void A(@NonNull int[] iArr) {
            this.f47184j = iArr;
            z(0);
        }

        public void B(float f4) {
            this.f47180f = f4;
            q();
        }

        public void C(int i2, int i4) {
            double ceil;
            float min = Math.min(i2, i4);
            double d4 = this.f47192r;
            if (d4 > 0.0d && min >= 0.0f) {
                double d5 = min / 2.0f;
                Double.isNaN(d5);
                ceil = d5 - d4;
            } else {
                ceil = Math.ceil(this.f47182h / 2.0f);
            }
            this.f47183i = (float) ceil;
        }

        public void D(float f4) {
            this.f47181g = f4;
            q();
        }

        public void E(boolean z3) {
            if (this.f47189o != z3) {
                this.f47189o = z3;
                q();
            }
        }

        public void F(float f4) {
            this.f47179e = f4;
            q();
        }

        public void G(float f4) {
            this.f47182h = f4;
            this.f47176b.setStrokeWidth(f4);
            q();
        }

        public void H() {
            this.f47186l = this.f47179e;
            this.f47187m = this.f47180f;
            this.f47188n = this.f47181g;
        }

        public void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f47175a;
            rectF.set(rect);
            float f4 = this.f47183i;
            rectF.inset(f4, f4);
            float f5 = this.f47179e;
            float f6 = this.f47181g;
            float f7 = (f5 + f6) * 360.0f;
            this.f47176b.setColor(this.f47198x);
            canvas.rotate((f7 + (((this.f47180f + f6) * 360.0f) - f7)) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
            canvas.drawBitmap(MaterialProgressDrawable.I, rect, rectF, this.f47176b);
            if (this.f47195u < 255) {
                this.f47196v.setColor(this.f47197w);
                this.f47196v.setAlpha(0);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, this.f47196v);
            }
        }

        public int c() {
            return this.f47195u;
        }

        public double d() {
            return this.f47192r;
        }

        public float e() {
            return this.f47180f;
        }

        public float f() {
            return this.f47183i;
        }

        public int g() {
            return this.f47184j[h()];
        }

        public float i() {
            return this.f47181g;
        }

        public float j() {
            return this.f47179e;
        }

        public int k() {
            return this.f47184j[this.f47185k];
        }

        public float l() {
            return this.f47187m;
        }

        public float m() {
            return this.f47188n;
        }

        public float n() {
            return this.f47186l;
        }

        public float o() {
            return this.f47182h;
        }

        public void p() {
            z(h());
        }

        public void r() {
            this.f47186l = 0.0f;
            this.f47187m = 0.0f;
            this.f47188n = 0.0f;
            F(0.0f);
            B(0.0f);
            D(0.0f);
        }

        public void s(int i2) {
            this.f47195u = i2;
        }

        public void t(float f4, float f5) {
            this.f47193s = (int) f4;
            this.f47194t = (int) f5;
        }

        public void u(float f4) {
            if (f4 != this.f47191q) {
                this.f47191q = f4;
                q();
            }
        }

        public void v(int i2) {
            this.f47197w = i2;
        }

        public void w(double d4) {
            this.f47192r = d4;
        }

        public void x(int i2) {
            this.f47198x = i2;
        }

        public void y(ColorFilter colorFilter) {
            this.f47176b.setColorFilter(colorFilter);
            q();
        }

        public void z(int i2) {
            this.f47185k = i2;
            this.f47198x = this.f47184j[i2];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MaterialProgressDrawable(Context context, View view) {
        c cVar = new c();
        this.f47169k = cVar;
        this.f47163e = view;
        Resources resources = context.getResources();
        this.f47162d = resources;
        I = BitmapFactory.decodeResource(resources, R.drawable.icon);
        d dVar = new d(cVar);
        this.f47160b = dVar;
        dVar.A(f47155w);
        o(1);
        l();
    }

    private int b(float f4, int i2, int i4) {
        int intValue = Integer.valueOf(i2).intValue();
        int i5 = (intValue >> 24) & 255;
        int i6 = (intValue >> 16) & 255;
        int i7 = (intValue >> 8) & 255;
        int i8 = intValue & 255;
        int intValue2 = Integer.valueOf(i4).intValue();
        return ((i5 + ((int) ((((intValue2 >> 24) & 255) - i5) * f4))) << 24) | ((i6 + ((int) ((((intValue2 >> 16) & 255) - i6) * f4))) << 16) | ((i7 + ((int) ((((intValue2 >> 8) & 255) - i7) * f4))) << 8) | (i8 + ((int) (f4 * ((intValue2 & 255) - i8))));
    }

    private float d() {
        return this.f47161c;
    }

    private void j(double d4, double d5, double d6, double d7, float f4, float f5) {
        d dVar = this.f47160b;
        float f6 = this.f47162d.getDisplayMetrics().density;
        double d8 = f6;
        Double.isNaN(d8);
        this.f47166h = d4 * d8;
        Double.isNaN(d8);
        this.f47167i = d5 * d8;
        dVar.G(((float) d7) * f6);
        Double.isNaN(d8);
        dVar.w(d6 * d8);
        dVar.z(0);
        dVar.t(f4 * f6, f5 * f6);
        dVar.C((int) this.f47166h, (int) this.f47167i);
    }

    private void l() {
        d dVar = this.f47160b;
        a aVar = new a(dVar);
        aVar.setRepeatCount(-1);
        aVar.setRepeatMode(1);
        aVar.setInterpolator(f47144l);
        aVar.setAnimationListener(new b(dVar));
        this.f47164f = aVar;
    }

    void a(float f4, d dVar) {
        n(f4, dVar);
        dVar.F(dVar.n() + (((dVar.l() - c(dVar)) - dVar.n()) * f4));
        dVar.B(dVar.l());
        dVar.D(dVar.m() + ((((float) (Math.floor(dVar.m() / H) + 1.0d)) - dVar.m()) * f4));
    }

    float c(d dVar) {
        double o3 = dVar.o();
        Double.isNaN(o3);
        return (float) Math.toRadians(o3 / (dVar.d() * 6.283185307179586d));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.f47161c, bounds.exactCenterX(), bounds.exactCenterY());
        this.f47160b.a(canvas, bounds);
        canvas.restoreToCount(save);
    }

    public void e(float f4) {
        this.f47160b.u(f4);
    }

    public void f(int i2) {
        this.f47160b.v(i2);
    }

    public void g(int... iArr) {
        this.f47160b.A(iArr);
        this.f47160b.z(0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f47160b.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f47167i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f47166h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h(float f4) {
        this.f47160b.D(f4);
    }

    void i(float f4) {
        this.f47161c = f4;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.f47159a;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Animation animation = arrayList.get(i2);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public void k(float f4, float f5) {
        this.f47160b.F(f4);
        this.f47160b.B(f5);
    }

    public void m(boolean z3) {
        this.f47160b.E(z3);
    }

    void n(float f4, d dVar) {
        if (f4 > 0.75f) {
            dVar.x(b((f4 - 0.75f) / 0.25f, dVar.k(), dVar.g()));
        }
    }

    public void o(int i2) {
        if (i2 == 0) {
            j(40.0d, 40.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            j(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f47160b.s(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f47160b.y(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f47164f.reset();
        this.f47160b.H();
        if (this.f47160b.e() != this.f47160b.j()) {
            this.f47168j = true;
            this.f47164f.setDuration(666L);
            this.f47163e.startAnimation(this.f47164f);
            return;
        }
        this.f47160b.z(0);
        this.f47160b.r();
        this.f47164f.setDuration(1332L);
        this.f47163e.startAnimation(this.f47164f);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f47163e.clearAnimation();
        i(0.0f);
        this.f47160b.E(false);
        this.f47160b.z(0);
        this.f47160b.r();
    }
}

package com.join.mgps.ptr.header;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.util.ArrayList;
/* compiled from: MaterialProgressDrawable.java */
/* loaded from: classes4.dex */
public class a extends Drawable implements Animatable {
    private static final int A = 1333;
    private static final float B = 5.0f;
    private static final int C = 10;
    private static final int D = 5;
    private static final float E = 5.0f;
    private static final int F = 12;
    private static final int G = 6;
    private static final float H = 0.8f;
    private static final int I = 503316480;
    private static final int J = 1023410176;
    private static final float K = 3.5f;

    /* renamed from: n0  reason: collision with root package name */
    private static final float f51237n0 = 0.0f;

    /* renamed from: o  reason: collision with root package name */
    public static final int f51238o = 0;

    /* renamed from: o0  reason: collision with root package name */
    private static final float f51239o0 = 1.75f;

    /* renamed from: p  reason: collision with root package name */
    public static final int f51240p = 1;

    /* renamed from: q  reason: collision with root package name */
    private static final Interpolator f51241q = new LinearInterpolator();

    /* renamed from: r  reason: collision with root package name */
    private static final Interpolator f51242r = new f(null);

    /* renamed from: s  reason: collision with root package name */
    private static final Interpolator f51243s = new i(null);

    /* renamed from: t  reason: collision with root package name */
    private static final Interpolator f51244t = new AccelerateDecelerateInterpolator();

    /* renamed from: u  reason: collision with root package name */
    private static final int f51245u = 40;

    /* renamed from: v  reason: collision with root package name */
    private static final float f51246v = 8.75f;

    /* renamed from: w  reason: collision with root package name */
    private static final float f51247w = 2.5f;

    /* renamed from: x  reason: collision with root package name */
    private static final int f51248x = 56;

    /* renamed from: y  reason: collision with root package name */
    private static final float f51249y = 12.5f;

    /* renamed from: z  reason: collision with root package name */
    private static final float f51250z = 3.0f;

    /* renamed from: a  reason: collision with root package name */
    private final int[] f51251a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<Animation> f51252b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final h f51253c;

    /* renamed from: d  reason: collision with root package name */
    private final Drawable.Callback f51254d;

    /* renamed from: e  reason: collision with root package name */
    private float f51255e;

    /* renamed from: f  reason: collision with root package name */
    private Resources f51256f;

    /* renamed from: g  reason: collision with root package name */
    private View f51257g;

    /* renamed from: h  reason: collision with root package name */
    private Animation f51258h;

    /* renamed from: i  reason: collision with root package name */
    private float f51259i;

    /* renamed from: j  reason: collision with root package name */
    private double f51260j;

    /* renamed from: k  reason: collision with root package name */
    private double f51261k;

    /* renamed from: l  reason: collision with root package name */
    private Animation f51262l;

    /* renamed from: m  reason: collision with root package name */
    private int f51263m;

    /* renamed from: n  reason: collision with root package name */
    private ShapeDrawable f51264n;

    /* compiled from: MaterialProgressDrawable.java */
    /* renamed from: com.join.mgps.ptr.header.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0219a implements Drawable.Callback {
        C0219a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            a.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
            a.this.scheduleSelf(runnable, j4);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            a.this.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes4.dex */
    public class b extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f51266a;

        b(h hVar) {
            this.f51266a = hVar;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            float floor = (float) (Math.floor(this.f51266a.j() / a.H) + 1.0d);
            this.f51266a.B(this.f51266a.k() + ((this.f51266a.i() - this.f51266a.k()) * f4));
            this.f51266a.z(this.f51266a.j() + ((floor - this.f51266a.j()) * f4));
            this.f51266a.r(1.0f - f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes4.dex */
    public class c implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f51268a;

        c(h hVar) {
            this.f51268a = hVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f51268a.m();
            this.f51268a.D();
            this.f51268a.A(false);
            a.this.f51257g.startAnimation(a.this.f51258h);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes4.dex */
    public class d extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f51270a;

        d(h hVar) {
            this.f51270a = hVar;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            double l4 = this.f51270a.l();
            Double.isNaN(l4);
            float radians = (float) Math.toRadians(l4 / (this.f51270a.d() * 6.283185307179586d));
            float i2 = this.f51270a.i();
            float k4 = this.f51270a.k();
            float j4 = this.f51270a.j();
            this.f51270a.x(i2 + ((a.H - radians) * a.f51243s.getInterpolation(f4)));
            this.f51270a.B(k4 + (a.f51242r.getInterpolation(f4) * a.H));
            this.f51270a.z(j4 + (0.25f * f4));
            a.this.l((f4 * 144.0f) + ((a.this.f51259i / 5.0f) * 720.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes4.dex */
    public class e implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f51272a;

        e(h hVar) {
            this.f51272a = hVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            this.f51272a.D();
            this.f51272a.m();
            h hVar = this.f51272a;
            hVar.B(hVar.e());
            a aVar = a.this;
            aVar.f51259i = (aVar.f51259i + 1.0f) % 5.0f;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            a.this.f51259i = 0.0f;
        }
    }

    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes4.dex */
    private static class f extends AccelerateDecelerateInterpolator {
        private f() {
        }

        @Override // android.view.animation.AccelerateDecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f4) {
            return super.getInterpolation(Math.max(0.0f, (f4 - 0.5f) * 2.0f));
        }

        /* synthetic */ f(C0219a c0219a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes4.dex */
    public class g extends OvalShape {

        /* renamed from: a  reason: collision with root package name */
        private RadialGradient f51274a;

        /* renamed from: b  reason: collision with root package name */
        private int f51275b;

        /* renamed from: c  reason: collision with root package name */
        private Paint f51276c = new Paint();

        /* renamed from: d  reason: collision with root package name */
        private int f51277d;

        public g(int i2, int i4) {
            this.f51275b = i2;
            this.f51277d = i4;
            int i5 = this.f51277d;
            RadialGradient radialGradient = new RadialGradient(i5 / 2, i5 / 2, this.f51275b, new int[]{a.J, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f51274a = radialGradient;
            this.f51276c.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float width = a.this.getBounds().width() / 2;
            float height = a.this.getBounds().height() / 2;
            canvas.drawCircle(width, height, (this.f51277d / 2) + this.f51275b, this.f51276c);
            canvas.drawCircle(width, height, this.f51277d / 2, paint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes4.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        private final RectF f51279a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        private final Paint f51280b;

        /* renamed from: c  reason: collision with root package name */
        private final Paint f51281c;

        /* renamed from: d  reason: collision with root package name */
        private final Drawable.Callback f51282d;

        /* renamed from: e  reason: collision with root package name */
        private final Paint f51283e;

        /* renamed from: f  reason: collision with root package name */
        private float f51284f;

        /* renamed from: g  reason: collision with root package name */
        private float f51285g;

        /* renamed from: h  reason: collision with root package name */
        private float f51286h;

        /* renamed from: i  reason: collision with root package name */
        private float f51287i;

        /* renamed from: j  reason: collision with root package name */
        private float f51288j;

        /* renamed from: k  reason: collision with root package name */
        private int[] f51289k;

        /* renamed from: l  reason: collision with root package name */
        private int f51290l;

        /* renamed from: m  reason: collision with root package name */
        private float f51291m;

        /* renamed from: n  reason: collision with root package name */
        private float f51292n;

        /* renamed from: o  reason: collision with root package name */
        private float f51293o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f51294p;

        /* renamed from: q  reason: collision with root package name */
        private Path f51295q;

        /* renamed from: r  reason: collision with root package name */
        private float f51296r;

        /* renamed from: s  reason: collision with root package name */
        private double f51297s;

        /* renamed from: t  reason: collision with root package name */
        private int f51298t;

        /* renamed from: u  reason: collision with root package name */
        private int f51299u;

        /* renamed from: v  reason: collision with root package name */
        private int f51300v;

        /* renamed from: w  reason: collision with root package name */
        private int f51301w;

        public h(Drawable.Callback callback) {
            Paint paint = new Paint();
            this.f51280b = paint;
            Paint paint2 = new Paint();
            this.f51281c = paint2;
            Paint paint3 = new Paint();
            this.f51283e = paint3;
            this.f51284f = 0.0f;
            this.f51285g = 0.0f;
            this.f51286h = 0.0f;
            this.f51287i = 5.0f;
            this.f51288j = a.f51247w;
            this.f51282d = callback;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setAntiAlias(true);
        }

        private void b(Canvas canvas, float f4, float f5, Rect rect) {
            if (this.f51294p) {
                Path path = this.f51295q;
                if (path == null) {
                    Path path2 = new Path();
                    this.f51295q = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f6 = (((int) this.f51288j) / 2) * this.f51296r;
                double cos = this.f51297s * Math.cos(0.0d);
                double exactCenterX = rect.exactCenterX();
                Double.isNaN(exactCenterX);
                double sin = this.f51297s * Math.sin(0.0d);
                double exactCenterY = rect.exactCenterY();
                Double.isNaN(exactCenterY);
                float f7 = (float) (sin + exactCenterY);
                this.f51295q.moveTo(0.0f, 0.0f);
                this.f51295q.lineTo(this.f51298t * this.f51296r, 0.0f);
                Path path3 = this.f51295q;
                float f8 = this.f51296r;
                path3.lineTo((this.f51298t * f8) / 2.0f, this.f51299u * f8);
                this.f51295q.offset(((float) (cos + exactCenterX)) - f6, f7);
                this.f51295q.close();
                this.f51281c.setColor(this.f51289k[this.f51290l]);
                this.f51281c.setAlpha(this.f51300v);
                canvas.rotate((f4 + f5) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.f51295q, this.f51281c);
            }
        }

        private void n() {
            this.f51282d.invalidateDrawable(null);
        }

        public void A(boolean z3) {
            if (this.f51294p != z3) {
                this.f51294p = z3;
                n();
            }
        }

        public void B(float f4) {
            this.f51284f = f4;
            n();
        }

        public void C(float f4) {
            this.f51287i = f4;
            this.f51280b.setStrokeWidth(f4);
            n();
        }

        public void D() {
            this.f51291m = this.f51284f;
            this.f51292n = this.f51285g;
            this.f51293o = this.f51286h;
        }

        public void a(Canvas canvas, Rect rect) {
            this.f51283e.setColor(this.f51301w);
            this.f51283e.setAlpha(this.f51300v);
            canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, this.f51283e);
            RectF rectF = this.f51279a;
            rectF.set(rect);
            float f4 = this.f51288j;
            rectF.inset(f4, f4);
            float f5 = this.f51284f;
            float f6 = this.f51286h;
            float f7 = (f5 + f6) * 360.0f;
            float f8 = ((this.f51285g + f6) * 360.0f) - f7;
            this.f51280b.setColor(this.f51289k[this.f51290l]);
            this.f51280b.setAlpha(this.f51300v);
            canvas.drawArc(rectF, f7, f8, false, this.f51280b);
            b(canvas, f7, f8, rect);
        }

        public int c() {
            return this.f51300v;
        }

        public double d() {
            return this.f51297s;
        }

        public float e() {
            return this.f51285g;
        }

        public float f() {
            return this.f51288j;
        }

        public float g() {
            return this.f51286h;
        }

        public float h() {
            return this.f51284f;
        }

        public float i() {
            return this.f51292n;
        }

        public float j() {
            return this.f51293o;
        }

        public float k() {
            return this.f51291m;
        }

        public float l() {
            return this.f51287i;
        }

        public void m() {
            this.f51290l = (this.f51290l + 1) % this.f51289k.length;
        }

        public void o() {
            this.f51291m = 0.0f;
            this.f51292n = 0.0f;
            this.f51293o = 0.0f;
            B(0.0f);
            x(0.0f);
            z(0.0f);
        }

        public void p(int i2) {
            this.f51300v = i2;
        }

        public void q(float f4, float f5) {
            this.f51298t = (int) f4;
            this.f51299u = (int) f5;
        }

        public void r(float f4) {
            if (f4 != this.f51296r) {
                this.f51296r = f4;
                n();
            }
        }

        public void s(int i2) {
            this.f51301w = i2;
        }

        public void t(double d4) {
            this.f51297s = d4;
        }

        public void u(ColorFilter colorFilter) {
            this.f51280b.setColorFilter(colorFilter);
            n();
        }

        public void v(int i2) {
            this.f51290l = i2;
        }

        public void w(int[] iArr) {
            this.f51289k = iArr;
            v(0);
        }

        public void x(float f4) {
            this.f51285g = f4;
            n();
        }

        public void y(int i2, int i4) {
            double ceil;
            float min = Math.min(i2, i4);
            double d4 = this.f51297s;
            if (d4 > 0.0d && min >= 0.0f) {
                double d5 = min / 2.0f;
                Double.isNaN(d5);
                ceil = d5 - d4;
            } else {
                ceil = Math.ceil(this.f51287i / 2.0f);
            }
            this.f51288j = (float) ceil;
        }

        public void z(float f4) {
            this.f51286h = f4;
            n();
        }
    }

    /* compiled from: MaterialProgressDrawable.java */
    /* loaded from: classes4.dex */
    private static class i extends AccelerateDecelerateInterpolator {
        private i() {
        }

        @Override // android.view.animation.AccelerateDecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f4) {
            return super.getInterpolation(Math.min(1.0f, f4 * 2.0f));
        }

        /* synthetic */ i(C0219a c0219a) {
            this();
        }
    }

    public a(Context context, View view) {
        int[] iArr = {-3591113, -13149199, -536002, -13327536};
        this.f51251a = iArr;
        C0219a c0219a = new C0219a();
        this.f51254d = c0219a;
        this.f51257g = view;
        this.f51256f = context.getResources();
        h hVar = new h(c0219a);
        this.f51253c = hVar;
        hVar.w(iArr);
        r(1);
        p();
    }

    private float g() {
        return this.f51255e;
    }

    private void m(double d4, double d5, double d6, double d7, float f4, float f5) {
        h hVar = this.f51253c;
        float f6 = this.f51256f.getDisplayMetrics().density;
        double d8 = f6;
        Double.isNaN(d8);
        this.f51260j = d4 * d8;
        Double.isNaN(d8);
        this.f51261k = d5 * d8;
        hVar.C(((float) d7) * f6);
        Double.isNaN(d8);
        hVar.t(d6 * d8);
        hVar.v(0);
        hVar.q(f4 * f6, f5 * f6);
        hVar.y((int) this.f51260j, (int) this.f51261k);
        o(this.f51260j);
    }

    private void o(double d4) {
        com.join.mgps.ptr.util.b.c(this.f51257g.getContext());
        int b4 = com.join.mgps.ptr.util.b.b(1.75f);
        int b5 = com.join.mgps.ptr.util.b.b(0.0f);
        int b6 = com.join.mgps.ptr.util.b.b(K);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new g(b6, (int) d4));
        this.f51264n = shapeDrawable;
        if (Build.VERSION.SDK_INT >= 11) {
            this.f51257g.setLayerType(1, shapeDrawable.getPaint());
        }
        this.f51264n.getPaint().setShadowLayer(b6, b5, b4, I);
    }

    private void p() {
        h hVar = this.f51253c;
        b bVar = new b(hVar);
        bVar.setInterpolator(f51244t);
        bVar.setDuration(666L);
        bVar.setAnimationListener(new c(hVar));
        d dVar = new d(hVar);
        dVar.setRepeatCount(-1);
        dVar.setRepeatMode(1);
        dVar.setInterpolator(f51241q);
        dVar.setDuration(1333L);
        dVar.setAnimationListener(new e(hVar));
        this.f51262l = bVar;
        this.f51258h = dVar;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ShapeDrawable shapeDrawable = this.f51264n;
        if (shapeDrawable != null) {
            shapeDrawable.getPaint().setColor(this.f51263m);
            this.f51264n.draw(canvas);
        }
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.f51255e, bounds.exactCenterX(), bounds.exactCenterY());
        this.f51253c.a(canvas, bounds);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f51253c.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f51261k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f51260j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h(float f4) {
        this.f51253c.r(f4);
    }

    public void i(int i2) {
        this.f51263m = i2;
        this.f51253c.s(i2);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.f51252b;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Animation animation = arrayList.get(i2);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public void j(int... iArr) {
        this.f51253c.w(iArr);
        this.f51253c.v(0);
    }

    public void k(float f4) {
        this.f51253c.z(f4);
    }

    void l(float f4) {
        this.f51255e = f4;
        invalidateSelf();
    }

    public void n(float f4, float f5) {
        this.f51253c.B(f4);
        this.f51253c.x(f5);
    }

    public void q(boolean z3) {
        this.f51253c.A(z3);
    }

    public void r(int i2) {
        if (i2 == 0) {
            m(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            m(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f51253c.p(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f51253c.u(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f51258h.reset();
        this.f51253c.D();
        if (this.f51253c.e() != this.f51253c.h()) {
            this.f51257g.startAnimation(this.f51262l);
            return;
        }
        this.f51253c.v(0);
        this.f51253c.o();
        this.f51257g.startAnimation(this.f51258h);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f51257g.clearAnimation();
        l(0.0f);
        this.f51253c.A(false);
        this.f51253c.v(0);
        this.f51253c.o();
    }
}

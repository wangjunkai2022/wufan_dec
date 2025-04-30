package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.transition.ArcMotion;
import androidx.transition.PathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.google.android.material.R;
import com.google.android.material.internal.w;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.transition.r;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public final class MaterialContainerTransform extends Transition {
    public static final int T0 = 0;
    public static final int U0 = 1;
    public static final int V0 = 2;
    public static final int W0 = 0;
    public static final int X0 = 1;
    public static final int Y0 = 2;
    public static final int Z0 = 3;

    /* renamed from: a1  reason: collision with root package name */
    public static final int f16348a1 = 0;

    /* renamed from: b1  reason: collision with root package name */
    public static final int f16349b1 = 1;

    /* renamed from: c1  reason: collision with root package name */
    public static final int f16350c1 = 2;

    /* renamed from: d1  reason: collision with root package name */
    private static final String f16351d1 = MaterialContainerTransform.class.getSimpleName();

    /* renamed from: e1  reason: collision with root package name */
    private static final String f16352e1 = "materialContainerTransition:bounds";

    /* renamed from: f1  reason: collision with root package name */
    private static final String f16353f1 = "materialContainerTransition:shapeAppearance";

    /* renamed from: g1  reason: collision with root package name */
    private static final String[] f16354g1 = {f16352e1, f16353f1};

    /* renamed from: h1  reason: collision with root package name */
    private static final d f16355h1 = new d(new c(0.0f, 0.25f), new c(0.0f, 1.0f), new c(0.0f, 1.0f), new c(0.0f, 0.75f), null);

    /* renamed from: i1  reason: collision with root package name */
    private static final d f16356i1 = new d(new c(0.6f, 0.9f), new c(0.0f, 1.0f), new c(0.0f, 0.9f), new c(0.3f, 0.9f), null);

    /* renamed from: j1  reason: collision with root package name */
    private static final d f16357j1 = new d(new c(0.1f, 0.4f), new c(0.1f, 1.0f), new c(0.1f, 1.0f), new c(0.1f, 0.9f), null);

    /* renamed from: k1  reason: collision with root package name */
    private static final d f16358k1 = new d(new c(0.6f, 0.9f), new c(0.0f, 0.9f), new c(0.0f, 0.9f), new c(0.2f, 0.9f), null);

    /* renamed from: l1  reason: collision with root package name */
    private static final float f16359l1 = -1.0f;
    @IdRes
    private int A0;
    @ColorInt
    private int B0;
    @ColorInt
    private int C0;
    @ColorInt
    private int D0;
    @ColorInt
    private int E0;
    private int F0;
    private int G0;
    private int H0;
    @Nullable
    private View I0;
    @Nullable
    private View J0;
    @Nullable
    private com.google.android.material.shape.m K0;
    @Nullable
    private com.google.android.material.shape.m L0;
    @Nullable
    private c M0;
    @Nullable
    private c N0;
    @Nullable
    private c O0;
    @Nullable
    private c P0;
    private boolean Q0;
    private float R0;
    private float S0;

    /* renamed from: u0  reason: collision with root package name */
    private boolean f16360u0;

    /* renamed from: v0  reason: collision with root package name */
    private boolean f16361v0;

    /* renamed from: w0  reason: collision with root package name */
    private boolean f16362w0;

    /* renamed from: x0  reason: collision with root package name */
    private boolean f16363x0;
    @IdRes

    /* renamed from: y0  reason: collision with root package name */
    private int f16364y0;
    @IdRes

    /* renamed from: z0  reason: collision with root package name */
    private int f16365z0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface FitMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface TransitionDirection {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f16366a;

        a(e eVar) {
            this.f16366a = eVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f16366a.o(valueAnimator.getAnimatedFraction());
        }
    }

    /* loaded from: classes2.dex */
    class b extends q {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16368a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f16369b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f16370c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ View f16371d;

        b(View view, e eVar, View view2, View view3) {
            this.f16368a = view;
            this.f16369b = eVar;
            this.f16370c = view2;
            this.f16371d = view3;
        }

        @Override // com.google.android.material.transition.q, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            MaterialContainerTransform.this.removeListener(this);
            if (MaterialContainerTransform.this.f16361v0) {
                return;
            }
            this.f16370c.setAlpha(1.0f);
            this.f16371d.setAlpha(1.0f);
            w.i(this.f16368a).remove(this.f16369b);
        }

        @Override // com.google.android.material.transition.q, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            w.i(this.f16368a).add(this.f16369b);
            this.f16370c.setAlpha(0.0f);
            this.f16371d.setAlpha(0.0f);
        }
    }

    /* loaded from: classes2.dex */
    public static class c {
        @FloatRange(from = 0.0d, to = 1.0d)

        /* renamed from: a  reason: collision with root package name */
        private final float f16373a;
        @FloatRange(from = 0.0d, to = 1.0d)

        /* renamed from: b  reason: collision with root package name */
        private final float f16374b;

        public c(@FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5) {
            this.f16373a = f4;
            this.f16374b = f5;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float c() {
            return this.f16374b;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float d() {
            return this.f16373a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final c f16375a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final c f16376b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final c f16377c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private final c f16378d;

        /* synthetic */ d(c cVar, c cVar2, c cVar3, c cVar4, a aVar) {
            this(cVar, cVar2, cVar3, cVar4);
        }

        private d(@NonNull c cVar, @NonNull c cVar2, @NonNull c cVar3, @NonNull c cVar4) {
            this.f16375a = cVar;
            this.f16376b = cVar2;
            this.f16377c = cVar3;
            this.f16378d = cVar4;
        }
    }

    /* loaded from: classes2.dex */
    private static final class e extends Drawable {
        private static final int M = 754974720;
        private static final int N = -7829368;
        private static final float O = 0.3f;
        private static final float P = 1.5f;
        private final d A;
        private final com.google.android.material.transition.a B;
        private final f C;
        private final boolean D;
        private final Paint E;
        private final Path F;
        private com.google.android.material.transition.c G;
        private h H;
        private RectF I;
        private float J;
        private float K;
        private float L;

        /* renamed from: a  reason: collision with root package name */
        private final View f16379a;

        /* renamed from: b  reason: collision with root package name */
        private final RectF f16380b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.material.shape.m f16381c;

        /* renamed from: d  reason: collision with root package name */
        private final float f16382d;

        /* renamed from: e  reason: collision with root package name */
        private final View f16383e;

        /* renamed from: f  reason: collision with root package name */
        private final RectF f16384f;

        /* renamed from: g  reason: collision with root package name */
        private final com.google.android.material.shape.m f16385g;

        /* renamed from: h  reason: collision with root package name */
        private final float f16386h;

        /* renamed from: i  reason: collision with root package name */
        private final Paint f16387i;

        /* renamed from: j  reason: collision with root package name */
        private final Paint f16388j;

        /* renamed from: k  reason: collision with root package name */
        private final Paint f16389k;

        /* renamed from: l  reason: collision with root package name */
        private final Paint f16390l;

        /* renamed from: m  reason: collision with root package name */
        private final Paint f16391m;

        /* renamed from: n  reason: collision with root package name */
        private final j f16392n;

        /* renamed from: o  reason: collision with root package name */
        private final PathMeasure f16393o;

        /* renamed from: p  reason: collision with root package name */
        private final float f16394p;

        /* renamed from: q  reason: collision with root package name */
        private final float[] f16395q;

        /* renamed from: r  reason: collision with root package name */
        private final boolean f16396r;

        /* renamed from: s  reason: collision with root package name */
        private final float f16397s;

        /* renamed from: t  reason: collision with root package name */
        private final float f16398t;

        /* renamed from: u  reason: collision with root package name */
        private final boolean f16399u;

        /* renamed from: v  reason: collision with root package name */
        private final MaterialShapeDrawable f16400v;

        /* renamed from: w  reason: collision with root package name */
        private final RectF f16401w;

        /* renamed from: x  reason: collision with root package name */
        private final RectF f16402x;

        /* renamed from: y  reason: collision with root package name */
        private final RectF f16403y;

        /* renamed from: z  reason: collision with root package name */
        private final RectF f16404z;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements r.c {
            a() {
            }

            @Override // com.google.android.material.transition.r.c
            public void a(Canvas canvas) {
                e.this.f16379a.draw(canvas);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class b implements r.c {
            b() {
            }

            @Override // com.google.android.material.transition.r.c
            public void a(Canvas canvas) {
                e.this.f16383e.draw(canvas);
            }
        }

        /* synthetic */ e(PathMotion pathMotion, View view, RectF rectF, com.google.android.material.shape.m mVar, float f4, View view2, RectF rectF2, com.google.android.material.shape.m mVar2, float f5, int i2, int i4, int i5, int i6, boolean z3, boolean z4, com.google.android.material.transition.a aVar, f fVar, d dVar, boolean z5, a aVar2) {
            this(pathMotion, view, rectF, mVar, f4, view2, rectF2, mVar2, f5, i2, i4, i5, i6, z3, z4, aVar, fVar, dVar, z5);
        }

        private static float d(RectF rectF, float f4) {
            return ((rectF.centerX() / (f4 / 2.0f)) - 1.0f) * O;
        }

        private static float e(RectF rectF, float f4) {
            return (rectF.centerY() / f4) * P;
        }

        private void f(Canvas canvas, RectF rectF, Path path, @ColorInt int i2) {
            PointF m4 = m(rectF);
            if (this.L == 0.0f) {
                path.reset();
                path.moveTo(m4.x, m4.y);
                return;
            }
            path.lineTo(m4.x, m4.y);
            this.E.setColor(i2);
            canvas.drawPath(path, this.E);
        }

        private void g(Canvas canvas, RectF rectF, @ColorInt int i2) {
            this.E.setColor(i2);
            canvas.drawRect(rectF, this.E);
        }

        private void h(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f16392n.d(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                j(canvas);
            } else {
                i(canvas);
            }
            canvas.restore();
        }

        private void i(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f16400v;
            RectF rectF = this.I;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f16400v.n0(this.J);
            this.f16400v.B0((int) this.K);
            this.f16400v.setShapeAppearanceModel(this.f16392n.c());
            this.f16400v.draw(canvas);
        }

        private void j(Canvas canvas) {
            com.google.android.material.shape.m c4 = this.f16392n.c();
            if (c4.u(this.I)) {
                float a4 = c4.r().a(this.I);
                canvas.drawRoundRect(this.I, a4, a4, this.f16390l);
                return;
            }
            canvas.drawPath(this.f16392n.d(), this.f16390l);
        }

        private void k(Canvas canvas) {
            n(canvas, this.f16389k);
            Rect bounds = getBounds();
            RectF rectF = this.f16403y;
            r.w(canvas, bounds, rectF.left, rectF.top, this.H.f16441b, this.G.f16419b, new b());
        }

        private void l(Canvas canvas) {
            n(canvas, this.f16388j);
            Rect bounds = getBounds();
            RectF rectF = this.f16401w;
            r.w(canvas, bounds, rectF.left, rectF.top, this.H.f16440a, this.G.f16418a, new a());
        }

        private static PointF m(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        private void n(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(float f4) {
            if (this.L != f4) {
                p(f4);
            }
        }

        private void p(float f4) {
            float f5;
            float f6;
            this.L = f4;
            this.f16391m.setAlpha((int) (this.f16396r ? r.k(0.0f, 255.0f, f4) : r.k(255.0f, 0.0f, f4)));
            this.f16393o.getPosTan(this.f16394p * f4, this.f16395q, null);
            float[] fArr = this.f16395q;
            float f7 = fArr[0];
            float f8 = fArr[1];
            if (f4 > 1.0f || f4 < 0.0f) {
                if (f4 > 1.0f) {
                    f5 = 0.99f;
                    f6 = (f4 - 1.0f) / 0.00999999f;
                } else {
                    f5 = 0.01f;
                    f6 = (f4 / 0.01f) * MaterialContainerTransform.f16359l1;
                }
                this.f16393o.getPosTan(this.f16394p * f5, fArr, null);
                float[] fArr2 = this.f16395q;
                f7 += (f7 - fArr2[0]) * f6;
                f8 += (f8 - fArr2[1]) * f6;
            }
            float f9 = f7;
            float f10 = f8;
            h a4 = this.C.a(f4, ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16376b.f16373a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16376b.f16374b))).floatValue(), this.f16380b.width(), this.f16380b.height(), this.f16384f.width(), this.f16384f.height());
            this.H = a4;
            RectF rectF = this.f16401w;
            float f11 = a4.f16442c;
            rectF.set(f9 - (f11 / 2.0f), f10, (f11 / 2.0f) + f9, a4.f16443d + f10);
            RectF rectF2 = this.f16403y;
            h hVar = this.H;
            float f12 = hVar.f16444e;
            rectF2.set(f9 - (f12 / 2.0f), f10, f9 + (f12 / 2.0f), hVar.f16445f + f10);
            this.f16402x.set(this.f16401w);
            this.f16404z.set(this.f16403y);
            float floatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16377c.f16373a))).floatValue();
            float floatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16377c.f16374b))).floatValue();
            boolean b4 = this.C.b(this.H);
            RectF rectF3 = b4 ? this.f16402x : this.f16404z;
            float l4 = r.l(0.0f, 1.0f, floatValue, floatValue2, f4);
            if (!b4) {
                l4 = 1.0f - l4;
            }
            this.C.c(rectF3, l4, this.H);
            this.I = new RectF(Math.min(this.f16402x.left, this.f16404z.left), Math.min(this.f16402x.top, this.f16404z.top), Math.max(this.f16402x.right, this.f16404z.right), Math.max(this.f16402x.bottom, this.f16404z.bottom));
            this.f16392n.b(f4, this.f16381c, this.f16385g, this.f16401w, this.f16402x, this.f16404z, this.A.f16378d);
            this.J = r.k(this.f16382d, this.f16386h, f4);
            float d4 = d(this.I, this.f16397s);
            float e4 = e(this.I, this.f16398t);
            float f13 = this.J;
            float f14 = (int) (e4 * f13);
            this.K = f14;
            this.f16390l.setShadowLayer(f13, (int) (d4 * f13), f14, M);
            this.G = this.B.a(f4, ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16375a.f16373a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16375a.f16374b))).floatValue(), 0.35f);
            if (this.f16388j.getColor() != 0) {
                this.f16388j.setAlpha(this.G.f16418a);
            }
            if (this.f16389k.getColor() != 0) {
                this.f16389k.setAlpha(this.G.f16419b);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f16391m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f16391m);
            }
            int save = this.D ? canvas.save() : -1;
            if (this.f16399u && this.J > 0.0f) {
                h(canvas);
            }
            this.f16392n.a(canvas);
            n(canvas, this.f16387i);
            if (this.G.f16420c) {
                l(canvas);
                k(canvas);
            } else {
                k(canvas);
                l(canvas);
            }
            if (this.D) {
                canvas.restoreToCount(save);
                f(canvas, this.f16401w, this.F, -65281);
                g(canvas, this.f16402x, InputDeviceCompat.SOURCE_ANY);
                g(canvas, this.f16401w, -16711936);
                g(canvas, this.f16404z, -16711681);
                g(canvas, this.f16403y, -16776961);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i2) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }

        private e(PathMotion pathMotion, View view, RectF rectF, com.google.android.material.shape.m mVar, float f4, View view2, RectF rectF2, com.google.android.material.shape.m mVar2, float f5, @ColorInt int i2, @ColorInt int i4, @ColorInt int i5, int i6, boolean z3, boolean z4, com.google.android.material.transition.a aVar, f fVar, d dVar, boolean z5) {
            Paint paint = new Paint();
            this.f16387i = paint;
            Paint paint2 = new Paint();
            this.f16388j = paint2;
            Paint paint3 = new Paint();
            this.f16389k = paint3;
            this.f16390l = new Paint();
            Paint paint4 = new Paint();
            this.f16391m = paint4;
            this.f16392n = new j();
            this.f16395q = r7;
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.f16400v = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.E = paint5;
            this.F = new Path();
            this.f16379a = view;
            this.f16380b = rectF;
            this.f16381c = mVar;
            this.f16382d = f4;
            this.f16383e = view2;
            this.f16384f = rectF2;
            this.f16385g = mVar2;
            this.f16386h = f5;
            this.f16396r = z3;
            this.f16399u = z4;
            this.B = aVar;
            this.C = fVar;
            this.A = dVar;
            this.D = z5;
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            this.f16397s = displayMetrics.widthPixels;
            this.f16398t = displayMetrics.heightPixels;
            paint.setColor(i2);
            paint2.setColor(i4);
            paint3.setColor(i5);
            materialShapeDrawable.o0(ColorStateList.valueOf(0));
            materialShapeDrawable.x0(2);
            materialShapeDrawable.u0(false);
            materialShapeDrawable.v0(N);
            RectF rectF3 = new RectF(rectF);
            this.f16401w = rectF3;
            this.f16402x = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f16403y = rectF4;
            this.f16404z = new RectF(rectF4);
            PointF m4 = m(rectF);
            PointF m5 = m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(m4.x, m4.y, m5.x, m5.y), false);
            this.f16393o = pathMeasure;
            this.f16394p = pathMeasure.getLength();
            float[] fArr = {rectF.centerX(), rectF.top};
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(r.c(i6));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            p(0.0f);
        }
    }

    public MaterialContainerTransform() {
        this.f16360u0 = false;
        this.f16361v0 = false;
        this.f16362w0 = false;
        this.f16363x0 = false;
        this.f16364y0 = 16908290;
        this.f16365z0 = -1;
        this.A0 = -1;
        this.B0 = 0;
        this.C0 = 0;
        this.D0 = 0;
        this.E0 = 1375731712;
        this.F0 = 0;
        this.G0 = 0;
        this.H0 = 0;
        this.Q0 = Build.VERSION.SDK_INT >= 28;
        this.R0 = f16359l1;
        this.S0 = f16359l1;
    }

    private d I(boolean z3) {
        PathMotion pathMotion = getPathMotion();
        if (!(pathMotion instanceof ArcMotion) && !(pathMotion instanceof k)) {
            return h0(z3, f16355h1, f16356i1);
        }
        return h0(z3, f16357j1, f16358k1);
    }

    private static RectF J(View view, @Nullable View view2, float f4, float f5) {
        if (view2 != null) {
            RectF g4 = r.g(view2);
            g4.offset(f4, f5);
            return g4;
        }
        return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
    }

    private static com.google.android.material.shape.m K(@NonNull View view, @NonNull RectF rectF, @Nullable com.google.android.material.shape.m mVar) {
        return r.b(a0(view, mVar), rectF);
    }

    private static void L(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i2, @Nullable com.google.android.material.shape.m mVar) {
        if (i2 != -1) {
            transitionValues.view = r.f(transitionValues.view, i2);
        } else if (view != null) {
            transitionValues.view = view;
        } else {
            View view2 = transitionValues.view;
            int i4 = R.id.mtrl_motion_snapshot_view;
            if (view2.getTag(i4) instanceof View) {
                transitionValues.view.setTag(i4, null);
                transitionValues.view = (View) transitionValues.view.getTag(i4);
            }
        }
        View view3 = transitionValues.view;
        if (!ViewCompat.isLaidOut(view3) && view3.getWidth() == 0 && view3.getHeight() == 0) {
            return;
        }
        RectF h4 = view3.getParent() == null ? r.h(view3) : r.g(view3);
        transitionValues.values.put(f16352e1, h4);
        transitionValues.values.put(f16353f1, K(view3, h4, mVar));
    }

    private static float O(float f4, View view) {
        return f4 != f16359l1 ? f4 : ViewCompat.getElevation(view);
    }

    private static com.google.android.material.shape.m a0(@NonNull View view, @Nullable com.google.android.material.shape.m mVar) {
        if (mVar != null) {
            return mVar;
        }
        int i2 = R.id.mtrl_motion_snapshot_view;
        if (view.getTag(i2) instanceof com.google.android.material.shape.m) {
            return (com.google.android.material.shape.m) view.getTag(i2);
        }
        Context context = view.getContext();
        int j02 = j0(context);
        if (j02 != -1) {
            return com.google.android.material.shape.m.b(context, j02, 0).m();
        }
        if (view instanceof com.google.android.material.shape.q) {
            return ((com.google.android.material.shape.q) view).getShapeAppearanceModel();
        }
        return com.google.android.material.shape.m.a().m();
    }

    private d h0(boolean z3, d dVar, d dVar2) {
        if (!z3) {
            dVar = dVar2;
        }
        return new d((c) r.d(this.M0, dVar.f16375a), (c) r.d(this.N0, dVar.f16376b), (c) r.d(this.O0, dVar.f16377c), (c) r.d(this.P0, dVar.f16378d), null);
    }

    @StyleRes
    private static int j0(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.transitionShapeAppearance});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private boolean m0(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i2 = this.F0;
        if (i2 == 0) {
            return r.a(rectF2) > r.a(rectF);
        } else if (i2 != 1) {
            if (i2 == 2) {
                return false;
            }
            throw new IllegalArgumentException("Invalid transition direction: " + this.F0);
        } else {
            return true;
        }
    }

    private void o0(Context context, boolean z3) {
        r.r(this, context, R.attr.motionEasingStandard, com.google.android.material.animation.a.f14005b);
        r.q(this, context, z3 ? R.attr.motionDurationLong1 : R.attr.motionDurationMedium2);
        if (this.f16362w0) {
            return;
        }
        r.s(this, context, R.attr.motionPath);
    }

    public void A0(@Nullable c cVar) {
        this.M0 = cVar;
    }

    public void B0(int i2) {
        this.H0 = i2;
    }

    public void C0(boolean z3) {
        this.f16361v0 = z3;
    }

    public void D0(@Nullable c cVar) {
        this.O0 = cVar;
    }

    public void E0(@Nullable c cVar) {
        this.N0 = cVar;
    }

    public void F0(@ColorInt int i2) {
        this.E0 = i2;
    }

    public void G0(@Nullable c cVar) {
        this.P0 = cVar;
    }

    public void H0(@ColorInt int i2) {
        this.C0 = i2;
    }

    public void I0(float f4) {
        this.R0 = f4;
    }

    public void J0(@Nullable com.google.android.material.shape.m mVar) {
        this.K0 = mVar;
    }

    public void K0(@Nullable View view) {
        this.I0 = view;
    }

    public void L0(@IdRes int i2) {
        this.f16365z0 = i2;
    }

    @ColorInt
    public int M() {
        return this.B0;
    }

    public void M0(int i2) {
        this.F0 = i2;
    }

    @IdRes
    public int N() {
        return this.f16364y0;
    }

    @ColorInt
    public int P() {
        return this.D0;
    }

    public float Q() {
        return this.S0;
    }

    @Nullable
    public com.google.android.material.shape.m R() {
        return this.L0;
    }

    @Nullable
    public View S() {
        return this.J0;
    }

    @IdRes
    public int T() {
        return this.A0;
    }

    public int U() {
        return this.G0;
    }

    @Nullable
    public c V() {
        return this.M0;
    }

    public int W() {
        return this.H0;
    }

    @Nullable
    public c X() {
        return this.O0;
    }

    @Nullable
    public c Y() {
        return this.N0;
    }

    @ColorInt
    public int Z() {
        return this.E0;
    }

    @Nullable
    public c b0() {
        return this.P0;
    }

    @ColorInt
    public int c0() {
        return this.C0;
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        L(transitionValues, this.J0, this.A0, this.L0);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        L(transitionValues, this.I0, this.f16365z0, this.K0);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        View e4;
        View view;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get(f16352e1);
            com.google.android.material.shape.m mVar = (com.google.android.material.shape.m) transitionValues.values.get(f16353f1);
            if (rectF != null && mVar != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get(f16352e1);
                com.google.android.material.shape.m mVar2 = (com.google.android.material.shape.m) transitionValues2.values.get(f16353f1);
                if (rectF2 != null && mVar2 != null) {
                    View view2 = transitionValues.view;
                    View view3 = transitionValues2.view;
                    View view4 = view3.getParent() != null ? view3 : view2;
                    if (this.f16364y0 == view4.getId()) {
                        e4 = (View) view4.getParent();
                        view = view4;
                    } else {
                        e4 = r.e(view4, this.f16364y0);
                        view = null;
                    }
                    RectF g4 = r.g(e4);
                    float f4 = -g4.left;
                    float f5 = -g4.top;
                    RectF J = J(e4, view, f4, f5);
                    rectF.offset(f4, f5);
                    rectF2.offset(f4, f5);
                    boolean m02 = m0(rectF, rectF2);
                    if (!this.f16363x0) {
                        o0(view4.getContext(), m02);
                    }
                    e eVar = new e(getPathMotion(), view2, rectF, mVar, O(this.R0, view2), view3, rectF2, mVar2, O(this.S0, view3), this.B0, this.C0, this.D0, this.E0, m02, this.Q0, com.google.android.material.transition.b.a(this.G0, m02), g.a(this.H0, m02, rectF, rectF2), I(m02), this.f16360u0, null);
                    eVar.setBounds(Math.round(J.left), Math.round(J.top), Math.round(J.right), Math.round(J.bottom));
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    ofFloat.addUpdateListener(new a(eVar));
                    addListener(new b(e4, eVar, view2, view3));
                    return ofFloat;
                }
            }
        }
        return null;
    }

    public float d0() {
        return this.R0;
    }

    @Nullable
    public com.google.android.material.shape.m e0() {
        return this.K0;
    }

    @Nullable
    public View f0() {
        return this.I0;
    }

    @IdRes
    public int g0() {
        return this.f16365z0;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f16354g1;
    }

    public int i0() {
        return this.F0;
    }

    public boolean k0() {
        return this.f16360u0;
    }

    public boolean l0() {
        return this.Q0;
    }

    public boolean n0() {
        return this.f16361v0;
    }

    public void p0(@ColorInt int i2) {
        this.B0 = i2;
        this.C0 = i2;
        this.D0 = i2;
    }

    public void q0(@ColorInt int i2) {
        this.B0 = i2;
    }

    public void r0(boolean z3) {
        this.f16360u0 = z3;
    }

    public void s0(@IdRes int i2) {
        this.f16364y0 = i2;
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f16362w0 = true;
    }

    public void t0(boolean z3) {
        this.Q0 = z3;
    }

    public void u0(@ColorInt int i2) {
        this.D0 = i2;
    }

    public void v0(float f4) {
        this.S0 = f4;
    }

    public void w0(@Nullable com.google.android.material.shape.m mVar) {
        this.L0 = mVar;
    }

    public void x0(@Nullable View view) {
        this.J0 = view;
    }

    public void y0(@IdRes int i2) {
        this.A0 = i2;
    }

    public void z0(int i2) {
        this.G0 = i2;
    }

    public MaterialContainerTransform(@NonNull Context context, boolean z3) {
        this.f16360u0 = false;
        this.f16361v0 = false;
        this.f16362w0 = false;
        this.f16363x0 = false;
        this.f16364y0 = 16908290;
        this.f16365z0 = -1;
        this.A0 = -1;
        this.B0 = 0;
        this.C0 = 0;
        this.D0 = 0;
        this.E0 = 1375731712;
        this.F0 = 0;
        this.G0 = 0;
        this.H0 = 0;
        this.Q0 = Build.VERSION.SDK_INT >= 28;
        this.R0 = f16359l1;
        this.S0 = f16359l1;
        o0(context, z3);
        this.f16363x0 = true;
    }
}

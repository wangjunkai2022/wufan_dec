package com.google.android.material.transition.platform;

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
import android.transition.ArcMotion;
import android.transition.PathMotion;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.w;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.transition.platform.s;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class MaterialContainerTransform extends Transition {
    public static final int A = 1;
    public static final int B = 2;
    public static final int C = 0;
    public static final int D = 1;
    public static final int E = 2;
    public static final int F = 3;
    public static final int G = 0;
    public static final int H = 1;
    public static final int I = 2;
    private static final String J = MaterialContainerTransform.class.getSimpleName();
    private static final String K = "materialContainerTransition:bounds";

    /* renamed from: n0  reason: collision with root package name */
    private static final String f16461n0 = "materialContainerTransition:shapeAppearance";

    /* renamed from: o0  reason: collision with root package name */
    private static final String[] f16462o0 = {K, f16461n0};

    /* renamed from: p0  reason: collision with root package name */
    private static final d f16463p0 = new d(new c(0.0f, 0.25f), new c(0.0f, 1.0f), new c(0.0f, 1.0f), new c(0.0f, 0.75f), null);

    /* renamed from: q0  reason: collision with root package name */
    private static final d f16464q0 = new d(new c(0.6f, 0.9f), new c(0.0f, 1.0f), new c(0.0f, 0.9f), new c(0.3f, 0.9f), null);

    /* renamed from: r0  reason: collision with root package name */
    private static final d f16465r0 = new d(new c(0.1f, 0.4f), new c(0.1f, 1.0f), new c(0.1f, 1.0f), new c(0.1f, 0.9f), null);

    /* renamed from: s0  reason: collision with root package name */
    private static final d f16466s0 = new d(new c(0.6f, 0.9f), new c(0.0f, 0.9f), new c(0.0f, 0.9f), new c(0.2f, 0.9f), null);

    /* renamed from: t0  reason: collision with root package name */
    private static final float f16467t0 = -1.0f;

    /* renamed from: z  reason: collision with root package name */
    public static final int f16468z = 0;

    /* renamed from: a  reason: collision with root package name */
    private boolean f16469a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16470b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16471c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16472d;
    @IdRes

    /* renamed from: e  reason: collision with root package name */
    private int f16473e;
    @IdRes

    /* renamed from: f  reason: collision with root package name */
    private int f16474f;
    @IdRes

    /* renamed from: g  reason: collision with root package name */
    private int f16475g;
    @ColorInt

    /* renamed from: h  reason: collision with root package name */
    private int f16476h;
    @ColorInt

    /* renamed from: i  reason: collision with root package name */
    private int f16477i;
    @ColorInt

    /* renamed from: j  reason: collision with root package name */
    private int f16478j;
    @ColorInt

    /* renamed from: k  reason: collision with root package name */
    private int f16479k;

    /* renamed from: l  reason: collision with root package name */
    private int f16480l;

    /* renamed from: m  reason: collision with root package name */
    private int f16481m;

    /* renamed from: n  reason: collision with root package name */
    private int f16482n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private View f16483o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private View f16484p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private com.google.android.material.shape.m f16485q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private com.google.android.material.shape.m f16486r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private c f16487s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private c f16488t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private c f16489u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private c f16490v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f16491w;

    /* renamed from: x  reason: collision with root package name */
    private float f16492x;

    /* renamed from: y  reason: collision with root package name */
    private float f16493y;

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
        final /* synthetic */ e f16494a;

        a(e eVar) {
            this.f16494a = eVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f16494a.o(valueAnimator.getAnimatedFraction());
        }
    }

    /* loaded from: classes2.dex */
    class b extends r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16496a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f16497b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f16498c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ View f16499d;

        b(View view, e eVar, View view2, View view3) {
            this.f16496a = view;
            this.f16497b = eVar;
            this.f16498c = view2;
            this.f16499d = view3;
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            MaterialContainerTransform.this.removeListener(this);
            if (MaterialContainerTransform.this.f16470b) {
                return;
            }
            this.f16498c.setAlpha(1.0f);
            this.f16499d.setAlpha(1.0f);
            w.i(this.f16496a).remove(this.f16497b);
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            w.i(this.f16496a).add(this.f16497b);
            this.f16498c.setAlpha(0.0f);
            this.f16499d.setAlpha(0.0f);
        }
    }

    /* loaded from: classes2.dex */
    public static class c {
        @FloatRange(from = 0.0d, to = 1.0d)

        /* renamed from: a  reason: collision with root package name */
        private final float f16501a;
        @FloatRange(from = 0.0d, to = 1.0d)

        /* renamed from: b  reason: collision with root package name */
        private final float f16502b;

        public c(@FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5) {
            this.f16501a = f4;
            this.f16502b = f5;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float c() {
            return this.f16502b;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float d() {
            return this.f16501a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final c f16503a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final c f16504b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final c f16505c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private final c f16506d;

        /* synthetic */ d(c cVar, c cVar2, c cVar3, c cVar4, a aVar) {
            this(cVar, cVar2, cVar3, cVar4);
        }

        private d(@NonNull c cVar, @NonNull c cVar2, @NonNull c cVar3, @NonNull c cVar4) {
            this.f16503a = cVar;
            this.f16504b = cVar2;
            this.f16505c = cVar3;
            this.f16506d = cVar4;
        }
    }

    /* loaded from: classes2.dex */
    private static final class e extends Drawable {
        private static final int M = 754974720;
        private static final int N = -7829368;
        private static final float O = 0.3f;
        private static final float P = 1.5f;
        private final d A;
        private final com.google.android.material.transition.platform.a B;
        private final f C;
        private final boolean D;
        private final Paint E;
        private final Path F;
        private com.google.android.material.transition.platform.c G;
        private h H;
        private RectF I;
        private float J;
        private float K;
        private float L;

        /* renamed from: a  reason: collision with root package name */
        private final View f16507a;

        /* renamed from: b  reason: collision with root package name */
        private final RectF f16508b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.material.shape.m f16509c;

        /* renamed from: d  reason: collision with root package name */
        private final float f16510d;

        /* renamed from: e  reason: collision with root package name */
        private final View f16511e;

        /* renamed from: f  reason: collision with root package name */
        private final RectF f16512f;

        /* renamed from: g  reason: collision with root package name */
        private final com.google.android.material.shape.m f16513g;

        /* renamed from: h  reason: collision with root package name */
        private final float f16514h;

        /* renamed from: i  reason: collision with root package name */
        private final Paint f16515i;

        /* renamed from: j  reason: collision with root package name */
        private final Paint f16516j;

        /* renamed from: k  reason: collision with root package name */
        private final Paint f16517k;

        /* renamed from: l  reason: collision with root package name */
        private final Paint f16518l;

        /* renamed from: m  reason: collision with root package name */
        private final Paint f16519m;

        /* renamed from: n  reason: collision with root package name */
        private final j f16520n;

        /* renamed from: o  reason: collision with root package name */
        private final PathMeasure f16521o;

        /* renamed from: p  reason: collision with root package name */
        private final float f16522p;

        /* renamed from: q  reason: collision with root package name */
        private final float[] f16523q;

        /* renamed from: r  reason: collision with root package name */
        private final boolean f16524r;

        /* renamed from: s  reason: collision with root package name */
        private final float f16525s;

        /* renamed from: t  reason: collision with root package name */
        private final float f16526t;

        /* renamed from: u  reason: collision with root package name */
        private final boolean f16527u;

        /* renamed from: v  reason: collision with root package name */
        private final MaterialShapeDrawable f16528v;

        /* renamed from: w  reason: collision with root package name */
        private final RectF f16529w;

        /* renamed from: x  reason: collision with root package name */
        private final RectF f16530x;

        /* renamed from: y  reason: collision with root package name */
        private final RectF f16531y;

        /* renamed from: z  reason: collision with root package name */
        private final RectF f16532z;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements s.c {
            a() {
            }

            @Override // com.google.android.material.transition.platform.s.c
            public void a(Canvas canvas) {
                e.this.f16507a.draw(canvas);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class b implements s.c {
            b() {
            }

            @Override // com.google.android.material.transition.platform.s.c
            public void a(Canvas canvas) {
                e.this.f16511e.draw(canvas);
            }
        }

        /* synthetic */ e(PathMotion pathMotion, View view, RectF rectF, com.google.android.material.shape.m mVar, float f4, View view2, RectF rectF2, com.google.android.material.shape.m mVar2, float f5, int i2, int i4, int i5, int i6, boolean z3, boolean z4, com.google.android.material.transition.platform.a aVar, f fVar, d dVar, boolean z5, a aVar2) {
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
            canvas.clipPath(this.f16520n.d(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                j(canvas);
            } else {
                i(canvas);
            }
            canvas.restore();
        }

        private void i(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f16528v;
            RectF rectF = this.I;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f16528v.n0(this.J);
            this.f16528v.B0((int) this.K);
            this.f16528v.setShapeAppearanceModel(this.f16520n.c());
            this.f16528v.draw(canvas);
        }

        private void j(Canvas canvas) {
            com.google.android.material.shape.m c4 = this.f16520n.c();
            if (c4.u(this.I)) {
                float a4 = c4.r().a(this.I);
                canvas.drawRoundRect(this.I, a4, a4, this.f16518l);
                return;
            }
            canvas.drawPath(this.f16520n.d(), this.f16518l);
        }

        private void k(Canvas canvas) {
            n(canvas, this.f16517k);
            Rect bounds = getBounds();
            RectF rectF = this.f16531y;
            s.w(canvas, bounds, rectF.left, rectF.top, this.H.f16576b, this.G.f16554b, new b());
        }

        private void l(Canvas canvas) {
            n(canvas, this.f16516j);
            Rect bounds = getBounds();
            RectF rectF = this.f16529w;
            s.w(canvas, bounds, rectF.left, rectF.top, this.H.f16575a, this.G.f16553a, new a());
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
            this.f16519m.setAlpha((int) (this.f16524r ? s.k(0.0f, 255.0f, f4) : s.k(255.0f, 0.0f, f4)));
            this.f16521o.getPosTan(this.f16522p * f4, this.f16523q, null);
            float[] fArr = this.f16523q;
            float f7 = fArr[0];
            float f8 = fArr[1];
            if (f4 > 1.0f || f4 < 0.0f) {
                if (f4 > 1.0f) {
                    f5 = 0.99f;
                    f6 = (f4 - 1.0f) / 0.00999999f;
                } else {
                    f5 = 0.01f;
                    f6 = (f4 / 0.01f) * MaterialContainerTransform.f16467t0;
                }
                this.f16521o.getPosTan(this.f16522p * f5, fArr, null);
                float[] fArr2 = this.f16523q;
                f7 += (f7 - fArr2[0]) * f6;
                f8 += (f8 - fArr2[1]) * f6;
            }
            float f9 = f7;
            float f10 = f8;
            h a4 = this.C.a(f4, ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16504b.f16501a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16504b.f16502b))).floatValue(), this.f16508b.width(), this.f16508b.height(), this.f16512f.width(), this.f16512f.height());
            this.H = a4;
            RectF rectF = this.f16529w;
            float f11 = a4.f16577c;
            rectF.set(f9 - (f11 / 2.0f), f10, (f11 / 2.0f) + f9, a4.f16578d + f10);
            RectF rectF2 = this.f16531y;
            h hVar = this.H;
            float f12 = hVar.f16579e;
            rectF2.set(f9 - (f12 / 2.0f), f10, f9 + (f12 / 2.0f), hVar.f16580f + f10);
            this.f16530x.set(this.f16529w);
            this.f16532z.set(this.f16531y);
            float floatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16505c.f16501a))).floatValue();
            float floatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16505c.f16502b))).floatValue();
            boolean b4 = this.C.b(this.H);
            RectF rectF3 = b4 ? this.f16530x : this.f16532z;
            float l4 = s.l(0.0f, 1.0f, floatValue, floatValue2, f4);
            if (!b4) {
                l4 = 1.0f - l4;
            }
            this.C.c(rectF3, l4, this.H);
            this.I = new RectF(Math.min(this.f16530x.left, this.f16532z.left), Math.min(this.f16530x.top, this.f16532z.top), Math.max(this.f16530x.right, this.f16532z.right), Math.max(this.f16530x.bottom, this.f16532z.bottom));
            this.f16520n.b(f4, this.f16509c, this.f16513g, this.f16529w, this.f16530x, this.f16532z, this.A.f16506d);
            this.J = s.k(this.f16510d, this.f16514h, f4);
            float d4 = d(this.I, this.f16525s);
            float e4 = e(this.I, this.f16526t);
            float f13 = this.J;
            float f14 = (int) (e4 * f13);
            this.K = f14;
            this.f16518l.setShadowLayer(f13, (int) (d4 * f13), f14, M);
            this.G = this.B.a(f4, ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16503a.f16501a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.A.f16503a.f16502b))).floatValue(), 0.35f);
            if (this.f16516j.getColor() != 0) {
                this.f16516j.setAlpha(this.G.f16553a);
            }
            if (this.f16517k.getColor() != 0) {
                this.f16517k.setAlpha(this.G.f16554b);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f16519m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f16519m);
            }
            int save = this.D ? canvas.save() : -1;
            if (this.f16527u && this.J > 0.0f) {
                h(canvas);
            }
            this.f16520n.a(canvas);
            n(canvas, this.f16515i);
            if (this.G.f16555c) {
                l(canvas);
                k(canvas);
            } else {
                k(canvas);
                l(canvas);
            }
            if (this.D) {
                canvas.restoreToCount(save);
                f(canvas, this.f16529w, this.F, -65281);
                g(canvas, this.f16530x, InputDeviceCompat.SOURCE_ANY);
                g(canvas, this.f16529w, -16711936);
                g(canvas, this.f16532z, -16711681);
                g(canvas, this.f16531y, -16776961);
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

        private e(PathMotion pathMotion, View view, RectF rectF, com.google.android.material.shape.m mVar, float f4, View view2, RectF rectF2, com.google.android.material.shape.m mVar2, float f5, @ColorInt int i2, @ColorInt int i4, @ColorInt int i5, int i6, boolean z3, boolean z4, com.google.android.material.transition.platform.a aVar, f fVar, d dVar, boolean z5) {
            Paint paint = new Paint();
            this.f16515i = paint;
            Paint paint2 = new Paint();
            this.f16516j = paint2;
            Paint paint3 = new Paint();
            this.f16517k = paint3;
            this.f16518l = new Paint();
            Paint paint4 = new Paint();
            this.f16519m = paint4;
            this.f16520n = new j();
            this.f16523q = r7;
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.f16528v = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.E = paint5;
            this.F = new Path();
            this.f16507a = view;
            this.f16508b = rectF;
            this.f16509c = mVar;
            this.f16510d = f4;
            this.f16511e = view2;
            this.f16512f = rectF2;
            this.f16513g = mVar2;
            this.f16514h = f5;
            this.f16524r = z3;
            this.f16527u = z4;
            this.B = aVar;
            this.C = fVar;
            this.A = dVar;
            this.D = z5;
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            this.f16525s = displayMetrics.widthPixels;
            this.f16526t = displayMetrics.heightPixels;
            paint.setColor(i2);
            paint2.setColor(i4);
            paint3.setColor(i5);
            materialShapeDrawable.o0(ColorStateList.valueOf(0));
            materialShapeDrawable.x0(2);
            materialShapeDrawable.u0(false);
            materialShapeDrawable.v0(N);
            RectF rectF3 = new RectF(rectF);
            this.f16529w = rectF3;
            this.f16530x = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f16531y = rectF4;
            this.f16532z = new RectF(rectF4);
            PointF m4 = m(rectF);
            PointF m5 = m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(m4.x, m4.y, m5.x, m5.y), false);
            this.f16521o = pathMeasure;
            this.f16522p = pathMeasure.getLength();
            float[] fArr = {rectF.centerX(), rectF.top};
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(s.c(i6));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            p(0.0f);
        }
    }

    public MaterialContainerTransform() {
        this.f16469a = false;
        this.f16470b = false;
        this.f16471c = false;
        this.f16472d = false;
        this.f16473e = 16908290;
        this.f16474f = -1;
        this.f16475g = -1;
        this.f16476h = 0;
        this.f16477i = 0;
        this.f16478j = 0;
        this.f16479k = 1375731712;
        this.f16480l = 0;
        this.f16481m = 0;
        this.f16482n = 0;
        this.f16491w = Build.VERSION.SDK_INT >= 28;
        this.f16492x = f16467t0;
        this.f16493y = f16467t0;
    }

    private d A(boolean z3, d dVar, d dVar2) {
        if (!z3) {
            dVar = dVar2;
        }
        return new d((c) s.d(this.f16487s, dVar.f16503a), (c) s.d(this.f16488t, dVar.f16504b), (c) s.d(this.f16489u, dVar.f16505c), (c) s.d(this.f16490v, dVar.f16506d), null);
    }

    @StyleRes
    private static int C(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.transitionShapeAppearance});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private boolean F(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i2 = this.f16480l;
        if (i2 == 0) {
            return s.a(rectF2) > s.a(rectF);
        } else if (i2 != 1) {
            if (i2 == 2) {
                return false;
            }
            throw new IllegalArgumentException("Invalid transition direction: " + this.f16480l);
        } else {
            return true;
        }
    }

    private void H(Context context, boolean z3) {
        s.r(this, context, R.attr.motionEasingStandard, com.google.android.material.animation.a.f14005b);
        s.q(this, context, z3 ? R.attr.motionDurationLong1 : R.attr.motionDurationMedium2);
        if (this.f16471c) {
            return;
        }
        s.s(this, context, R.attr.motionPath);
    }

    private d b(boolean z3) {
        PathMotion pathMotion = getPathMotion();
        if (!(pathMotion instanceof ArcMotion) && !(pathMotion instanceof k)) {
            return A(z3, f16463p0, f16464q0);
        }
        return A(z3, f16465r0, f16466s0);
    }

    private static RectF c(View view, @Nullable View view2, float f4, float f5) {
        if (view2 != null) {
            RectF g4 = s.g(view2);
            g4.offset(f4, f5);
            return g4;
        }
        return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
    }

    private static com.google.android.material.shape.m d(@NonNull View view, @NonNull RectF rectF, @Nullable com.google.android.material.shape.m mVar) {
        return s.b(t(view, mVar), rectF);
    }

    private static void e(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i2, @Nullable com.google.android.material.shape.m mVar) {
        if (i2 != -1) {
            transitionValues.view = s.f(transitionValues.view, i2);
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
        RectF h4 = view3.getParent() == null ? s.h(view3) : s.g(view3);
        transitionValues.values.put(K, h4);
        transitionValues.values.put(f16461n0, d(view3, h4, mVar));
    }

    private static float h(float f4, View view) {
        return f4 != f16467t0 ? f4 : ViewCompat.getElevation(view);
    }

    private static com.google.android.material.shape.m t(@NonNull View view, @Nullable com.google.android.material.shape.m mVar) {
        if (mVar != null) {
            return mVar;
        }
        int i2 = R.id.mtrl_motion_snapshot_view;
        if (view.getTag(i2) instanceof com.google.android.material.shape.m) {
            return (com.google.android.material.shape.m) view.getTag(i2);
        }
        Context context = view.getContext();
        int C2 = C(context);
        if (C2 != -1) {
            return com.google.android.material.shape.m.b(context, C2, 0).m();
        }
        if (view instanceof com.google.android.material.shape.q) {
            return ((com.google.android.material.shape.q) view).getShapeAppearanceModel();
        }
        return com.google.android.material.shape.m.a().m();
    }

    public int B() {
        return this.f16480l;
    }

    public boolean D() {
        return this.f16469a;
    }

    public boolean E() {
        return this.f16491w;
    }

    public boolean G() {
        return this.f16470b;
    }

    public void I(@ColorInt int i2) {
        this.f16476h = i2;
        this.f16477i = i2;
        this.f16478j = i2;
    }

    public void J(@ColorInt int i2) {
        this.f16476h = i2;
    }

    public void K(boolean z3) {
        this.f16469a = z3;
    }

    public void L(@IdRes int i2) {
        this.f16473e = i2;
    }

    public void M(boolean z3) {
        this.f16491w = z3;
    }

    public void N(@ColorInt int i2) {
        this.f16478j = i2;
    }

    public void O(float f4) {
        this.f16493y = f4;
    }

    public void P(@Nullable com.google.android.material.shape.m mVar) {
        this.f16486r = mVar;
    }

    public void Q(@Nullable View view) {
        this.f16484p = view;
    }

    public void R(@IdRes int i2) {
        this.f16475g = i2;
    }

    public void S(int i2) {
        this.f16481m = i2;
    }

    public void T(@Nullable c cVar) {
        this.f16487s = cVar;
    }

    public void U(int i2) {
        this.f16482n = i2;
    }

    public void V(boolean z3) {
        this.f16470b = z3;
    }

    public void W(@Nullable c cVar) {
        this.f16489u = cVar;
    }

    public void X(@Nullable c cVar) {
        this.f16488t = cVar;
    }

    public void Y(@ColorInt int i2) {
        this.f16479k = i2;
    }

    public void Z(@Nullable c cVar) {
        this.f16490v = cVar;
    }

    public void a0(@ColorInt int i2) {
        this.f16477i = i2;
    }

    public void b0(float f4) {
        this.f16492x = f4;
    }

    public void c0(@Nullable com.google.android.material.shape.m mVar) {
        this.f16485q = mVar;
    }

    @Override // android.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f16484p, this.f16475g, this.f16486r);
    }

    @Override // android.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        e(transitionValues, this.f16483o, this.f16474f, this.f16485q);
    }

    @Override // android.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        View e4;
        View view;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get(K);
            com.google.android.material.shape.m mVar = (com.google.android.material.shape.m) transitionValues.values.get(f16461n0);
            if (rectF != null && mVar != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get(K);
                com.google.android.material.shape.m mVar2 = (com.google.android.material.shape.m) transitionValues2.values.get(f16461n0);
                if (rectF2 != null && mVar2 != null) {
                    View view2 = transitionValues.view;
                    View view3 = transitionValues2.view;
                    View view4 = view3.getParent() != null ? view3 : view2;
                    if (this.f16473e == view4.getId()) {
                        e4 = (View) view4.getParent();
                        view = view4;
                    } else {
                        e4 = s.e(view4, this.f16473e);
                        view = null;
                    }
                    RectF g4 = s.g(e4);
                    float f4 = -g4.left;
                    float f5 = -g4.top;
                    RectF c4 = c(e4, view, f4, f5);
                    rectF.offset(f4, f5);
                    rectF2.offset(f4, f5);
                    boolean F2 = F(rectF, rectF2);
                    if (!this.f16472d) {
                        H(view4.getContext(), F2);
                    }
                    e eVar = new e(getPathMotion(), view2, rectF, mVar, h(this.f16492x, view2), view3, rectF2, mVar2, h(this.f16493y, view3), this.f16476h, this.f16477i, this.f16478j, this.f16479k, F2, this.f16491w, com.google.android.material.transition.platform.b.a(this.f16481m, F2), g.a(this.f16482n, F2, rectF, rectF2), b(F2), this.f16469a, null);
                    eVar.setBounds(Math.round(c4.left), Math.round(c4.top), Math.round(c4.right), Math.round(c4.bottom));
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    ofFloat.addUpdateListener(new a(eVar));
                    addListener(new b(e4, eVar, view2, view3));
                    return ofFloat;
                }
            }
        }
        return null;
    }

    public void d0(@Nullable View view) {
        this.f16483o = view;
    }

    public void e0(@IdRes int i2) {
        this.f16474f = i2;
    }

    @ColorInt
    public int f() {
        return this.f16476h;
    }

    public void f0(int i2) {
        this.f16480l = i2;
    }

    @IdRes
    public int g() {
        return this.f16473e;
    }

    @Override // android.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f16462o0;
    }

    @ColorInt
    public int i() {
        return this.f16478j;
    }

    public float j() {
        return this.f16493y;
    }

    @Nullable
    public com.google.android.material.shape.m k() {
        return this.f16486r;
    }

    @Nullable
    public View l() {
        return this.f16484p;
    }

    @IdRes
    public int m() {
        return this.f16475g;
    }

    public int n() {
        return this.f16481m;
    }

    @Nullable
    public c o() {
        return this.f16487s;
    }

    public int p() {
        return this.f16482n;
    }

    @Nullable
    public c q() {
        return this.f16489u;
    }

    @Nullable
    public c r() {
        return this.f16488t;
    }

    @ColorInt
    public int s() {
        return this.f16479k;
    }

    @Override // android.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f16471c = true;
    }

    @Nullable
    public c u() {
        return this.f16490v;
    }

    @ColorInt
    public int v() {
        return this.f16477i;
    }

    public float w() {
        return this.f16492x;
    }

    @Nullable
    public com.google.android.material.shape.m x() {
        return this.f16485q;
    }

    @Nullable
    public View y() {
        return this.f16483o;
    }

    @IdRes
    public int z() {
        return this.f16474f;
    }

    public MaterialContainerTransform(@NonNull Context context, boolean z3) {
        this.f16469a = false;
        this.f16470b = false;
        this.f16471c = false;
        this.f16472d = false;
        this.f16473e = 16908290;
        this.f16474f = -1;
        this.f16475g = -1;
        this.f16476h = 0;
        this.f16477i = 0;
        this.f16478j = 0;
        this.f16479k = 1375731712;
        this.f16480l = 0;
        this.f16481m = 0;
        this.f16482n = 0;
        this.f16491w = Build.VERSION.SDK_INT >= 28;
        this.f16492x = f16467t0;
        this.f16493y = f16467t0;
        H(context, z3);
        this.f16472d = true;
    }
}

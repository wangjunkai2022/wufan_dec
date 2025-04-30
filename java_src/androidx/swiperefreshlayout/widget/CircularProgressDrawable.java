package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public class CircularProgressDrawable extends Drawable implements Animatable {
    public static final int DEFAULT = 1;
    public static final int LARGE = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final float f7433i = 11.0f;

    /* renamed from: j  reason: collision with root package name */
    private static final float f7434j = 3.0f;

    /* renamed from: k  reason: collision with root package name */
    private static final int f7435k = 12;

    /* renamed from: l  reason: collision with root package name */
    private static final int f7436l = 6;

    /* renamed from: m  reason: collision with root package name */
    private static final float f7437m = 7.5f;

    /* renamed from: n  reason: collision with root package name */
    private static final float f7438n = 2.5f;

    /* renamed from: o  reason: collision with root package name */
    private static final int f7439o = 10;

    /* renamed from: p  reason: collision with root package name */
    private static final int f7440p = 5;

    /* renamed from: r  reason: collision with root package name */
    private static final float f7442r = 0.75f;

    /* renamed from: s  reason: collision with root package name */
    private static final float f7443s = 0.5f;

    /* renamed from: t  reason: collision with root package name */
    private static final int f7444t = 1332;

    /* renamed from: u  reason: collision with root package name */
    private static final float f7445u = 216.0f;

    /* renamed from: v  reason: collision with root package name */
    private static final float f7446v = 0.8f;

    /* renamed from: w  reason: collision with root package name */
    private static final float f7447w = 0.01f;

    /* renamed from: x  reason: collision with root package name */
    private static final float f7448x = 0.20999998f;

    /* renamed from: a  reason: collision with root package name */
    private final Ring f7449a;

    /* renamed from: b  reason: collision with root package name */
    private float f7450b;

    /* renamed from: c  reason: collision with root package name */
    private Resources f7451c;

    /* renamed from: d  reason: collision with root package name */
    private Animator f7452d;

    /* renamed from: e  reason: collision with root package name */
    float f7453e;

    /* renamed from: f  reason: collision with root package name */
    boolean f7454f;

    /* renamed from: g  reason: collision with root package name */
    private static final Interpolator f7431g = new LinearInterpolator();

    /* renamed from: h  reason: collision with root package name */
    private static final Interpolator f7432h = new FastOutSlowInInterpolator();

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f7441q = {-16777216};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface ProgressDrawableSize {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Ring {

        /* renamed from: a  reason: collision with root package name */
        final RectF f7459a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        final Paint f7460b;

        /* renamed from: c  reason: collision with root package name */
        final Paint f7461c;

        /* renamed from: d  reason: collision with root package name */
        final Paint f7462d;

        /* renamed from: e  reason: collision with root package name */
        float f7463e;

        /* renamed from: f  reason: collision with root package name */
        float f7464f;

        /* renamed from: g  reason: collision with root package name */
        float f7465g;

        /* renamed from: h  reason: collision with root package name */
        float f7466h;

        /* renamed from: i  reason: collision with root package name */
        int[] f7467i;

        /* renamed from: j  reason: collision with root package name */
        int f7468j;

        /* renamed from: k  reason: collision with root package name */
        float f7469k;

        /* renamed from: l  reason: collision with root package name */
        float f7470l;

        /* renamed from: m  reason: collision with root package name */
        float f7471m;

        /* renamed from: n  reason: collision with root package name */
        boolean f7472n;

        /* renamed from: o  reason: collision with root package name */
        Path f7473o;

        /* renamed from: p  reason: collision with root package name */
        float f7474p;

        /* renamed from: q  reason: collision with root package name */
        float f7475q;

        /* renamed from: r  reason: collision with root package name */
        int f7476r;

        /* renamed from: s  reason: collision with root package name */
        int f7477s;

        /* renamed from: t  reason: collision with root package name */
        int f7478t;

        /* renamed from: u  reason: collision with root package name */
        int f7479u;

        Ring() {
            Paint paint = new Paint();
            this.f7460b = paint;
            Paint paint2 = new Paint();
            this.f7461c = paint2;
            Paint paint3 = new Paint();
            this.f7462d = paint3;
            this.f7463e = 0.0f;
            this.f7464f = 0.0f;
            this.f7465g = 0.0f;
            this.f7466h = 5.0f;
            this.f7474p = 1.0f;
            this.f7478t = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        void A(int i2) {
            this.f7462d.setColor(i2);
        }

        void B(float f4) {
            this.f7475q = f4;
        }

        void C(int i2) {
            this.f7479u = i2;
        }

        void D(ColorFilter colorFilter) {
            this.f7460b.setColorFilter(colorFilter);
        }

        void E(int i2) {
            this.f7468j = i2;
            this.f7479u = this.f7467i[i2];
        }

        void F(@NonNull int[] iArr) {
            this.f7467i = iArr;
            E(0);
        }

        void G(float f4) {
            this.f7464f = f4;
        }

        void H(float f4) {
            this.f7465g = f4;
        }

        void I(boolean z3) {
            if (this.f7472n != z3) {
                this.f7472n = z3;
            }
        }

        void J(float f4) {
            this.f7463e = f4;
        }

        void K(Paint.Cap cap) {
            this.f7460b.setStrokeCap(cap);
        }

        void L(float f4) {
            this.f7466h = f4;
            this.f7460b.setStrokeWidth(f4);
        }

        void M() {
            this.f7469k = this.f7463e;
            this.f7470l = this.f7464f;
            this.f7471m = this.f7465g;
        }

        void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f7459a;
            float f4 = this.f7475q;
            float f5 = (this.f7466h / 2.0f) + f4;
            if (f4 <= 0.0f) {
                f5 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f7476r * this.f7474p) / 2.0f, this.f7466h / 2.0f);
            }
            rectF.set(rect.centerX() - f5, rect.centerY() - f5, rect.centerX() + f5, rect.centerY() + f5);
            float f6 = this.f7463e;
            float f7 = this.f7465g;
            float f8 = (f6 + f7) * 360.0f;
            float f9 = ((this.f7464f + f7) * 360.0f) - f8;
            this.f7460b.setColor(this.f7479u);
            this.f7460b.setAlpha(this.f7478t);
            float f10 = this.f7466h / 2.0f;
            rectF.inset(f10, f10);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f7462d);
            float f11 = -f10;
            rectF.inset(f11, f11);
            canvas.drawArc(rectF, f8, f9, false, this.f7460b);
            b(canvas, f8, f9, rectF);
        }

        void b(Canvas canvas, float f4, float f5, RectF rectF) {
            if (this.f7472n) {
                Path path = this.f7473o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f7473o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                this.f7473o.moveTo(0.0f, 0.0f);
                this.f7473o.lineTo(this.f7476r * this.f7474p, 0.0f);
                Path path3 = this.f7473o;
                float f6 = this.f7474p;
                path3.lineTo((this.f7476r * f6) / 2.0f, this.f7477s * f6);
                this.f7473o.offset(((Math.min(rectF.width(), rectF.height()) / 2.0f) + rectF.centerX()) - ((this.f7476r * this.f7474p) / 2.0f), rectF.centerY() + (this.f7466h / 2.0f));
                this.f7473o.close();
                this.f7461c.setColor(this.f7479u);
                this.f7461c.setAlpha(this.f7478t);
                canvas.save();
                canvas.rotate(f4 + f5, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f7473o, this.f7461c);
                canvas.restore();
            }
        }

        int c() {
            return this.f7478t;
        }

        float d() {
            return this.f7477s;
        }

        float e() {
            return this.f7474p;
        }

        float f() {
            return this.f7476r;
        }

        int g() {
            return this.f7462d.getColor();
        }

        float h() {
            return this.f7475q;
        }

        int[] i() {
            return this.f7467i;
        }

        float j() {
            return this.f7464f;
        }

        int k() {
            return this.f7467i[l()];
        }

        int l() {
            return (this.f7468j + 1) % this.f7467i.length;
        }

        float m() {
            return this.f7465g;
        }

        boolean n() {
            return this.f7472n;
        }

        float o() {
            return this.f7463e;
        }

        int p() {
            return this.f7467i[this.f7468j];
        }

        float q() {
            return this.f7470l;
        }

        float r() {
            return this.f7471m;
        }

        float s() {
            return this.f7469k;
        }

        Paint.Cap t() {
            return this.f7460b.getStrokeCap();
        }

        float u() {
            return this.f7466h;
        }

        void v() {
            E(l());
        }

        void w() {
            this.f7469k = 0.0f;
            this.f7470l = 0.0f;
            this.f7471m = 0.0f;
            J(0.0f);
            G(0.0f);
            H(0.0f);
        }

        void x(int i2) {
            this.f7478t = i2;
        }

        void y(float f4, float f5) {
            this.f7476r = (int) f4;
            this.f7477s = (int) f5;
        }

        void z(float f4) {
            if (f4 != this.f7474p) {
                this.f7474p = f4;
            }
        }
    }

    public CircularProgressDrawable(@NonNull Context context) {
        this.f7451c = ((Context) Preconditions.checkNotNull(context)).getResources();
        Ring ring = new Ring();
        this.f7449a = ring;
        ring.F(f7441q);
        setStrokeWidth(f7438n);
        g();
    }

    private void a(float f4, Ring ring) {
        h(f4, ring);
        ring.J(ring.s() + (((ring.q() - f7447w) - ring.s()) * f4));
        ring.G(ring.q());
        ring.H(ring.r() + ((((float) (Math.floor(ring.r() / f7446v) + 1.0d)) - ring.r()) * f4));
    }

    private int c(float f4, int i2, int i4) {
        int i5 = (i2 >> 24) & 255;
        int i6 = (i2 >> 16) & 255;
        int i7 = (i2 >> 8) & 255;
        int i8 = i2 & 255;
        return ((i5 + ((int) ((((i4 >> 24) & 255) - i5) * f4))) << 24) | ((i6 + ((int) ((((i4 >> 16) & 255) - i6) * f4))) << 16) | ((i7 + ((int) ((((i4 >> 8) & 255) - i7) * f4))) << 8) | (i8 + ((int) (f4 * ((i4 & 255) - i8))));
    }

    private float d() {
        return this.f7450b;
    }

    private void e(float f4) {
        this.f7450b = f4;
    }

    private void f(float f4, float f5, float f6, float f7) {
        Ring ring = this.f7449a;
        float f8 = this.f7451c.getDisplayMetrics().density;
        ring.L(f5 * f8);
        ring.B(f4 * f8);
        ring.E(0);
        ring.y(f6 * f8, f7 * f8);
    }

    private void g() {
        final Ring ring = this.f7449a;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressDrawable.this.h(floatValue, ring);
                CircularProgressDrawable.this.b(floatValue, ring, false);
                CircularProgressDrawable.this.invalidateSelf();
            }
        });
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f7431g);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                CircularProgressDrawable.this.b(1.0f, ring, true);
                ring.M();
                ring.v();
                CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
                if (circularProgressDrawable.f7454f) {
                    circularProgressDrawable.f7454f = false;
                    animator.cancel();
                    animator.setDuration(1332L);
                    animator.start();
                    ring.I(false);
                    return;
                }
                circularProgressDrawable.f7453e += 1.0f;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                CircularProgressDrawable.this.f7453e = 0.0f;
            }
        });
        this.f7452d = ofFloat;
    }

    void b(float f4, Ring ring, boolean z3) {
        float interpolation;
        float f5;
        if (this.f7454f) {
            a(f4, ring);
        } else if (f4 != 1.0f || z3) {
            float r3 = ring.r();
            if (f4 < 0.5f) {
                interpolation = ring.s();
                f5 = (f7432h.getInterpolation(f4 / 0.5f) * 0.79f) + f7447w + interpolation;
            } else {
                float s3 = ring.s() + 0.79f;
                interpolation = s3 - (((1.0f - f7432h.getInterpolation((f4 - 0.5f) / 0.5f)) * 0.79f) + f7447w);
                f5 = s3;
            }
            float f6 = (f4 + this.f7453e) * f7445u;
            ring.J(interpolation);
            ring.G(f5);
            ring.H(r3 + (f7448x * f4));
            e(f6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f7450b, bounds.exactCenterX(), bounds.exactCenterY());
        this.f7449a.a(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f7449a.c();
    }

    public boolean getArrowEnabled() {
        return this.f7449a.n();
    }

    public float getArrowHeight() {
        return this.f7449a.d();
    }

    public float getArrowScale() {
        return this.f7449a.e();
    }

    public float getArrowWidth() {
        return this.f7449a.f();
    }

    public int getBackgroundColor() {
        return this.f7449a.g();
    }

    public float getCenterRadius() {
        return this.f7449a.h();
    }

    @NonNull
    public int[] getColorSchemeColors() {
        return this.f7449a.i();
    }

    public float getEndTrim() {
        return this.f7449a.j();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public float getProgressRotation() {
        return this.f7449a.m();
    }

    public float getStartTrim() {
        return this.f7449a.o();
    }

    @NonNull
    public Paint.Cap getStrokeCap() {
        return this.f7449a.t();
    }

    public float getStrokeWidth() {
        return this.f7449a.u();
    }

    void h(float f4, Ring ring) {
        if (f4 > 0.75f) {
            ring.C(c((f4 - 0.75f) / 0.25f, ring.p(), ring.k()));
        } else {
            ring.C(ring.p());
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f7452d.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f7449a.x(i2);
        invalidateSelf();
    }

    public void setArrowDimensions(float f4, float f5) {
        this.f7449a.y(f4, f5);
        invalidateSelf();
    }

    public void setArrowEnabled(boolean z3) {
        this.f7449a.I(z3);
        invalidateSelf();
    }

    public void setArrowScale(float f4) {
        this.f7449a.z(f4);
        invalidateSelf();
    }

    public void setBackgroundColor(int i2) {
        this.f7449a.A(i2);
        invalidateSelf();
    }

    public void setCenterRadius(float f4) {
        this.f7449a.B(f4);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f7449a.D(colorFilter);
        invalidateSelf();
    }

    public void setColorSchemeColors(@NonNull int... iArr) {
        this.f7449a.F(iArr);
        this.f7449a.E(0);
        invalidateSelf();
    }

    public void setProgressRotation(float f4) {
        this.f7449a.H(f4);
        invalidateSelf();
    }

    public void setStartEndTrim(float f4, float f5) {
        this.f7449a.J(f4);
        this.f7449a.G(f5);
        invalidateSelf();
    }

    public void setStrokeCap(@NonNull Paint.Cap cap) {
        this.f7449a.K(cap);
        invalidateSelf();
    }

    public void setStrokeWidth(float f4) {
        this.f7449a.L(f4);
        invalidateSelf();
    }

    public void setStyle(int i2) {
        if (i2 == 0) {
            f(f7433i, 3.0f, 12.0f, 6.0f);
        } else {
            f(f7437m, f7438n, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f7452d.cancel();
        this.f7449a.M();
        if (this.f7449a.j() != this.f7449a.o()) {
            this.f7454f = true;
            this.f7452d.setDuration(666L);
            this.f7452d.start();
            return;
        }
        this.f7449a.E(0);
        this.f7449a.w();
        this.f7452d.setDuration(1332L);
        this.f7452d.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f7452d.cancel();
        e(0.0f);
        this.f7449a.I(false);
        this.f7449a.E(0);
        this.f7449a.w();
        invalidateSelf();
    }
}

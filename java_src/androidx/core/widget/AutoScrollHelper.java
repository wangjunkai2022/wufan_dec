package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
/* loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    private static final int A = 500;
    private static final int B = 500;
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;
    public static final float NO_MAX = Float.MAX_VALUE;
    public static final float NO_MIN = 0.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;

    /* renamed from: r  reason: collision with root package name */
    private static final int f5040r = 0;

    /* renamed from: s  reason: collision with root package name */
    private static final int f5041s = 1;

    /* renamed from: t  reason: collision with root package name */
    private static final int f5042t = 1;

    /* renamed from: u  reason: collision with root package name */
    private static final int f5043u = 315;

    /* renamed from: v  reason: collision with root package name */
    private static final int f5044v = 1575;

    /* renamed from: w  reason: collision with root package name */
    private static final float f5045w = Float.MAX_VALUE;

    /* renamed from: x  reason: collision with root package name */
    private static final float f5046x = 0.2f;

    /* renamed from: y  reason: collision with root package name */
    private static final float f5047y = 1.0f;

    /* renamed from: z  reason: collision with root package name */
    private static final int f5048z = ViewConfiguration.getTapTimeout();

    /* renamed from: c  reason: collision with root package name */
    final View f5051c;

    /* renamed from: d  reason: collision with root package name */
    private Runnable f5052d;

    /* renamed from: g  reason: collision with root package name */
    private int f5055g;

    /* renamed from: h  reason: collision with root package name */
    private int f5056h;

    /* renamed from: l  reason: collision with root package name */
    private boolean f5060l;

    /* renamed from: m  reason: collision with root package name */
    boolean f5061m;

    /* renamed from: n  reason: collision with root package name */
    boolean f5062n;

    /* renamed from: o  reason: collision with root package name */
    boolean f5063o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f5064p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f5065q;

    /* renamed from: a  reason: collision with root package name */
    final ClampedScroller f5049a = new ClampedScroller();

    /* renamed from: b  reason: collision with root package name */
    private final Interpolator f5050b = new AccelerateInterpolator();

    /* renamed from: e  reason: collision with root package name */
    private float[] f5053e = {0.0f, 0.0f};

    /* renamed from: f  reason: collision with root package name */
    private float[] f5054f = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: i  reason: collision with root package name */
    private float[] f5057i = {0.0f, 0.0f};

    /* renamed from: j  reason: collision with root package name */
    private float[] f5058j = {0.0f, 0.0f};

    /* renamed from: k  reason: collision with root package name */
    private float[] f5059k = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ClampedScroller {

        /* renamed from: a  reason: collision with root package name */
        private int f5066a;

        /* renamed from: b  reason: collision with root package name */
        private int f5067b;

        /* renamed from: c  reason: collision with root package name */
        private float f5068c;

        /* renamed from: d  reason: collision with root package name */
        private float f5069d;

        /* renamed from: j  reason: collision with root package name */
        private float f5075j;

        /* renamed from: k  reason: collision with root package name */
        private int f5076k;

        /* renamed from: e  reason: collision with root package name */
        private long f5070e = Long.MIN_VALUE;

        /* renamed from: i  reason: collision with root package name */
        private long f5074i = -1;

        /* renamed from: f  reason: collision with root package name */
        private long f5071f = 0;

        /* renamed from: g  reason: collision with root package name */
        private int f5072g = 0;

        /* renamed from: h  reason: collision with root package name */
        private int f5073h = 0;

        ClampedScroller() {
        }

        private float a(long j4) {
            long j5 = this.f5070e;
            if (j4 < j5) {
                return 0.0f;
            }
            long j6 = this.f5074i;
            if (j6 >= 0 && j4 >= j6) {
                float f4 = this.f5075j;
                return (1.0f - f4) + (f4 * AutoScrollHelper.c(((float) (j4 - j6)) / this.f5076k, 0.0f, 1.0f));
            }
            return AutoScrollHelper.c(((float) (j4 - j5)) / this.f5066a, 0.0f, 1.0f) * 0.5f;
        }

        private float b(float f4) {
            return ((-4.0f) * f4 * f4) + (f4 * 4.0f);
        }

        public void computeScrollDelta() {
            if (this.f5071f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float b4 = b(a(currentAnimationTimeMillis));
                this.f5071f = currentAnimationTimeMillis;
                float f4 = ((float) (currentAnimationTimeMillis - this.f5071f)) * b4;
                this.f5072g = (int) (this.f5068c * f4);
                this.f5073h = (int) (f4 * this.f5069d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        public int getDeltaX() {
            return this.f5072g;
        }

        public int getDeltaY() {
            return this.f5073h;
        }

        public int getHorizontalDirection() {
            float f4 = this.f5068c;
            return (int) (f4 / Math.abs(f4));
        }

        public int getVerticalDirection() {
            float f4 = this.f5069d;
            return (int) (f4 / Math.abs(f4));
        }

        public boolean isFinished() {
            return this.f5074i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f5074i + ((long) this.f5076k);
        }

        public void requestStop() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f5076k = AutoScrollHelper.d((int) (currentAnimationTimeMillis - this.f5070e), 0, this.f5067b);
            this.f5075j = a(currentAnimationTimeMillis);
            this.f5074i = currentAnimationTimeMillis;
        }

        public void setRampDownDuration(int i2) {
            this.f5067b = i2;
        }

        public void setRampUpDuration(int i2) {
            this.f5066a = i2;
        }

        public void setTargetVelocity(float f4, float f5) {
            this.f5068c = f4;
            this.f5069d = f5;
        }

        public void start() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f5070e = currentAnimationTimeMillis;
            this.f5074i = -1L;
            this.f5071f = currentAnimationTimeMillis;
            this.f5075j = 0.5f;
            this.f5072g = 0;
            this.f5073h = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ScrollAnimationRunnable implements Runnable {
        ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.f5063o) {
                if (autoScrollHelper.f5061m) {
                    autoScrollHelper.f5061m = false;
                    autoScrollHelper.f5049a.start();
                }
                ClampedScroller clampedScroller = AutoScrollHelper.this.f5049a;
                if (!clampedScroller.isFinished() && AutoScrollHelper.this.h()) {
                    AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                    if (autoScrollHelper2.f5062n) {
                        autoScrollHelper2.f5062n = false;
                        autoScrollHelper2.a();
                    }
                    clampedScroller.computeScrollDelta();
                    AutoScrollHelper.this.scrollTargetBy(clampedScroller.getDeltaX(), clampedScroller.getDeltaY());
                    ViewCompat.postOnAnimation(AutoScrollHelper.this.f5051c, this);
                    return;
                }
                AutoScrollHelper.this.f5063o = false;
            }
        }
    }

    public AutoScrollHelper(@NonNull View view) {
        this.f5051c = view;
        float f4 = Resources.getSystem().getDisplayMetrics().density;
        float f5 = (int) ((1575.0f * f4) + 0.5f);
        setMaximumVelocity(f5, f5);
        float f6 = (int) ((f4 * 315.0f) + 0.5f);
        setMinimumVelocity(f6, f6);
        setEdgeType(1);
        setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
        setRelativeEdges(0.2f, 0.2f);
        setRelativeVelocity(1.0f, 1.0f);
        setActivationDelay(f5048z);
        setRampUpDuration(500);
        setRampDownDuration(500);
    }

    private float b(int i2, float f4, float f5, float f6) {
        float f7 = f(this.f5053e[i2], f5, this.f5054f[i2], f4);
        if (f7 == 0.0f) {
            return 0.0f;
        }
        float f8 = this.f5057i[i2];
        float f9 = this.f5058j[i2];
        float f10 = this.f5059k[i2];
        float f11 = f8 * f6;
        if (f7 > 0.0f) {
            return c(f7 * f11, f9, f10);
        }
        return -c((-f7) * f11, f9, f10);
    }

    static float c(float f4, float f5, float f6) {
        return f4 > f6 ? f6 : f4 < f5 ? f5 : f4;
    }

    static int d(int i2, int i4, int i5) {
        return i2 > i5 ? i5 : i2 < i4 ? i4 : i2;
    }

    private float e(float f4, float f5) {
        if (f5 == 0.0f) {
            return 0.0f;
        }
        int i2 = this.f5055g;
        if (i2 == 0 || i2 == 1) {
            if (f4 < f5) {
                if (f4 >= 0.0f) {
                    return 1.0f - (f4 / f5);
                }
                if (this.f5063o && i2 == 1) {
                    return 1.0f;
                }
            }
        } else if (i2 == 2 && f4 < 0.0f) {
            return f4 / (-f5);
        }
        return 0.0f;
    }

    private float f(float f4, float f5, float f6, float f7) {
        float interpolation;
        float c4 = c(f4 * f5, 0.0f, f6);
        float e4 = e(f5 - f7, c4) - e(f7, c4);
        if (e4 < 0.0f) {
            interpolation = -this.f5050b.getInterpolation(-e4);
        } else if (e4 <= 0.0f) {
            return 0.0f;
        } else {
            interpolation = this.f5050b.getInterpolation(e4);
        }
        return c(interpolation, -1.0f, 1.0f);
    }

    private void g() {
        if (this.f5061m) {
            this.f5063o = false;
        } else {
            this.f5049a.requestStop();
        }
    }

    private void i() {
        int i2;
        if (this.f5052d == null) {
            this.f5052d = new ScrollAnimationRunnable();
        }
        this.f5063o = true;
        this.f5061m = true;
        if (!this.f5060l && (i2 = this.f5056h) > 0) {
            ViewCompat.postOnAnimationDelayed(this.f5051c, this.f5052d, i2);
        } else {
            this.f5052d.run();
        }
        this.f5060l = true;
    }

    void a() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f5051c.onTouchEvent(obtain);
        obtain.recycle();
    }

    public abstract boolean canTargetScrollHorizontally(int i2);

    public abstract boolean canTargetScrollVertically(int i2);

    boolean h() {
        ClampedScroller clampedScroller = this.f5049a;
        int verticalDirection = clampedScroller.getVerticalDirection();
        int horizontalDirection = clampedScroller.getHorizontalDirection();
        return (verticalDirection != 0 && canTargetScrollVertically(verticalDirection)) || (horizontalDirection != 0 && canTargetScrollHorizontally(horizontalDirection));
    }

    public boolean isEnabled() {
        return this.f5064p;
    }

    public boolean isExclusive() {
        return this.f5065q;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
        if (r0 != 3) goto L12;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.f5064p
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L58
        L16:
            r5.g()
            goto L58
        L1a:
            r5.f5062n = r2
            r5.f5060l = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f5051c
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.b(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f5051c
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.b(r2, r7, r6, r3)
            androidx.core.widget.AutoScrollHelper$ClampedScroller r7 = r5.f5049a
            r7.setTargetVelocity(r0, r6)
            boolean r6 = r5.f5063o
            if (r6 != 0) goto L58
            boolean r6 = r5.h()
            if (r6 == 0) goto L58
            r5.i()
        L58:
            boolean r6 = r5.f5065q
            if (r6 == 0) goto L61
            boolean r6 = r5.f5063o
            if (r6 == 0) goto L61
            r1 = 1
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract void scrollTargetBy(int i2, int i4);

    @NonNull
    public AutoScrollHelper setActivationDelay(int i2) {
        this.f5056h = i2;
        return this;
    }

    @NonNull
    public AutoScrollHelper setEdgeType(int i2) {
        this.f5055g = i2;
        return this;
    }

    public AutoScrollHelper setEnabled(boolean z3) {
        if (this.f5064p && !z3) {
            g();
        }
        this.f5064p = z3;
        return this;
    }

    public AutoScrollHelper setExclusive(boolean z3) {
        this.f5065q = z3;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumEdges(float f4, float f5) {
        float[] fArr = this.f5054f;
        fArr[0] = f4;
        fArr[1] = f5;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumVelocity(float f4, float f5) {
        float[] fArr = this.f5059k;
        fArr[0] = f4 / 1000.0f;
        fArr[1] = f5 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMinimumVelocity(float f4, float f5) {
        float[] fArr = this.f5058j;
        fArr[0] = f4 / 1000.0f;
        fArr[1] = f5 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampDownDuration(int i2) {
        this.f5049a.setRampDownDuration(i2);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampUpDuration(int i2) {
        this.f5049a.setRampUpDuration(i2);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeEdges(float f4, float f5) {
        float[] fArr = this.f5053e;
        fArr[0] = f4;
        fArr[1] = f5;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeVelocity(float f4, float f5) {
        float[] fArr = this.f5057i;
        fArr[0] = f4 / 1000.0f;
        fArr[1] = f5 / 1000.0f;
        return this;
    }
}

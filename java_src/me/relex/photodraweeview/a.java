package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.widget.ScrollerCompat;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.DraweeView;
import java.lang.ref.WeakReference;
/* compiled from: Attacher.java */
/* loaded from: classes5.dex */
public class a implements d, View.OnTouchListener, g {

    /* renamed from: v  reason: collision with root package name */
    private static final int f72632v = -1;

    /* renamed from: w  reason: collision with root package name */
    private static final int f72633w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static final int f72634x = 1;

    /* renamed from: y  reason: collision with root package name */
    private static final int f72635y = 2;

    /* renamed from: h  reason: collision with root package name */
    private i f72643h;

    /* renamed from: i  reason: collision with root package name */
    private GestureDetectorCompat f72644i;

    /* renamed from: p  reason: collision with root package name */
    private c f72651p;

    /* renamed from: q  reason: collision with root package name */
    private WeakReference<DraweeView<com.facebook.drawee.generic.a>> f72652q;

    /* renamed from: r  reason: collision with root package name */
    private e f72653r;

    /* renamed from: s  reason: collision with root package name */
    private h f72654s;

    /* renamed from: t  reason: collision with root package name */
    private View.OnLongClickListener f72655t;

    /* renamed from: u  reason: collision with root package name */
    private f f72656u;

    /* renamed from: a  reason: collision with root package name */
    private final float[] f72636a = new float[9];

    /* renamed from: b  reason: collision with root package name */
    private final RectF f72637b = new RectF();

    /* renamed from: c  reason: collision with root package name */
    private final Interpolator f72638c = new AccelerateDecelerateInterpolator();

    /* renamed from: d  reason: collision with root package name */
    private float f72639d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private float f72640e = 1.75f;

    /* renamed from: f  reason: collision with root package name */
    private float f72641f = 3.0f;

    /* renamed from: g  reason: collision with root package name */
    private long f72642g = 200;

    /* renamed from: j  reason: collision with root package name */
    private boolean f72645j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f72646k = true;

    /* renamed from: l  reason: collision with root package name */
    private int f72647l = 2;

    /* renamed from: m  reason: collision with root package name */
    private final Matrix f72648m = new Matrix();

    /* renamed from: n  reason: collision with root package name */
    private int f72649n = -1;

    /* renamed from: o  reason: collision with root package name */
    private int f72650o = -1;

    /* compiled from: Attacher.java */
    /* renamed from: me.relex.photodraweeview.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0483a extends GestureDetector.SimpleOnGestureListener {
        C0483a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            super.onLongPress(motionEvent);
            if (a.this.f72655t != null) {
                a.this.f72655t.onLongClick(a.this.r());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Attacher.java */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final float f72658a;

        /* renamed from: b  reason: collision with root package name */
        private final float f72659b;

        /* renamed from: c  reason: collision with root package name */
        private final long f72660c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private final float f72661d;

        /* renamed from: e  reason: collision with root package name */
        private final float f72662e;

        public b(float f4, float f5, float f6, float f7) {
            this.f72658a = f6;
            this.f72659b = f7;
            this.f72661d = f4;
            this.f72662e = f5;
        }

        private float a() {
            return a.this.f72638c.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f72660c)) * 1.0f) / ((float) a.this.f72642g)));
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<com.facebook.drawee.generic.a> r3 = a.this.r();
            if (r3 == null) {
                return;
            }
            float a4 = a();
            float f4 = this.f72661d;
            a.this.c((f4 + ((this.f72662e - f4) * a4)) / a.this.getScale(), this.f72658a, this.f72659b);
            if (a4 < 1.0f) {
                a.this.w(r3, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Attacher.java */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final ScrollerCompat f72664a;

        /* renamed from: b  reason: collision with root package name */
        private int f72665b;

        /* renamed from: c  reason: collision with root package name */
        private int f72666c;

        public c(Context context) {
            this.f72664a = ScrollerCompat.create(context);
        }

        public void a() {
            this.f72664a.abortAnimation();
        }

        public void b(int i2, int i4, int i5, int i6) {
            int i7;
            int i8;
            int i9;
            int i10;
            RectF o3 = a.this.o();
            if (o3 == null) {
                return;
            }
            int round = Math.round(-o3.left);
            float f4 = i2;
            if (f4 < o3.width()) {
                i8 = Math.round(o3.width() - f4);
                i7 = 0;
            } else {
                i7 = round;
                i8 = i7;
            }
            int round2 = Math.round(-o3.top);
            float f5 = i4;
            if (f5 < o3.height()) {
                i10 = Math.round(o3.height() - f5);
                i9 = 0;
            } else {
                i9 = round2;
                i10 = i9;
            }
            this.f72665b = round;
            this.f72666c = round2;
            if (round == i8 && round2 == i10) {
                return;
            }
            this.f72664a.fling(round, round2, i5, i6, i7, i8, i9, i10, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            DraweeView<com.facebook.drawee.generic.a> r3;
            if (this.f72664a.isFinished() || (r3 = a.this.r()) == null || !this.f72664a.computeScrollOffset()) {
                return;
            }
            int currX = this.f72664a.getCurrX();
            int currY = this.f72664a.getCurrY();
            a.this.f72648m.postTranslate(this.f72665b - currX, this.f72666c - currY);
            r3.invalidate();
            this.f72665b = currX;
            this.f72666c = currY;
            a.this.w(r3, this);
        }
    }

    public a(DraweeView<com.facebook.drawee.generic.a> draweeView) {
        this.f72652q = new WeakReference<>(draweeView);
        draweeView.getHierarchy().x(r.c.f12140c);
        draweeView.setOnTouchListener(this);
        this.f72643h = new i(draweeView.getContext(), this);
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(draweeView.getContext(), new C0483a());
        this.f72644i = gestureDetectorCompat;
        gestureDetectorCompat.setOnDoubleTapListener(new me.relex.photodraweeview.c(this));
    }

    private void j() {
        c cVar = this.f72651p;
        if (cVar != null) {
            cVar.a();
            this.f72651p = null;
        }
    }

    private void m() {
        RectF o3;
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 == null || getScale() >= this.f72639d || (o3 = o()) == null) {
            return;
        }
        r3.post(new b(getScale(), this.f72639d, o3.centerX(), o3.centerY()));
    }

    private static void n(float f4, float f5, float f6) {
        if (f4 >= f5) {
            throw new IllegalArgumentException("MinZoom has to be less than MidZoom");
        }
        if (f5 >= f6) {
            throw new IllegalArgumentException("MidZoom has to be less than MaxZoom");
        }
    }

    private RectF p(Matrix matrix) {
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 != null) {
            int i2 = this.f72650o;
            if (i2 == -1 && this.f72649n == -1) {
                return null;
            }
            this.f72637b.set(0.0f, 0.0f, i2, this.f72649n);
            r3.getHierarchy().k(this.f72637b);
            matrix.mapRect(this.f72637b);
            return this.f72637b;
        }
        return null;
    }

    private float s(Matrix matrix, int i2) {
        matrix.getValues(this.f72636a);
        return this.f72636a[i2];
    }

    private int t() {
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 != null) {
            return (r3.getHeight() - r3.getPaddingTop()) - r3.getPaddingBottom();
        }
        return 0;
    }

    private int u() {
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 != null) {
            return (r3.getWidth() - r3.getPaddingLeft()) - r3.getPaddingRight();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    private void x() {
        this.f72648m.reset();
        l();
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 != null) {
            r3.invalidate();
        }
    }

    private void y() {
        if (this.f72650o == -1 && this.f72649n == -1) {
            return;
        }
        x();
    }

    @Override // me.relex.photodraweeview.g
    public void a(float f4, float f5) {
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 == null || this.f72643h.d()) {
            return;
        }
        this.f72648m.postTranslate(f4, f5);
        k();
        ViewParent parent = r3.getParent();
        if (parent == null) {
            return;
        }
        if (this.f72646k && !this.f72643h.d() && !this.f72645j) {
            int i2 = this.f72647l;
            if (i2 == 2 || ((i2 == 0 && f4 >= 1.0f) || (i2 == 1 && f4 <= -1.0f))) {
                parent.requestDisallowInterceptTouchEvent(false);
                return;
            }
            return;
        }
        parent.requestDisallowInterceptTouchEvent(true);
    }

    @Override // me.relex.photodraweeview.g
    public void b() {
        m();
    }

    @Override // me.relex.photodraweeview.g
    public void c(float f4, float f5, float f6) {
        if (getScale() < this.f72641f || f4 < 1.0f) {
            f fVar = this.f72656u;
            if (fVar != null) {
                fVar.a(f4, f5, f6);
            }
            this.f72648m.postScale(f4, f4, f5, f6);
            k();
        }
    }

    @Override // me.relex.photodraweeview.g
    public void d(float f4, float f5, float f6, float f7) {
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 == null) {
            return;
        }
        c cVar = new c(r3.getContext());
        this.f72651p = cVar;
        cVar.b(u(), t(), (int) f6, (int) f7);
        r3.post(this.f72651p);
    }

    @Override // me.relex.photodraweeview.d
    public float getMaximumScale() {
        return this.f72641f;
    }

    @Override // me.relex.photodraweeview.d
    public float getMediumScale() {
        return this.f72640e;
    }

    @Override // me.relex.photodraweeview.d
    public float getMinimumScale() {
        return this.f72639d;
    }

    @Override // me.relex.photodraweeview.d
    public e getOnPhotoTapListener() {
        return this.f72653r;
    }

    @Override // me.relex.photodraweeview.d
    public h getOnViewTapListener() {
        return this.f72654s;
    }

    @Override // me.relex.photodraweeview.d
    public float getScale() {
        return (float) Math.sqrt(((float) Math.pow(s(this.f72648m, 0), 2.0d)) + ((float) Math.pow(s(this.f72648m, 3), 2.0d)));
    }

    public void k() {
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 != null && l()) {
            r3.invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean l() {
        /*
            r9 = this;
            android.graphics.Matrix r0 = r9.q()
            android.graphics.RectF r0 = r9.p(r0)
            r1 = 0
            if (r0 != 0) goto Lc
            return r1
        Lc:
            float r2 = r0.height()
            float r3 = r0.width()
            int r4 = r9.t()
            float r4 = (float) r4
            r5 = 1073741824(0x40000000, float:2.0)
            r6 = 0
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 > 0) goto L26
            float r4 = r4 - r2
            float r4 = r4 / r5
            float r2 = r0.top
        L24:
            float r4 = r4 - r2
            goto L36
        L26:
            float r2 = r0.top
            int r7 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r7 <= 0) goto L2e
            float r4 = -r2
            goto L36
        L2e:
            float r2 = r0.bottom
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 >= 0) goto L35
            goto L24
        L35:
            r4 = 0
        L36:
            int r2 = r9.u()
            float r2 = (float) r2
            r7 = 1
            int r8 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r8 > 0) goto L4a
            float r2 = r2 - r3
            float r2 = r2 / r5
            float r0 = r0.left
            float r6 = r2 - r0
            r0 = 2
            r9.f72647l = r0
            goto L62
        L4a:
            float r3 = r0.left
            int r5 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r5 <= 0) goto L54
            float r6 = -r3
            r9.f72647l = r1
            goto L62
        L54:
            float r0 = r0.right
            int r1 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r1 >= 0) goto L5f
            float r6 = r2 - r0
            r9.f72647l = r7
            goto L62
        L5f:
            r0 = -1
            r9.f72647l = r0
        L62:
            android.graphics.Matrix r0 = r9.f72648m
            r0.postTranslate(r6, r4)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: me.relex.photodraweeview.a.l():boolean");
    }

    public RectF o() {
        l();
        return p(q());
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        ViewParent parent;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        boolean z3 = false;
        if (actionMasked == 0) {
            ViewParent parent2 = view.getParent();
            if (parent2 != null) {
                parent2.requestDisallowInterceptTouchEvent(true);
            }
            j();
        } else if ((actionMasked == 1 || actionMasked == 3) && (parent = view.getParent()) != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        boolean d4 = this.f72643h.d();
        boolean c4 = this.f72643h.c();
        boolean g4 = this.f72643h.g(motionEvent);
        boolean z4 = (d4 || this.f72643h.d()) ? false : true;
        boolean z5 = (c4 || this.f72643h.c()) ? false : true;
        if (z4 && z5) {
            z3 = true;
        }
        this.f72645j = z3;
        if (this.f72644i.onTouchEvent(motionEvent)) {
            return true;
        }
        return g4;
    }

    public Matrix q() {
        return this.f72648m;
    }

    @Nullable
    public DraweeView<com.facebook.drawee.generic.a> r() {
        return this.f72652q.get();
    }

    @Override // me.relex.photodraweeview.d
    public void setAllowParentInterceptOnEdge(boolean z3) {
        this.f72646k = z3;
    }

    @Override // me.relex.photodraweeview.d
    public void setMaximumScale(float f4) {
        n(this.f72639d, this.f72640e, f4);
        this.f72641f = f4;
    }

    @Override // me.relex.photodraweeview.d
    public void setMediumScale(float f4) {
        n(this.f72639d, f4, this.f72641f);
        this.f72640e = f4;
    }

    @Override // me.relex.photodraweeview.d
    public void setMinimumScale(float f4) {
        n(f4, this.f72640e, this.f72641f);
        this.f72639d = f4;
    }

    @Override // me.relex.photodraweeview.d
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        if (onDoubleTapListener != null) {
            this.f72644i.setOnDoubleTapListener(onDoubleTapListener);
        } else {
            this.f72644i.setOnDoubleTapListener(new me.relex.photodraweeview.c(this));
        }
    }

    @Override // me.relex.photodraweeview.d
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f72655t = onLongClickListener;
    }

    @Override // me.relex.photodraweeview.d
    public void setOnPhotoTapListener(e eVar) {
        this.f72653r = eVar;
    }

    @Override // me.relex.photodraweeview.d
    public void setOnScaleChangeListener(f fVar) {
        this.f72656u = fVar;
    }

    @Override // me.relex.photodraweeview.d
    public void setOnViewTapListener(h hVar) {
        this.f72654s = hVar;
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f4) {
        setScale(f4, false);
    }

    @Override // me.relex.photodraweeview.d
    public void setZoomTransitionDuration(long j4) {
        if (j4 < 0) {
            j4 = 200;
        }
        this.f72642g = j4;
    }

    @Override // me.relex.photodraweeview.d
    public void update(int i2, int i4) {
        this.f72650o = i2;
        this.f72649n = i4;
        y();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void v() {
        j();
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f4, boolean z3) {
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 != null) {
            setScale(f4, r3.getRight() / 2, r3.getBottom() / 2, false);
        }
    }

    @Override // me.relex.photodraweeview.d
    public void setScale(float f4, float f5, float f6, boolean z3) {
        DraweeView<com.facebook.drawee.generic.a> r3 = r();
        if (r3 == null || f4 < this.f72639d || f4 > this.f72641f) {
            return;
        }
        if (z3) {
            r3.post(new b(getScale(), f4, f5, f6));
            return;
        }
        this.f72648m.setScale(f4, f4, f5, f6);
        k();
    }
}

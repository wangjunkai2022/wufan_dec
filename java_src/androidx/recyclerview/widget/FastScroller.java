package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes2.dex */
public class FastScroller extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {
    private static final int D = 0;
    private static final int E = 1;
    private static final int F = 2;
    private static final int G = 0;
    private static final int H = 1;
    private static final int I = 2;
    private static final int J = 0;
    private static final int K = 1;
    private static final int L = 2;
    private static final int M = 3;
    private static final int N = 500;
    private static final int O = 1500;
    private static final int P = 1200;
    private static final int Q = 500;
    private static final int R = 255;
    private static final int[] S = {16842919};
    private static final int[] T = new int[0];
    int A;
    private final Runnable B;
    private final RecyclerView.OnScrollListener C;

    /* renamed from: a  reason: collision with root package name */
    private final int f6872a;

    /* renamed from: b  reason: collision with root package name */
    private final int f6873b;

    /* renamed from: c  reason: collision with root package name */
    final StateListDrawable f6874c;

    /* renamed from: d  reason: collision with root package name */
    final Drawable f6875d;

    /* renamed from: e  reason: collision with root package name */
    private final int f6876e;

    /* renamed from: f  reason: collision with root package name */
    private final int f6877f;

    /* renamed from: g  reason: collision with root package name */
    private final StateListDrawable f6878g;

    /* renamed from: h  reason: collision with root package name */
    private final Drawable f6879h;

    /* renamed from: i  reason: collision with root package name */
    private final int f6880i;

    /* renamed from: j  reason: collision with root package name */
    private final int f6881j;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    int f6882k;
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    int f6883l;
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    float f6884m;
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    int f6885n;
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    int f6886o;
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    float f6887p;

    /* renamed from: s  reason: collision with root package name */
    private RecyclerView f6890s;

    /* renamed from: z  reason: collision with root package name */
    final ValueAnimator f6897z;

    /* renamed from: q  reason: collision with root package name */
    private int f6888q = 0;

    /* renamed from: r  reason: collision with root package name */
    private int f6889r = 0;

    /* renamed from: t  reason: collision with root package name */
    private boolean f6891t = false;

    /* renamed from: u  reason: collision with root package name */
    private boolean f6892u = false;

    /* renamed from: v  reason: collision with root package name */
    private int f6893v = 0;

    /* renamed from: w  reason: collision with root package name */
    private int f6894w = 0;

    /* renamed from: x  reason: collision with root package name */
    private final int[] f6895x = new int[2];

    /* renamed from: y  reason: collision with root package name */
    private final int[] f6896y = new int[2];

    /* loaded from: classes2.dex */
    private class AnimatorListener extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private boolean f6900a = false;

        AnimatorListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f6900a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f6900a) {
                this.f6900a = false;
            } else if (((Float) FastScroller.this.f6897z.getAnimatedValue()).floatValue() == 0.0f) {
                FastScroller fastScroller = FastScroller.this;
                fastScroller.A = 0;
                fastScroller.t(0);
            } else {
                FastScroller fastScroller2 = FastScroller.this;
                fastScroller2.A = 2;
                fastScroller2.q();
            }
        }
    }

    /* loaded from: classes2.dex */
    private class AnimatorUpdater implements ValueAnimator.AnimatorUpdateListener {
        AnimatorUpdater() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            FastScroller.this.f6874c.setAlpha(floatValue);
            FastScroller.this.f6875d.setAlpha(floatValue);
            FastScroller.this.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i4, int i5) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f6897z = ofFloat;
        this.A = 0;
        this.B = new Runnable() { // from class: androidx.recyclerview.widget.FastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                FastScroller.this.k(500);
            }
        };
        this.C = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView2, int i6, int i7) {
                FastScroller.this.v(recyclerView2.computeHorizontalScrollOffset(), recyclerView2.computeVerticalScrollOffset());
            }
        };
        this.f6874c = stateListDrawable;
        this.f6875d = drawable;
        this.f6878g = stateListDrawable2;
        this.f6879h = drawable2;
        this.f6876e = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f6877f = Math.max(i2, drawable.getIntrinsicWidth());
        this.f6880i = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.f6881j = Math.max(i2, drawable2.getIntrinsicWidth());
        this.f6872a = i4;
        this.f6873b = i5;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new AnimatorListener());
        ofFloat.addUpdateListener(new AnimatorUpdater());
        attachToRecyclerView(recyclerView);
    }

    private void a() {
        this.f6890s.removeCallbacks(this.B);
    }

    private void b() {
        this.f6890s.removeItemDecoration(this);
        this.f6890s.removeOnItemTouchListener(this);
        this.f6890s.removeOnScrollListener(this.C);
        a();
    }

    private void c(Canvas canvas) {
        int i2 = this.f6889r;
        int i4 = this.f6880i;
        int i5 = i2 - i4;
        int i6 = this.f6886o;
        int i7 = this.f6885n;
        int i8 = i6 - (i7 / 2);
        this.f6878g.setBounds(0, 0, i7, i4);
        this.f6879h.setBounds(0, 0, this.f6888q, this.f6881j);
        canvas.translate(0.0f, i5);
        this.f6879h.draw(canvas);
        canvas.translate(i8, 0.0f);
        this.f6878g.draw(canvas);
        canvas.translate(-i8, -i5);
    }

    private void d(Canvas canvas) {
        int i2 = this.f6888q;
        int i4 = this.f6876e;
        int i5 = i2 - i4;
        int i6 = this.f6883l;
        int i7 = this.f6882k;
        int i8 = i6 - (i7 / 2);
        this.f6874c.setBounds(0, 0, i4, i7);
        this.f6875d.setBounds(0, 0, this.f6877f, this.f6889r);
        if (m()) {
            this.f6875d.draw(canvas);
            canvas.translate(this.f6876e, i8);
            canvas.scale(-1.0f, 1.0f);
            this.f6874c.draw(canvas);
            canvas.scale(-1.0f, 1.0f);
            canvas.translate(-this.f6876e, -i8);
            return;
        }
        canvas.translate(i5, 0.0f);
        this.f6875d.draw(canvas);
        canvas.translate(0.0f, i8);
        this.f6874c.draw(canvas);
        canvas.translate(-i5, -i8);
    }

    private int[] e() {
        int[] iArr = this.f6896y;
        int i2 = this.f6873b;
        iArr[0] = i2;
        iArr[1] = this.f6888q - i2;
        return iArr;
    }

    private int[] h() {
        int[] iArr = this.f6895x;
        int i2 = this.f6873b;
        iArr[0] = i2;
        iArr[1] = this.f6889r - i2;
        return iArr;
    }

    private void l(float f4) {
        int[] e4 = e();
        float max = Math.max(e4[0], Math.min(e4[1], f4));
        if (Math.abs(this.f6886o - max) < 2.0f) {
            return;
        }
        int s3 = s(this.f6887p, max, e4, this.f6890s.computeHorizontalScrollRange(), this.f6890s.computeHorizontalScrollOffset(), this.f6888q);
        if (s3 != 0) {
            this.f6890s.scrollBy(s3, 0);
        }
        this.f6887p = max;
    }

    private boolean m() {
        return ViewCompat.getLayoutDirection(this.f6890s) == 1;
    }

    private void r(int i2) {
        a();
        this.f6890s.postDelayed(this.B, i2);
    }

    private int s(float f4, float f5, int[] iArr, int i2, int i4, int i5) {
        int i6 = iArr[1] - iArr[0];
        if (i6 == 0) {
            return 0;
        }
        int i7 = i2 - i5;
        int i8 = (int) (((f5 - f4) / i6) * i7);
        int i9 = i4 + i8;
        if (i9 >= i7 || i9 < 0) {
            return 0;
        }
        return i8;
    }

    private void u() {
        this.f6890s.addItemDecoration(this);
        this.f6890s.addOnItemTouchListener(this);
        this.f6890s.addOnScrollListener(this.C);
    }

    private void w(float f4) {
        int[] h4 = h();
        float max = Math.max(h4[0], Math.min(h4[1], f4));
        if (Math.abs(this.f6883l - max) < 2.0f) {
            return;
        }
        int s3 = s(this.f6884m, max, h4, this.f6890s.computeVerticalScrollRange(), this.f6890s.computeVerticalScrollOffset(), this.f6889r);
        if (s3 != 0) {
            this.f6890s.scrollBy(0, s3);
        }
        this.f6884m = max;
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f6890s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            b();
        }
        this.f6890s = recyclerView;
        if (recyclerView != null) {
            u();
        }
    }

    @VisibleForTesting
    Drawable f() {
        return this.f6878g;
    }

    @VisibleForTesting
    Drawable g() {
        return this.f6879h;
    }

    @VisibleForTesting
    Drawable i() {
        return this.f6874c;
    }

    public boolean isDragging() {
        return this.f6893v == 2;
    }

    @VisibleForTesting
    Drawable j() {
        return this.f6875d;
    }

    @VisibleForTesting
    void k(int i2) {
        int i4 = this.A;
        if (i4 == 1) {
            this.f6897z.cancel();
        } else if (i4 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.f6897z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f6897z.setDuration(i2);
        this.f6897z.start();
    }

    @VisibleForTesting
    boolean n(float f4, float f5) {
        if (f5 >= this.f6889r - this.f6880i) {
            int i2 = this.f6886o;
            int i4 = this.f6885n;
            if (f4 >= i2 - (i4 / 2) && f4 <= i2 + (i4 / 2)) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    boolean o(float f4, float f5) {
        if (!m() ? f4 >= this.f6888q - this.f6876e : f4 <= this.f6876e) {
            int i2 = this.f6883l;
            int i4 = this.f6882k;
            if (f5 >= i2 - (i4 / 2) && f5 <= i2 + (i4 / 2)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.f6888q == this.f6890s.getWidth() && this.f6889r == this.f6890s.getHeight()) {
            if (this.A != 0) {
                if (this.f6891t) {
                    d(canvas);
                }
                if (this.f6892u) {
                    c(canvas);
                    return;
                }
                return;
            }
            return;
        }
        this.f6888q = this.f6890s.getWidth();
        this.f6889r = this.f6890s.getHeight();
        t(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        int i2 = this.f6893v;
        if (i2 == 1) {
            boolean o3 = o(motionEvent.getX(), motionEvent.getY());
            boolean n4 = n(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!o3 && !n4) {
                return false;
            }
            if (n4) {
                this.f6894w = 1;
                this.f6887p = (int) motionEvent.getX();
            } else if (o3) {
                this.f6894w = 2;
                this.f6884m = (int) motionEvent.getY();
            }
            t(2);
        } else if (i2 != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z3) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        if (this.f6893v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean o3 = o(motionEvent.getX(), motionEvent.getY());
            boolean n4 = n(motionEvent.getX(), motionEvent.getY());
            if (o3 || n4) {
                if (n4) {
                    this.f6894w = 1;
                    this.f6887p = (int) motionEvent.getX();
                } else if (o3) {
                    this.f6894w = 2;
                    this.f6884m = (int) motionEvent.getY();
                }
                t(2);
            }
        } else if (motionEvent.getAction() == 1 && this.f6893v == 2) {
            this.f6884m = 0.0f;
            this.f6887p = 0.0f;
            t(1);
            this.f6894w = 0;
        } else if (motionEvent.getAction() == 2 && this.f6893v == 2) {
            show();
            if (this.f6894w == 1) {
                l(motionEvent.getX());
            }
            if (this.f6894w == 2) {
                w(motionEvent.getY());
            }
        }
    }

    @VisibleForTesting
    boolean p() {
        return this.f6893v == 1;
    }

    void q() {
        this.f6890s.invalidate();
    }

    public void show() {
        int i2 = this.A;
        if (i2 != 0) {
            if (i2 != 3) {
                return;
            }
            this.f6897z.cancel();
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.f6897z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f6897z.setDuration(500L);
        this.f6897z.setStartDelay(0L);
        this.f6897z.start();
    }

    void t(int i2) {
        if (i2 == 2 && this.f6893v != 2) {
            this.f6874c.setState(S);
            a();
        }
        if (i2 == 0) {
            q();
        } else {
            show();
        }
        if (this.f6893v == 2 && i2 != 2) {
            this.f6874c.setState(T);
            r(P);
        } else if (i2 == 1) {
            r(1500);
        }
        this.f6893v = i2;
    }

    void v(int i2, int i4) {
        int computeVerticalScrollRange = this.f6890s.computeVerticalScrollRange();
        int i5 = this.f6889r;
        this.f6891t = computeVerticalScrollRange - i5 > 0 && i5 >= this.f6872a;
        int computeHorizontalScrollRange = this.f6890s.computeHorizontalScrollRange();
        int i6 = this.f6888q;
        boolean z3 = computeHorizontalScrollRange - i6 > 0 && i6 >= this.f6872a;
        this.f6892u = z3;
        boolean z4 = this.f6891t;
        if (!z4 && !z3) {
            if (this.f6893v != 0) {
                t(0);
                return;
            }
            return;
        }
        if (z4) {
            float f4 = i5;
            this.f6883l = (int) ((f4 * (i4 + (f4 / 2.0f))) / computeVerticalScrollRange);
            this.f6882k = Math.min(i5, (i5 * i5) / computeVerticalScrollRange);
        }
        if (this.f6892u) {
            float f5 = i6;
            this.f6886o = (int) ((f5 * (i2 + (f5 / 2.0f))) / computeHorizontalScrollRange);
            this.f6885n = Math.min(i6, (i6 * i6) / computeHorizontalScrollRange);
        }
        int i7 = this.f6893v;
        if (i7 == 0 || i7 == 1) {
            t(1);
        }
    }
}

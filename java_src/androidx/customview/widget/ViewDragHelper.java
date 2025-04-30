package androidx.customview.widget;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ViewDragHelper {
    private static final int A = 600;
    private static final Interpolator B = new Interpolator() { // from class: androidx.customview.widget.ViewDragHelper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f4) {
            float f5 = f4 - 1.0f;
            return (f5 * f5 * f5 * f5 * f5) + 1.0f;
        }
    };
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;

    /* renamed from: x  reason: collision with root package name */
    private static final String f5189x = "ViewDragHelper";

    /* renamed from: y  reason: collision with root package name */
    private static final int f5190y = 20;

    /* renamed from: z  reason: collision with root package name */
    private static final int f5191z = 256;

    /* renamed from: a  reason: collision with root package name */
    private int f5192a;

    /* renamed from: b  reason: collision with root package name */
    private int f5193b;

    /* renamed from: d  reason: collision with root package name */
    private float[] f5195d;

    /* renamed from: e  reason: collision with root package name */
    private float[] f5196e;

    /* renamed from: f  reason: collision with root package name */
    private float[] f5197f;

    /* renamed from: g  reason: collision with root package name */
    private float[] f5198g;

    /* renamed from: h  reason: collision with root package name */
    private int[] f5199h;

    /* renamed from: i  reason: collision with root package name */
    private int[] f5200i;

    /* renamed from: j  reason: collision with root package name */
    private int[] f5201j;

    /* renamed from: k  reason: collision with root package name */
    private int f5202k;

    /* renamed from: l  reason: collision with root package name */
    private VelocityTracker f5203l;

    /* renamed from: m  reason: collision with root package name */
    private float f5204m;

    /* renamed from: n  reason: collision with root package name */
    private float f5205n;

    /* renamed from: o  reason: collision with root package name */
    private int f5206o;

    /* renamed from: p  reason: collision with root package name */
    private final int f5207p;

    /* renamed from: q  reason: collision with root package name */
    private int f5208q;

    /* renamed from: r  reason: collision with root package name */
    private OverScroller f5209r;

    /* renamed from: s  reason: collision with root package name */
    private final Callback f5210s;

    /* renamed from: t  reason: collision with root package name */
    private View f5211t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f5212u;

    /* renamed from: v  reason: collision with root package name */
    private final ViewGroup f5213v;

    /* renamed from: c  reason: collision with root package name */
    private int f5194c = -1;

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f5214w = new Runnable() { // from class: androidx.customview.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.u(0);
        }
    };

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public int clampViewPositionHorizontal(@NonNull View view, int i2, int i4) {
            return 0;
        }

        public int clampViewPositionVertical(@NonNull View view, int i2, int i4) {
            return 0;
        }

        public int getOrderedChildIndex(int i2) {
            return i2;
        }

        public int getViewHorizontalDragRange(@NonNull View view) {
            return 0;
        }

        public int getViewVerticalDragRange(@NonNull View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i2, int i4) {
        }

        public boolean onEdgeLock(int i2) {
            return false;
        }

        public void onEdgeTouched(int i2, int i4) {
        }

        public void onViewCaptured(@NonNull View view, int i2) {
        }

        public void onViewDragStateChanged(int i2) {
        }

        public void onViewPositionChanged(@NonNull View view, int i2, int i4, @Px int i5, @Px int i6) {
        }

        public void onViewReleased(@NonNull View view, float f4, float f5) {
        }

        public abstract boolean tryCaptureView(@NonNull View view, int i2);
    }

    private ViewDragHelper(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (callback != null) {
            this.f5213v = viewGroup;
            this.f5210s = callback;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int i2 = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f5207p = i2;
            this.f5206o = i2;
            this.f5193b = viewConfiguration.getScaledTouchSlop();
            this.f5204m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f5205n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f5209r = new OverScroller(context, B);
            return;
        }
        throw new IllegalArgumentException("Callback may not be null");
    }

    private boolean b(float f4, float f5, int i2, int i4) {
        float abs = Math.abs(f4);
        float abs2 = Math.abs(f5);
        if ((this.f5199h[i2] & i4) != i4 || (this.f5208q & i4) == 0 || (this.f5201j[i2] & i4) == i4 || (this.f5200i[i2] & i4) == i4) {
            return false;
        }
        int i5 = this.f5193b;
        if (abs > i5 || abs2 > i5) {
            if (abs >= abs2 * 0.5f || !this.f5210s.onEdgeLock(i4)) {
                return (this.f5200i[i2] & i4) == 0 && abs > ((float) this.f5193b);
            }
            int[] iArr = this.f5201j;
            iArr[i2] = iArr[i2] | i4;
            return false;
        }
        return false;
    }

    private boolean c(View view, float f4, float f5) {
        if (view == null) {
            return false;
        }
        boolean z3 = this.f5210s.getViewHorizontalDragRange(view) > 0;
        boolean z4 = this.f5210s.getViewVerticalDragRange(view) > 0;
        if (!z3 || !z4) {
            return z3 ? Math.abs(f4) > ((float) this.f5193b) : z4 && Math.abs(f5) > ((float) this.f5193b);
        }
        int i2 = this.f5193b;
        return (f4 * f4) + (f5 * f5) > ((float) (i2 * i2));
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    private float d(float f4, float f5, float f6) {
        float abs = Math.abs(f4);
        if (abs < f5) {
            return 0.0f;
        }
        return abs > f6 ? f4 > 0.0f ? f6 : -f6 : f4;
    }

    private int e(int i2, int i4, int i5) {
        int abs = Math.abs(i2);
        if (abs < i4) {
            return 0;
        }
        return abs > i5 ? i2 > 0 ? i5 : -i5 : i2;
    }

    private void f() {
        float[] fArr = this.f5195d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.f5196e, 0.0f);
        Arrays.fill(this.f5197f, 0.0f);
        Arrays.fill(this.f5198g, 0.0f);
        Arrays.fill(this.f5199h, 0);
        Arrays.fill(this.f5200i, 0);
        Arrays.fill(this.f5201j, 0);
        this.f5202k = 0;
    }

    private void g(int i2) {
        if (this.f5195d == null || !isPointerDown(i2)) {
            return;
        }
        this.f5195d[i2] = 0.0f;
        this.f5196e[i2] = 0.0f;
        this.f5197f[i2] = 0.0f;
        this.f5198g[i2] = 0.0f;
        this.f5199h[i2] = 0;
        this.f5200i[i2] = 0;
        this.f5201j[i2] = 0;
        this.f5202k = ((1 << i2) ^ (-1)) & this.f5202k;
    }

    private int h(int i2, int i4, int i5) {
        int abs;
        if (i2 == 0) {
            return 0;
        }
        int width = this.f5213v.getWidth();
        float f4 = width / 2;
        float k4 = f4 + (k(Math.min(1.0f, Math.abs(i2) / width)) * f4);
        int abs2 = Math.abs(i4);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(k4 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i2) / i5) + 1.0f) * 256.0f);
        }
        return Math.min(abs, 600);
    }

    private int i(View view, int i2, int i4, int i5, int i6) {
        float f4;
        float f5;
        float f6;
        float f7;
        int e4 = e(i5, (int) this.f5205n, (int) this.f5204m);
        int e5 = e(i6, (int) this.f5205n, (int) this.f5204m);
        int abs = Math.abs(i2);
        int abs2 = Math.abs(i4);
        int abs3 = Math.abs(e4);
        int abs4 = Math.abs(e5);
        int i7 = abs3 + abs4;
        int i8 = abs + abs2;
        if (e4 != 0) {
            f4 = abs3;
            f5 = i7;
        } else {
            f4 = abs;
            f5 = i8;
        }
        float f8 = f4 / f5;
        if (e5 != 0) {
            f6 = abs4;
            f7 = i7;
        } else {
            f6 = abs2;
            f7 = i8;
        }
        return (int) ((h(i2, e4, this.f5210s.getViewHorizontalDragRange(view)) * f8) + (h(i4, e5, this.f5210s.getViewVerticalDragRange(view)) * (f6 / f7)));
    }

    private void j(float f4, float f5) {
        this.f5212u = true;
        this.f5210s.onViewReleased(this.f5211t, f4, f5);
        this.f5212u = false;
        if (this.f5192a == 1) {
            u(0);
        }
    }

    private float k(float f4) {
        return (float) Math.sin((f4 - 0.5f) * 0.47123894f);
    }

    private void l(int i2, int i4, int i5, int i6) {
        int left = this.f5211t.getLeft();
        int top = this.f5211t.getTop();
        if (i5 != 0) {
            i2 = this.f5210s.clampViewPositionHorizontal(this.f5211t, i2, i5);
            ViewCompat.offsetLeftAndRight(this.f5211t, i2 - left);
        }
        int i7 = i2;
        if (i6 != 0) {
            i4 = this.f5210s.clampViewPositionVertical(this.f5211t, i4, i6);
            ViewCompat.offsetTopAndBottom(this.f5211t, i4 - top);
        }
        int i8 = i4;
        if (i5 == 0 && i6 == 0) {
            return;
        }
        this.f5210s.onViewPositionChanged(this.f5211t, i7, i8, i7 - left, i8 - top);
    }

    private void m(int i2) {
        float[] fArr = this.f5195d;
        if (fArr == null || fArr.length <= i2) {
            int i4 = i2 + 1;
            float[] fArr2 = new float[i4];
            float[] fArr3 = new float[i4];
            float[] fArr4 = new float[i4];
            float[] fArr5 = new float[i4];
            int[] iArr = new int[i4];
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f5196e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f5197f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f5198g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f5199h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f5200i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f5201j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f5195d = fArr2;
            this.f5196e = fArr3;
            this.f5197f = fArr4;
            this.f5198g = fArr5;
            this.f5199h = iArr;
            this.f5200i = iArr2;
            this.f5201j = iArr3;
        }
    }

    private boolean n(int i2, int i4, int i5, int i6) {
        int left = this.f5211t.getLeft();
        int top = this.f5211t.getTop();
        int i7 = i2 - left;
        int i8 = i4 - top;
        if (i7 == 0 && i8 == 0) {
            this.f5209r.abortAnimation();
            u(0);
            return false;
        }
        this.f5209r.startScroll(left, top, i7, i8, i(this.f5211t, i7, i8, i5, i6));
        u(2);
        return true;
    }

    private int o(int i2, int i4) {
        int i5 = i2 < this.f5213v.getLeft() + this.f5206o ? 1 : 0;
        if (i4 < this.f5213v.getTop() + this.f5206o) {
            i5 |= 4;
        }
        if (i2 > this.f5213v.getRight() - this.f5206o) {
            i5 |= 2;
        }
        return i4 > this.f5213v.getBottom() - this.f5206o ? i5 | 8 : i5;
    }

    private boolean p(int i2) {
        if (isPointerDown(i2)) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Ignoring pointerId=");
        sb.append(i2);
        sb.append(" because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    private void q() {
        this.f5203l.computeCurrentVelocity(1000, this.f5204m);
        j(d(this.f5203l.getXVelocity(this.f5194c), this.f5205n, this.f5204m), d(this.f5203l.getYVelocity(this.f5194c), this.f5205n, this.f5204m));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.customview.widget.ViewDragHelper$Callback] */
    private void r(float f4, float f5, int i2) {
        boolean b4 = b(f4, f5, i2, 1);
        boolean z3 = b4;
        if (b(f5, f4, i2, 4)) {
            z3 = b4 | true;
        }
        boolean z4 = z3;
        if (b(f4, f5, i2, 2)) {
            z4 = (z3 ? 1 : 0) | true;
        }
        ?? r02 = z4;
        if (b(f5, f4, i2, 8)) {
            r02 = (z4 ? 1 : 0) | true;
        }
        if (r02 != 0) {
            int[] iArr = this.f5200i;
            iArr[i2] = iArr[i2] | r02;
            this.f5210s.onEdgeDragStarted(r02, i2);
        }
    }

    private void s(float f4, float f5, int i2) {
        m(i2);
        float[] fArr = this.f5195d;
        this.f5197f[i2] = f4;
        fArr[i2] = f4;
        float[] fArr2 = this.f5196e;
        this.f5198g[i2] = f5;
        fArr2[i2] = f5;
        this.f5199h[i2] = o((int) f4, (int) f5);
        this.f5202k |= 1 << i2;
    }

    private void t(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if (p(pointerId)) {
                float x3 = motionEvent.getX(i2);
                float y3 = motionEvent.getY(i2);
                this.f5197f[pointerId] = x3;
                this.f5198g[pointerId] = y3;
            }
        }
    }

    protected boolean a(@NonNull View view, boolean z3, int i2, int i4, int i5, int i6) {
        int i7;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i8 = i5 + scrollX;
                if (i8 >= childAt.getLeft() && i8 < childAt.getRight() && (i7 = i6 + scrollY) >= childAt.getTop() && i7 < childAt.getBottom() && a(childAt, true, i2, i4, i8 - childAt.getLeft(), i7 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z3 && (view.canScrollHorizontally(-i2) || view.canScrollVertically(-i4));
    }

    public void abort() {
        cancel();
        if (this.f5192a == 2) {
            int currX = this.f5209r.getCurrX();
            int currY = this.f5209r.getCurrY();
            this.f5209r.abortAnimation();
            int currX2 = this.f5209r.getCurrX();
            int currY2 = this.f5209r.getCurrY();
            this.f5210s.onViewPositionChanged(this.f5211t, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        u(0);
    }

    public void cancel() {
        this.f5194c = -1;
        f();
        VelocityTracker velocityTracker = this.f5203l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f5203l = null;
        }
    }

    public void captureChildView(@NonNull View view, int i2) {
        if (view.getParent() == this.f5213v) {
            this.f5211t = view;
            this.f5194c = i2;
            this.f5210s.onViewCaptured(view, i2);
            u(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f5213v + ")");
    }

    public boolean checkTouchSlop(int i2) {
        int length = this.f5195d.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (checkTouchSlop(i2, i4)) {
                return true;
            }
        }
        return false;
    }

    public boolean continueSettling(boolean z3) {
        if (this.f5192a == 2) {
            boolean computeScrollOffset = this.f5209r.computeScrollOffset();
            int currX = this.f5209r.getCurrX();
            int currY = this.f5209r.getCurrY();
            int left = currX - this.f5211t.getLeft();
            int top = currY - this.f5211t.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.f5211t, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.f5211t, top);
            }
            if (left != 0 || top != 0) {
                this.f5210s.onViewPositionChanged(this.f5211t, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.f5209r.getFinalX() && currY == this.f5209r.getFinalY()) {
                this.f5209r.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z3) {
                    this.f5213v.post(this.f5214w);
                } else {
                    u(0);
                }
            }
        }
        return this.f5192a == 2;
    }

    @Nullable
    public View findTopChildUnder(int i2, int i4) {
        for (int childCount = this.f5213v.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f5213v.getChildAt(this.f5210s.getOrderedChildIndex(childCount));
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i4 >= childAt.getTop() && i4 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public void flingCapturedView(int i2, int i4, int i5, int i6) {
        if (this.f5212u) {
            this.f5209r.fling(this.f5211t.getLeft(), this.f5211t.getTop(), (int) this.f5203l.getXVelocity(this.f5194c), (int) this.f5203l.getYVelocity(this.f5194c), i2, i5, i4, i6);
            u(2);
            return;
        }
        throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    }

    public int getActivePointerId() {
        return this.f5194c;
    }

    @Nullable
    public View getCapturedView() {
        return this.f5211t;
    }

    @Px
    public int getDefaultEdgeSize() {
        return this.f5207p;
    }

    @Px
    public int getEdgeSize() {
        return this.f5206o;
    }

    public float getMinVelocity() {
        return this.f5205n;
    }

    @Px
    public int getTouchSlop() {
        return this.f5193b;
    }

    public int getViewDragState() {
        return this.f5192a;
    }

    public boolean isCapturedViewUnder(int i2, int i4) {
        return isViewUnder(this.f5211t, i2, i4);
    }

    public boolean isEdgeTouched(int i2) {
        int length = this.f5199h.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (isEdgeTouched(i2, i4)) {
                return true;
            }
        }
        return false;
    }

    public boolean isPointerDown(int i2) {
        return ((1 << i2) & this.f5202k) != 0;
    }

    public boolean isViewUnder(@Nullable View view, int i2, int i4) {
        return view != null && i2 >= view.getLeft() && i2 < view.getRight() && i4 >= view.getTop() && i4 < view.getBottom();
    }

    public void processTouchEvent(@NonNull MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.f5203l == null) {
            this.f5203l = VelocityTracker.obtain();
        }
        this.f5203l.addMovement(motionEvent);
        int i4 = 0;
        if (actionMasked == 0) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View findTopChildUnder = findTopChildUnder((int) x3, (int) y3);
            s(x3, y3, pointerId);
            v(findTopChildUnder, pointerId);
            int i5 = this.f5199h[pointerId];
            int i6 = this.f5208q;
            if ((i5 & i6) != 0) {
                this.f5210s.onEdgeTouched(i5 & i6, pointerId);
            }
        } else if (actionMasked == 1) {
            if (this.f5192a == 1) {
                q();
            }
            cancel();
        } else if (actionMasked == 2) {
            if (this.f5192a == 1) {
                if (p(this.f5194c)) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f5194c);
                    float x4 = motionEvent.getX(findPointerIndex);
                    float y4 = motionEvent.getY(findPointerIndex);
                    float[] fArr = this.f5197f;
                    int i7 = this.f5194c;
                    int i8 = (int) (x4 - fArr[i7]);
                    int i9 = (int) (y4 - this.f5198g[i7]);
                    l(this.f5211t.getLeft() + i8, this.f5211t.getTop() + i9, i8, i9);
                    t(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i4 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i4);
                if (p(pointerId2)) {
                    float x5 = motionEvent.getX(i4);
                    float y5 = motionEvent.getY(i4);
                    float f4 = x5 - this.f5195d[pointerId2];
                    float f5 = y5 - this.f5196e[pointerId2];
                    r(f4, f5, pointerId2);
                    if (this.f5192a != 1) {
                        View findTopChildUnder2 = findTopChildUnder((int) x5, (int) y5);
                        if (c(findTopChildUnder2, f4, f5) && v(findTopChildUnder2, pointerId2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i4++;
            }
            t(motionEvent);
        } else if (actionMasked == 3) {
            if (this.f5192a == 1) {
                j(0.0f, 0.0f);
            }
            cancel();
        } else if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x6 = motionEvent.getX(actionIndex);
            float y6 = motionEvent.getY(actionIndex);
            s(x6, y6, pointerId3);
            if (this.f5192a == 0) {
                v(findTopChildUnder((int) x6, (int) y6), pointerId3);
                int i10 = this.f5199h[pointerId3];
                int i11 = this.f5208q;
                if ((i10 & i11) != 0) {
                    this.f5210s.onEdgeTouched(i10 & i11, pointerId3);
                }
            } else if (isCapturedViewUnder((int) x6, (int) y6)) {
                v(this.f5211t, pointerId3);
            }
        } else if (actionMasked != 6) {
        } else {
            int pointerId4 = motionEvent.getPointerId(actionIndex);
            if (this.f5192a == 1 && pointerId4 == this.f5194c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i4 >= pointerCount2) {
                        i2 = -1;
                        break;
                    }
                    int pointerId5 = motionEvent.getPointerId(i4);
                    if (pointerId5 != this.f5194c) {
                        View findTopChildUnder3 = findTopChildUnder((int) motionEvent.getX(i4), (int) motionEvent.getY(i4));
                        View view = this.f5211t;
                        if (findTopChildUnder3 == view && v(view, pointerId5)) {
                            i2 = this.f5194c;
                            break;
                        }
                    }
                    i4++;
                }
                if (i2 == -1) {
                    q();
                }
            }
            g(pointerId4);
        }
    }

    public void setEdgeSize(@IntRange(from = 0) @Px int i2) {
        this.f5206o = i2;
    }

    public void setEdgeTrackingEnabled(int i2) {
        this.f5208q = i2;
    }

    public void setMinVelocity(float f4) {
        this.f5205n = f4;
    }

    public boolean settleCapturedViewAt(int i2, int i4) {
        if (this.f5212u) {
            return n(i2, i4, (int) this.f5203l.getXVelocity(this.f5194c), (int) this.f5203l.getYVelocity(this.f5194c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00dd, code lost:
        if (r12 != r11) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldInterceptTouchEvent(@androidx.annotation.NonNull android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean smoothSlideViewTo(@NonNull View view, int i2, int i4) {
        this.f5211t = view;
        this.f5194c = -1;
        boolean n4 = n(i2, i4, 0, 0);
        if (!n4 && this.f5192a == 0 && this.f5211t != null) {
            this.f5211t = null;
        }
        return n4;
    }

    void u(int i2) {
        this.f5213v.removeCallbacks(this.f5214w);
        if (this.f5192a != i2) {
            this.f5192a = i2;
            this.f5210s.onViewDragStateChanged(i2);
            if (this.f5192a == 0) {
                this.f5211t = null;
            }
        }
    }

    boolean v(View view, int i2) {
        if (view == this.f5211t && this.f5194c == i2) {
            return true;
        }
        if (view == null || !this.f5210s.tryCaptureView(view, i2)) {
            return false;
        }
        this.f5194c = i2;
        captureChildView(view, i2);
        return true;
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, float f4, @NonNull Callback callback) {
        ViewDragHelper create = create(viewGroup, callback);
        create.f5193b = (int) (create.f5193b * (1.0f / f4));
        return create;
    }

    public boolean checkTouchSlop(int i2, int i4) {
        if (isPointerDown(i4)) {
            boolean z3 = (i2 & 1) == 1;
            boolean z4 = (i2 & 2) == 2;
            float f4 = this.f5197f[i4] - this.f5195d[i4];
            float f5 = this.f5198g[i4] - this.f5196e[i4];
            if (!z3 || !z4) {
                return z3 ? Math.abs(f4) > ((float) this.f5193b) : z4 && Math.abs(f5) > ((float) this.f5193b);
            }
            int i5 = this.f5193b;
            return (f4 * f4) + (f5 * f5) > ((float) (i5 * i5));
        }
        return false;
    }

    public boolean isEdgeTouched(int i2, int i4) {
        return isPointerDown(i4) && (i2 & this.f5199h[i4]) != 0;
    }
}

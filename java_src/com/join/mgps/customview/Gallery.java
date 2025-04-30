package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Transformation;
import android.widget.Scroller;
import com.facebook.common.statfs.StatFsHelper;
import com.join.mgps.customview.AdapterView;
/* loaded from: classes3.dex */
public final class Gallery extends AbsSpinner implements GestureDetector.OnGestureListener {
    private static final int R0 = 250;
    private int A0;
    private int B0;
    private int C0;
    private final GestureDetector D0;
    private int E0;
    private View F0;
    private final c G0;
    private final Runnable H0;
    private boolean I0;
    private View J0;
    private boolean K0;
    private boolean L0;
    private boolean M0;
    private boolean N0;
    private AdapterView.b O0;
    private boolean P0;
    private boolean Q0;

    /* renamed from: x0  reason: collision with root package name */
    private int f45538x0;

    /* renamed from: y0  reason: collision with root package name */
    private int f45539y0;

    /* renamed from: z0  reason: collision with root package name */
    private float f45540z0;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Gallery.this.M0 = false;
            Gallery.this.p();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Gallery.this.M();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Scroller f45543a;

        /* renamed from: b  reason: collision with root package name */
        private int f45544b;

        public c() {
            this.f45543a = new Scroller(Gallery.this.getContext());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(boolean z3) {
            this.f45543a.forceFinished(true);
            if (z3) {
                Gallery.this.c0();
            }
        }

        private void d() {
            Gallery.this.removeCallbacks(this);
        }

        public void e(int i2) {
            if (i2 == 0) {
                return;
            }
            d();
            this.f45544b = 0;
            this.f45543a.startScroll(0, 0, -i2, 0, Gallery.this.f45539y0);
            Gallery.this.post(this);
        }

        public void f(int i2) {
            if (i2 == 0) {
                return;
            }
            d();
            int i4 = i2 < 0 ? Integer.MAX_VALUE : 0;
            this.f45544b = i4;
            this.f45543a.fling(i4, 0, i2, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            Gallery.this.post(this);
        }

        public void g(boolean z3) {
            Gallery.this.removeCallbacks(this);
            c(z3);
        }

        @Override // java.lang.Runnable
        public void run() {
            int childCount;
            int max;
            int i2;
            Gallery gallery = Gallery.this;
            if (gallery.f44885s != 0) {
                gallery.I0 = false;
                Scroller scroller = this.f45543a;
                boolean computeScrollOffset = scroller.computeScrollOffset();
                int currX = scroller.getCurrX();
                int i4 = this.f45544b - currX;
                if (i4 > 0) {
                    Gallery gallery2 = Gallery.this;
                    if (gallery2.Q0) {
                        Gallery gallery3 = Gallery.this;
                        i2 = (gallery3.f44867a + gallery3.getChildCount()) - 1;
                    } else {
                        i2 = Gallery.this.f44867a;
                    }
                    gallery2.E0 = i2;
                    max = Math.min(((Gallery.this.getWidth() - Gallery.this.getPaddingLeft()) - Gallery.this.getPaddingRight()) - 1, i4);
                } else {
                    Gallery gallery4 = Gallery.this;
                    if (gallery4.Q0) {
                        childCount = Gallery.this.f44867a;
                    } else {
                        Gallery gallery5 = Gallery.this;
                        childCount = (gallery5.f44867a + gallery5.getChildCount()) - 1;
                    }
                    gallery4.E0 = childCount;
                    max = Math.max(-(((Gallery.this.getWidth() - Gallery.this.getPaddingRight()) - Gallery.this.getPaddingLeft()) - 1), i4);
                }
                Gallery.this.g0(max);
                if (computeScrollOffset && !Gallery.this.I0) {
                    this.f45544b = currX;
                    Gallery.this.post(this);
                    return;
                }
                c(true);
                return;
            }
            c(true);
        }
    }

    public Gallery(Context context) {
        this(context, null);
    }

    private int I(View view, boolean z3) {
        int measuredHeight = z3 ? getMeasuredHeight() : getHeight();
        int measuredHeight2 = z3 ? view.getMeasuredHeight() : view.getHeight();
        int i2 = this.C0;
        if (i2 == 16) {
            Rect rect = this.f44839r0;
            int i4 = rect.top;
            return i4 + ((((measuredHeight - rect.bottom) - i4) - measuredHeight2) / 2);
        } else if (i2 != 48) {
            if (i2 != 80) {
                return 0;
            }
            return (measuredHeight - this.f44839r0.bottom) - measuredHeight2;
        } else {
            return this.f44839r0.top;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
        if (r10.Q0 == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006a, code lost:
        if (r10.Q0 != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
        r2 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void J(boolean r11) {
        /*
            r10 = this;
            int r0 = r10.getChildCount()
            int r1 = r10.f44867a
            r2 = 0
            if (r11 == 0) goto L38
            int r3 = r10.getPaddingLeft()
            r4 = 0
            r5 = 0
            r6 = 0
        L10:
            if (r4 >= r0) goto L33
            boolean r7 = r10.Q0
            if (r7 == 0) goto L1a
            int r7 = r0 + (-1)
            int r7 = r7 - r4
            goto L1b
        L1a:
            r7 = r4
        L1b:
            android.view.View r8 = r10.getChildAt(r7)
            int r9 = r8.getRight()
            if (r9 < r3) goto L26
            goto L33
        L26:
            int r5 = r5 + 1
            com.join.mgps.customview.AbsSpinner$b r6 = r10.f44842u0
            int r9 = r1 + r7
            r6.d(r9, r8)
            int r4 = r4 + 1
            r6 = r7
            goto L10
        L33:
            boolean r0 = r10.Q0
            if (r0 != 0) goto L6d
            goto L6e
        L38:
            int r3 = r10.getWidth()
            int r4 = r10.getPaddingRight()
            int r3 = r3 - r4
            int r0 = r0 + (-1)
            r4 = r0
            r5 = 0
            r6 = 0
        L46:
            if (r4 < 0) goto L68
            boolean r7 = r10.Q0
            if (r7 == 0) goto L4f
            int r7 = r0 - r4
            goto L50
        L4f:
            r7 = r4
        L50:
            android.view.View r8 = r10.getChildAt(r7)
            int r9 = r8.getLeft()
            if (r9 > r3) goto L5b
            goto L68
        L5b:
            int r5 = r5 + 1
            com.join.mgps.customview.AbsSpinner$b r6 = r10.f44842u0
            int r9 = r1 + r7
            r6.d(r9, r8)
            int r4 = r4 + (-1)
            r6 = r7
            goto L46
        L68:
            boolean r0 = r10.Q0
            if (r0 == 0) goto L6d
            goto L6e
        L6d:
            r2 = r6
        L6e:
            r10.detachViewsFromParent(r2, r5)
            boolean r0 = r10.Q0
            if (r11 == r0) goto L7a
            int r11 = r10.f44867a
            int r11 = r11 + r5
            r10.f44867a = r11
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.Gallery.J(boolean):void");
    }

    private boolean K(View view, int i2, long j4) {
        AdapterView.e eVar = this.f44878l;
        boolean a4 = eVar != null ? eVar.a(this, this.F0, this.E0, j4) : false;
        if (!a4) {
            this.O0 = new AdapterView.b(view, i2, j4);
            a4 = super.showContextMenuForChild(this);
        }
        if (a4) {
            performHapticFeedback(0);
        }
        return a4;
    }

    private void L(View view) {
        if (view != null) {
            view.setPressed(true);
        }
        setPressed(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount >= 0) {
                getChildAt(childCount).setPressed(false);
            } else {
                setPressed(false);
                return;
            }
        }
    }

    private void N() {
        if (this.Q0) {
            P();
        } else {
            O();
        }
    }

    private void O() {
        int right;
        int i2;
        int i4 = this.f45538x0;
        int paddingLeft = getPaddingLeft();
        View childAt = getChildAt(0);
        if (childAt != null) {
            i2 = this.f44867a - 1;
            right = childAt.getLeft() - i4;
        } else {
            right = (getRight() - getLeft()) - getPaddingRight();
            this.I0 = true;
            i2 = 0;
        }
        while (right > paddingLeft && i2 >= 0) {
            View V = V(i2, i2 - this.f44882p, right, false);
            this.f44867a = i2;
            right = V.getLeft() - i4;
            i2--;
        }
    }

    private void P() {
        int i2;
        int right;
        int i4 = this.f45538x0;
        int paddingLeft = getPaddingLeft();
        int childCount = getChildCount();
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i2 = this.f44867a + childCount;
            right = childAt.getLeft() - i4;
        } else {
            i2 = this.f44885s - 1;
            this.f44867a = i2;
            right = (getRight() - getLeft()) - getPaddingRight();
            this.I0 = true;
        }
        while (right > paddingLeft && i2 < this.f44885s) {
            right = V(i2, i2 - this.f44882p, right, false).getLeft() - i4;
            i2++;
        }
    }

    private void Q() {
        if (this.Q0) {
            S();
        } else {
            R();
        }
    }

    private void R() {
        int i2;
        int paddingLeft;
        int i4 = this.f45538x0;
        int right = (getRight() - getLeft()) - getPaddingRight();
        int childCount = getChildCount();
        int i5 = this.f44885s;
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i2 = this.f44867a + childCount;
            paddingLeft = childAt.getRight() + i4;
        } else {
            i2 = this.f44885s - 1;
            this.f44867a = i2;
            paddingLeft = getPaddingLeft();
            this.I0 = true;
        }
        while (paddingLeft < right && i2 < i5) {
            paddingLeft = V(i2, i2 - this.f44882p, paddingLeft, true).getRight() + i4;
            i2++;
        }
    }

    private void S() {
        int paddingLeft;
        int i2 = this.f45538x0;
        int right = (getRight() - getLeft()) - getPaddingRight();
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt != null) {
            i4 = this.f44867a - 1;
            paddingLeft = childAt.getRight() + i2;
        } else {
            paddingLeft = getPaddingLeft();
            this.I0 = true;
        }
        while (paddingLeft < right && i4 >= 0) {
            View V = V(i4, i4 - this.f44882p, paddingLeft, true);
            this.f44867a = i4;
            paddingLeft = V.getRight() + i2;
            i4--;
        }
    }

    private static int T(View view) {
        return view.getLeft();
    }

    private View V(int i2, int i4, int i5, boolean z3) {
        View b4;
        if (!this.f44879m && (b4 = this.f44842u0.b(i2)) != null) {
            int left = b4.getLeft();
            this.B0 = Math.max(this.B0, b4.getMeasuredWidth() + left);
            this.A0 = Math.min(this.A0, left);
            f0(b4, i4, i5, z3);
            return b4;
        }
        View view = this.H.getView(i2, null, this);
        f0(view, i4, i5, z3);
        return view;
    }

    private void Y(int i2) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            getChildAt(childCount).offsetLeftAndRight(i2);
        }
    }

    private void a0() {
        if (this.M0) {
            this.M0 = false;
            super.p();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        View view;
        if (getChildCount() == 0 || (view = this.J0) == null) {
            return;
        }
        int galleryLockPoint = getGalleryLockPoint() - T(view);
        if (galleryLockPoint != 0) {
            this.G0.e(galleryLockPoint);
        } else {
            a0();
        }
    }

    private boolean d0(int i2) {
        View childAt = getChildAt(i2);
        if (childAt != null) {
            this.G0.e(getGalleryLockPoint() - T(childAt));
            return true;
        }
        return false;
    }

    private void e0() {
        if (this.J0 == null) {
            return;
        }
        int galleryLockPoint = getGalleryLockPoint();
        int i2 = Integer.MAX_VALUE;
        int i4 = 0;
        int childCount = getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                break;
            }
            View childAt = getChildAt(childCount);
            if (childAt.getLeft() == galleryLockPoint && childAt.getRight() >= galleryLockPoint) {
                i4 = childCount;
                break;
            }
            int min = Math.min(Math.abs(childAt.getLeft() - galleryLockPoint), Math.abs(childAt.getRight() - galleryLockPoint));
            if (min < i2) {
                i4 = childCount;
                i2 = min;
            }
            childCount--;
        }
        int i5 = this.f44867a + i4;
        if (i5 != this.f44882p) {
            setSelectedPositionInt(i5);
            setNextSelectedPositionInt(i5);
            e();
        }
    }

    private void f0(View view, int i2, int i4, boolean z3) {
        int i5;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addViewInLayout(view, z3 != this.Q0 ? -1 : 0, layoutParams);
        view.setSelected(i2 == 0);
        int i6 = this.I;
        Rect rect = this.f44839r0;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i6, rect.top + rect.bottom, layoutParams.height);
        int i7 = this.J;
        Rect rect2 = this.f44839r0;
        view.measure(ViewGroup.getChildMeasureSpec(i7, rect2.left + rect2.right, layoutParams.width), childMeasureSpec);
        int I = I(view, true);
        int measuredHeight = view.getMeasuredHeight() + I;
        int measuredWidth = view.getMeasuredWidth();
        if (z3) {
            i5 = measuredWidth + i4;
        } else {
            int i8 = i4 - measuredWidth;
            i5 = i4;
            i4 = i8;
        }
        view.layout(i4, I, i5, measuredHeight);
    }

    private int getGalleryLockPoint() {
        return getPaddingLeft();
    }

    private void h0() {
        View view = this.J0;
        View childAt = getChildAt(this.f44882p - this.f44867a);
        this.J0 = childAt;
        if (childAt == null) {
            return;
        }
        childAt.setSelected(true);
        childAt.setFocusable(true);
        if (hasFocus()) {
            childAt.requestFocus();
        }
        if (view == null || view == childAt) {
            return;
        }
        view.setSelected(false);
        view.setFocusable(false);
    }

    int U(boolean z3, int i2) {
        View childAt = getChildAt((z3 != this.Q0 ? this.f44885s - 1 : 0) - this.f44867a);
        if (childAt == null) {
            return i2;
        }
        int T = T(childAt);
        int galleryLockPoint = getGalleryLockPoint();
        if (z3) {
            if (T <= galleryLockPoint) {
                return 0;
            }
        } else if (T >= galleryLockPoint) {
            return 0;
        }
        int i4 = galleryLockPoint - T;
        if (z3) {
            return Math.max(i4, i2);
        }
        return Math.min(i4, i2);
    }

    boolean W() {
        int i2;
        int i4 = this.f44885s;
        if (i4 <= 0 || (i2 = this.f44882p) >= i4 - 1) {
            return false;
        }
        d0((i2 - this.f44867a) + 1);
        return true;
    }

    boolean X() {
        int i2;
        if (this.f44885s <= 0 || (i2 = this.f44882p) <= 0) {
            return false;
        }
        setSelection(i2 - 1);
        return true;
    }

    void Z() {
        b0();
    }

    void b0() {
        if (this.G0.f45543a.isFinished()) {
            c0();
        }
        M();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.LayoutParams;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollExtent() {
        return 1;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollOffset() {
        return this.f44882p;
    }

    @Override // android.view.View
    protected int computeHorizontalScrollRange() {
        return this.f44885s;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return keyEvent.dispatch(this, null, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z3) {
        View view = this.J0;
        if (view != null) {
            view.setPressed(z3);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSetSelected(boolean z3) {
    }

    void g0(int i2) {
        if (getChildCount() == 0) {
            return;
        }
        boolean z3 = i2 < 0;
        int U = U(z3, i2);
        if (U != i2) {
            this.G0.c(false);
            a0();
        }
        Y(U);
        J(z3);
        if (z3) {
            Q();
        } else {
            N();
        }
        this.f44842u0.a();
        e0();
        onScrollChanged(0, 0, 0, 0);
        invalidate();
    }

    @Override // com.join.mgps.customview.AbsSpinner, android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i4) {
        int i5 = this.f44882p - this.f44867a;
        return i5 < 0 ? i4 : i4 == i2 + (-1) ? i5 : i4 >= i5 ? i4 + 1 : i4;
    }

    @Override // android.view.ViewGroup
    protected boolean getChildStaticTransformation(View view, Transformation transformation) {
        transformation.clear();
        transformation.setAlpha(view == this.J0 ? 1.0f : this.f45540z0);
        return true;
    }

    @Override // android.view.View
    protected ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.O0;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.G0.g(false);
        int w3 = w((int) motionEvent.getX(), (int) motionEvent.getY());
        this.E0 = w3;
        if (w3 >= 0) {
            View childAt = getChildAt(w3 - this.f44867a);
            this.F0 = childAt;
            childAt.setPressed(true);
        }
        this.P0 = true;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
        if (!this.K0) {
            removeCallbacks(this.H0);
            if (!this.M0) {
                this.M0 = true;
            }
        }
        this.G0.f((int) (-f4));
        return true;
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z3, int i2, Rect rect) {
        View view;
        super.onFocusChanged(z3, i2, rect);
        if (!z3 || (view = this.J0) == null) {
            return;
        }
        view.requestFocus(i2);
        this.J0.setSelected(true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 66) {
            switch (i2) {
                case 21:
                    if (X()) {
                        playSoundEffect(1);
                    }
                    return true;
                case 22:
                    if (W()) {
                        playSoundEffect(3);
                    }
                    return true;
            }
            return super.onKeyDown(i2, keyEvent);
        }
        this.N0 = true;
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 23 && i2 != 66) {
            return super.onKeyUp(i2, keyEvent);
        }
        if (this.N0 && this.f44885s > 0) {
            L(this.J0);
            postDelayed(new b(), ViewConfiguration.getPressedStateDuration());
            View childAt = getChildAt(this.f44882p - this.f44867a);
            int i4 = this.f44882p;
            n(childAt, i4, this.H.getItemId(i4));
        }
        this.N0 = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.customview.AdapterView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        this.f44875i = true;
        v(0, false);
        this.f44875i = false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        if (this.E0 < 0) {
            return;
        }
        performHapticFeedback(0);
        K(this.F0, this.E0, i(this.E0));
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
        getParent().requestDisallowInterceptTouchEvent(true);
        if (!this.K0) {
            if (this.P0) {
                if (!this.M0) {
                    this.M0 = true;
                }
                postDelayed(this.H0, 250L);
            }
        } else if (this.M0) {
            this.M0 = false;
        }
        g0(((int) f4) * (-1));
        this.P0 = false;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        int i2 = this.E0;
        if (i2 >= 0) {
            d0(i2 - this.f44867a);
            if (this.L0 || this.E0 == this.f44882p) {
                View view = this.F0;
                int i4 = this.E0;
                n(view, i4, this.H.getItemId(i4));
                return true;
            }
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            boolean onTouchEvent = this.D0.onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if (action == 1) {
                b0();
            } else if (action == 3) {
                Z();
            }
            return onTouchEvent;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.AdapterView
    public void p() {
        if (this.M0) {
            return;
        }
        super.p();
    }

    public void setAnimationDuration(int i2) {
        this.f45539y0 = i2;
    }

    public void setCallbackDuringFling(boolean z3) {
        this.K0 = z3;
    }

    public void setCallbackOnUnselectedItemClick(boolean z3) {
        this.L0 = z3;
    }

    public void setGravity(int i2) {
        if (this.C0 != i2) {
            this.C0 = i2;
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.AdapterView
    public void setSelectedPositionInt(int i2) {
        super.setSelectedPositionInt(i2);
        h0();
    }

    public void setSpacing(int i2) {
        this.f45538x0 = i2;
    }

    public void setUnselectedAlpha(float f4) {
        this.f45540z0 = f4;
    }

    @Override // android.view.View
    public boolean showContextMenu() {
        int i2;
        if (!isPressed() || (i2 = this.f44882p) < 0) {
            return false;
        }
        return K(getChildAt(i2 - this.f44867a), this.f44882p, this.f44883q);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        int j4 = j(view);
        if (j4 < 0) {
            return false;
        }
        return K(view, j4, this.H.getItemId(j4));
    }

    @Override // com.join.mgps.customview.AbsSpinner
    void v(int i2, boolean z3) {
        this.Q0 = false;
        if (this.f44879m) {
            k();
        }
        if (this.f44885s == 0) {
            y();
            return;
        }
        int i4 = this.f44880n;
        if (i4 >= 0) {
            setSelectedPositionInt(i4);
        }
        x();
        detachAllViewsFromParent();
        this.B0 = 0;
        this.A0 = 0;
        int i5 = this.f44882p;
        this.f44867a = i5;
        V(i5, 0, 0, true).offsetLeftAndRight(getGalleryLockPoint());
        Q();
        N();
        this.f44842u0.a();
        invalidate();
        e();
        this.f44879m = false;
        this.f44872f = false;
        setNextSelectedPositionInt(this.f44882p);
        h0();
    }

    public Gallery(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842864);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.LayoutParams(getContext(), attributeSet);
    }

    public Gallery(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45538x0 = 0;
        this.f45539y0 = StatFsHelper.f11741h;
        this.G0 = new c();
        this.H0 = new a();
        this.K0 = true;
        this.L0 = true;
        this.Q0 = true;
        GestureDetector gestureDetector = new GestureDetector(context, this);
        this.D0 = gestureDetector;
        gestureDetector.setIsLongpressEnabled(true);
    }
}

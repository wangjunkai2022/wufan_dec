package androidx.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.R;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements NestedScrollingParent3, NestedScrollingChild3, ScrollingView {
    private static final String A = "NestedScrollView";
    private static final int B = 250;
    private static final int C = -1;
    private static final AccessibilityDelegate D = new AccessibilityDelegate();
    private static final int[] E = {16843130};

    /* renamed from: y  reason: collision with root package name */
    static final int f5093y = 250;

    /* renamed from: z  reason: collision with root package name */
    static final float f5094z = 0.5f;

    /* renamed from: a  reason: collision with root package name */
    private long f5095a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f5096b;

    /* renamed from: c  reason: collision with root package name */
    private OverScroller f5097c;

    /* renamed from: d  reason: collision with root package name */
    private int f5098d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f5099e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f5100f;

    /* renamed from: g  reason: collision with root package name */
    private View f5101g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5102h;

    /* renamed from: i  reason: collision with root package name */
    private VelocityTracker f5103i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f5104j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f5105k;

    /* renamed from: l  reason: collision with root package name */
    private int f5106l;

    /* renamed from: m  reason: collision with root package name */
    private int f5107m;
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public EdgeEffect mEdgeGlowBottom;
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public EdgeEffect mEdgeGlowTop;

    /* renamed from: n  reason: collision with root package name */
    private int f5108n;

    /* renamed from: o  reason: collision with root package name */
    private int f5109o;

    /* renamed from: p  reason: collision with root package name */
    private final int[] f5110p;

    /* renamed from: q  reason: collision with root package name */
    private final int[] f5111q;

    /* renamed from: r  reason: collision with root package name */
    private int f5112r;

    /* renamed from: s  reason: collision with root package name */
    private int f5113s;

    /* renamed from: t  reason: collision with root package name */
    private SavedState f5114t;

    /* renamed from: u  reason: collision with root package name */
    private final NestedScrollingParentHelper f5115u;

    /* renamed from: v  reason: collision with root package name */
    private final NestedScrollingChildHelper f5116v;

    /* renamed from: w  reason: collision with root package name */
    private float f5117w;

    /* renamed from: x  reason: collision with root package name */
    private OnScrollChangeListener f5118x;

    /* loaded from: classes.dex */
    static class AccessibilityDelegate extends AccessibilityDelegateCompat {
        AccessibilityDelegate() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            AccessibilityRecordCompat.setMaxScrollX(accessibilityEvent, nestedScrollView.getScrollX());
            AccessibilityRecordCompat.setMaxScrollY(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int scrollRange;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            accessibilityNodeInfoCompat.setScrollable(true);
            if (nestedScrollView.getScrollY() > 0) {
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (super.performAccessibilityAction(view, i2, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (nestedScrollView.isEnabled()) {
                if (i2 != 4096) {
                    if (i2 == 8192 || i2 == 16908344) {
                        int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                        if (max != nestedScrollView.getScrollY()) {
                            nestedScrollView.A(0, max, true);
                            return true;
                        }
                        return false;
                    } else if (i2 != 16908346) {
                        return false;
                    }
                }
                int min = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                if (min != nestedScrollView.getScrollY()) {
                    nestedScrollView.A(0, min, true);
                    return true;
                }
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface OnScrollChangeListener {
        void onScrollChange(NestedScrollView nestedScrollView, int i2, int i4, int i5, int i6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.core.widget.NestedScrollView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public int scrollPosition;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.scrollPosition + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.scrollPosition);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.scrollPosition = parcel.readInt();
        }
    }

    public NestedScrollView(@NonNull Context context) {
        this(context, null);
    }

    private boolean B(MotionEvent motionEvent) {
        boolean z3;
        if (EdgeEffectCompat.getDistance(this.mEdgeGlowTop) != 0.0f) {
            EdgeEffectCompat.onPullDistance(this.mEdgeGlowTop, 0.0f, motionEvent.getY() / getHeight());
            z3 = true;
        } else {
            z3 = false;
        }
        if (EdgeEffectCompat.getDistance(this.mEdgeGlowBottom) != 0.0f) {
            EdgeEffectCompat.onPullDistance(this.mEdgeGlowBottom, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
            return true;
        }
        return z3;
    }

    private void a() {
        this.f5097c.abortAnimation();
        stopNestedScroll(1);
    }

    private boolean b() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            return (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom();
        }
        return false;
    }

    private static int c(int i2, int i4, int i5) {
        if (i4 >= i5 || i2 < 0) {
            return 0;
        }
        return i4 + i2 > i5 ? i5 - i4 : i2;
    }

    private void e(int i2) {
        if (i2 != 0) {
            if (this.f5105k) {
                smoothScrollBy(0, i2);
            } else {
                scrollBy(0, i2);
            }
        }
    }

    private boolean f(int i2) {
        if (EdgeEffectCompat.getDistance(this.mEdgeGlowTop) != 0.0f) {
            this.mEdgeGlowTop.onAbsorb(i2);
        } else if (EdgeEffectCompat.getDistance(this.mEdgeGlowBottom) == 0.0f) {
            return false;
        } else {
            this.mEdgeGlowBottom.onAbsorb(-i2);
        }
        return true;
    }

    private void g() {
        this.f5102h = false;
        s();
        stopNestedScroll(0);
        this.mEdgeGlowTop.onRelease();
        this.mEdgeGlowBottom.onRelease();
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f5117w == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                this.f5117w = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        return this.f5117w;
    }

    private View h(boolean z3, int i2, int i4) {
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z4 = false;
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) focusables.get(i5);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i2 < bottom && top < i4) {
                boolean z5 = i2 < top && bottom < i4;
                if (view == null) {
                    view = view2;
                    z4 = z5;
                } else {
                    boolean z6 = (z3 && top < view.getTop()) || (!z3 && bottom > view.getBottom());
                    if (z4) {
                        if (z5) {
                            if (!z6) {
                            }
                            view = view2;
                        }
                    } else if (z5) {
                        view = view2;
                        z4 = true;
                    } else {
                        if (!z6) {
                        }
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    private boolean i(int i2, int i4) {
        if (getChildCount() > 0) {
            int scrollY = getScrollY();
            View childAt = getChildAt(0);
            return i4 >= childAt.getTop() - scrollY && i4 < childAt.getBottom() - scrollY && i2 >= childAt.getLeft() && i2 < childAt.getRight();
        }
        return false;
    }

    private void j() {
        VelocityTracker velocityTracker = this.f5103i;
        if (velocityTracker == null) {
            this.f5103i = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void k() {
        this.f5097c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f5106l = viewConfiguration.getScaledTouchSlop();
        this.f5107m = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f5108n = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private void l() {
        if (this.f5103i == null) {
            this.f5103i = VelocityTracker.obtain();
        }
    }

    private boolean m(View view) {
        return !o(view, 0, getHeight());
    }

    private static boolean n(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && n((View) parent, view2);
    }

    private boolean o(View view, int i2, int i4) {
        view.getDrawingRect(this.f5096b);
        offsetDescendantRectToMyCoords(view, this.f5096b);
        return this.f5096b.bottom + i2 >= getScrollY() && this.f5096b.top - i2 <= getScrollY() + i4;
    }

    private void p(int i2, int i4, @Nullable int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i2);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f5116v.dispatchNestedScroll(0, scrollY2, 0, i2 - scrollY2, null, i4, iArr);
    }

    private void q(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f5109o) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.f5098d = (int) motionEvent.getY(i2);
            this.f5109o = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.f5103i;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void s() {
        VelocityTracker velocityTracker = this.f5103i;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f5103i = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int t(int r4, float r5) {
        /*
            r3 = this;
            int r0 = r3.getWidth()
            float r0 = (float) r0
            float r5 = r5 / r0
            float r4 = (float) r4
            int r0 = r3.getHeight()
            float r0 = (float) r0
            float r4 = r4 / r0
            android.widget.EdgeEffect r0 = r3.mEdgeGlowTop
            float r0 = androidx.core.widget.EdgeEffectCompat.getDistance(r0)
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L31
            android.widget.EdgeEffect r0 = r3.mEdgeGlowTop
            float r4 = -r4
            float r4 = androidx.core.widget.EdgeEffectCompat.onPullDistance(r0, r4, r5)
            float r4 = -r4
            android.widget.EdgeEffect r5 = r3.mEdgeGlowTop
            float r5 = androidx.core.widget.EdgeEffectCompat.getDistance(r5)
            int r5 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r5 != 0) goto L2f
            android.widget.EdgeEffect r5 = r3.mEdgeGlowTop
            r5.onRelease()
        L2f:
            r1 = r4
            goto L54
        L31:
            android.widget.EdgeEffect r0 = r3.mEdgeGlowBottom
            float r0 = androidx.core.widget.EdgeEffectCompat.getDistance(r0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L54
            android.widget.EdgeEffect r0 = r3.mEdgeGlowBottom
            r2 = 1065353216(0x3f800000, float:1.0)
            float r2 = r2 - r5
            float r4 = androidx.core.widget.EdgeEffectCompat.onPullDistance(r0, r4, r2)
            android.widget.EdgeEffect r5 = r3.mEdgeGlowBottom
            float r5 = androidx.core.widget.EdgeEffectCompat.getDistance(r5)
            int r5 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r5 != 0) goto L2f
            android.widget.EdgeEffect r5 = r3.mEdgeGlowBottom
            r5.onRelease()
            goto L2f
        L54:
            int r4 = r3.getHeight()
            float r4 = (float) r4
            float r1 = r1 * r4
            int r4 = java.lang.Math.round(r1)
            if (r4 == 0) goto L64
            r3.invalidate()
        L64:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.t(int, float):int");
    }

    private void u(boolean z3) {
        if (z3) {
            startNestedScroll(2, 1);
        } else {
            stopNestedScroll(1);
        }
        this.f5113s = getScrollY();
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private boolean v(int i2, int i4, int i5) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i6 = height + scrollY;
        boolean z3 = false;
        boolean z4 = i2 == 33;
        View h4 = h(z4, i4, i5);
        if (h4 == null) {
            h4 = this;
        }
        if (i4 < scrollY || i5 > i6) {
            e(z4 ? i4 - scrollY : i5 - i6);
            z3 = true;
        }
        if (h4 != findFocus()) {
            h4.requestFocus(i2);
        }
        return z3;
    }

    private void w(View view) {
        view.getDrawingRect(this.f5096b);
        offsetDescendantRectToMyCoords(view, this.f5096b);
        int d4 = d(this.f5096b);
        if (d4 != 0) {
            scrollBy(0, d4);
        }
    }

    private boolean x(Rect rect, boolean z3) {
        int d4 = d(rect);
        boolean z4 = d4 != 0;
        if (z4) {
            if (z3) {
                scrollBy(0, d4);
            } else {
                smoothScrollBy(0, d4);
            }
        }
        return z4;
    }

    private void y(int i2, int i4, int i5, boolean z3) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f5095a > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int scrollY = getScrollY();
            OverScroller overScroller = this.f5097c;
            int scrollX = getScrollX();
            overScroller.startScroll(scrollX, scrollY, 0, Math.max(0, Math.min(i4 + scrollY, Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom())))) - scrollY, i5);
            u(z3);
        } else {
            if (!this.f5097c.isFinished()) {
                a();
            }
            scrollBy(i2, i4);
        }
        this.f5095a = AnimationUtils.currentAnimationTimeMillis();
    }

    void A(int i2, int i4, boolean z3) {
        z(i2, i4, 250, z3);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    public boolean arrowScroll(int i2) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i2);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus != null && o(findNextFocus, maxScrollAmount, getHeight())) {
            findNextFocus.getDrawingRect(this.f5096b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f5096b);
            e(d(this.f5096b));
            findNextFocus.requestFocus(i2);
        } else {
            if (i2 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i2 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i2 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            e(maxScrollAmount);
        }
        if (findFocus != null && findFocus.isFocused() && m(findFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
            return true;
        }
        return true;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f5097c.isFinished()) {
            return;
        }
        this.f5097c.computeScrollOffset();
        int currY = this.f5097c.getCurrY();
        int i2 = currY - this.f5113s;
        this.f5113s = currY;
        int[] iArr = this.f5111q;
        boolean z3 = false;
        iArr[1] = 0;
        dispatchNestedPreScroll(0, i2, iArr, null, 1);
        int i4 = i2 - this.f5111q[1];
        int scrollRange = getScrollRange();
        if (i4 != 0) {
            int scrollY = getScrollY();
            r(0, i4, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
            int scrollY2 = getScrollY() - scrollY;
            int i5 = i4 - scrollY2;
            int[] iArr2 = this.f5111q;
            iArr2[1] = 0;
            dispatchNestedScroll(0, scrollY2, 0, i5, this.f5110p, 1, iArr2);
            i4 = i5 - this.f5111q[1];
        }
        if (i4 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z3 = true;
            }
            if (z3) {
                if (i4 < 0) {
                    if (this.mEdgeGlowTop.isFinished()) {
                        this.mEdgeGlowTop.onAbsorb((int) this.f5097c.getCurrVelocity());
                    }
                } else if (this.mEdgeGlowBottom.isFinished()) {
                    this.mEdgeGlowBottom.onAbsorb((int) this.f5097c.getCurrVelocity());
                }
            }
            a();
        }
        if (!this.f5097c.isFinished()) {
            ViewCompat.postInvalidateOnAnimation(this);
        } else {
            stopNestedScroll(1);
        }
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    protected int d(Rect rect) {
        int i2;
        int i4;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i6 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i5 - verticalFadingEdgeLength : i5;
        int i7 = rect.bottom;
        if (i7 > i6 && rect.top > scrollY) {
            if (rect.height() > height) {
                i4 = rect.top - scrollY;
            } else {
                i4 = rect.bottom - i6;
            }
            return Math.min(i4 + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i5);
        } else if (rect.top >= scrollY || i7 >= i6) {
            return 0;
        } else {
            if (rect.height() > height) {
                i2 = 0 - (i6 - rect.bottom);
            } else {
                i2 = 0 - (scrollY - rect.top);
            }
            return Math.max(i2, -getScrollY());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f4, float f5, boolean z3) {
        return this.f5116v.dispatchNestedFling(f4, f5, z3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f4, float f5) {
        return this.f5116v.dispatchNestedPreFling(f4, f5);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i2, int i4, int[] iArr, int[] iArr2, int i5) {
        return this.f5116v.dispatchNestedPreScroll(i2, i4, iArr, iArr2, i5);
    }

    @Override // androidx.core.view.NestedScrollingChild3
    public void dispatchNestedScroll(int i2, int i4, int i5, int i6, @Nullable int[] iArr, int i7, @NonNull int[] iArr2) {
        this.f5116v.dispatchNestedScroll(i2, i4, i5, i6, iArr, i7, iArr2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        int i2 = 0;
        if (!this.mEdgeGlowTop.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            int i4 = Build.VERSION.SDK_INT;
            if (i4 < 21 || getClipToPadding()) {
                width -= getPaddingLeft() + getPaddingRight();
                paddingLeft = getPaddingLeft() + 0;
            } else {
                paddingLeft = 0;
            }
            if (i4 >= 21 && getClipToPadding()) {
                height -= getPaddingTop() + getPaddingBottom();
                min += getPaddingTop();
            }
            canvas.translate(paddingLeft, min);
            this.mEdgeGlowTop.setSize(width, height);
            if (this.mEdgeGlowTop.draw(canvas)) {
                ViewCompat.postInvalidateOnAnimation(this);
            }
            canvas.restoreToCount(save);
        }
        if (this.mEdgeGlowBottom.isFinished()) {
            return;
        }
        int save2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int max = Math.max(getScrollRange(), scrollY) + height2;
        int i5 = Build.VERSION.SDK_INT;
        if (i5 < 21 || getClipToPadding()) {
            width2 -= getPaddingLeft() + getPaddingRight();
            i2 = 0 + getPaddingLeft();
        }
        if (i5 >= 21 && getClipToPadding()) {
            height2 -= getPaddingTop() + getPaddingBottom();
            max -= getPaddingBottom();
        }
        canvas.translate(i2 - width2, max);
        canvas.rotate(180.0f, width2, 0.0f);
        this.mEdgeGlowBottom.setSize(width2, height2);
        if (this.mEdgeGlowBottom.draw(canvas)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        canvas.restoreToCount(save2);
    }

    public boolean executeKeyEvent(@NonNull KeyEvent keyEvent) {
        this.f5096b.setEmpty();
        if (!b()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
        } else if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 19) {
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(33);
                }
                return fullScroll(33);
            } else if (keyCode == 20) {
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(130);
                }
                return fullScroll(130);
            } else if (keyCode != 62) {
                return false;
            } else {
                pageScroll(keyEvent.isShiftPressed() ? 33 : 130);
                return false;
            }
        } else {
            return false;
        }
    }

    public void fling(int i2) {
        if (getChildCount() > 0) {
            this.f5097c.fling(getScrollX(), getScrollY(), 0, i2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            u(true);
        }
    }

    public boolean fullScroll(int i2) {
        int childCount;
        boolean z3 = i2 == 130;
        int height = getHeight();
        Rect rect = this.f5096b;
        rect.top = 0;
        rect.bottom = height;
        if (z3 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f5096b.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f5096b;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f5096b;
        return v(i2, rect3.top, rect3.bottom);
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f5115u.getNestedScrollAxes();
    }

    int getScrollRange() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        }
        return 0;
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i2) {
        return this.f5116v.hasNestedScrollingParent(i2);
    }

    public boolean isFillViewport() {
        return this.f5104j;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f5116v.isNestedScrollingEnabled();
    }

    public boolean isSmoothScrollingEnabled() {
        return this.f5105k;
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i2, int i4) {
        view.measure(FrameLayout.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i2, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i4, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5100f = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.f5102h) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int verticalScrollFactorCompat = scrollY - ((int) (axisValue * getVerticalScrollFactorCompat()));
                if (verticalScrollFactorCompat < 0) {
                    scrollRange = 0;
                } else if (verticalScrollFactorCompat <= scrollRange) {
                    scrollRange = verticalScrollFactorCompat;
                }
                if (scrollRange != scrollY) {
                    super.scrollTo(getScrollX(), scrollRange);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z3 = true;
        if (action == 2 && this.f5102h) {
            return true;
        }
        int i2 = action & 255;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    int i4 = this.f5109o;
                    if (i4 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i4);
                        if (findPointerIndex == -1) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Invalid pointerId=");
                            sb.append(i4);
                            sb.append(" in onInterceptTouchEvent");
                        } else {
                            int y3 = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y3 - this.f5098d) > this.f5106l && (2 & getNestedScrollAxes()) == 0) {
                                this.f5102h = true;
                                this.f5098d = y3;
                                l();
                                this.f5103i.addMovement(motionEvent);
                                this.f5112r = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                } else if (i2 != 3) {
                    if (i2 == 6) {
                        q(motionEvent);
                    }
                }
            }
            this.f5102h = false;
            this.f5109o = -1;
            s();
            if (this.f5097c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                ViewCompat.postInvalidateOnAnimation(this);
            }
            stopNestedScroll(0);
        } else {
            int y4 = (int) motionEvent.getY();
            if (!i((int) motionEvent.getX(), y4)) {
                if (!B(motionEvent) && this.f5097c.isFinished()) {
                    z3 = false;
                }
                this.f5102h = z3;
                s();
            } else {
                this.f5098d = y4;
                this.f5109o = motionEvent.getPointerId(0);
                j();
                this.f5103i.addMovement(motionEvent);
                this.f5097c.computeScrollOffset();
                if (!B(motionEvent) && this.f5097c.isFinished()) {
                    z3 = false;
                }
                this.f5102h = z3;
                startNestedScroll(2, 0);
            }
        }
        return this.f5102h;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        int i7 = 0;
        this.f5099e = false;
        View view = this.f5101g;
        if (view != null && n(view, this)) {
            w(this.f5101g);
        }
        this.f5101g = null;
        if (!this.f5100f) {
            if (this.f5114t != null) {
                scrollTo(getScrollX(), this.f5114t.scrollPosition);
                this.f5114t = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i7 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i6 - i4) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int c4 = c(scrollY, paddingTop, i7);
            if (c4 != scrollY) {
                scrollTo(getScrollX(), c4);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f5100f = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        if (this.f5104j && View.MeasureSpec.getMode(i4) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(FrameLayout.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f4, float f5, boolean z3) {
        if (z3) {
            return false;
        }
        dispatchNestedFling(0.0f, f5, true);
        fling((int) f5);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f4, float f5) {
        return dispatchNestedPreFling(f4, f5);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull View view, int i2, int i4, @NonNull int[] iArr, int i5) {
        dispatchNestedPreScroll(i2, i4, iArr, null, i5);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i2, int i4, int i5, int i6, int i7, @NonNull int[] iArr) {
        p(i6, i7, iArr);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2, int i4) {
        this.f5115u.onNestedScrollAccepted(view, view2, i2, i4);
        startNestedScroll(2, i4);
    }

    @Override // android.view.View
    protected void onOverScrolled(int i2, int i4, boolean z3, boolean z4) {
        super.scrollTo(i2, i4);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        View findNextFocusFromRect;
        if (i2 == 2) {
            i2 = 130;
        } else if (i2 == 1) {
            i2 = 33;
        }
        if (rect == null) {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i2);
        } else {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        }
        if (findNextFocusFromRect == null || m(findNextFocusFromRect)) {
            return false;
        }
        return findNextFocusFromRect.requestFocus(i2, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f5114t = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.scrollPosition = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        super.onScrollChanged(i2, i4, i5, i6);
        OnScrollChangeListener onScrollChangeListener = this.f5118x;
        if (onScrollChangeListener != null) {
            onScrollChangeListener.onScrollChange(this, i2, i4, i5, i6);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !o(findFocus, 0, i6)) {
            return;
        }
        findFocus.getDrawingRect(this.f5096b);
        offsetDescendantRectToMyCoords(findFocus, this.f5096b);
        e(d(this.f5096b));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2) {
        return onStartNestedScroll(view, view2, i2, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2, int i4) {
        return (i2 & 2) != 0;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View view, int i2) {
        this.f5115u.onStopNestedScroll(view, i2);
        stopNestedScroll(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x01cf  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r24) {
        /*
            Method dump skipped, instructions count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean pageScroll(int i2) {
        boolean z3 = i2 == 130;
        int height = getHeight();
        if (z3) {
            this.f5096b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f5096b;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f5096b.top = getScrollY() - height;
            Rect rect2 = this.f5096b;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f5096b;
        int i4 = rect3.top;
        int i5 = height + i4;
        rect3.bottom = i5;
        return v(i2, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0083 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean r(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20, boolean r21) {
        /*
            r12 = this;
            r0 = r12
            int r1 = r12.getOverScrollMode()
            int r2 = r12.computeHorizontalScrollRange()
            int r3 = r12.computeHorizontalScrollExtent()
            r4 = 0
            r5 = 1
            if (r2 <= r3) goto L13
            r2 = 1
            goto L14
        L13:
            r2 = 0
        L14:
            int r3 = r12.computeVerticalScrollRange()
            int r6 = r12.computeVerticalScrollExtent()
            if (r3 <= r6) goto L20
            r3 = 1
            goto L21
        L20:
            r3 = 0
        L21:
            if (r1 == 0) goto L2a
            if (r1 != r5) goto L28
            if (r2 == 0) goto L28
            goto L2a
        L28:
            r2 = 0
            goto L2b
        L2a:
            r2 = 1
        L2b:
            if (r1 == 0) goto L34
            if (r1 != r5) goto L32
            if (r3 == 0) goto L32
            goto L34
        L32:
            r1 = 0
            goto L35
        L34:
            r1 = 1
        L35:
            int r3 = r15 + r13
            if (r2 != 0) goto L3b
            r2 = 0
            goto L3d
        L3b:
            r2 = r19
        L3d:
            int r6 = r16 + r14
            if (r1 != 0) goto L43
            r1 = 0
            goto L45
        L43:
            r1 = r20
        L45:
            int r7 = -r2
            int r2 = r2 + r17
            int r8 = -r1
            int r1 = r1 + r18
            if (r3 <= r2) goto L50
            r3 = r2
        L4e:
            r2 = 1
            goto L55
        L50:
            if (r3 >= r7) goto L54
            r3 = r7
            goto L4e
        L54:
            r2 = 0
        L55:
            if (r6 <= r1) goto L5a
            r6 = r1
        L58:
            r1 = 1
            goto L5f
        L5a:
            if (r6 >= r8) goto L5e
            r6 = r8
            goto L58
        L5e:
            r1 = 0
        L5f:
            if (r1 == 0) goto L7e
            boolean r7 = r12.hasNestedScrollingParent(r5)
            if (r7 != 0) goto L7e
            android.widget.OverScroller r7 = r0.f5097c
            r8 = 0
            r9 = 0
            r10 = 0
            int r11 = r12.getScrollRange()
            r13 = r7
            r14 = r3
            r15 = r6
            r16 = r8
            r17 = r9
            r18 = r10
            r19 = r11
            r13.springBack(r14, r15, r16, r17, r18, r19)
        L7e:
            r12.onOverScrolled(r3, r6, r2, r1)
            if (r2 != 0) goto L85
            if (r1 == 0) goto L86
        L85:
            r4 = 1
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.r(int, int, int, int, int, int, int, int, boolean):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f5099e) {
            w(view2);
        } else {
            this.f5101g = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z3) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return x(rect, z3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z3) {
        if (z3) {
            s();
        }
        super.requestDisallowInterceptTouchEvent(z3);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f5099e = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i4) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int c4 = c(i2, (getWidth() - getPaddingLeft()) - getPaddingRight(), childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
            int c5 = c(i4, (getHeight() - getPaddingTop()) - getPaddingBottom(), childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
            if (c4 == getScrollX() && c5 == getScrollY()) {
                return;
            }
            super.scrollTo(c4, c5);
        }
    }

    public void setFillViewport(boolean z3) {
        if (z3 != this.f5104j) {
            this.f5104j = z3;
            requestLayout();
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z3) {
        this.f5116v.setNestedScrollingEnabled(z3);
    }

    public void setOnScrollChangeListener(@Nullable OnScrollChangeListener onScrollChangeListener) {
        this.f5118x = onScrollChangeListener;
    }

    public void setSmoothScrollingEnabled(boolean z3) {
        this.f5105k = z3;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public final void smoothScrollBy(int i2, int i4) {
        y(i2, i4, 250, false);
    }

    public final void smoothScrollTo(int i2, int i4) {
        z(i2, i4, 250, false);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int i2, int i4) {
        return this.f5116v.startNestedScroll(i2, i4);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int i2) {
        this.f5116v.stopNestedScroll(i2);
    }

    void z(int i2, int i4, int i5, boolean z3) {
        y(i2 - getScrollX(), i4 - getScrollY(), i5, z3);
    }

    public NestedScrollView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.nestedScrollViewStyle);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i2, int i4, int[] iArr, int[] iArr2) {
        return dispatchNestedPreScroll(i2, i4, iArr, iArr2, 0);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, int[] iArr, int i7) {
        return this.f5116v.dispatchNestedScroll(i2, i4, i5, i6, iArr, i7);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(@NonNull View view, int i2, int i4, @NonNull int[] iArr) {
        onNestedPreScroll(view, i2, i4, iArr, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View view, int i2, int i4, int i5, int i6, int i7) {
        p(i6, i7, null);
    }

    public final void smoothScrollBy(int i2, int i4, int i5) {
        y(i2, i4, i5, false);
    }

    public final void smoothScrollTo(int i2, int i4, int i5) {
        z(i2, i4, i5, false);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i2) {
        return startNestedScroll(i2, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public NestedScrollView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5096b = new Rect();
        this.f5099e = true;
        this.f5100f = false;
        this.f5101g = null;
        this.f5102h = false;
        this.f5105k = true;
        this.f5109o = -1;
        this.f5110p = new int[2];
        this.f5111q = new int[2];
        this.mEdgeGlowTop = EdgeEffectCompat.create(context, attributeSet);
        this.mEdgeGlowBottom = EdgeEffectCompat.create(context, attributeSet);
        k();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, E, i2, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f5115u = new NestedScrollingParentHelper(this);
        this.f5116v = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        ViewCompat.setAccessibilityDelegate(this, D);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, int[] iArr) {
        return this.f5116v.dispatchNestedScroll(i2, i4, i5, i6, iArr);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(@NonNull View view, int i2, int i4, int i5, int i6) {
        p(i6, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(@NonNull View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2) {
        if (getChildCount() <= 0) {
            super.addView(view, i2);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i2, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}

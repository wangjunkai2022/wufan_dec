package it.sephiroth.android.library.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ArrayAdapter;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.RemoteViews;
import androidx.collection.SparseArrayCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyInnerScrollView;
import it.sephiroth.android.library.widget.AbsHListView;
import java.util.ArrayList;
@RemoteViews.RemoteView
/* loaded from: classes5.dex */
public class HListView extends AbsHListView {
    static final int J2 = -1;
    private static final float K2 = 0.33f;
    private static final int L2 = 2;
    private static final String M2 = "HListView";
    private boolean A2;
    private boolean B2;
    private boolean C2;
    private boolean D2;
    private final Rect E2;
    private Paint F2;
    private final b G2;
    private d H2;
    private GestureDetector I2;

    /* renamed from: r2  reason: collision with root package name */
    private ArrayList<c> f70606r2;

    /* renamed from: s2  reason: collision with root package name */
    private ArrayList<c> f70607s2;

    /* renamed from: t2  reason: collision with root package name */
    Drawable f70608t2;

    /* renamed from: u2  reason: collision with root package name */
    int f70609u2;

    /* renamed from: v2  reason: collision with root package name */
    int f70610v2;

    /* renamed from: w2  reason: collision with root package name */
    Drawable f70611w2;

    /* renamed from: x2  reason: collision with root package name */
    Drawable f70612x2;

    /* renamed from: y2  reason: collision with root package name */
    private boolean f70613y2;

    /* renamed from: z2  reason: collision with root package name */
    private boolean f70614z2;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private int f70615a;

        /* renamed from: b  reason: collision with root package name */
        private int f70616b;

        private b() {
        }

        public int a() {
            return this.f70616b;
        }

        public int b() {
            return this.f70615a;
        }

        void c(int i2, int i4) {
            this.f70615a = i2;
            this.f70616b = i4;
        }
    }

    /* loaded from: classes5.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public View f70617a;

        /* renamed from: b  reason: collision with root package name */
        public Object f70618b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f70619c;
    }

    /* loaded from: classes5.dex */
    private class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f70620a;

        /* renamed from: b  reason: collision with root package name */
        private int f70621b;

        private d() {
        }

        public d a(int i2, int i4) {
            this.f70620a = i2;
            this.f70621b = i4;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            HListView.this.setSelectionFromLeft(this.f70620a, this.f70621b);
        }
    }

    /* loaded from: classes5.dex */
    class e extends GestureDetector.SimpleOnGestureListener {
        e() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            return Math.abs(f5) > Math.abs(f4);
        }
    }

    public HListView(Context context) {
        this(context, null);
    }

    private View A1(int i2, int i4) {
        View view;
        View view2;
        boolean z3 = i2 == this.f70555p;
        View K1 = K1(i2, i4, true, this.G0.top, z3);
        this.f70540a = i2;
        int i5 = this.f70609u2;
        if (!this.Y0) {
            view = y1(i2 - 1, K1.getLeft() - i5);
            g1();
            view2 = z1(i2 + 1, K1.getRight() + i5);
            int childCount = getChildCount();
            if (childCount > 0) {
                p1(childCount);
            }
        } else {
            View z12 = z1(i2 + 1, K1.getRight() + i5);
            g1();
            View y12 = y1(i2 - 1, K1.getLeft() - i5);
            int childCount2 = getChildCount();
            if (childCount2 > 0) {
                o1(childCount2);
            }
            view = y12;
            view2 = z12;
        }
        return z3 ? K1 : view != null ? view : view2;
    }

    private View B1(View view) {
        boolean z3;
        ViewParent parent = view.getParent();
        while (true) {
            z3 = parent instanceof View;
            if (!z3 || parent == this) {
                break;
            }
            view = (View) parent;
            parent = parent.getParent();
        }
        if (z3) {
            return view;
        }
        return null;
    }

    private int D1(int i2, int i4, int i5) {
        return i5 > 0 ? i2 + i4 : i2;
    }

    private int E1(int i2, int i4, int i5) {
        return i5 != this.f70558s + (-1) ? i2 - i4 : i2;
    }

    private boolean F1(int i2) {
        View selectedView;
        if (i2 != 33 && i2 != 130) {
            throw new IllegalArgumentException("direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}");
        }
        int childCount = getChildCount();
        if (!this.D2 || childCount <= 0 || this.f70555p == -1 || (selectedView = getSelectedView()) == null || !selectedView.hasFocus() || !(selectedView instanceof ViewGroup)) {
            return false;
        }
        View findFocus = selectedView.findFocus();
        View findNextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) selectedView, findFocus, i2);
        if (findNextFocus != null) {
            findFocus.getFocusedRect(this.E2);
            offsetDescendantRectToMyCoords(findFocus, this.E2);
            offsetRectIntoDescendantCoords(findNextFocus, this.E2);
            if (findNextFocus.requestFocus(i2, this.E2)) {
                return true;
            }
        }
        View findNextFocus2 = FocusFinder.getInstance().findNextFocus((ViewGroup) getRootView(), findFocus, i2);
        if (findNextFocus2 != null) {
            return I1(findNextFocus2, this);
        }
        return false;
    }

    private void G1(View view, int i2, int i4, boolean z3) {
        View childAt;
        boolean z4;
        if (i4 != -1) {
            int i5 = this.f70555p;
            int i6 = this.f70540a;
            int i7 = i5 - i6;
            int i8 = i4 - i6;
            boolean z5 = true;
            if (i2 == 33) {
                z4 = true;
                childAt = view;
                view = getChildAt(i8);
                i7 = i8;
                i8 = i7;
            } else {
                childAt = getChildAt(i8);
                z4 = false;
            }
            int childCount = getChildCount();
            if (view != null) {
                view.setSelected(!z3 && z4);
                L1(view, i7, childCount);
            }
            if (childAt != null) {
                childAt.setSelected((z3 || z4) ? false : false);
                L1(childAt, i8, childCount);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("newSelectedPosition needs to be valid");
    }

    private boolean H1(View view) {
        ArrayList<c> arrayList = this.f70606r2;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (view == arrayList.get(i2).f70617a) {
                return true;
            }
        }
        ArrayList<c> arrayList2 = this.f70607s2;
        int size2 = arrayList2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            if (view == arrayList2.get(i4).f70617a) {
                return true;
            }
        }
        return false;
    }

    private boolean I1(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && I1((View) parent, view2);
    }

    private int J1(int i2) {
        int i4 = this.f70540a;
        if (i2 == 130) {
            int i5 = this.f70555p;
            int i6 = i5 != -1 ? i5 + 1 : i4;
            if (i6 >= this.f70461v0.getCount()) {
                return -1;
            }
            if (i6 < i4) {
                i6 = i4;
            }
            int lastVisiblePosition = getLastVisiblePosition();
            ListAdapter adapter = getAdapter();
            while (i6 <= lastVisiblePosition) {
                if (adapter.isEnabled(i6) && getChildAt(i6 - i4).getVisibility() == 0) {
                    return i6;
                }
                i6++;
            }
        } else {
            int childCount = (getChildCount() + i4) - 1;
            int i7 = this.f70555p;
            if (i7 == -1) {
                i7 = getChildCount() + i4;
            }
            int i8 = i7 - 1;
            if (i8 >= 0 && i8 < this.f70461v0.getCount()) {
                if (i8 <= childCount) {
                    childCount = i8;
                }
                ListAdapter adapter2 = getAdapter();
                while (childCount >= i4) {
                    if (adapter2.isEnabled(childCount) && getChildAt(childCount - i4).getVisibility() == 0) {
                        return childCount;
                    }
                    childCount--;
                }
            }
        }
        return -1;
    }

    private View K1(int i2, int i4, boolean z3, int i5, boolean z4) {
        View g4;
        if (!this.f70552m && (g4 = this.B0.g(i2)) != null) {
            a2(g4, i2, i4, z3, i5, z4, true);
            return g4;
        }
        View q02 = q0(i2, this.f70466x1);
        a2(q02, i2, i4, z3, i5, z4, this.f70466x1[0]);
        return q02;
    }

    private void L1(View view, int i2, int i4) {
        int width = view.getWidth();
        N1(view);
        if (view.getMeasuredWidth() == width) {
            return;
        }
        V1(view);
        int measuredWidth = view.getMeasuredWidth() - width;
        while (true) {
            i2++;
            if (i2 >= i4) {
                return;
            }
            getChildAt(i2).offsetLeftAndRight(measuredWidth);
        }
    }

    private void N1(View view) {
        int makeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, -1);
        }
        int i2 = this.H0;
        Rect rect = this.G0;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, rect.top + rect.bottom, layoutParams.height);
        int i4 = layoutParams.width;
        if (i4 > 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(makeMeasureSpec, childMeasureSpec);
    }

    private void O1(View view, int i2, int i4) {
        int makeMeasureSpec;
        AbsHListView.LayoutParams layoutParams = (AbsHListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsHListView.LayoutParams) generateDefaultLayoutParams();
            view.setLayoutParams(layoutParams);
        }
        layoutParams.f70471a = this.f70461v0.getItemViewType(i2);
        layoutParams.f70473c = true;
        Rect rect = this.G0;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i4, rect.top + rect.bottom, ((ViewGroup.LayoutParams) layoutParams).height);
        int i5 = ((ViewGroup.LayoutParams) layoutParams).width;
        if (i5 > 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(makeMeasureSpec, childMeasureSpec);
    }

    private View R1(View view, View view2, int i2, int i4, int i5) {
        View K1;
        View K12;
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int i6 = this.f70555p;
        int D1 = D1(i4, horizontalFadingEdgeLength, i6);
        int E1 = E1(i4, horizontalFadingEdgeLength, i6);
        if (i2 > 0) {
            View K13 = K1(i6 - 1, view.getLeft(), true, this.G0.top, false);
            int i7 = this.f70609u2;
            K1 = K1(i6, K13.getRight() + i7, true, this.G0.top, true);
            if (K1.getRight() > E1) {
                int i8 = -Math.min(Math.min(K1.getLeft() - D1, K1.getRight() - E1), (i5 - i4) / 2);
                K13.offsetLeftAndRight(i8);
                K1.offsetLeftAndRight(i8);
            }
            if (!this.Y0) {
                y1(this.f70555p - 2, K1.getLeft() - i7);
                g1();
                z1(this.f70555p + 1, K1.getRight() + i7);
            } else {
                z1(this.f70555p + 1, K1.getRight() + i7);
                g1();
                y1(this.f70555p - 2, K1.getLeft() - i7);
            }
        } else if (i2 < 0) {
            if (view2 != null) {
                K12 = K1(i6, view2.getLeft(), true, this.G0.top, true);
            } else {
                K12 = K1(i6, view.getLeft(), false, this.G0.top, true);
            }
            K1 = K12;
            if (K1.getLeft() < D1) {
                K1.offsetLeftAndRight(Math.min(Math.min(D1 - K1.getLeft(), E1 - K1.getRight()), (i5 - i4) / 2));
            }
            u1(K1, i6);
        } else {
            int left = view.getLeft();
            K1 = K1(i6, left, true, this.G0.top, true);
            if (left < i4 && K1.getRight() < i4 + 20) {
                K1.offsetLeftAndRight(i4 - K1.getLeft());
            }
            u1(K1, i6);
        }
        return K1;
    }

    private int T1(View view) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (I1(view, getChildAt(i2))) {
                return this.f70540a + i2;
            }
        }
        throw new IllegalArgumentException("newFocus is not a child of any of the children of the list!");
    }

    private void V1(View view) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = this.G0.top;
        int left = view.getLeft();
        view.layout(left, i2, measuredWidth + left, measuredHeight + i2);
    }

    private void W1(View view, ArrayList<c> arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (arrayList.get(i2).f70617a == view) {
                arrayList.remove(i2);
                return;
            }
        }
    }

    private void Z1(int i2) {
        int i4;
        int i5;
        r0(i2);
        int width = getWidth();
        Rect rect = this.G0;
        int i6 = width - rect.right;
        int i7 = rect.left;
        AbsHListView.l lVar = this.B0;
        if (i2 < 0) {
            int childCount = getChildCount();
            View childAt = getChildAt(childCount - 1);
            while (childAt.getRight() < i6 && (this.f70540a + childCount) - 1 < this.f70558s - 1) {
                childAt = e1(childAt, i5);
                childCount++;
            }
            if (childAt.getBottom() < i6) {
                r0(i6 - childAt.getRight());
            }
            View childAt2 = getChildAt(0);
            while (childAt2.getRight() < i7) {
                if (lVar.q(((AbsHListView.LayoutParams) childAt2.getLayoutParams()).f70471a)) {
                    detachViewFromParent(childAt2);
                    lVar.c(childAt2, this.f70540a);
                } else {
                    removeViewInLayout(childAt2);
                }
                childAt2 = getChildAt(0);
                this.f70540a++;
            }
            return;
        }
        View childAt3 = getChildAt(0);
        while (childAt3.getLeft() > i7 && (i4 = this.f70540a) > 0) {
            childAt3 = f1(childAt3, i4);
            this.f70540a--;
        }
        if (childAt3.getLeft() > i7) {
            r0(i7 - childAt3.getLeft());
        }
        int childCount2 = getChildCount() - 1;
        View childAt4 = getChildAt(childCount2);
        while (childAt4.getLeft() > i6) {
            if (lVar.q(((AbsHListView.LayoutParams) childAt4.getLayoutParams()).f70471a)) {
                detachViewFromParent(childAt4);
                lVar.c(childAt4, this.f70540a + childCount2);
            } else {
                removeViewInLayout(childAt4);
            }
            childCount2--;
            childAt4 = getChildAt(childCount2);
        }
    }

    @TargetApi(11)
    private void a2(View view, int i2, int i4, boolean z3, int i5, boolean z4, boolean z5) {
        int makeMeasureSpec;
        SparseArrayCompat<Boolean> sparseArrayCompat;
        boolean z6 = z4 && K0();
        boolean z7 = z6 != view.isSelected();
        int i6 = this.R0;
        boolean z8 = i6 > 0 && i6 < 3 && this.M0 == i2;
        boolean z9 = z8 != view.isPressed();
        boolean z10 = !z5 || z7 || view.isLayoutRequested();
        AbsHListView.LayoutParams layoutParams = (AbsHListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsHListView.LayoutParams) generateDefaultLayoutParams();
        }
        int itemViewType = this.f70461v0.getItemViewType(i2);
        layoutParams.f70471a = itemViewType;
        if ((z5 && !layoutParams.f70473c) || (layoutParams.f70472b && itemViewType == -2)) {
            attachViewToParent(view, z3 ? -1 : 0, layoutParams);
        } else {
            layoutParams.f70473c = false;
            if (itemViewType == -2) {
                layoutParams.f70472b = true;
            }
            addViewInLayout(view, z3 ? -1 : 0, layoutParams, true);
        }
        if (z7) {
            view.setSelected(z6);
        }
        if (z9) {
            view.setPressed(z8);
        }
        if (this.f70445n0 != 0 && (sparseArrayCompat = this.f70453r0) != null) {
            if (view instanceof Checkable) {
                ((Checkable) view).setChecked(sparseArrayCompat.get(i2, Boolean.FALSE).booleanValue());
            } else if (Build.VERSION.SDK_INT >= 11) {
                view.setActivated(sparseArrayCompat.get(i2, Boolean.FALSE).booleanValue());
            }
        }
        if (z10) {
            int i7 = this.H0;
            Rect rect = this.G0;
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i7, rect.top + rect.bottom, ((ViewGroup.LayoutParams) layoutParams).height);
            int i8 = ((ViewGroup.LayoutParams) layoutParams).width;
            if (i8 > 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(makeMeasureSpec, childMeasureSpec);
        } else {
            cleanupLayoutState(view);
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i9 = z3 ? i4 : i4 - measuredWidth;
        if (z10) {
            view.layout(i9, i5, measuredWidth + i9, measuredHeight + i5);
        } else {
            view.offsetLeftAndRight(i9 - view.getLeft());
            view.offsetTopAndBottom(i5 - view.getTop());
        }
        if (this.K0 && !view.isDrawingCacheEnabled()) {
            view.setDrawingCacheEnabled(true);
        }
        if (Build.VERSION.SDK_INT < 11 || !z5 || ((AbsHListView.LayoutParams) view.getLayoutParams()).f70474d == i2) {
            return;
        }
        view.jumpDrawablesToCurrentState();
    }

    private boolean b2() {
        return this.f70540a > 0 || getChildAt(0).getLeft() > getScrollX() + this.G0.left;
    }

    private boolean c2() {
        int childCount = getChildCount();
        return (this.f70540a + childCount) - 1 < this.f70558s - 1 || getChildAt(childCount + (-1)).getRight() < (getScrollX() + getWidth()) - this.G0.right;
    }

    private View e1(View view, int i2) {
        int i4 = i2 + 1;
        View q02 = q0(i4, this.f70466x1);
        a2(q02, i4, view.getRight() + this.f70609u2, true, this.G0.top, false, this.f70466x1[0]);
        return q02;
    }

    private View f1(View view, int i2) {
        int i4 = i2 - 1;
        View q02 = q0(i4, this.f70466x1);
        a2(q02, i4, view.getLeft() - this.f70609u2, false, this.G0.top, false, this.f70466x1[0]);
        return q02;
    }

    private void g1() {
        int childCount = getChildCount();
        if (childCount > 0) {
            int i2 = 0;
            if (!this.Y0) {
                int left = getChildAt(0).getLeft() - this.G0.left;
                if (this.f70540a != 0) {
                    left -= this.f70609u2;
                }
                if (left >= 0) {
                    i2 = left;
                }
            } else {
                int right = getChildAt(childCount - 1).getRight() - (getWidth() - this.G0.right);
                if (this.f70540a + childCount < this.f70558s) {
                    right += this.f70609u2;
                }
                if (right <= 0) {
                    i2 = right;
                }
            }
            if (i2 != 0) {
                r0(-i2);
            }
        }
    }

    private int getArrowScrollPreviewLength() {
        return Math.max(2, getHorizontalFadingEdgeLength());
    }

    private int h1(int i2, int i4) {
        int width = getWidth();
        Rect rect = this.G0;
        int i5 = width - rect.right;
        int i6 = rect.left;
        int childCount = getChildCount();
        if (i2 == 130) {
            int i7 = childCount - 1;
            int i8 = i4 != -1 ? i4 - this.f70540a : i7;
            int i9 = this.f70540a + i8;
            View childAt = getChildAt(i8);
            int arrowScrollPreviewLength = i9 < this.f70558s + (-1) ? i5 - getArrowScrollPreviewLength() : i5;
            if (childAt.getRight() <= arrowScrollPreviewLength) {
                return 0;
            }
            if (i4 == -1 || arrowScrollPreviewLength - childAt.getLeft() < getMaxScrollAmount()) {
                int right = childAt.getRight() - arrowScrollPreviewLength;
                if (this.f70540a + childCount == this.f70558s) {
                    right = Math.min(right, getChildAt(i7).getRight() - i5);
                }
                return Math.min(right, getMaxScrollAmount());
            }
            return 0;
        }
        int i10 = i4 != -1 ? i4 - this.f70540a : 0;
        int i11 = this.f70540a + i10;
        View childAt2 = getChildAt(i10);
        int arrowScrollPreviewLength2 = i11 > 0 ? getArrowScrollPreviewLength() + i6 : i6;
        if (childAt2.getLeft() >= arrowScrollPreviewLength2) {
            return 0;
        }
        if (i4 == -1 || childAt2.getRight() - arrowScrollPreviewLength2 < getMaxScrollAmount()) {
            int left = arrowScrollPreviewLength2 - childAt2.getLeft();
            if (this.f70540a == 0) {
                left = Math.min(left, i6 - getChildAt(0).getLeft());
            }
            return Math.min(left, getMaxScrollAmount());
        }
        return 0;
    }

    private int i1(int i2, View view, int i4) {
        int i5;
        int arrowScrollPreviewLength;
        view.getDrawingRect(this.E2);
        offsetDescendantRectToMyCoords(view, this.E2);
        if (i2 == 33) {
            int i6 = this.E2.left;
            int i7 = this.G0.left;
            if (i6 < i7) {
                i5 = i7 - i6;
                if (i4 > 0) {
                    arrowScrollPreviewLength = getArrowScrollPreviewLength();
                    return i5 + arrowScrollPreviewLength;
                }
                return i5;
            }
            return 0;
        }
        int width = getWidth() - this.G0.right;
        Rect rect = this.E2;
        if (rect.bottom > width) {
            i5 = rect.right - width;
            if (i4 < this.f70558s - 1) {
                arrowScrollPreviewLength = getArrowScrollPreviewLength();
                return i5 + arrowScrollPreviewLength;
            }
            return i5;
        }
        return 0;
    }

    private b k1(int i2) {
        View findNextFocusFromRect;
        int J1;
        View selectedView = getSelectedView();
        if (selectedView != null && selectedView.hasFocus()) {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, selectedView.findFocus(), i2);
        } else {
            if (i2 == 130) {
                int arrowScrollPreviewLength = this.G0.left + (this.f70540a > 0 ? getArrowScrollPreviewLength() : 0);
                if (selectedView != null && selectedView.getLeft() > arrowScrollPreviewLength) {
                    arrowScrollPreviewLength = selectedView.getLeft();
                }
                this.E2.set(arrowScrollPreviewLength, 0, arrowScrollPreviewLength, 0);
            } else {
                int width = (getWidth() - this.G0.right) - ((this.f70540a + getChildCount()) - 1 < this.f70558s ? getArrowScrollPreviewLength() : 0);
                if (selectedView != null && selectedView.getRight() < width) {
                    width = selectedView.getRight();
                }
                this.E2.set(width, 0, width, 0);
            }
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, this.E2, i2);
        }
        if (findNextFocusFromRect != null) {
            int T1 = T1(findNextFocusFromRect);
            int i4 = this.f70555p;
            if (i4 != -1 && T1 != i4 && (J1 = J1(i2)) != -1 && ((i2 == 130 && J1 < T1) || (i2 == 33 && J1 > T1))) {
                return null;
            }
            int i12 = i1(i2, findNextFocusFromRect, T1);
            int maxScrollAmount = getMaxScrollAmount();
            if (i12 < maxScrollAmount) {
                findNextFocusFromRect.requestFocus(i2);
                this.G2.c(T1, i12);
                return this.G2;
            } else if (q1(findNextFocusFromRect) < maxScrollAmount) {
                findNextFocusFromRect.requestFocus(i2);
                this.G2.c(T1, maxScrollAmount);
                return this.G2;
            }
        }
        return null;
    }

    private boolean l1(int i2) {
        View focusedChild;
        if (getChildCount() <= 0) {
            return false;
        }
        View selectedView = getSelectedView();
        int i4 = this.f70555p;
        int J1 = J1(i2);
        int h12 = h1(i2, J1);
        View view = null;
        b k12 = this.D2 ? k1(i2) : null;
        if (k12 != null) {
            J1 = k12.b();
            h12 = k12.a();
        }
        boolean z3 = k12 != null;
        if (J1 != -1) {
            G1(selectedView, i2, J1, k12 != null);
            setSelectedPositionInt(J1);
            setNextSelectedPositionInt(J1);
            selectedView = getSelectedView();
            if (this.D2 && k12 == null && (focusedChild = getFocusedChild()) != null) {
                focusedChild.clearFocus();
            }
            f();
            i4 = J1;
            z3 = true;
        }
        if (h12 > 0) {
            if (i2 != 33) {
                h12 = -h12;
            }
            Z1(h12);
            z3 = true;
        }
        if (this.D2 && k12 == null && selectedView != null && selectedView.hasFocus()) {
            View findFocus = selectedView.findFocus();
            if (!I1(findFocus, this) || q1(findFocus) > 0) {
                findFocus.clearFocus();
            }
        }
        if (J1 != -1 || selectedView == null || I1(selectedView, this)) {
            view = selectedView;
        } else {
            d0();
            this.f70436e1 = -1;
        }
        if (z3) {
            if (view != null) {
                y0(i4, view);
                this.X0 = view.getLeft();
            }
            if (!awakenScrollBars()) {
                invalidate();
            }
            j0();
            return true;
        }
        return false;
    }

    private void m1(ArrayList<c> arrayList) {
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbsHListView.LayoutParams layoutParams = (AbsHListView.LayoutParams) arrayList.get(i2).f70617a.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f70472b = false;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x006e, code lost:
        if (C1(130) != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x009e, code lost:
        if (C1(33) != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00ca, code lost:
        if (C1(130) != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00de, code lost:
        if (C1(33) != false) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0171 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0172  */
    @android.annotation.TargetApi(11)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean n1(int r8, int r9, android.view.KeyEvent r10) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.HListView.n1(int, int, android.view.KeyEvent):boolean");
    }

    private void o1(int i2) {
        if (this.f70540a != 0 || i2 <= 0) {
            return;
        }
        int left = getChildAt(0).getLeft();
        int i4 = this.G0.left;
        int right = (getRight() - getLeft()) - this.G0.right;
        int i5 = left - i4;
        View childAt = getChildAt(i2 - 1);
        int right2 = childAt.getRight();
        int i6 = (this.f70540a + i2) - 1;
        if (i5 > 0) {
            int i7 = this.f70558s;
            if (i6 >= i7 - 1 && right2 <= right) {
                if (i6 == i7 - 1) {
                    g1();
                    return;
                }
                return;
            }
            if (i6 == i7 - 1) {
                i5 = Math.min(i5, right2 - right);
            }
            r0(-i5);
            if (i6 < this.f70558s - 1) {
                z1(i6 + 1, childAt.getRight() + this.f70609u2);
                g1();
            }
        }
    }

    private void p1(int i2) {
        if ((this.f70540a + i2) - 1 != this.f70558s - 1 || i2 <= 0) {
            return;
        }
        int right = ((getRight() - getLeft()) - this.G0.right) - getChildAt(i2 - 1).getRight();
        View childAt = getChildAt(0);
        int left = childAt.getLeft();
        if (right > 0) {
            int i4 = this.f70540a;
            if (i4 > 0 || left < this.G0.top) {
                if (i4 == 0) {
                    right = Math.min(right, this.G0.top - left);
                }
                r0(right);
                int i5 = this.f70540a;
                if (i5 > 0) {
                    y1(i5 - 1, childAt.getLeft() - this.f70609u2);
                    g1();
                }
            }
        }
    }

    private int q1(View view) {
        view.getDrawingRect(this.E2);
        offsetDescendantRectToMyCoords(view, this.E2);
        int right = getRight() - getLeft();
        Rect rect = this.G0;
        int i2 = right - rect.right;
        Rect rect2 = this.E2;
        int i4 = rect2.right;
        int i5 = rect.left;
        if (i4 < i5) {
            return i5 - i4;
        }
        int i6 = rect2.left;
        if (i6 > i2) {
            return i6 - i2;
        }
        return 0;
    }

    private void u1(View view, int i2) {
        int i4 = this.f70609u2;
        if (!this.Y0) {
            y1(i2 - 1, view.getLeft() - i4);
            g1();
            z1(i2 + 1, view.getRight() + i4);
            return;
        }
        z1(i2 + 1, view.getRight() + i4);
        g1();
        y1(i2 - 1, view.getLeft() - i4);
    }

    private View v1(int i2) {
        int min = Math.min(this.f70540a, this.f70555p);
        this.f70540a = min;
        int min2 = Math.min(min, this.f70558s - 1);
        this.f70540a = min2;
        if (min2 < 0) {
            this.f70540a = 0;
        }
        return z1(this.f70540a, i2);
    }

    private View w1(int i2, int i4) {
        int i5 = i4 - i2;
        int A0 = A0();
        View K1 = K1(A0, i2, true, this.G0.top, true);
        this.f70540a = A0;
        int measuredWidth = K1.getMeasuredWidth();
        if (measuredWidth <= i5) {
            K1.offsetLeftAndRight((i5 - measuredWidth) / 2);
        }
        u1(K1, A0);
        if (!this.Y0) {
            p1(getChildCount());
        } else {
            o1(getChildCount());
        }
        return K1;
    }

    private View x1(int i2, int i4, int i5) {
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int i6 = this.f70555p;
        int D1 = D1(i4, horizontalFadingEdgeLength, i6);
        int E1 = E1(i5, horizontalFadingEdgeLength, i6);
        View K1 = K1(i6, i2, true, this.G0.top, true);
        if (K1.getRight() > E1) {
            K1.offsetLeftAndRight(-Math.min(K1.getLeft() - D1, K1.getRight() - E1));
        } else if (K1.getLeft() < D1) {
            K1.offsetLeftAndRight(Math.min(D1 - K1.getLeft(), E1 - K1.getRight()));
        }
        u1(K1, i6);
        if (!this.Y0) {
            p1(getChildCount());
        } else {
            o1(getChildCount());
        }
        return K1;
    }

    private View y1(int i2, int i4) {
        View view = null;
        int i5 = i4;
        while (true) {
            if (i5 <= 0 || i2 < 0) {
                break;
            }
            boolean z3 = i2 == this.f70555p;
            View K1 = K1(i2, i5, false, this.G0.top, z3);
            i5 = K1.getLeft() - this.f70609u2;
            if (z3) {
                view = K1;
            }
            i2--;
        }
        int i6 = i2 + 1;
        this.f70540a = i6;
        J0(i6, (getChildCount() + i6) - 1);
        return view;
    }

    private View z1(int i2, int i4) {
        int right = getRight() - getLeft();
        View view = null;
        int i5 = i4;
        while (true) {
            if (i5 >= right || i2 >= this.f70558s) {
                break;
            }
            boolean z3 = i2 == this.f70555p;
            View K1 = K1(i2, i5, true, this.G0.top, z3);
            i5 = this.f70609u2 + K1.getRight();
            if (z3) {
                view = K1;
            }
            i2++;
        }
        int i6 = this.f70540a;
        J0(i6, (getChildCount() + i6) - 1);
        return view;
    }

    boolean C1(int i2) {
        boolean z3 = false;
        if (i2 == 33) {
            if (this.f70555p != 0) {
                int o3 = o(0, true);
                if (o3 >= 0) {
                    this.f70457t0 = 1;
                    setSelectionInt(o3);
                    j0();
                }
                z3 = true;
            }
        } else if (i2 == 130) {
            int i4 = this.f70555p;
            int i5 = this.f70558s;
            if (i4 < i5 - 1) {
                int o4 = o(i5 - 1, true);
                if (o4 >= 0) {
                    this.f70457t0 = 3;
                    setSelectionInt(o4);
                    j0();
                }
                z3 = true;
            }
        }
        if (z3 && !awakenScrollBars()) {
            awakenScrollBars();
            invalidate();
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.AbsHListView
    public void E0() {
        m1(this.f70606r2);
        m1(this.f70607s2);
        super.E0();
        this.f70457t0 = 0;
    }

    public int[] M1(View view) {
        N1(view);
        return new int[]{view.getMeasuredWidth(), view.getMeasuredHeight()};
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public void O0(int i2) {
        super.O0(i2);
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public void P0(int i2) {
        super.P0(i2);
    }

    final int P1(int i2, int i4, int i5, int i6, int i7) {
        ListAdapter listAdapter = this.f70461v0;
        if (listAdapter == null) {
            Rect rect = this.G0;
            return rect.left + rect.right;
        }
        Rect rect2 = this.G0;
        int i8 = rect2.left + rect2.right;
        int i9 = 0;
        int i10 = (this.f70609u2 <= 0 || this.f70608t2 == null) ? 0 : 0;
        if (i5 == -1) {
            i5 = listAdapter.getCount() - 1;
        }
        AbsHListView.l lVar = this.B0;
        boolean U1 = U1();
        boolean[] zArr = this.f70466x1;
        while (i4 <= i5) {
            View q02 = q0(i4, zArr);
            O1(q02, i4, i2);
            if (i4 > 0) {
                i8 += i10;
            }
            if (U1 && lVar.q(((AbsHListView.LayoutParams) q02.getLayoutParams()).f70471a)) {
                lVar.c(q02, -1);
            }
            i8 += q02.getMeasuredWidth();
            if (i8 >= i6) {
                return (i7 < 0 || i4 <= i7 || i9 <= 0 || i8 == i6) ? i6 : i9;
            }
            if (i7 >= 0 && i4 >= i7) {
                i9 = i8;
            }
            i4++;
        }
        return i8;
    }

    final int[] Q1(int i2, int i4, int i5, int i6, int i7, int i8) {
        ListAdapter listAdapter = this.f70461v0;
        if (listAdapter == null) {
            Rect rect = this.G0;
            return new int[]{rect.left + rect.right, rect.top + rect.bottom};
        }
        Rect rect2 = this.G0;
        int i9 = rect2.left + rect2.right;
        int i10 = rect2.top + rect2.bottom;
        int i11 = (this.f70609u2 <= 0 || this.f70608t2 == null) ? 0 : 0;
        int i12 = i5;
        if (i12 == -1) {
            i12 = listAdapter.getCount() - 1;
        }
        AbsHListView.l lVar = this.B0;
        boolean U1 = U1();
        boolean[] zArr = this.f70466x1;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = i4; i15 <= i12; i15++) {
            View q02 = q0(i15, zArr);
            O1(q02, i15, i2);
            if (U1 && lVar.q(((AbsHListView.LayoutParams) q02.getLayoutParams()).f70471a)) {
                lVar.c(q02, -1);
            }
            i13 = Math.max(i13, q02.getMeasuredWidth() + i11);
            i14 = Math.max(i14, q02.getMeasuredHeight());
        }
        return new int[]{Math.min(i9 + i13, i6), Math.min(i10 + i14, i7)};
    }

    boolean S1(int i2) {
        int i4;
        boolean z3;
        int o3;
        if (i2 == 33) {
            i4 = Math.max(0, (this.f70555p - getChildCount()) - 1);
        } else if (i2 == 130) {
            i4 = Math.min(this.f70558s - 1, (this.f70555p + getChildCount()) - 1);
            z3 = true;
            if (i4 >= 0 || (o3 = o(i4, z3)) < 0) {
                return false;
            }
            this.f70457t0 = 4;
            this.f70541b = getPaddingLeft() + getHorizontalFadingEdgeLength();
            if (z3 && o3 > this.f70558s - getChildCount()) {
                this.f70457t0 = 3;
            }
            if (!z3 && o3 < getChildCount()) {
                this.f70457t0 = 1;
            }
            setSelectionInt(o3);
            j0();
            if (!awakenScrollBars()) {
                invalidate();
            }
            return true;
        } else {
            i4 = -1;
        }
        z3 = false;
        if (i4 >= 0) {
        }
        return false;
    }

    @ViewDebug.ExportedProperty(category = "list")
    protected boolean U1() {
        return true;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    protected void X(boolean z3) {
        int childCount = getChildCount();
        if (z3) {
            z1(this.f70540a + childCount, childCount > 0 ? this.f70609u2 + getChildAt(childCount - 1).getRight() : 0);
            p1(getChildCount());
            return;
        }
        y1(this.f70540a - 1, childCount > 0 ? getChildAt(0).getLeft() - this.f70609u2 : getWidth() - 0);
        o1(getChildCount());
    }

    public boolean X1(View view) {
        boolean z3 = false;
        if (this.f70607s2.size() > 0) {
            ListAdapter listAdapter = this.f70461v0;
            if (listAdapter != null && ((it.sephiroth.android.library.widget.b) listAdapter).d(view)) {
                AbsHListView.c cVar = this.f70459u0;
                if (cVar != null) {
                    cVar.onChanged();
                }
                z3 = true;
            }
            W1(view, this.f70607s2);
        }
        return z3;
    }

    public boolean Y1(View view) {
        boolean z3 = false;
        if (this.f70606r2.size() > 0) {
            ListAdapter listAdapter = this.f70461v0;
            if (listAdapter != null && ((it.sephiroth.android.library.widget.b) listAdapter).e(view)) {
                AbsHListView.c cVar = this.f70459u0;
                if (cVar != null) {
                    cVar.onChanged();
                }
                z3 = true;
            }
            W1(view, this.f70606r2);
        }
        return z3;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    protected int Z(int i2) {
        int childCount = getChildCount();
        if (childCount > 0) {
            if (this.Y0) {
                for (int i4 = childCount - 1; i4 >= 0; i4--) {
                    if (i2 >= getChildAt(i4).getLeft()) {
                        return this.f70540a + i4;
                    }
                }
                return -1;
            }
            for (int i5 = 0; i5 < childCount; i5++) {
                if (i2 <= getChildAt(i5).getRight()) {
                    return this.f70540a + i5;
                }
            }
            return -1;
        }
        return -1;
    }

    public void a1(View view) {
        b1(view, null, true);
    }

    public void b1(View view, Object obj, boolean z3) {
        AbsHListView.c cVar;
        c cVar2 = new c();
        cVar2.f70617a = view;
        cVar2.f70618b = obj;
        cVar2.f70619c = z3;
        this.f70607s2.add(cVar2);
        if (this.f70461v0 == null || (cVar = this.f70459u0) == null) {
            return;
        }
        cVar.onChanged();
    }

    public void c1(View view) {
        d1(view, null, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.ViewGroup
    public boolean canAnimate() {
        return super.canAnimate() && this.f70558s > 0;
    }

    public void d1(View view, Object obj, boolean z3) {
        AbsHListView.c cVar;
        ListAdapter listAdapter = this.f70461v0;
        if (listAdapter != null && !(listAdapter instanceof it.sephiroth.android.library.widget.b)) {
            throw new IllegalStateException("Cannot add header view to list -- setAdapter has already been called.");
        }
        c cVar2 = new c();
        cVar2.f70617a = view;
        cVar2.f70618b = obj;
        cVar2.f70619c = z3;
        this.f70606r2.add(cVar2);
        if (this.f70461v0 == null || (cVar = this.f70459u0) == null) {
            return;
        }
        cVar.onChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01be, code lost:
        if (r8.isEnabled(r3 + 1) == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0117, code lost:
        if (r8.isEnabled(r7 + 1) == false) goto L65;
     */
    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dispatchDraw(android.graphics.Canvas r25) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.HListView.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        return (dispatchKeyEvent || getFocusedChild() == null || keyEvent.getAction() != 0) ? dispatchKeyEvent : onKeyDown(keyEvent.getKeyCode(), keyEvent);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j4) {
        boolean drawChild = super.drawChild(canvas, view, j4);
        if (this.L0) {
            this.L0 = false;
        }
        return drawChild;
    }

    @Deprecated
    public long[] getCheckItemIds() {
        SparseArrayCompat<Boolean> sparseArrayCompat;
        ListAdapter listAdapter = this.f70461v0;
        if (listAdapter != null && listAdapter.hasStableIds()) {
            return getCheckedItemIds();
        }
        if (this.f70445n0 == 0 || (sparseArrayCompat = this.f70453r0) == null || this.f70461v0 == null) {
            return new long[0];
        }
        int size = sparseArrayCompat.size();
        long[] jArr = new long[size];
        ListAdapter listAdapter2 = this.f70461v0;
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            if (sparseArrayCompat.valueAt(i4).booleanValue()) {
                jArr[i2] = listAdapter2.getItemId(sparseArrayCompat.keyAt(i4));
                i2++;
            }
        }
        if (i2 == size) {
            return jArr;
        }
        long[] jArr2 = new long[i2];
        System.arraycopy(jArr, 0, jArr2, 0, i2);
        return jArr2;
    }

    public Drawable getDivider() {
        return this.f70608t2;
    }

    public int getDividerWidth() {
        return this.f70609u2;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public int getFooterViewsCount() {
        return this.f70607s2.size();
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public int getHeaderViewsCount() {
        return this.f70606r2.size();
    }

    public boolean getItemsCanFocus() {
        return this.D2;
    }

    public int getMaxScrollAmount() {
        return (int) ((getRight() - getLeft()) * K2);
    }

    public Drawable getOverscrollFooter() {
        return this.f70612x2;
    }

    public Drawable getOverscrollHeader() {
        return this.f70611w2;
    }

    @Override // android.view.View
    public boolean isOpaque() {
        boolean z3 = (this.L0 && this.f70613y2 && this.f70614z2) || super.isOpaque();
        if (z3) {
            Rect rect = this.G0;
            int paddingLeft = rect != null ? rect.left : getPaddingLeft();
            View childAt = getChildAt(0);
            if (childAt != null && childAt.getLeft() <= paddingLeft) {
                int width = getWidth();
                Rect rect2 = this.G0;
                int paddingRight = width - (rect2 != null ? rect2.right : getPaddingRight());
                View childAt2 = getChildAt(getChildCount() - 1);
                if (childAt2 == null || childAt2.getRight() < paddingRight) {
                }
            }
            return false;
        }
        return z3;
    }

    boolean j1(int i2) {
        try {
            this.f70548i = true;
            boolean l12 = l1(i2);
            if (l12) {
                playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
            }
            return l12;
        } finally {
            this.f70548i = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.AdapterView
    public int o(int i2, boolean z3) {
        int min;
        ListAdapter listAdapter = this.f70461v0;
        if (listAdapter != null && !isInTouchMode()) {
            int count = listAdapter.getCount();
            if (!this.C2) {
                if (z3) {
                    min = Math.max(0, i2);
                    while (min < count && !listAdapter.isEnabled(min)) {
                        min++;
                    }
                } else {
                    min = Math.min(i2, count - 1);
                    while (min >= 0 && !listAdapter.isEnabled(min)) {
                        min--;
                    }
                }
                if (min < 0 || min >= count) {
                    return -1;
                }
                return min;
            } else if (i2 >= 0 && i2 < count) {
                return i2;
            }
        }
        return -1;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        if (childCount > 0) {
            for (int i2 = 0; i2 < childCount; i2++) {
                c1(getChildAt(i2));
            }
            removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    public void onFocusChanged(boolean z3, int i2, Rect rect) {
        super.onFocusChanged(z3, i2, rect);
        ListAdapter listAdapter = this.f70461v0;
        int i4 = 0;
        int i5 = -1;
        if (listAdapter != null && z3 && rect != null) {
            rect.offset(getScrollX(), getScrollY());
            if (listAdapter.getCount() < getChildCount() + this.f70540a) {
                this.f70457t0 = 0;
                p0();
            }
            Rect rect2 = this.E2;
            int childCount = getChildCount();
            int i6 = this.f70540a;
            int i7 = 0;
            int i8 = -1;
            int i9 = Integer.MAX_VALUE;
            while (i4 < childCount) {
                if (listAdapter.isEnabled(i6 + i4)) {
                    View childAt = getChildAt(i4);
                    childAt.getDrawingRect(rect2);
                    offsetDescendantRectToMyCoords(childAt, rect2);
                    int c02 = AbsHListView.c0(rect, rect2, i2);
                    if (c02 < i9) {
                        i7 = childAt.getLeft();
                        i8 = i4;
                        i9 = c02;
                    }
                }
                i4++;
            }
            i4 = i7;
            i5 = i8;
        }
        if (i5 >= 0) {
            setSelectionFromLeft(i5 + this.f70540a, i4);
        } else {
            requestLayout();
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(HListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView, android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(HListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return n1(i2, 1, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i4, KeyEvent keyEvent) {
        return n1(i2, i4, keyEvent);
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        return n1(i2, 1, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    @TargetApi(11)
    public void onMeasure(int i2, int i4) {
        int i5;
        int i6;
        int i7;
        super.onMeasure(i2, i4);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i4);
        ListAdapter listAdapter = this.f70461v0;
        int count = listAdapter == null ? 0 : listAdapter.getCount();
        this.f70558s = count;
        if (count <= 0 || !(mode == 0 || mode2 == 0)) {
            i5 = 0;
            i6 = 0;
        } else {
            View q02 = q0(0, this.f70466x1);
            O1(q02, 0, i4);
            int measuredWidth = q02.getMeasuredWidth();
            int measuredHeight = q02.getMeasuredHeight();
            r3 = Build.VERSION.SDK_INT >= 11 ? ViewGroup.combineMeasuredStates(0, q02.getMeasuredState()) : 0;
            if (U1() && this.B0.q(((AbsHListView.LayoutParams) q02.getLayoutParams()).f70471a)) {
                this.B0.c(q02, -1);
            }
            i5 = r3;
            i6 = measuredWidth;
            r3 = measuredHeight;
        }
        if (mode2 == 0) {
            Rect rect = this.G0;
            size2 = rect.top + rect.bottom + r3 + getHorizontalScrollbarHeight();
        } else if (mode2 == Integer.MIN_VALUE && this.f70558s > 0 && (i7 = this.f70610v2) > -1) {
            size2 = Q1(i4, i7, i7, size, size2, -1)[1];
        } else if (Build.VERSION.SDK_INT >= 11) {
            size2 |= (-16777216) & i5;
        }
        if (mode == 0) {
            Rect rect2 = this.G0;
            size = (getHorizontalFadingEdgeLength() * 2) + rect2.left + rect2.right + i6;
        }
        int i8 = size;
        if (mode == Integer.MIN_VALUE) {
            i8 = P1(i4, 0, -1, i8, -1);
        }
        setMeasuredDimension(i8, size2);
        this.H0 = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    public void onSizeChanged(int i2, int i4, int i5, int i6) {
        View focusedChild;
        if (getChildCount() > 0 && (focusedChild = getFocusedChild()) != null) {
            int indexOfChild = this.f70540a + indexOfChild(focusedChild);
            int left = focusedChild.getLeft() - Math.max(0, focusedChild.getRight() - (i2 - getPaddingLeft()));
            if (this.H2 == null) {
                this.H2 = new d();
            }
            post(this.H2.a(indexOfChild, left));
        }
        super.onSizeChanged(i2, i4, i5, i6);
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.I2.onTouchEvent(motionEvent)) {
            getParent().getParent().requestDisallowInterceptTouchEvent(false);
            try {
                if (getParent().getParent() instanceof MyInnerScrollView) {
                    ((MyInnerScrollView) getParent().getParent()).getParentScrollView().setIsInnerScroll(false);
                    return true;
                }
                return true;
            } catch (Exception e4) {
                e4.printStackTrace();
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01b1, code lost:
        r0 = getFocusedChild();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01b5, code lost:
        if (r0 == null) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01b7, code lost:
        r0.clearFocus();
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01ba, code lost:
        y0(-1, r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a A[Catch: all -> 0x026c, TryCatch #0 {all -> 0x026c, blocks: (B:5:0x000a, B:7:0x0014, B:11:0x001f, B:20:0x0046, B:23:0x004f, B:25:0x0055, B:27:0x005d, B:29:0x0062, B:36:0x0086, B:38:0x008a, B:39:0x008d, B:41:0x0091, B:45:0x009c, B:47:0x00a4, B:51:0x00b2, B:53:0x00c3, B:56:0x00cb, B:63:0x00de, B:65:0x00e4, B:66:0x00ec, B:68:0x00f1, B:78:0x013b, B:95:0x0187, B:97:0x018c, B:99:0x0191, B:101:0x0197, B:105:0x01a1, B:112:0x01b1, B:114:0x01b7, B:115:0x01ba, B:118:0x01cb, B:132:0x01ff, B:134:0x0205, B:135:0x0208, B:137:0x0211, B:138:0x0217, B:140:0x0226, B:141:0x0229, B:116:0x01be, B:107:0x01a7, B:117:0x01c8, B:119:0x01d2, B:123:0x01d9, B:125:0x01e4, B:127:0x01f2, B:130:0x01fa, B:126:0x01ea, B:79:0x0148, B:80:0x015b, B:82:0x015f, B:87:0x016a, B:86:0x0166, B:88:0x016f, B:93:0x017c, B:92:0x0178, B:94:0x0181, B:69:0x00f4, B:70:0x00fc, B:71:0x0106, B:72:0x0112, B:74:0x0120, B:75:0x0129, B:76:0x012e, B:60:0x00d5, B:62:0x00db, B:52:0x00c0, B:145:0x0232, B:146:0x026b, B:30:0x0072, B:33:0x007b), top: B:152:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0091 A[Catch: all -> 0x026c, TRY_LEAVE, TryCatch #0 {all -> 0x026c, blocks: (B:5:0x000a, B:7:0x0014, B:11:0x001f, B:20:0x0046, B:23:0x004f, B:25:0x0055, B:27:0x005d, B:29:0x0062, B:36:0x0086, B:38:0x008a, B:39:0x008d, B:41:0x0091, B:45:0x009c, B:47:0x00a4, B:51:0x00b2, B:53:0x00c3, B:56:0x00cb, B:63:0x00de, B:65:0x00e4, B:66:0x00ec, B:68:0x00f1, B:78:0x013b, B:95:0x0187, B:97:0x018c, B:99:0x0191, B:101:0x0197, B:105:0x01a1, B:112:0x01b1, B:114:0x01b7, B:115:0x01ba, B:118:0x01cb, B:132:0x01ff, B:134:0x0205, B:135:0x0208, B:137:0x0211, B:138:0x0217, B:140:0x0226, B:141:0x0229, B:116:0x01be, B:107:0x01a7, B:117:0x01c8, B:119:0x01d2, B:123:0x01d9, B:125:0x01e4, B:127:0x01f2, B:130:0x01fa, B:126:0x01ea, B:79:0x0148, B:80:0x015b, B:82:0x015f, B:87:0x016a, B:86:0x0166, B:88:0x016f, B:93:0x017c, B:92:0x0178, B:94:0x0181, B:69:0x00f4, B:70:0x00fc, B:71:0x0106, B:72:0x0112, B:74:0x0120, B:75:0x0129, B:76:0x012e, B:60:0x00d5, B:62:0x00db, B:52:0x00c0, B:145:0x0232, B:146:0x026b, B:30:0x0072, B:33:0x007b), top: B:152:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009c A[Catch: all -> 0x026c, TRY_ENTER, TryCatch #0 {all -> 0x026c, blocks: (B:5:0x000a, B:7:0x0014, B:11:0x001f, B:20:0x0046, B:23:0x004f, B:25:0x0055, B:27:0x005d, B:29:0x0062, B:36:0x0086, B:38:0x008a, B:39:0x008d, B:41:0x0091, B:45:0x009c, B:47:0x00a4, B:51:0x00b2, B:53:0x00c3, B:56:0x00cb, B:63:0x00de, B:65:0x00e4, B:66:0x00ec, B:68:0x00f1, B:78:0x013b, B:95:0x0187, B:97:0x018c, B:99:0x0191, B:101:0x0197, B:105:0x01a1, B:112:0x01b1, B:114:0x01b7, B:115:0x01ba, B:118:0x01cb, B:132:0x01ff, B:134:0x0205, B:135:0x0208, B:137:0x0211, B:138:0x0217, B:140:0x0226, B:141:0x0229, B:116:0x01be, B:107:0x01a7, B:117:0x01c8, B:119:0x01d2, B:123:0x01d9, B:125:0x01e4, B:127:0x01f2, B:130:0x01fa, B:126:0x01ea, B:79:0x0148, B:80:0x015b, B:82:0x015f, B:87:0x016a, B:86:0x0166, B:88:0x016f, B:93:0x017c, B:92:0x0178, B:94:0x0181, B:69:0x00f4, B:70:0x00fc, B:71:0x0106, B:72:0x0112, B:74:0x0120, B:75:0x0129, B:76:0x012e, B:60:0x00d5, B:62:0x00db, B:52:0x00c0, B:145:0x0232, B:146:0x026b, B:30:0x0072, B:33:0x007b), top: B:152:0x000a }] */
    @Override // it.sephiroth.android.library.widget.AbsHListView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void p0() {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.HListView.p0():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r1(Canvas canvas, Rect rect, int i2) {
        Drawable drawable = this.f70608t2;
        drawable.setBounds(rect);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z3) {
        int i2;
        int i4;
        int i5;
        int i6 = rect.left;
        rect.offset(view.getLeft(), view.getTop());
        rect.offset(-view.getScrollX(), -view.getScrollY());
        int width = getWidth();
        int scrollX = getScrollX();
        int i7 = scrollX + width;
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        if (b2() && (this.f70555p > 0 || i6 > horizontalFadingEdgeLength)) {
            scrollX += horizontalFadingEdgeLength;
        }
        int right = getChildAt(getChildCount() - 1).getRight();
        if (c2() && (this.f70555p < this.f70558s - 1 || rect.right < right - horizontalFadingEdgeLength)) {
            i7 -= horizontalFadingEdgeLength;
        }
        int i8 = rect.right;
        if (i8 > i7 && rect.left > scrollX) {
            if (rect.width() > width) {
                i5 = rect.left - scrollX;
            } else {
                i5 = rect.right - i7;
            }
            i2 = Math.min(i5 + 0, right - i7);
        } else if (rect.left >= scrollX || i8 >= i7) {
            i2 = 0;
        } else {
            if (rect.width() > width) {
                i4 = 0 - (i7 - rect.right);
            } else {
                i4 = 0 - (scrollX - rect.left);
            }
            i2 = Math.max(i4, getChildAt(0).getLeft() - scrollX);
        }
        boolean z4 = i2 != 0;
        if (z4) {
            Z1(-i2);
            y0(-1, view);
            this.X0 = view.getTop();
            invalidate();
        }
        return z4;
    }

    void s1(Canvas canvas, Drawable drawable, Rect rect) {
        int minimumWidth = drawable.getMinimumWidth();
        canvas.save();
        canvas.clipRect(rect);
        int i2 = rect.right;
        int i4 = rect.left;
        if (i2 - i4 < minimumWidth) {
            rect.right = i4 + minimumWidth;
        }
        drawable.setBounds(rect);
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public void setCacheColorHint(int i2) {
        boolean z3 = (i2 >>> 24) == 255;
        this.f70613y2 = z3;
        if (z3) {
            if (this.F2 == null) {
                this.F2 = new Paint();
            }
            this.F2.setColor(i2);
        }
        super.setCacheColorHint(i2);
    }

    public void setDivider(Drawable drawable) {
        boolean z3 = false;
        if (drawable != null) {
            this.f70609u2 = drawable.getIntrinsicWidth();
        } else {
            this.f70609u2 = 0;
        }
        this.f70608t2 = drawable;
        this.f70614z2 = (drawable == null || drawable.getOpacity() == -1) ? true : true;
        requestLayout();
        invalidate();
    }

    public void setDividerWidth(int i2) {
        this.f70609u2 = i2;
        requestLayout();
        invalidate();
    }

    public void setFooterDividersEnabled(boolean z3) {
        this.B2 = z3;
        invalidate();
    }

    public void setHeaderDividersEnabled(boolean z3) {
        this.A2 = z3;
        invalidate();
    }

    public void setItemsCanFocus(boolean z3) {
        this.D2 = z3;
        if (z3) {
            return;
        }
        setDescendantFocusability(393216);
    }

    public void setOverscrollFooter(Drawable drawable) {
        this.f70612x2 = drawable;
        invalidate();
    }

    public void setOverscrollHeader(Drawable drawable) {
        this.f70611w2 = drawable;
        if (getScrollX() < 0) {
            invalidate();
        }
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    public void setSelection(int i2) {
        setSelectionFromLeft(i2, 0);
    }

    public void setSelectionAfterHeaderView() {
        int size = this.f70606r2.size();
        if (size > 0) {
            this.f70553n = 0;
        } else if (this.f70461v0 != null) {
            setSelection(size);
        } else {
            this.f70553n = size;
            this.f70457t0 = 2;
        }
    }

    public void setSelectionFromLeft(int i2, int i4) {
        if (this.f70461v0 == null) {
            return;
        }
        if (!isInTouchMode()) {
            i2 = o(i2, true);
            if (i2 >= 0) {
                setNextSelectedPositionInt(i2);
            }
        } else {
            this.f70436e1 = i2;
        }
        if (i2 >= 0) {
            this.f70457t0 = 4;
            this.f70541b = this.G0.left + i4;
            if (this.f70545f) {
                this.f70542c = i2;
                this.f70543d = this.f70461v0.getItemId(i2);
            }
            AbsHListView.k kVar = this.W0;
            if (kVar != null) {
                kVar.f();
            }
            requestLayout();
        }
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public void setSelectionInt(int i2) {
        setNextSelectedPositionInt(i2);
        int i4 = this.f70555p;
        boolean z3 = true;
        if (i4 < 0 || (i2 != i4 - 1 && i2 != i4 + 1)) {
            z3 = false;
        }
        AbsHListView.k kVar = this.W0;
        if (kVar != null) {
            kVar.f();
        }
        p0();
        if (z3) {
            awakenScrollBars();
        }
    }

    void t1(Canvas canvas, Drawable drawable, Rect rect) {
        int minimumWidth = drawable.getMinimumWidth();
        canvas.save();
        canvas.clipRect(rect);
        int i2 = rect.right;
        if (i2 - rect.left < minimumWidth) {
            rect.left = i2 - minimumWidth;
        }
        drawable.setBounds(rect);
        drawable.draw(canvas);
        canvas.restore();
    }

    public HListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.hlv_listViewStyle);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // it.sephiroth.android.library.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.f70461v0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        int o3;
        AbsHListView.c cVar;
        ListAdapter listAdapter2 = this.f70461v0;
        if (listAdapter2 != null && (cVar = this.f70459u0) != null) {
            listAdapter2.unregisterDataSetObserver(cVar);
        }
        E0();
        this.B0.d();
        if (this.f70606r2.size() <= 0 && this.f70607s2.size() <= 0) {
            this.f70461v0 = listAdapter;
        } else {
            this.f70461v0 = new it.sephiroth.android.library.widget.b(this.f70606r2, this.f70607s2, listAdapter);
        }
        this.f70561v = -1;
        this.f70562w = Long.MIN_VALUE;
        super.setAdapter(listAdapter);
        ListAdapter listAdapter3 = this.f70461v0;
        if (listAdapter3 != null) {
            this.C2 = listAdapter3.areAllItemsEnabled();
            this.f70559t = this.f70558s;
            this.f70558s = this.f70461v0.getCount();
            e();
            AbsHListView.c cVar2 = new AbsHListView.c();
            this.f70459u0 = cVar2;
            this.f70461v0.registerDataSetObserver(cVar2);
            this.B0.p(this.f70461v0.getViewTypeCount());
            if (this.Y0) {
                o3 = o(this.f70558s - 1, false);
            } else {
                o3 = o(0, true);
            }
            setSelectedPositionInt(o3);
            setNextSelectedPositionInt(o3);
            if (this.f70558s == 0) {
                f();
            }
        } else {
            this.C2 = true;
            e();
            f();
        }
        requestLayout();
    }

    public HListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        boolean z3;
        this.f70606r2 = new ArrayList<>();
        this.f70607s2 = new ArrayList<>();
        boolean z4 = true;
        this.C2 = true;
        int i4 = 0;
        this.D2 = false;
        this.E2 = new Rect();
        CharSequence[] charSequenceArr = null;
        this.G2 = new b();
        this.I2 = new GestureDetector(new e());
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.HListView, i2, 0);
        int i5 = -1;
        if (obtainStyledAttributes != null) {
            charSequenceArr = obtainStyledAttributes.getTextArray(0);
            drawable = obtainStyledAttributes.getDrawable(1);
            drawable2 = obtainStyledAttributes.getDrawable(7);
            drawable3 = obtainStyledAttributes.getDrawable(6);
            i4 = obtainStyledAttributes.getDimensionPixelSize(2, 0);
            boolean z5 = obtainStyledAttributes.getBoolean(4, true);
            boolean z6 = obtainStyledAttributes.getBoolean(3, true);
            i5 = obtainStyledAttributes.getInteger(5, -1);
            obtainStyledAttributes.recycle();
            z3 = z6;
            z4 = z5;
        } else {
            drawable = null;
            drawable2 = null;
            drawable3 = null;
            z3 = true;
        }
        if (charSequenceArr != null) {
            setAdapter((ListAdapter) new ArrayAdapter(context, 17367043, charSequenceArr));
        }
        if (drawable != null) {
            setDivider(drawable);
        }
        if (drawable2 != null) {
            setOverscrollHeader(drawable2);
        }
        if (drawable3 != null) {
            setOverscrollFooter(drawable3);
        }
        if (i4 != 0) {
            setDividerWidth(i4);
        }
        this.A2 = z4;
        this.B2 = z3;
        this.f70610v2 = i5;
    }
}

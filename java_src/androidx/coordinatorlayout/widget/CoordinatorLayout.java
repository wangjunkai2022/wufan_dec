package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.R;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.join.mgps.Util.g0;
import com.uc.crashsdk.export.LogType;
import external.org.apache.commons.lang3.d;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {
    static final int A = 0;
    static final int B = 1;
    static final int C = 2;
    static final Comparator<View> D;
    private static final Pools.Pool<Rect> E;

    /* renamed from: u  reason: collision with root package name */
    static final String f3667u = "CoordinatorLayout";

    /* renamed from: v  reason: collision with root package name */
    static final String f3668v;

    /* renamed from: w  reason: collision with root package name */
    private static final int f3669w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static final int f3670x = 1;

    /* renamed from: y  reason: collision with root package name */
    static final Class<?>[] f3671y;

    /* renamed from: z  reason: collision with root package name */
    static final ThreadLocal<Map<String, Constructor<Behavior>>> f3672z;

    /* renamed from: a  reason: collision with root package name */
    private final List<View> f3673a;

    /* renamed from: b  reason: collision with root package name */
    private final DirectedAcyclicGraph<View> f3674b;

    /* renamed from: c  reason: collision with root package name */
    private final List<View> f3675c;

    /* renamed from: d  reason: collision with root package name */
    private final List<View> f3676d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f3677e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f3678f;

    /* renamed from: g  reason: collision with root package name */
    private final int[] f3679g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f3680h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f3681i;

    /* renamed from: j  reason: collision with root package name */
    private int[] f3682j;

    /* renamed from: k  reason: collision with root package name */
    private View f3683k;

    /* renamed from: l  reason: collision with root package name */
    private View f3684l;

    /* renamed from: m  reason: collision with root package name */
    private OnPreDrawListener f3685m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f3686n;

    /* renamed from: o  reason: collision with root package name */
    private WindowInsetsCompat f3687o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f3688p;

    /* renamed from: q  reason: collision with root package name */
    private Drawable f3689q;

    /* renamed from: r  reason: collision with root package name */
    ViewGroup.OnHierarchyChangeListener f3690r;

    /* renamed from: s  reason: collision with root package name */
    private OnApplyWindowInsetsListener f3691s;

    /* renamed from: t  reason: collision with root package name */
    private final NestedScrollingParentHelper f3692t;

    /* loaded from: classes.dex */
    public interface AttachedBehavior {
        @NonNull
        Behavior getBehavior();
    }

    /* loaded from: classes.dex */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        @Nullable
        public static Object getTag(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f3707m;
        }

        public static void setTag(@NonNull View view, @Nullable Object obj) {
            ((LayoutParams) view.getLayoutParams()).f3707m = obj;
        }

        public boolean blocksInteractionBelow(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3) {
            return getScrimOpacity(coordinatorLayout, v3) > 0.0f;
        }

        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull Rect rect) {
            return false;
        }

        @ColorInt
        public int getScrimColor(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3) {
            return -16777216;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float getScrimOpacity(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3) {
            return 0.0f;
        }

        public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view) {
            return false;
        }

        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        public void onAttachedToLayoutParams(@NonNull LayoutParams layoutParams) {
        }

        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view) {
            return false;
        }

        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, int i2) {
            return false;
        }

        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, int i2, int i4, int i5, int i6) {
            return false;
        }

        public boolean onNestedFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, float f4, float f5, boolean z3) {
            return false;
        }

        public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, float f4, float f5) {
            return false;
        }

        @Deprecated
        public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, int i2, int i4, @NonNull int[] iArr) {
        }

        public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, int i2, int i4, @NonNull int[] iArr, int i5) {
            if (i5 == 0) {
                onNestedPreScroll(coordinatorLayout, v3, view, i2, i4, iArr);
            }
        }

        @Deprecated
        public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, int i2, int i4, int i5, int i6) {
        }

        @Deprecated
        public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, int i2, int i4, int i5, int i6, int i7) {
            if (i7 == 0) {
                onNestedScroll(coordinatorLayout, v3, view, i2, i4, i5, i6);
            }
        }

        @Deprecated
        public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, @NonNull View view2, int i2) {
        }

        public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, @NonNull View view2, int i2, int i4) {
            if (i4 == 0) {
                onNestedScrollAccepted(coordinatorLayout, v3, view, view2, i2);
            }
        }

        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull Rect rect, boolean z3) {
            return false;
        }

        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull Parcelable parcelable) {
        }

        @Nullable
        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, @NonNull View view2, int i2) {
            return false;
        }

        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, @NonNull View view2, int i2, int i4) {
            if (i4 == 0) {
                return onStartNestedScroll(coordinatorLayout, v3, view, view2, i2);
            }
            return false;
        }

        @Deprecated
        public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view) {
        }

        public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, int i2) {
            if (i2 == 0) {
                onStopNestedScroll(coordinatorLayout, v3, view);
            }
        }

        public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull MotionEvent motionEvent) {
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull View view, int i2, int i4, int i5, int i6, int i7, @NonNull int[] iArr) {
            iArr[0] = iArr[0] + i5;
            iArr[1] = iArr[1] + i6;
            onNestedScroll(coordinatorLayout, v3, view, i2, i4, i5, i6, i7);
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* loaded from: classes.dex */
    public @interface DefaultBehavior {
        Class<? extends Behavior> value();
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface DispatchChangeEvent {
    }

    /* loaded from: classes.dex */
    private class HierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        HierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f3690r;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.A(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f3690r;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class OnPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        OnPreDrawListener() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.A(0);
            return true;
        }
    }

    /* loaded from: classes.dex */
    static class ViewElevationComparator implements Comparator<View> {
        ViewElevationComparator() {
        }

        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            float z3 = ViewCompat.getZ(view);
            float z4 = ViewCompat.getZ(view2);
            if (z3 > z4) {
                return -1;
            }
            return z3 < z4 ? 1 : 0;
        }
    }

    static {
        Package r02 = CoordinatorLayout.class.getPackage();
        f3668v = r02 != null ? r02.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            D = new ViewElevationComparator();
        } else {
            D = null;
        }
        f3671y = new Class[]{Context.class, AttributeSet.class};
        f3672z = new ThreadLocal<>();
        E = new Pools.SynchronizedPool(12);
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static Behavior B(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(g0.f27568a)) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            String str2 = f3668v;
            if (!TextUtils.isEmpty(str2)) {
                str = str2 + d.f65364a + str;
            }
        }
        try {
            ThreadLocal<Map<String, Constructor<Behavior>>> threadLocal = f3672z;
            Map<String, Constructor<Behavior>> map = threadLocal.get();
            if (map == null) {
                map = new HashMap<>();
                threadLocal.set(map);
            }
            Constructor<Behavior> constructor = map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(f3671y);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return constructor.newInstance(context, attributeSet);
        } catch (Exception e4) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e4);
        }
    }

    private boolean C(MotionEvent motionEvent, int i2) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f3675c;
        t(list);
        int size = list.size();
        MotionEvent motionEvent2 = null;
        boolean z3 = false;
        boolean z4 = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior behavior = layoutParams.getBehavior();
            if (!(z3 || z4) || actionMasked == 0) {
                if (!z3 && behavior != null) {
                    if (i2 == 0) {
                        z3 = behavior.onInterceptTouchEvent(this, view, motionEvent);
                    } else if (i2 == 1) {
                        z3 = behavior.onTouchEvent(this, view, motionEvent);
                    }
                    if (z3) {
                        this.f3683k = view;
                    }
                }
                boolean c4 = layoutParams.c();
                boolean h4 = layoutParams.h(this, view);
                z4 = h4 && !c4;
                if (h4 && !z4) {
                    break;
                }
            } else if (behavior != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i2 == 0) {
                    behavior.onInterceptTouchEvent(this, view, motionEvent2);
                } else if (i2 == 1) {
                    behavior.onTouchEvent(this, view, motionEvent2);
                }
            }
        }
        list.clear();
        return z3;
    }

    private void D() {
        this.f3673a.clear();
        this.f3674b.clear();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams s3 = s(childAt);
            s3.d(this, childAt);
            this.f3674b.addNode(childAt);
            for (int i4 = 0; i4 < childCount; i4++) {
                if (i4 != i2) {
                    View childAt2 = getChildAt(i4);
                    if (s3.b(this, childAt, childAt2)) {
                        if (!this.f3674b.contains(childAt2)) {
                            this.f3674b.addNode(childAt2);
                        }
                        this.f3674b.addEdge(childAt2, childAt);
                    }
                }
            }
        }
        this.f3673a.addAll(this.f3674b.getSortedList());
        Collections.reverse(this.f3673a);
    }

    private static void F(@NonNull Rect rect) {
        rect.setEmpty();
        E.release(rect);
    }

    private void H(boolean z3) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z3) {
                    behavior.onInterceptTouchEvent(this, childAt, obtain);
                } else {
                    behavior.onTouchEvent(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            ((LayoutParams) getChildAt(i4).getLayoutParams()).l();
        }
        this.f3683k = null;
        this.f3680h = false;
    }

    private static int I(int i2) {
        if (i2 == 0) {
            return 17;
        }
        return i2;
    }

    private static int J(int i2) {
        if ((i2 & 7) == 0) {
            i2 |= GravityCompat.START;
        }
        return (i2 & 112) == 0 ? i2 | 48 : i2;
    }

    private static int K(int i2) {
        if (i2 == 0) {
            return 8388661;
        }
        return i2;
    }

    private void L(View view, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = layoutParams.f3698d;
        if (i4 != i2) {
            ViewCompat.offsetLeftAndRight(view, i2 - i4);
            layoutParams.f3698d = i2;
        }
    }

    private void M(View view, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = layoutParams.f3699e;
        if (i4 != i2) {
            ViewCompat.offsetTopAndBottom(view, i2 - i4);
            layoutParams.f3699e = i2;
        }
    }

    private void O() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (ViewCompat.getFitsSystemWindows(this)) {
            if (this.f3691s == null) {
                this.f3691s = new OnApplyWindowInsetsListener() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        return CoordinatorLayout.this.N(windowInsetsCompat);
                    }
                };
            }
            ViewCompat.setOnApplyWindowInsetsListener(this, this.f3691s);
            setSystemUiVisibility(LogType.UNEXP_ANR);
            return;
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, null);
    }

    @NonNull
    private static Rect e() {
        Rect acquire = E.acquire();
        return acquire == null ? new Rect() : acquire;
    }

    private static int g(int i2, int i4, int i5) {
        return i2 < i4 ? i4 : i2 > i5 ? i5 : i2;
    }

    private void h(LayoutParams layoutParams, Rect rect, int i2, int i4) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i4) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        rect.set(max, max2, i2 + max, i4 + max2);
    }

    private WindowInsetsCompat i(WindowInsetsCompat windowInsetsCompat) {
        Behavior behavior;
        if (windowInsetsCompat.isConsumed()) {
            return windowInsetsCompat;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (ViewCompat.getFitsSystemWindows(childAt) && (behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior()) != null) {
                windowInsetsCompat = behavior.onApplyWindowInsets(this, childAt, windowInsetsCompat);
                if (windowInsetsCompat.isConsumed()) {
                    break;
                }
            }
        }
        return windowInsetsCompat;
    }

    private void p(View view, int i2, Rect rect, Rect rect2, LayoutParams layoutParams, int i4, int i5) {
        int width;
        int height;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(I(layoutParams.gravity), i2);
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(J(layoutParams.anchorGravity), i2);
        int i6 = absoluteGravity & 7;
        int i7 = absoluteGravity & 112;
        int i8 = absoluteGravity2 & 7;
        int i9 = absoluteGravity2 & 112;
        if (i8 == 1) {
            width = rect.left + (rect.width() / 2);
        } else if (i8 != 5) {
            width = rect.left;
        } else {
            width = rect.right;
        }
        if (i9 == 16) {
            height = rect.top + (rect.height() / 2);
        } else if (i9 != 80) {
            height = rect.top;
        } else {
            height = rect.bottom;
        }
        if (i6 == 1) {
            width -= i4 / 2;
        } else if (i6 != 5) {
            width -= i4;
        }
        if (i7 == 16) {
            height -= i5 / 2;
        } else if (i7 != 80) {
            height -= i5;
        }
        rect2.set(width, height, i4 + width, i5 + height);
    }

    private int q(int i2) {
        int[] iArr = this.f3682j;
        if (iArr == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("No keylines defined for ");
            sb.append(this);
            sb.append(" - attempted index lookup ");
            sb.append(i2);
            return 0;
        } else if (i2 >= 0 && i2 < iArr.length) {
            return iArr[i2];
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Keyline index ");
            sb2.append(i2);
            sb2.append(" out of range for ");
            sb2.append(this);
            return 0;
        }
    }

    private void t(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = D;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private boolean u(View view) {
        return this.f3674b.hasOutgoingEdges(view);
    }

    private void v(View view, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect e4 = e();
        e4.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        if (this.f3687o != null && ViewCompat.getFitsSystemWindows(this) && !ViewCompat.getFitsSystemWindows(view)) {
            e4.left += this.f3687o.getSystemWindowInsetLeft();
            e4.top += this.f3687o.getSystemWindowInsetTop();
            e4.right -= this.f3687o.getSystemWindowInsetRight();
            e4.bottom -= this.f3687o.getSystemWindowInsetBottom();
        }
        Rect e5 = e();
        GravityCompat.apply(J(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), e4, e5, i2);
        view.layout(e5.left, e5.top, e5.right, e5.bottom);
        F(e4);
        F(e5);
    }

    private void w(View view, View view2, int i2) {
        Rect e4 = e();
        Rect e5 = e();
        try {
            n(view2, e4);
            o(view, i2, e4, e5);
            view.layout(e5.left, e5.top, e5.right, e5.bottom);
        } finally {
            F(e4);
            F(e5);
        }
    }

    private void x(View view, int i2, int i4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(K(layoutParams.gravity), i4);
        int i5 = absoluteGravity & 7;
        int i6 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i4 == 1) {
            i2 = width - i2;
        }
        int q3 = q(i2) - measuredWidth;
        int i7 = 0;
        if (i5 == 1) {
            q3 += measuredWidth / 2;
        } else if (i5 == 5) {
            q3 += measuredWidth;
        }
        if (i6 == 16) {
            i7 = 0 + (measuredHeight / 2);
        } else if (i6 == 80) {
            i7 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(q3, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(i7, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    private void y(View view, Rect rect, int i2) {
        boolean z3;
        boolean z4;
        int width;
        int i4;
        int i5;
        int i6;
        int height;
        int i7;
        int i8;
        int i9;
        if (ViewCompat.isLaidOut(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior behavior = layoutParams.getBehavior();
            Rect e4 = e();
            Rect e5 = e();
            e5.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (behavior != null && behavior.getInsetDodgeRect(this, view, e4)) {
                if (!e5.contains(e4)) {
                    throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + e4.toShortString() + " | Bounds:" + e5.toShortString());
                }
            } else {
                e4.set(e5);
            }
            F(e5);
            if (e4.isEmpty()) {
                F(e4);
                return;
            }
            int absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams.dodgeInsetEdges, i2);
            boolean z5 = true;
            if ((absoluteGravity & 48) != 48 || (i8 = (e4.top - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - layoutParams.f3699e) >= (i9 = rect.top)) {
                z3 = false;
            } else {
                M(view, i9 - i8);
                z3 = true;
            }
            if ((absoluteGravity & 80) == 80 && (height = ((getHeight() - e4.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + layoutParams.f3699e) < (i7 = rect.bottom)) {
                M(view, height - i7);
                z3 = true;
            }
            if (!z3) {
                M(view, 0);
            }
            if ((absoluteGravity & 3) != 3 || (i5 = (e4.left - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - layoutParams.f3698d) >= (i6 = rect.left)) {
                z4 = false;
            } else {
                L(view, i6 - i5);
                z4 = true;
            }
            if ((absoluteGravity & 5) != 5 || (width = ((getWidth() - e4.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + layoutParams.f3698d) >= (i4 = rect.right)) {
                z5 = z4;
            } else {
                L(view, width - i4);
            }
            if (!z5) {
                L(view, 0);
            }
            F(e4);
        }
    }

    final void A(int i2) {
        boolean z3;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f3673a.size();
        Rect e4 = e();
        Rect e5 = e();
        Rect e6 = e();
        for (int i4 = 0; i4 < size; i4++) {
            View view = this.f3673a.get(i4);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (i2 != 0 || view.getVisibility() != 8) {
                for (int i5 = 0; i5 < i4; i5++) {
                    if (layoutParams.f3701g == this.f3673a.get(i5)) {
                        z(view, layoutDirection);
                    }
                }
                m(view, true, e5);
                if (layoutParams.insetEdge != 0 && !e5.isEmpty()) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams.insetEdge, layoutDirection);
                    int i6 = absoluteGravity & 112;
                    if (i6 == 48) {
                        e4.top = Math.max(e4.top, e5.bottom);
                    } else if (i6 == 80) {
                        e4.bottom = Math.max(e4.bottom, getHeight() - e5.top);
                    }
                    int i7 = absoluteGravity & 7;
                    if (i7 == 3) {
                        e4.left = Math.max(e4.left, e5.right);
                    } else if (i7 == 5) {
                        e4.right = Math.max(e4.right, getWidth() - e5.left);
                    }
                }
                if (layoutParams.dodgeInsetEdges != 0 && view.getVisibility() == 0) {
                    y(view, e4, layoutDirection);
                }
                if (i2 != 2) {
                    r(view, e6);
                    if (!e6.equals(e5)) {
                        E(view, e5);
                    }
                }
                for (int i8 = i4 + 1; i8 < size; i8++) {
                    View view2 = this.f3673a.get(i8);
                    LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                    Behavior behavior = layoutParams2.getBehavior();
                    if (behavior != null && behavior.layoutDependsOn(this, view2, view)) {
                        if (i2 == 0 && layoutParams2.e()) {
                            layoutParams2.j();
                        } else {
                            if (i2 != 2) {
                                z3 = behavior.onDependentViewChanged(this, view2, view);
                            } else {
                                behavior.onDependentViewRemoved(this, view2, view);
                                z3 = true;
                            }
                            if (i2 == 1) {
                                layoutParams2.n(z3);
                            }
                        }
                    }
                }
            }
        }
        F(e4);
        F(e5);
        F(e6);
    }

    void E(View view, Rect rect) {
        ((LayoutParams) view.getLayoutParams()).o(rect);
    }

    void G() {
        if (this.f3681i && this.f3685m != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f3685m);
        }
        this.f3686n = false;
    }

    final WindowInsetsCompat N(WindowInsetsCompat windowInsetsCompat) {
        if (ObjectsCompat.equals(this.f3687o, windowInsetsCompat)) {
            return windowInsetsCompat;
        }
        this.f3687o = windowInsetsCompat;
        boolean z3 = true;
        boolean z4 = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
        this.f3688p = z4;
        setWillNotDraw((z4 || getBackground() != null) ? false : false);
        WindowInsetsCompat i2 = i(windowInsetsCompat);
        requestLayout();
        return i2;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(@NonNull View view) {
        List incomingEdges = this.f3674b.getIncomingEdges(view);
        if (incomingEdges == null || incomingEdges.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < incomingEdges.size(); i2++) {
            View view2 = (View) incomingEdges.get(i2);
            Behavior behavior = ((LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior != null) {
                behavior.onDependentViewChanged(this, view2, view);
            }
        }
    }

    public boolean doViewsOverlap(@NonNull View view, @NonNull View view2) {
        boolean z3 = false;
        if (view.getVisibility() == 0 && view2.getVisibility() == 0) {
            Rect e4 = e();
            m(view, view.getParent() != this, e4);
            Rect e5 = e();
            m(view2, view2.getParent() != this, e5);
            try {
                if (e4.left <= e5.right && e4.top <= e5.bottom && e4.right >= e5.left) {
                    if (e4.bottom >= e5.top) {
                        z3 = true;
                    }
                }
                return z3;
            } finally {
                F(e4);
                F(e5);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Behavior behavior = layoutParams.f3695a;
        if (behavior != null) {
            float scrimOpacity = behavior.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.f3677e == null) {
                    this.f3677e = new Paint();
                }
                this.f3677e.setColor(layoutParams.f3695a.getScrimColor(this, view));
                this.f3677e.setAlpha(g(Math.round(scrimOpacity * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f3677e);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j4);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f3689q;
        boolean z3 = false;
        if (drawable != null && drawable.isStateful()) {
            z3 = false | drawable.setState(drawableState);
        }
        if (z3) {
            invalidate();
        }
    }

    void f() {
        if (this.f3681i) {
            if (this.f3685m == null) {
                this.f3685m = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f3685m);
        }
        this.f3686n = true;
    }

    @NonNull
    public List<View> getDependencies(@NonNull View view) {
        List<View> outgoingEdges = this.f3674b.getOutgoingEdges(view);
        this.f3676d.clear();
        if (outgoingEdges != null) {
            this.f3676d.addAll(outgoingEdges);
        }
        return this.f3676d;
    }

    @VisibleForTesting
    final List<View> getDependencySortedChildren() {
        D();
        return Collections.unmodifiableList(this.f3673a);
    }

    @NonNull
    public List<View> getDependents(@NonNull View view) {
        List incomingEdges = this.f3674b.getIncomingEdges(view);
        this.f3676d.clear();
        if (incomingEdges != null) {
            this.f3676d.addAll(incomingEdges);
        }
        return this.f3676d;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final WindowInsetsCompat getLastWindowInsets() {
        return this.f3687o;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f3692t.getNestedScrollAxes();
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.f3689q;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public boolean isPointInChildBounds(@NonNull View view, int i2, int i4) {
        Rect e4 = e();
        n(view, e4);
        try {
            return e4.contains(i2, i4);
        } finally {
            F(e4);
        }
    }

    void j() {
        int childCount = getChildCount();
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            } else if (u(getChildAt(i2))) {
                z3 = true;
                break;
            } else {
                i2++;
            }
        }
        if (z3 != this.f3686n) {
            if (z3) {
                f();
            } else {
                G();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: k */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: l */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    void m(View view, boolean z3, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z3) {
            n(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    void n(View view, Rect rect) {
        ViewGroupUtils.getDescendantRect(this, view, rect);
    }

    void o(View view, int i2, Rect rect, Rect rect2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        p(view, i2, rect, rect2, layoutParams, measuredWidth, measuredHeight);
        h(layoutParams, rect2, measuredWidth, measuredHeight);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        H(false);
        if (this.f3686n) {
            if (this.f3685m == null) {
                this.f3685m = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f3685m);
        }
        if (this.f3687o == null && ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.requestApplyInsets(this);
        }
        this.f3681i = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        H(false);
        if (this.f3686n && this.f3685m != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f3685m);
        }
        View view = this.f3684l;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f3681i = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f3688p || this.f3689q == null) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.f3687o;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f3689q.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f3689q.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            H(true);
        }
        boolean C2 = C(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            H(true);
        }
        return C2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        Behavior behavior;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f3673a.size();
        for (int i7 = 0; i7 < size; i7++) {
            View view = this.f3673a.get(i7);
            if (view.getVisibility() != 8 && ((behavior = ((LayoutParams) view.getLayoutParams()).getBehavior()) == null || !behavior.onLayoutChild(this, view, layoutDirection))) {
                onLayoutChild(view, layoutDirection);
            }
        }
    }

    public void onLayoutChild(@NonNull View view, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.a()) {
            View view2 = layoutParams.f3700f;
            if (view2 != null) {
                w(view, view2, i2);
                return;
            }
            int i4 = layoutParams.keyline;
            if (i4 >= 0) {
                x(view, i4, i2);
                return;
            } else {
                v(view, i2);
                return;
            }
        }
        throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x011a, code lost:
        if (r0.onMeasureChild(r30, r20, r11, r21, r23, 0) == false) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r31, int r32) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    public void onMeasureChild(View view, int i2, int i4, int i5, int i6) {
        measureChildWithMargins(view, i2, i4, i5, i6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f4, float f5, boolean z3) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.i(0) && (behavior = layoutParams.getBehavior()) != null) {
                    z4 |= behavior.onNestedFling(this, childAt, view, f4, f5, z3);
                }
            }
        }
        if (z4) {
            A(1);
        }
        return z4;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f4, float f5) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z3 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.i(0) && (behavior = layoutParams.getBehavior()) != null) {
                    z3 |= behavior.onNestedPreFling(this, childAt, view, f4, f5);
                }
            }
        }
        return z3;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i2, int i4, int[] iArr) {
        onNestedPreScroll(view, i2, i4, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i2, int i4, int i5, int i6) {
        onNestedScroll(view, i2, i4, i5, i6, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.f3709a;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            Behavior behavior = s(childAt).getBehavior();
            if (id != -1 && behavior != null && (parcelable2 = sparseArray.get(id)) != null) {
                behavior.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (id != -1 && behavior != null && (onSaveInstanceState = behavior.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id, onSaveInstanceState);
            }
        }
        savedState.f3709a = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return onStartNestedScroll(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r3 != false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.f3683k
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L15
            boolean r3 = r0.C(r1, r4)
            if (r3 == 0) goto L2b
            goto L16
        L15:
            r3 = 0
        L16:
            android.view.View r6 = r0.f3683k
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r6 = r6.getBehavior()
            if (r6 == 0) goto L2b
            android.view.View r7 = r0.f3683k
            boolean r6 = r6.onTouchEvent(r0, r7, r1)
            goto L2c
        L2b:
            r6 = 0
        L2c:
            android.view.View r7 = r0.f3683k
            r8 = 0
            if (r7 != 0) goto L37
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L4a
        L37:
            if (r3 == 0) goto L4a
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L4a:
            if (r8 == 0) goto L4f
            r8.recycle()
        L4f:
            if (r2 == r4) goto L54
            r1 = 3
            if (r2 != r1) goto L57
        L54:
            r0.H(r5)
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void r(View view, Rect rect) {
        rect.set(((LayoutParams) view.getLayoutParams()).f());
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z3) {
        Behavior behavior = ((LayoutParams) view.getLayoutParams()).getBehavior();
        if (behavior == null || !behavior.onRequestChildRectangleOnScreen(this, view, rect, z3)) {
            return super.requestChildRectangleOnScreen(view, rect, z3);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z3) {
        super.requestDisallowInterceptTouchEvent(z3);
        if (!z3 || this.f3680h) {
            return;
        }
        H(false);
        this.f3680h = true;
    }

    LayoutParams s(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f3696b) {
            if (view instanceof AttachedBehavior) {
                layoutParams.setBehavior(((AttachedBehavior) view).getBehavior());
                layoutParams.f3696b = true;
            } else {
                DefaultBehavior defaultBehavior = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    defaultBehavior = (DefaultBehavior) cls.getAnnotation(DefaultBehavior.class);
                    if (defaultBehavior != null) {
                        break;
                    }
                }
                if (defaultBehavior != null) {
                    try {
                        layoutParams.setBehavior(defaultBehavior.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception unused) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Default behavior class ");
                        sb.append(defaultBehavior.value().getName());
                        sb.append(" could not be instantiated. Did you forget a default constructor?");
                    }
                }
                layoutParams.f3696b = true;
            }
        }
        return layoutParams;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z3) {
        super.setFitsSystemWindows(z3);
        O();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f3690r = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f3689q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f3689q = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f3689q.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f3689q, ViewCompat.getLayoutDirection(this));
                this.f3689q.setVisible(getVisibility() == 0, false);
                this.f3689q.setCallback(this);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarBackgroundColor(@ColorInt int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(@DrawableRes int i2) {
        setStatusBarBackground(i2 != 0 ? ContextCompat.getDrawable(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z3 = i2 == 0;
        Drawable drawable = this.f3689q;
        if (drawable == null || drawable.isVisible() == z3) {
            return;
        }
        this.f3689q.setVisible(z3, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3689q;
    }

    void z(View view, int i2) {
        Behavior behavior;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.f3700f != null) {
            Rect e4 = e();
            Rect e5 = e();
            Rect e6 = e();
            n(layoutParams.f3700f, e4);
            boolean z3 = false;
            m(view, false, e5);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            p(view, i2, e4, e6, layoutParams, measuredWidth, measuredHeight);
            z3 = (e6.left == e5.left && e6.top == e5.top) ? true : true;
            h(layoutParams, e6, measuredWidth, measuredHeight);
            int i4 = e6.left - e5.left;
            int i5 = e6.top - e5.top;
            if (i4 != 0) {
                ViewCompat.offsetLeftAndRight(view, i4);
            }
            if (i5 != 0) {
                ViewCompat.offsetTopAndBottom(view, i5);
            }
            if (z3 && (behavior = layoutParams.getBehavior()) != null) {
                behavior.onDependentViewChanged(this, view, layoutParams.f3700f);
            }
            F(e4);
            F(e5);
            F(e6);
        }
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i2, int i4, int[] iArr, int i5) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z3 = false;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.i(i5) && (behavior = layoutParams.getBehavior()) != null) {
                    int[] iArr2 = this.f3678f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.onNestedPreScroll(this, childAt, view, i2, i4, iArr2, i5);
                    int[] iArr3 = this.f3678f;
                    i6 = i2 > 0 ? Math.max(i6, iArr3[0]) : Math.min(i6, iArr3[0]);
                    int[] iArr4 = this.f3678f;
                    i7 = i4 > 0 ? Math.max(i7, iArr4[1]) : Math.min(i7, iArr4[1]);
                    z3 = true;
                }
            }
        }
        iArr[0] = i6;
        iArr[1] = i7;
        if (z3) {
            A(1);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i2, int i4, int i5, int i6, int i7) {
        onNestedScroll(view, i2, i4, i5, i6, 0, this.f3679g);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i2, int i4) {
        Behavior behavior;
        this.f3692t.onNestedScrollAccepted(view, view2, i2, i4);
        this.f3684l = view2;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.i(i4) && (behavior = layoutParams.getBehavior()) != null) {
                behavior.onNestedScrollAccepted(this, childAt, view, view2, i2, i4);
            }
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i2, int i4) {
        int childCount = getChildCount();
        boolean z3 = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    boolean onStartNestedScroll = behavior.onStartNestedScroll(this, childAt, view, view2, i2, i4);
                    z3 |= onStartNestedScroll;
                    layoutParams.p(i4, onStartNestedScroll);
                } else {
                    layoutParams.p(i4, false);
                }
            }
        }
        return z3;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i2) {
        this.f3692t.onStopNestedScroll(view, i2);
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.i(i2)) {
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onStopNestedScroll(this, childAt, view, i2);
                }
                layoutParams.k(i2);
                layoutParams.j();
            }
        }
        this.f3684l = null;
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2);
        TypedArray obtainStyledAttributes;
        this.f3673a = new ArrayList();
        this.f3674b = new DirectedAcyclicGraph<>();
        this.f3675c = new ArrayList();
        this.f3676d = new ArrayList();
        this.f3678f = new int[2];
        this.f3679g = new int[2];
        this.f3692t = new NestedScrollingParentHelper(this);
        if (i2 == 0) {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, 0, R.style.Widget_Support_CoordinatorLayout);
        } else {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, i2, 0);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            if (i2 == 0) {
                saveAttributeDataForStyleable(context, R.styleable.CoordinatorLayout, attributeSet, obtainStyledAttributes, 0, R.style.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, R.styleable.CoordinatorLayout, attributeSet, obtainStyledAttributes, i2, 0);
            }
        }
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f3682j = resources.getIntArray(resourceId);
            float f4 = resources.getDisplayMetrics().density;
            int length = this.f3682j.length;
            for (int i4 = 0; i4 < length; i4++) {
                int[] iArr = this.f3682j;
                iArr[i4] = (int) (iArr[i4] * f4);
            }
        }
        this.f3689q = obtainStyledAttributes.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        O();
        super.setOnHierarchyChangeListener(new HierarchyChangeListener());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i2, int i4, int i5, int i6, int i7, @NonNull int[] iArr) {
        Behavior behavior;
        int min;
        int childCount = getChildCount();
        boolean z3 = false;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.i(i7) && (behavior = layoutParams.getBehavior()) != null) {
                    int[] iArr2 = this.f3678f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.onNestedScroll(this, childAt, view, i2, i4, i5, i6, i7, iArr2);
                    int[] iArr3 = this.f3678f;
                    i8 = i5 > 0 ? Math.max(i8, iArr3[0]) : Math.min(i8, iArr3[0]);
                    if (i6 > 0) {
                        min = Math.max(i9, this.f3678f[1]);
                    } else {
                        min = Math.min(i9, this.f3678f[1]);
                    }
                    i9 = min;
                    z3 = true;
                }
            }
        }
        iArr[0] = iArr[0] + i8;
        iArr[1] = iArr[1] + i9;
        if (z3) {
            A(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };

        /* renamed from: a  reason: collision with root package name */
        SparseArray<Parcelable> f3709a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f3709a = new SparseArray<>(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                this.f3709a.append(iArr[i2], readParcelableArray[i2]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            SparseArray<Parcelable> sparseArray = this.f3709a;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i4 = 0; i4 < size; i4++) {
                iArr[i4] = this.f3709a.keyAt(i4);
                parcelableArr[i4] = this.f3709a.valueAt(i4);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i2);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        Behavior f3695a;
        public int anchorGravity;

        /* renamed from: b  reason: collision with root package name */
        boolean f3696b;

        /* renamed from: c  reason: collision with root package name */
        int f3697c;

        /* renamed from: d  reason: collision with root package name */
        int f3698d;
        public int dodgeInsetEdges;

        /* renamed from: e  reason: collision with root package name */
        int f3699e;

        /* renamed from: f  reason: collision with root package name */
        View f3700f;

        /* renamed from: g  reason: collision with root package name */
        View f3701g;
        public int gravity;

        /* renamed from: h  reason: collision with root package name */
        private boolean f3702h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f3703i;
        public int insetEdge;

        /* renamed from: j  reason: collision with root package name */
        private boolean f3704j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f3705k;
        public int keyline;

        /* renamed from: l  reason: collision with root package name */
        final Rect f3706l;

        /* renamed from: m  reason: collision with root package name */
        Object f3707m;

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
            this.f3696b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f3697c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f3706l = new Rect();
        }

        private void m(View view, CoordinatorLayout coordinatorLayout) {
            View findViewById = coordinatorLayout.findViewById(this.f3697c);
            this.f3700f = findViewById;
            if (findViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f3701g = null;
                    this.f3700f = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f3697c) + " to anchor view " + view);
            } else if (findViewById == coordinatorLayout) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f3701g = null;
                    this.f3700f = null;
                    return;
                }
                throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
            } else {
                for (ViewParent parent = findViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                    if (parent == view) {
                        if (coordinatorLayout.isInEditMode()) {
                            this.f3701g = null;
                            this.f3700f = null;
                            return;
                        }
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    if (parent instanceof View) {
                        findViewById = (View) parent;
                    }
                }
                this.f3701g = findViewById;
            }
        }

        private boolean q(View view, int i2) {
            int absoluteGravity = GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).insetEdge, i2);
            return absoluteGravity != 0 && (GravityCompat.getAbsoluteGravity(this.dodgeInsetEdges, i2) & absoluteGravity) == absoluteGravity;
        }

        private boolean r(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f3700f.getId() != this.f3697c) {
                return false;
            }
            View view2 = this.f3700f;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent != null && parent != view) {
                    if (parent instanceof View) {
                        view2 = (View) parent;
                    }
                } else {
                    this.f3701g = null;
                    this.f3700f = null;
                    return false;
                }
            }
            this.f3701g = view2;
            return true;
        }

        boolean a() {
            return this.f3700f == null && this.f3697c != -1;
        }

        boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            Behavior behavior;
            return view2 == this.f3701g || q(view2, ViewCompat.getLayoutDirection(coordinatorLayout)) || ((behavior = this.f3695a) != null && behavior.layoutDependsOn(coordinatorLayout, view, view2));
        }

        boolean c() {
            if (this.f3695a == null) {
                this.f3702h = false;
            }
            return this.f3702h;
        }

        View d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f3697c == -1) {
                this.f3701g = null;
                this.f3700f = null;
                return null;
            }
            if (this.f3700f == null || !r(view, coordinatorLayout)) {
                m(view, coordinatorLayout);
            }
            return this.f3700f;
        }

        boolean e() {
            return this.f3705k;
        }

        Rect f() {
            return this.f3706l;
        }

        void g() {
            this.f3701g = null;
            this.f3700f = null;
        }

        @IdRes
        public int getAnchorId() {
            return this.f3697c;
        }

        @Nullable
        public Behavior getBehavior() {
            return this.f3695a;
        }

        boolean h(CoordinatorLayout coordinatorLayout, View view) {
            boolean z3 = this.f3702h;
            if (z3) {
                return true;
            }
            Behavior behavior = this.f3695a;
            boolean blocksInteractionBelow = (behavior != null ? behavior.blocksInteractionBelow(coordinatorLayout, view) : false) | z3;
            this.f3702h = blocksInteractionBelow;
            return blocksInteractionBelow;
        }

        boolean i(int i2) {
            if (i2 != 0) {
                if (i2 != 1) {
                    return false;
                }
                return this.f3704j;
            }
            return this.f3703i;
        }

        void j() {
            this.f3705k = false;
        }

        void k(int i2) {
            p(i2, false);
        }

        void l() {
            this.f3702h = false;
        }

        void n(boolean z3) {
            this.f3705k = z3;
        }

        void o(Rect rect) {
            this.f3706l.set(rect);
        }

        void p(int i2, boolean z3) {
            if (i2 == 0) {
                this.f3703i = z3;
            } else if (i2 != 1) {
            } else {
                this.f3704j = z3;
            }
        }

        public void setAnchorId(@IdRes int i2) {
            g();
            this.f3697c = i2;
        }

        public void setBehavior(@Nullable Behavior behavior) {
            Behavior behavior2 = this.f3695a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.onDetachedFromLayoutParams();
                }
                this.f3695a = behavior;
                this.f3707m = null;
                this.f3696b = true;
                if (behavior != null) {
                    behavior.onAttachedToLayoutParams(this);
                }
            }
        }

        LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3696b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f3697c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f3706l = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
            this.gravity = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f3697c = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.anchorGravity = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.keyline = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.insetEdge = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.dodgeInsetEdges = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            int i2 = R.styleable.CoordinatorLayout_Layout_layout_behavior;
            boolean hasValue = obtainStyledAttributes.hasValue(i2);
            this.f3696b = hasValue;
            if (hasValue) {
                this.f3695a = CoordinatorLayout.B(context, attributeSet, obtainStyledAttributes.getString(i2));
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f3695a;
            if (behavior != null) {
                behavior.onAttachedToLayoutParams(this);
            }
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f3696b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f3697c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f3706l = new Rect();
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3696b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f3697c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f3706l = new Rect();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3696b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f3697c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f3706l = new Rect();
        }
    }
}

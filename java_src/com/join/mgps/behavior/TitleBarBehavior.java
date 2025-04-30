package com.join.mgps.behavior;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import java.util.List;
import q.a;
/* loaded from: classes3.dex */
public class TitleBarBehavior extends CoordinatorLayout.Behavior {

    /* renamed from: a  reason: collision with root package name */
    final Rect f44776a;

    /* renamed from: b  reason: collision with root package name */
    final Rect f44777b;

    /* renamed from: c  reason: collision with root package name */
    private int f44778c;

    /* renamed from: d  reason: collision with root package name */
    boolean f44779d;

    /* renamed from: e  reason: collision with root package name */
    int f44780e;

    /* renamed from: f  reason: collision with root package name */
    int f44781f;

    /* renamed from: g  reason: collision with root package name */
    int f44782g;

    public TitleBarBehavior(Context context) {
        this(context, null);
    }

    private static int resolveGravity(int i2) {
        if (i2 == 0) {
            return 8388659;
        }
        return i2;
    }

    AppBarLayout findFirstDependency(List<View> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = list.get(i2);
            if (view instanceof AppBarLayout) {
                return (AppBarLayout) view;
            }
        }
        return null;
    }

    int getScrollRange(View view) {
        return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : view.getMeasuredHeight();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        return view2 instanceof AppBarLayout;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        this.f44782g = this.f44781f + this.f44780e + this.f44778c;
        if (view2.getBottom() >= this.f44782g) {
            ViewCompat.offsetTopAndBottom(view, (view2.getBottom() - view.getTop()) - this.f44778c);
            this.f44779d = true;
        } else {
            this.f44779d = false;
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i2) {
        AppBarLayout findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
        if (findFirstDependency != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            Rect rect = this.f44776a;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, findFirstDependency.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + findFirstDependency.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
                rect.left += lastWindowInsets.getSystemWindowInsetLeft();
                rect.right -= lastWindowInsets.getSystemWindowInsetRight();
            }
            Rect rect2 = this.f44777b;
            if (this.f44779d) {
                GravityCompat.apply(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i2);
                view.layout(rect2.left, rect2.top - this.f44778c, rect2.right, rect2.bottom);
                return true;
            }
            int i4 = rect2.left;
            int i5 = this.f44782g;
            int i6 = this.f44778c;
            view.layout(i4, i5 - i6, rect2.right, rect2.bottom - i6);
            return true;
        }
        coordinatorLayout.onLayoutChild(view, i2);
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i2, int i4, int i5, int i6) {
        AppBarLayout findFirstDependency;
        int i7 = view.getLayoutParams().height;
        if ((i7 == -1 || i7 == -2) && (findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view))) != null) {
            if (ViewCompat.getFitsSystemWindows(findFirstDependency) && !ViewCompat.getFitsSystemWindows(view)) {
                ViewCompat.setFitsSystemWindows(view, true);
                if (ViewCompat.getFitsSystemWindows(view)) {
                    view.requestLayout();
                    return true;
                }
            }
            int size = View.MeasureSpec.getSize(i5);
            if (size == 0) {
                size = coordinatorLayout.getHeight();
            }
            coordinatorLayout.onMeasureChild(view, i2, i4, View.MeasureSpec.makeMeasureSpec((size - findFirstDependency.getMeasuredHeight()) + getScrollRange(findFirstDependency), i7 == -1 ? 1073741824 : Integer.MIN_VALUE), i6);
            return true;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2, @NonNull View view3, int i2, int i4) {
        return false;
    }

    public void setOverlayTop(int i2) {
        this.f44778c = i2;
    }

    public TitleBarBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44776a = new Rect();
        this.f44777b = new Rect();
        this.f44778c = 60;
        this.f44779d = true;
        this.f44780e = 0;
        this.f44781f = 0;
        this.f44782g = 0;
        this.f44781f = (int) context.getResources().getDimension(R.dimen.wdp96);
        this.f44780e = context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("status_bar_height", "dimen", a.f73954a));
    }
}

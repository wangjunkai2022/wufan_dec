package com.google.android.material.navigationrail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.internal.o;
import com.google.android.material.internal.w;
import com.google.android.material.navigation.NavigationBarView;
/* loaded from: classes2.dex */
public class NavigationRailView extends NavigationBarView {

    /* renamed from: q  reason: collision with root package name */
    static final int f15334q = 49;

    /* renamed from: r  reason: collision with root package name */
    static final int f15335r = 7;

    /* renamed from: s  reason: collision with root package name */
    private static final int f15336s = 49;

    /* renamed from: t  reason: collision with root package name */
    static final int f15337t = -1;

    /* renamed from: m  reason: collision with root package name */
    private final int f15338m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private View f15339n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Boolean f15340o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Boolean f15341p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements w.e {
        a() {
        }

        @Override // com.google.android.material.internal.w.e
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull w.f fVar) {
            NavigationRailView navigationRailView = NavigationRailView.this;
            if (navigationRailView.t(navigationRailView.f15340o)) {
                fVar.f15230b += windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top;
            }
            NavigationRailView navigationRailView2 = NavigationRailView.this;
            if (navigationRailView2.t(navigationRailView2.f15341p)) {
                fVar.f15232d += windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).bottom;
            }
            boolean z3 = ViewCompat.getLayoutDirection(view) == 1;
            int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
            int i2 = fVar.f15229a;
            if (z3) {
                systemWindowInsetLeft = systemWindowInsetRight;
            }
            fVar.f15229a = i2 + systemWindowInsetLeft;
            fVar.a(view);
            return windowInsetsCompat;
        }
    }

    public NavigationRailView(@NonNull Context context) {
        this(context, null);
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    private void o() {
        w.d(this, new a());
    }

    private boolean q() {
        View view = this.f15339n;
        return (view == null || view.getVisibility() == 8) ? false : true;
    }

    private int r(int i2) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i2) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i2;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), 1073741824);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t(Boolean bool) {
        return bool != null ? bool.booleanValue() : ViewCompat.getFitsSystemWindows(this);
    }

    @Nullable
    public View getHeaderView() {
        return this.f15339n;
    }

    public int getItemMinimumHeight() {
        return ((NavigationRailMenuView) getMenuView()).getItemMinimumHeight();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    public void m(@LayoutRes int i2) {
        n(LayoutInflater.from(getContext()).inflate(i2, (ViewGroup) this, false));
    }

    public void n(@NonNull View view) {
        s();
        this.f15339n = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.f15338m;
        addView(view, 0, layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
        int i7 = 0;
        if (q()) {
            int bottom = this.f15339n.getBottom() + this.f15338m;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i7 = bottom - top;
            }
        } else if (navigationRailMenuView.s()) {
            i7 = this.f15338m;
        }
        if (i7 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i7, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i7);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        int r3 = r(i2);
        super.onMeasure(r3, i4);
        if (q()) {
            measureChild(getNavigationRailMenuView(), r3, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f15339n.getMeasuredHeight()) - this.f15338m, Integer.MIN_VALUE));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.navigation.NavigationBarView
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: p */
    public NavigationRailMenuView d(@NonNull Context context) {
        return new NavigationRailMenuView(context);
    }

    public void s() {
        View view = this.f15339n;
        if (view != null) {
            removeView(view);
            this.f15339n = null;
        }
    }

    public void setItemMinimumHeight(@Px int i2) {
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i2);
    }

    public void setMenuGravity(int i2) {
        getNavigationRailMenuView().setMenuGravity(i2);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationRailStyle);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, R.style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f15340o = null;
        this.f15341p = null;
        this.f15338m = getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_rail_margin);
        TintTypedArray k4 = o.k(getContext(), attributeSet, R.styleable.NavigationRailView, i2, i4, new int[0]);
        int resourceId = k4.getResourceId(R.styleable.NavigationRailView_headerLayout, 0);
        if (resourceId != 0) {
            m(resourceId);
        }
        setMenuGravity(k4.getInt(R.styleable.NavigationRailView_menuGravity, 49));
        int i5 = R.styleable.NavigationRailView_itemMinHeight;
        if (k4.hasValue(i5)) {
            setItemMinimumHeight(k4.getDimensionPixelSize(i5, -1));
        }
        int i6 = R.styleable.NavigationRailView_paddingTopSystemWindowInsets;
        if (k4.hasValue(i6)) {
            this.f15340o = Boolean.valueOf(k4.getBoolean(i6, false));
        }
        int i7 = R.styleable.NavigationRailView_paddingBottomSystemWindowInsets;
        if (k4.hasValue(i7)) {
            this.f15341p = Boolean.valueOf(k4.getBoolean(i7, false));
        }
        k4.recycle();
        o();
    }
}

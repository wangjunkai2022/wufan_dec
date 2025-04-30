package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.internal.o;
import com.google.android.material.internal.w;
import com.google.android.material.navigation.NavigationBarMenuView;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.shape.MaterialShapeDrawable;
/* loaded from: classes2.dex */
public class BottomNavigationView extends NavigationBarView {

    /* renamed from: m  reason: collision with root package name */
    static final int f14186m = 5;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements w.e {
        a() {
        }

        @Override // com.google.android.material.internal.w.e
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull w.f fVar) {
            fVar.f15232d += windowInsetsCompat.getSystemWindowInsetBottom();
            boolean z3 = ViewCompat.getLayoutDirection(view) == 1;
            int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
            fVar.f15229a += z3 ? systemWindowInsetRight : systemWindowInsetLeft;
            int i2 = fVar.f15231c;
            if (!z3) {
                systemWindowInsetLeft = systemWindowInsetRight;
            }
            fVar.f15231c = i2 + systemWindowInsetLeft;
            fVar.a(view);
            return windowInsetsCompat;
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface b extends NavigationBarView.b {
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface c extends NavigationBarView.c {
    }

    public BottomNavigationView(@NonNull Context context) {
        this(context, null);
    }

    private void j(@NonNull Context context) {
        View view = new View(context);
        view.setBackgroundColor(ContextCompat.getColor(context, R.color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private void k() {
        w.d(this, new a());
    }

    private int m(int i2) {
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i2) == 1073741824 || suggestedMinimumHeight <= 0) {
            return i2;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), suggestedMinimumHeight + getPaddingTop() + getPaddingBottom()), 1073741824);
    }

    private boolean n() {
        return Build.VERSION.SDK_INT < 21 && !(getBackground() instanceof MaterialShapeDrawable);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected NavigationBarMenuView d(@NonNull Context context) {
        return new BottomNavigationMenuView(context);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 5;
    }

    public boolean l() {
        return ((BottomNavigationMenuView) getMenuView()).s();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, m(i4));
    }

    public void setItemHorizontalTranslationEnabled(boolean z3) {
        BottomNavigationMenuView bottomNavigationMenuView = (BottomNavigationMenuView) getMenuView();
        if (bottomNavigationMenuView.s() != z3) {
            bottomNavigationMenuView.setItemHorizontalTranslationEnabled(z3);
            getPresenter().updateMenuView(false);
        }
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(@Nullable b bVar) {
        setOnItemReselectedListener(bVar);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(@Nullable c cVar) {
        setOnItemSelectedListener(cVar);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomNavigationStyle);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, R.style.Widget_Design_BottomNavigationView);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        Context context2 = getContext();
        TintTypedArray k4 = o.k(context2, attributeSet, R.styleable.BottomNavigationView, i2, i4, new int[0]);
        setItemHorizontalTranslationEnabled(k4.getBoolean(R.styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        int i5 = R.styleable.BottomNavigationView_android_minHeight;
        if (k4.hasValue(i5)) {
            setMinimumHeight(k4.getDimensionPixelSize(i5, 0));
        }
        k4.recycle();
        if (n()) {
            j(context2);
        }
        k();
    }
}

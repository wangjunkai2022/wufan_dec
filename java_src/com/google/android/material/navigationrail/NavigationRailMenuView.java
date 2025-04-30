package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class NavigationRailMenuView extends NavigationBarMenuView {
    @Px
    private int G;
    private final FrameLayout.LayoutParams H;

    public NavigationRailMenuView(@NonNull Context context) {
        super(context);
        this.G = -1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.H = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
        setItemActiveIndicatorResizeable(true);
    }

    private int t(int i2, int i4, int i5) {
        int max = i4 / Math.max(1, i5);
        int i6 = this.G;
        if (i6 == -1) {
            i6 = View.MeasureSpec.getSize(i2);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(i6, max), 0);
    }

    private int u(View view, int i2, int i4) {
        if (view.getVisibility() != 8) {
            view.measure(i2, i4);
            return view.getMeasuredHeight();
        }
        return 0;
    }

    private int v(int i2, int i4, int i5, View view) {
        int makeMeasureSpec;
        t(i2, i4, i5);
        if (view == null) {
            makeMeasureSpec = t(i2, i4, i5);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        }
        int childCount = getChildCount();
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt != view) {
                i6 += u(childAt, i2, makeMeasureSpec);
            }
        }
        return i6;
    }

    private int w(int i2, int i4, int i5) {
        int i6;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            i6 = u(childAt, i2, t(i2, i4, i5));
            i4 -= i6;
            i5--;
        } else {
            i6 = 0;
        }
        return i6 + v(i2, i4, i5, childAt);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    protected NavigationBarItemView f(@NonNull Context context) {
        return new a(context);
    }

    @Px
    public int getItemMinimumHeight() {
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMenuGravity() {
        return this.H.gravity;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int childCount = getChildCount();
        int i7 = i5 - i2;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i8;
                childAt.layout(0, i8, i7, measuredHeight);
                i8 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int v3;
        int size = View.MeasureSpec.getSize(i4);
        int size2 = getMenu().getVisibleItems().size();
        if (size2 > 1 && k(getLabelVisibilityMode(), size2)) {
            v3 = w(i2, size, size2);
        } else {
            v3 = v(i2, size, size2, null);
        }
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i2), i2, 0), View.resolveSizeAndState(v3, i4, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean s() {
        return (this.H.gravity & 112) == 48;
    }

    public void setItemMinimumHeight(@Px int i2) {
        if (this.G != i2) {
            this.G = i2;
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMenuGravity(int i2) {
        FrameLayout.LayoutParams layoutParams = this.H;
        if (layoutParams.gravity != i2) {
            layoutParams.gravity = i2;
            setLayoutParams(layoutParams);
        }
    }
}

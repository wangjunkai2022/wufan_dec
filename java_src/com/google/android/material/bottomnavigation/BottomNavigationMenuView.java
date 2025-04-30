package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {
    private final int G;
    private final int H;
    private final int I;
    private final int J;
    private boolean K;

    /* renamed from: n0  reason: collision with root package name */
    private int[] f14185n0;

    public BottomNavigationMenuView(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.G = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.H = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.I = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.J = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
        this.f14185n0 = new int[5];
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    protected NavigationBarItemView f(@NonNull Context context) {
        return new BottomNavigationItemView(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int childCount = getChildCount();
        int i7 = i5 - i2;
        int i8 = i6 - i4;
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i11 = i7 - i9;
                    childAt.layout(i11 - childAt.getMeasuredWidth(), 0, i11, i8);
                } else {
                    childAt.layout(i9, 0, childAt.getMeasuredWidth() + i9, i8);
                }
                i9 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        MenuBuilder menu = getMenu();
        int size = View.MeasureSpec.getSize(i2);
        int size2 = menu.getVisibleItems().size();
        int childCount = getChildCount();
        int size3 = View.MeasureSpec.getSize(i4);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
        if (k(getLabelVisibilityMode(), size2) && s()) {
            View childAt = getChildAt(getSelectedItemPosition());
            int i5 = this.J;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.I, Integer.MIN_VALUE), makeMeasureSpec);
                i5 = Math.max(i5, childAt.getMeasuredWidth());
            }
            int i6 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min = Math.min(size - (this.H * i6), Math.min(i5, this.I));
            int i7 = size - min;
            int min2 = Math.min(i7 / (i6 == 0 ? 1 : i6), this.G);
            int i8 = i7 - (i6 * min2);
            int i9 = 0;
            while (i9 < childCount) {
                if (getChildAt(i9).getVisibility() != 8) {
                    this.f14185n0[i9] = i9 == getSelectedItemPosition() ? min : min2;
                    if (i8 > 0) {
                        int[] iArr = this.f14185n0;
                        iArr[i9] = iArr[i9] + 1;
                        i8--;
                    }
                } else {
                    this.f14185n0[i9] = 0;
                }
                i9++;
            }
        } else {
            int min3 = Math.min(size / (size2 == 0 ? 1 : size2), this.I);
            int i10 = size - (size2 * min3);
            for (int i11 = 0; i11 < childCount; i11++) {
                if (getChildAt(i11).getVisibility() != 8) {
                    int[] iArr2 = this.f14185n0;
                    iArr2[i11] = min3;
                    if (i10 > 0) {
                        iArr2[i11] = iArr2[i11] + 1;
                        i10--;
                    }
                } else {
                    this.f14185n0[i11] = 0;
                }
            }
        }
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt2 = getChildAt(i13);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f14185n0[i13], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i12 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i12, View.MeasureSpec.makeMeasureSpec(i12, 1073741824), 0), View.resolveSizeAndState(size3, i4, 0));
    }

    public boolean s() {
        return this.K;
    }

    public void setItemHorizontalTranslationEnabled(boolean z3) {
        this.K = z3;
    }
}

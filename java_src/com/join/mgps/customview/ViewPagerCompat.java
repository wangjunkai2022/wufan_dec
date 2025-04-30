package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes3.dex */
public class ViewPagerCompat extends ViewPager {
    public ViewPagerCompat(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager
    public boolean canScroll(View view, boolean z3, int i2, int i4, int i5) {
        int i6;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i7 = i4 + scrollX;
                if (i7 >= childAt.getLeft() && i7 < childAt.getRight() && (i6 = i5 + scrollY) >= childAt.getTop() && i6 < childAt.getBottom() && canScroll(childAt, true, i2, i7 - childAt.getLeft(), i6 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (z3) {
            if (view instanceof ViewPager) {
                return view.canScrollHorizontally(-i2);
            }
            return ViewCompat.canScrollHorizontally(view, -i2);
        }
        return false;
    }

    public ViewPagerCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}

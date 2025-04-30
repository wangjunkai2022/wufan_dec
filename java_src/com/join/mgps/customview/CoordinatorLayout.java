package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.flipboard.bottomsheet.BottomSheetLayout;
/* loaded from: classes3.dex */
public class CoordinatorLayout extends androidx.coordinatorlayout.widget.CoordinatorLayout {
    BottomSheetLayout F;

    /* loaded from: classes3.dex */
    public interface a {
        boolean a();
    }

    public CoordinatorLayout(@NonNull Context context) {
        super(context);
    }

    boolean P() {
        BottomSheetLayout bottomSheetLayout = this.F;
        return bottomSheetLayout != null && bottomSheetLayout.A();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return P() ? this.F.dispatchTouchEvent(motionEvent) : super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (P()) {
            return this.F.onInterceptTouchEvent(motionEvent);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return P() ? this.F.onTouchEvent(motionEvent) : super.onTouchEvent(motionEvent);
    }

    public void setSheetLayout(BottomSheetLayout bottomSheetLayout) {
        this.F = bottomSheetLayout;
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}

package com.join.mgps.listener;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes4.dex */
public class ToolbarAlphaBehavior extends CoordinatorLayout.Behavior<Toolbar> {

    /* renamed from: e  reason: collision with root package name */
    private static final String f50993e = "ToolbarAlphaBehavior";

    /* renamed from: a  reason: collision with root package name */
    private int f50994a;

    /* renamed from: b  reason: collision with root package name */
    private int f50995b;

    /* renamed from: c  reason: collision with root package name */
    private int f50996c;

    /* renamed from: d  reason: collision with root package name */
    private Context f50997d;

    public ToolbarAlphaBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f50994a = 0;
        this.f50995b = 0;
        this.f50996c = 0;
        this.f50997d = context;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, Toolbar toolbar, View view, int i2, int i4, int i5, int i6) {
        this.f50995b = 0;
        int dimensionPixelOffset = this.f50997d.getResources().getDimensionPixelOffset(R.dimen.list_margin_height) - toolbar.getHeight();
        this.f50996c = dimensionPixelOffset;
        int i7 = this.f50994a + i4;
        this.f50994a = i7;
        int i8 = this.f50995b;
        if (i7 <= i8) {
            toolbar.getBackground().setAlpha(0);
        } else if (i7 > i8 && i7 < dimensionPixelOffset) {
            toolbar.getBackground().setAlpha(Math.round(((i7 - i8) / dimensionPixelOffset) * 255.0f));
        } else if (i7 >= dimensionPixelOffset) {
            toolbar.getBackground().setAlpha(255);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, Toolbar toolbar, View view, View view2, int i2) {
        return true;
    }
}

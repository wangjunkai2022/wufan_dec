package com.join.mgps.ptr;

import android.os.Build;
import android.view.View;
import android.widget.AbsListView;
/* compiled from: PtrDefaultHandler.java */
/* loaded from: classes4.dex */
public abstract class a implements b {
    public static boolean c(View view) {
        if (Build.VERSION.SDK_INT < 14) {
            if (!(view instanceof AbsListView)) {
                return view.getScrollY() > 0;
            }
            AbsListView absListView = (AbsListView) view;
            return absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop());
        }
        return view.canScrollVertically(-1);
    }

    public static boolean d(PtrFrameLayout ptrFrameLayout, View view, View view2) {
        return !c(view);
    }

    @Override // com.join.mgps.ptr.b
    public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
        return d(ptrFrameLayout, view, view2);
    }
}

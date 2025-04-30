package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.internal.w;
import com.google.android.material.tabs.TabLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TabIndicatorInterpolator.java */
/* loaded from: classes2.dex */
public class c {
    @Dimension(unit = 0)

    /* renamed from: a  reason: collision with root package name */
    private static final int f15954a = 24;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF a(TabLayout tabLayout, @Nullable View view) {
        if (view == null) {
            return new RectF();
        }
        if (!tabLayout.D() && (view instanceof TabLayout.TabView)) {
            return b((TabLayout.TabView) view, 24);
        }
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    static RectF b(@NonNull TabLayout.TabView tabView, @Dimension(unit = 0) int i2) {
        int contentWidth = tabView.getContentWidth();
        int contentHeight = tabView.getContentHeight();
        int e4 = (int) w.e(tabView.getContext(), i2);
        if (contentWidth < e4) {
            contentWidth = e4;
        }
        int left = (tabView.getLeft() + tabView.getRight()) / 2;
        int top = (tabView.getTop() + tabView.getBottom()) / 2;
        int i4 = contentWidth / 2;
        return new RectF(left - i4, top - (contentHeight / 2), i4 + left, top + (left / 2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(TabLayout tabLayout, View view, @NonNull Drawable drawable) {
        RectF a4 = a(tabLayout, view);
        drawable.setBounds((int) a4.left, drawable.getBounds().top, (int) a4.right, drawable.getBounds().bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(TabLayout tabLayout, View view, View view2, @FloatRange(from = 0.0d, to = 1.0d) float f4, @NonNull Drawable drawable) {
        RectF a4 = a(tabLayout, view);
        RectF a5 = a(tabLayout, view2);
        drawable.setBounds(com.google.android.material.animation.a.c((int) a4.left, (int) a5.left, f4), drawable.getBounds().top, com.google.android.material.animation.a.c((int) a4.right, (int) a5.right, f4), drawable.getBounds().bottom);
    }
}

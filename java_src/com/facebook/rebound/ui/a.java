package com.facebook.rebound.ui;

import android.content.res.Resources;
import android.util.TypedValue;
import android.widget.FrameLayout;
/* compiled from: Util.java */
/* loaded from: classes2.dex */
public abstract class a {
    public static final FrameLayout.LayoutParams a(int i2, int i4) {
        return new FrameLayout.LayoutParams(i2, i4);
    }

    public static final FrameLayout.LayoutParams b() {
        return a(-1, -1);
    }

    public static final FrameLayout.LayoutParams c() {
        return a(-1, -2);
    }

    public static final FrameLayout.LayoutParams d() {
        return a(-2, -1);
    }

    public static final FrameLayout.LayoutParams e() {
        return a(-2, -2);
    }

    public static final int f(float f4, Resources resources) {
        return (int) TypedValue.applyDimension(1, f4, resources.getDisplayMetrics());
    }
}

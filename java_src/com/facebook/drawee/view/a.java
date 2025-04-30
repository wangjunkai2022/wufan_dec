package com.facebook.drawee.view;

import android.view.View;
import android.view.ViewGroup;
import javax.annotation.Nullable;
/* compiled from: AspectRatioMeasure.java */
/* loaded from: classes.dex */
public class a {

    /* compiled from: AspectRatioMeasure.java */
    /* renamed from: com.facebook.drawee.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0070a {

        /* renamed from: a  reason: collision with root package name */
        public int f12210a;

        /* renamed from: b  reason: collision with root package name */
        public int f12211b;
    }

    private static boolean a(int i2) {
        return i2 == 0 || i2 == -2;
    }

    public static void b(C0070a c0070a, float f4, @Nullable ViewGroup.LayoutParams layoutParams, int i2, int i4) {
        if (f4 <= 0.0f || layoutParams == null) {
            return;
        }
        if (a(layoutParams.height)) {
            c0070a.f12211b = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(c0070a.f12210a) - i2) / f4) + i4), c0070a.f12211b), 1073741824);
        } else if (a(layoutParams.width)) {
            c0070a.f12210a = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(c0070a.f12211b) - i4) * f4) + i2), c0070a.f12210a), 1073741824);
        }
    }
}

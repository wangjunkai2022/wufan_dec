package com.youth.banner.transformer;

import android.view.View;
/* compiled from: ZoomOutSlideTransformer.java */
/* loaded from: classes3.dex */
public class q extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final float f64913a = 0.85f;

    /* renamed from: b  reason: collision with root package name */
    private static final float f64914b = 0.5f;

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        if (f4 >= -1.0f || f4 <= 1.0f) {
            float height = view.getHeight();
            float width = view.getWidth();
            float max = Math.max((float) f64913a, 1.0f - Math.abs(f4));
            float f5 = 1.0f - max;
            float f6 = (height * f5) / 2.0f;
            float f7 = (f5 * width) / 2.0f;
            view.setPivotY(height * 0.5f);
            view.setPivotX(width * 0.5f);
            if (f4 < 0.0f) {
                view.setTranslationX(f7 - (f6 / 2.0f));
            } else {
                view.setTranslationX((-f7) + (f6 / 2.0f));
            }
            view.setScaleX(max);
            view.setScaleY(max);
            view.setAlpha((((max - f64913a) / 0.14999998f) * 0.5f) + 0.5f);
        }
    }
}

package com.youth.banner.transformer;

import android.view.View;
/* compiled from: ForegroundToBackgroundTransformer.java */
/* loaded from: classes3.dex */
public class j extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        float height = view.getHeight();
        float width = view.getWidth();
        float c4 = a.c(f4 <= 0.0f ? Math.abs(1.0f + f4) : 1.0f, 0.5f);
        view.setScaleX(c4);
        view.setScaleY(c4);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height * 0.5f);
        view.setTranslationX(f4 > 0.0f ? width * f4 : (-width) * f4 * 0.25f);
    }
}

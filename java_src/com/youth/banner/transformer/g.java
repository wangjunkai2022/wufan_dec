package com.youth.banner.transformer;

import android.view.View;
/* compiled from: DepthPageTransformer.java */
/* loaded from: classes3.dex */
public class g extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final float f64907a = 0.75f;

    @Override // com.youth.banner.transformer.a
    protected boolean b() {
        return true;
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        if (f4 <= 0.0f) {
            view.setTranslationX(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
        } else if (f4 <= 1.0f) {
            float abs = ((1.0f - Math.abs(f4)) * 0.25f) + 0.75f;
            view.setAlpha(1.0f - f4);
            view.setPivotY(view.getHeight() * 0.5f);
            view.setTranslationX(view.getWidth() * (-f4));
            view.setScaleX(abs);
            view.setScaleY(abs);
        }
    }
}

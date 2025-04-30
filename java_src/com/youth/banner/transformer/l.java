package com.youth.banner.transformer;

import android.view.View;
/* compiled from: RotateUpTransformer.java */
/* loaded from: classes3.dex */
public class l extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final float f64909a = -15.0f;

    @Override // com.youth.banner.transformer.a
    protected boolean b() {
        return true;
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        float f5 = f4 * f64909a;
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(0.0f);
        view.setTranslationX(0.0f);
        view.setRotation(f5);
    }
}

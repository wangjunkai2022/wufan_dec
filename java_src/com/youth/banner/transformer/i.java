package com.youth.banner.transformer;

import android.view.View;
/* compiled from: FlipVerticalTransformer.java */
/* loaded from: classes3.dex */
public class i extends a {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.youth.banner.transformer.a
    public void d(View view, float f4) {
        super.d(view, f4);
        if (f4 > -0.5f && f4 < 0.5f) {
            view.setVisibility(0);
        } else {
            view.setVisibility(4);
        }
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        float f5 = f4 * (-180.0f);
        view.setAlpha((f5 > 90.0f || f5 < -90.0f) ? 0.0f : 1.0f);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationX(f5);
    }
}

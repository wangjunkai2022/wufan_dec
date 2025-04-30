package com.youth.banner.transformer;

import android.view.View;
/* compiled from: ZoomOutTranformer.java */
/* loaded from: classes3.dex */
public class r extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        float abs = Math.abs(f4) + 1.0f;
        view.setScaleX(abs);
        view.setScaleY(abs);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setAlpha((f4 < -1.0f || f4 > 1.0f) ? 0.0f : 1.0f - (abs - 1.0f));
        if (f4 == -1.0f) {
            view.setTranslationX(view.getWidth() * (-1));
        }
    }
}

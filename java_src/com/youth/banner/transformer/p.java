package com.youth.banner.transformer;

import android.view.View;
/* compiled from: ZoomInTransformer.java */
/* loaded from: classes3.dex */
public class p extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        float f5 = 0.0f;
        float abs = f4 < 0.0f ? f4 + 1.0f : Math.abs(1.0f - f4);
        view.setScaleX(abs);
        view.setScaleY(abs);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        if (f4 >= -1.0f && f4 <= 1.0f) {
            f5 = 1.0f - (abs - 1.0f);
        }
        view.setAlpha(f5);
    }
}

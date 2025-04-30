package com.youth.banner.transformer;

import android.view.View;
/* compiled from: ScaleInOutTransformer.java */
/* loaded from: classes3.dex */
public class m extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        view.setPivotX(f4 < 0.0f ? 0.0f : view.getWidth());
        view.setPivotY(view.getHeight() / 2.0f);
        float f5 = f4 < 0.0f ? f4 + 1.0f : 1.0f - f4;
        view.setScaleX(f5);
        view.setScaleY(f5);
    }
}

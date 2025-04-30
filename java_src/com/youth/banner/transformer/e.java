package com.youth.banner.transformer;

import android.view.View;
/* compiled from: CubeOutTransformer.java */
/* loaded from: classes3.dex */
public class e extends a {
    @Override // com.youth.banner.transformer.a
    public boolean b() {
        return true;
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        view.setPivotX(f4 < 0.0f ? view.getWidth() : 0.0f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationY(f4 * 90.0f);
    }
}

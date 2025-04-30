package com.youth.banner.transformer;

import android.view.View;
/* compiled from: CubeInTransformer.java */
/* loaded from: classes3.dex */
public class d extends a {
    @Override // com.youth.banner.transformer.a
    public boolean b() {
        return true;
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        view.setPivotX(f4 > 0.0f ? 0.0f : view.getWidth());
        view.setPivotY(0.0f);
        view.setRotationY(f4 * (-90.0f));
    }
}

package com.youth.banner.transformer;

import android.view.View;
/* compiled from: AccordionTransformer.java */
/* loaded from: classes3.dex */
public class b extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        view.setPivotX(f4 < 0.0f ? 0.0f : view.getWidth());
        view.setScaleX(f4 < 0.0f ? f4 + 1.0f : 1.0f - f4);
    }
}

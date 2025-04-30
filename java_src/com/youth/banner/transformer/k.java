package com.youth.banner.transformer;

import android.view.View;
/* compiled from: RotateDownTransformer.java */
/* loaded from: classes3.dex */
public class k extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final float f64908a = -15.0f;

    @Override // com.youth.banner.transformer.a
    protected boolean b() {
        return true;
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight());
        view.setRotation(f4 * f64908a * (-1.25f));
    }
}

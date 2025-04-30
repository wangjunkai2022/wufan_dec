package com.youth.banner.transformer;

import android.view.View;
/* compiled from: StackTransformer.java */
/* loaded from: classes3.dex */
public class n extends a {
    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        view.setTranslationX(f4 >= 0.0f ? (-view.getWidth()) * f4 : 0.0f);
    }
}

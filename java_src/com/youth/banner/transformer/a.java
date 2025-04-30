package com.youth.banner.transformer;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
/* compiled from: ABaseTransformer.java */
/* loaded from: classes3.dex */
public abstract class a implements ViewPager.PageTransformer {
    /* JADX INFO: Access modifiers changed from: protected */
    public static final float c(float f4, float f5) {
        return f4 < f5 ? f5 : f4;
    }

    protected boolean a() {
        return true;
    }

    protected boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(View view, float f4) {
    }

    protected void e(View view, float f4) {
        float width = view.getWidth();
        float f5 = 0.0f;
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setRotation(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setTranslationY(0.0f);
        view.setTranslationX(b() ? 0.0f : (-width) * f4);
        if (a()) {
            if (f4 > -1.0f && f4 < 1.0f) {
                f5 = 1.0f;
            }
            view.setAlpha(f5);
            return;
        }
        view.setAlpha(1.0f);
    }

    protected abstract void f(View view, float f4);

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f4) {
        e(view, f4);
        f(view, f4);
        d(view, f4);
    }
}

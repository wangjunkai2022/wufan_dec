package com.youth.banner.transformer;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.View;
/* compiled from: TabletTransformer.java */
/* loaded from: classes3.dex */
public class o extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final Matrix f64910a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    private static final Camera f64911b = new Camera();

    /* renamed from: c  reason: collision with root package name */
    private static final float[] f64912c = new float[2];

    protected static final float g(float f4, int i2, int i4) {
        Matrix matrix = f64910a;
        matrix.reset();
        Camera camera = f64911b;
        camera.save();
        camera.rotateY(Math.abs(f4));
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate((-i2) * 0.5f, (-i4) * 0.5f);
        float f5 = i2;
        float f6 = i4;
        matrix.postTranslate(f5 * 0.5f, 0.5f * f6);
        float[] fArr = f64912c;
        fArr[0] = f5;
        fArr[1] = f6;
        matrix.mapPoints(fArr);
        return (f5 - fArr[0]) * (f4 > 0.0f ? 1.0f : -1.0f);
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f4) {
        float abs = (f4 < 0.0f ? 30.0f : -30.0f) * Math.abs(f4);
        view.setTranslationX(g(abs, view.getWidth(), view.getHeight()));
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(0.0f);
        view.setRotationY(abs);
    }
}

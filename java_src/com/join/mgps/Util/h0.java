package com.join.mgps.Util;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
/* compiled from: FlipCardAnimation.java */
/* loaded from: classes3.dex */
public class h0 extends Animation {

    /* renamed from: a  reason: collision with root package name */
    private final float f27579a;

    /* renamed from: b  reason: collision with root package name */
    private final float f27580b;

    /* renamed from: c  reason: collision with root package name */
    private final float f27581c;

    /* renamed from: d  reason: collision with root package name */
    private final float f27582d;

    /* renamed from: e  reason: collision with root package name */
    private Camera f27583e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f27584f = false;

    /* renamed from: g  reason: collision with root package name */
    private a f27585g;

    /* compiled from: FlipCardAnimation.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    public h0(float f4, float f5, float f6, float f7) {
        this.f27579a = f4;
        this.f27580b = f5;
        this.f27581c = f6;
        this.f27582d = f7;
    }

    public void a() {
        this.f27584f = false;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f4, Transformation transformation) {
        try {
            float f5 = this.f27579a;
            float f6 = f5 + ((this.f27580b - f5) * f4);
            float f7 = this.f27581c;
            float f8 = this.f27582d;
            Camera camera = this.f27583e;
            Matrix matrix = transformation.getMatrix();
            camera.save();
            if (f6 > 90.0f || f6 < -90.0f) {
                if (!this.f27584f) {
                    a aVar = this.f27585g;
                    if (aVar != null) {
                        aVar.a();
                    }
                    this.f27584f = true;
                }
                if (f6 > 0.0f) {
                    f6 = (f6 + 270.0f) - 90.0f;
                } else if (f6 < 0.0f) {
                    f6 = (f6 + 90.0f) - 270.0f;
                }
            }
            camera.rotateY(f6);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f7, -f8);
            matrix.postTranslate(f7, f8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void b(a aVar) {
        this.f27585g = aVar;
    }

    @Override // android.view.animation.Animation
    public void initialize(int i2, int i4, int i5, int i6) {
        super.initialize(i2, i4, i5, i6);
        this.f27583e = new Camera();
    }
}

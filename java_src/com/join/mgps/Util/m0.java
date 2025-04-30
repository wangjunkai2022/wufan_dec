package com.join.mgps.Util;

import android.view.animation.Interpolator;
/* compiled from: HomeAnimInterpolator.java */
/* loaded from: classes3.dex */
public class m0 implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    float f27692a;

    public m0() {
        this.f27692a = 0.7f;
    }

    private static float a(float f4) {
        return f4 * f4 * 8.0f;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f4) {
        double pow = Math.pow(2.0d, (-10.0f) * f4);
        double d4 = f4 - 0.1f;
        Double.isNaN(d4);
        double d5 = 0.4f;
        Double.isNaN(d5);
        return (float) ((pow * Math.sin((d4 * 6.283185307179586d) / d5)) + 1.0d);
    }

    public m0(float f4) {
        this.f27692a = 0.7f;
        this.f27692a = f4;
    }
}

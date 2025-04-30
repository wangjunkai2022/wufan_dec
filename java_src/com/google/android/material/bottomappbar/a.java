package com.google.android.material.bottomappbar;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.shape.f;
import com.google.android.material.shape.o;
/* compiled from: BottomAppBarTopEdgeTreatment.java */
/* loaded from: classes2.dex */
public class a extends f implements Cloneable {

    /* renamed from: g  reason: collision with root package name */
    private static final int f14174g = 90;

    /* renamed from: h  reason: collision with root package name */
    private static final int f14175h = 180;

    /* renamed from: i  reason: collision with root package name */
    private static final int f14176i = 270;

    /* renamed from: j  reason: collision with root package name */
    private static final int f14177j = 180;

    /* renamed from: k  reason: collision with root package name */
    private static final float f14178k = 1.75f;

    /* renamed from: a  reason: collision with root package name */
    private float f14179a;

    /* renamed from: b  reason: collision with root package name */
    private float f14180b;

    /* renamed from: c  reason: collision with root package name */
    private float f14181c;

    /* renamed from: d  reason: collision with root package name */
    private float f14182d;

    /* renamed from: e  reason: collision with root package name */
    private float f14183e;

    /* renamed from: f  reason: collision with root package name */
    private float f14184f = -1.0f;

    public a(float f4, float f5, float f6) {
        this.f14180b = f4;
        this.f14179a = f5;
        j(f6);
        this.f14183e = 0.0f;
    }

    @Override // com.google.android.material.shape.f
    public void b(float f4, float f5, float f6, @NonNull o oVar) {
        float f7;
        float f8;
        float f9 = this.f14181c;
        if (f9 == 0.0f) {
            oVar.n(f4, 0.0f);
            return;
        }
        float f10 = ((this.f14180b * 2.0f) + f9) / 2.0f;
        float f11 = f6 * this.f14179a;
        float f12 = f5 + this.f14183e;
        float f13 = (this.f14182d * f6) + ((1.0f - f6) * f10);
        if (f13 / f10 >= 1.0f) {
            oVar.n(f4, 0.0f);
            return;
        }
        float f14 = this.f14184f;
        float f15 = f14 * f6;
        boolean z3 = f14 == -1.0f || Math.abs((f14 * 2.0f) - f9) < 0.1f;
        if (z3) {
            f7 = f13;
            f8 = 0.0f;
        } else {
            f8 = 1.75f;
            f7 = 0.0f;
        }
        float f16 = f10 + f11;
        float f17 = f7 + f11;
        float sqrt = (float) Math.sqrt((f16 * f16) - (f17 * f17));
        float f18 = f12 - sqrt;
        float f19 = f12 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f17));
        float f20 = (90.0f - degrees) + f8;
        oVar.n(f18, 0.0f);
        float f21 = f11 * 2.0f;
        oVar.a(f18 - f11, 0.0f, f18 + f11, f21, 270.0f, degrees);
        if (z3) {
            oVar.a(f12 - f10, (-f10) - f7, f12 + f10, f10 - f7, 180.0f - f20, (f20 * 2.0f) - 180.0f);
        } else {
            float f22 = this.f14180b;
            float f23 = f15 * 2.0f;
            float f24 = f12 - f10;
            oVar.a(f24, -(f15 + f22), f24 + f22 + f23, f22 + f15, 180.0f - f20, ((f20 * 2.0f) - 180.0f) / 2.0f);
            float f25 = f12 + f10;
            float f26 = this.f14180b;
            oVar.n(f25 - ((f26 / 2.0f) + f15), f26 + f15);
            float f27 = this.f14180b;
            oVar.a(f25 - (f23 + f27), -(f15 + f27), f25, f27 + f15, 90.0f, f20 - 90.0f);
        }
        oVar.a(f19 - f11, 0.0f, f19 + f11, f21, 270.0f - degrees, degrees);
        oVar.n(f4, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        return this.f14182d;
    }

    public float e() {
        return this.f14184f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float f() {
        return this.f14180b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g() {
        return this.f14179a;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float h() {
        return this.f14181c;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float i() {
        return this.f14183e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(@FloatRange(from = 0.0d) float f4) {
        if (f4 >= 0.0f) {
            this.f14182d = f4;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    public void k(float f4) {
        this.f14184f = f4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(float f4) {
        this.f14180b = f4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(float f4) {
        this.f14179a = f4;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void n(float f4) {
        this.f14181c = f4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(float f4) {
        this.f14183e = f4;
    }
}

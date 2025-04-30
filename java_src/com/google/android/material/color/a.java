package com.google.android.material.color;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Blend.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final float f14490a = 15.0f;

    /* renamed from: b  reason: collision with root package name */
    private static final float f14491b = 0.5f;

    private a() {
    }

    public static int a(int i2, int i4, float f4) {
        b b4 = b.b(i2);
        b b5 = b.b(i4);
        float n4 = b4.n();
        float h4 = b4.h();
        float i5 = b4.i();
        return b.f(n4 + ((b5.n() - n4) * f4), h4 + ((b5.h() - h4) * f4), i5 + ((b5.i() - i5) * f4)).l();
    }

    public static int b(int i2, int i4, float f4) {
        return l.b(b.b(a(i2, i4, f4)).k(), b.b(i2).j(), f.l(i2)).m();
    }

    public static int c(int i2, int i4) {
        l c4 = l.c(i2);
        l c5 = l.c(i4);
        return l.b(n.d(c4.g() + (Math.min(n.b(c4.g(), c5.g()) * 0.5f, 15.0f) * d(c4.g(), c5.g()))), c4.f(), c4.h()).m();
    }

    private static float d(float f4, float f5) {
        float f6 = f5 - f4;
        float f7 = f6 + 360.0f;
        float f8 = f6 - 360.0f;
        float abs = Math.abs(f6);
        float abs2 = Math.abs(f7);
        float abs3 = Math.abs(f8);
        return (abs > abs2 || abs > abs3) ? (abs2 > abs || abs2 > abs3) ? ((double) f8) >= 0.0d ? 1.0f : -1.0f : ((double) f7) >= 0.0d ? 1.0f : -1.0f : ((double) f6) >= 0.0d ? 1.0f : -1.0f;
    }
}

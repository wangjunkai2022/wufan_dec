package com.google.android.material.transition;
/* compiled from: FadeModeResult.java */
/* loaded from: classes2.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    final int f16418a;

    /* renamed from: b  reason: collision with root package name */
    final int f16419b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f16420c;

    private c(int i2, int i4, boolean z3) {
        this.f16418a = i2;
        this.f16419b = i4;
        this.f16420c = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c a(int i2, int i4) {
        return new c(i2, i4, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c b(int i2, int i4) {
        return new c(i2, i4, false);
    }
}

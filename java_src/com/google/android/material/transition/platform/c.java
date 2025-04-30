package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;
/* compiled from: FadeModeResult.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    final int f16553a;

    /* renamed from: b  reason: collision with root package name */
    final int f16554b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f16555c;

    private c(int i2, int i4, boolean z3) {
        this.f16553a = i2;
        this.f16554b = i4;
        this.f16555c = z3;
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

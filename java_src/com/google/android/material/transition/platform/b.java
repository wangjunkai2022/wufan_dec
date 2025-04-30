package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;
/* compiled from: FadeModeEvaluators.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.android.material.transition.platform.a f16549a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.android.material.transition.platform.a f16550b = new C0123b();

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.material.transition.platform.a f16551c = new c();

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.android.material.transition.platform.a f16552d = new d();

    /* compiled from: FadeModeEvaluators.java */
    /* loaded from: classes2.dex */
    class a implements com.google.android.material.transition.platform.a {
        a() {
        }

        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c a(float f4, float f5, float f6, float f7) {
            return com.google.android.material.transition.platform.c.a(255, s.n(0, 255, f5, f6, f4));
        }
    }

    /* compiled from: FadeModeEvaluators.java */
    /* renamed from: com.google.android.material.transition.platform.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0123b implements com.google.android.material.transition.platform.a {
        C0123b() {
        }

        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c a(float f4, float f5, float f6, float f7) {
            return com.google.android.material.transition.platform.c.b(s.n(255, 0, f5, f6, f4), 255);
        }
    }

    /* compiled from: FadeModeEvaluators.java */
    /* loaded from: classes2.dex */
    class c implements com.google.android.material.transition.platform.a {
        c() {
        }

        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c a(float f4, float f5, float f6, float f7) {
            return com.google.android.material.transition.platform.c.b(s.n(255, 0, f5, f6, f4), s.n(0, 255, f5, f6, f4));
        }
    }

    /* compiled from: FadeModeEvaluators.java */
    /* loaded from: classes2.dex */
    class d implements com.google.android.material.transition.platform.a {
        d() {
        }

        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c a(float f4, float f5, float f6, float f7) {
            float f8 = ((f6 - f5) * f7) + f5;
            return com.google.android.material.transition.platform.c.b(s.n(255, 0, f5, f8, f4), s.n(0, 255, f8, f6, f4));
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.material.transition.platform.a a(int i2, boolean z3) {
        if (i2 == 0) {
            return z3 ? f16549a : f16550b;
        } else if (i2 == 1) {
            return z3 ? f16550b : f16549a;
        } else if (i2 != 2) {
            if (i2 == 3) {
                return f16552d;
            }
            throw new IllegalArgumentException("Invalid fade mode: " + i2);
        } else {
            return f16551c;
        }
    }
}

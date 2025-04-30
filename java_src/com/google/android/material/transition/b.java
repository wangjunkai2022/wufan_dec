package com.google.android.material.transition;
/* compiled from: FadeModeEvaluators.java */
/* loaded from: classes2.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.android.material.transition.a f16414a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.android.material.transition.a f16415b = new C0122b();

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.material.transition.a f16416c = new c();

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.android.material.transition.a f16417d = new d();

    /* compiled from: FadeModeEvaluators.java */
    /* loaded from: classes2.dex */
    class a implements com.google.android.material.transition.a {
        a() {
        }

        @Override // com.google.android.material.transition.a
        public com.google.android.material.transition.c a(float f4, float f5, float f6, float f7) {
            return com.google.android.material.transition.c.a(255, r.n(0, 255, f5, f6, f4));
        }
    }

    /* compiled from: FadeModeEvaluators.java */
    /* renamed from: com.google.android.material.transition.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0122b implements com.google.android.material.transition.a {
        C0122b() {
        }

        @Override // com.google.android.material.transition.a
        public com.google.android.material.transition.c a(float f4, float f5, float f6, float f7) {
            return com.google.android.material.transition.c.b(r.n(255, 0, f5, f6, f4), 255);
        }
    }

    /* compiled from: FadeModeEvaluators.java */
    /* loaded from: classes2.dex */
    class c implements com.google.android.material.transition.a {
        c() {
        }

        @Override // com.google.android.material.transition.a
        public com.google.android.material.transition.c a(float f4, float f5, float f6, float f7) {
            return com.google.android.material.transition.c.b(r.n(255, 0, f5, f6, f4), r.n(0, 255, f5, f6, f4));
        }
    }

    /* compiled from: FadeModeEvaluators.java */
    /* loaded from: classes2.dex */
    class d implements com.google.android.material.transition.a {
        d() {
        }

        @Override // com.google.android.material.transition.a
        public com.google.android.material.transition.c a(float f4, float f5, float f6, float f7) {
            float f8 = ((f6 - f5) * f7) + f5;
            return com.google.android.material.transition.c.b(r.n(255, 0, f5, f8, f4), r.n(0, 255, f8, f6, f4));
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.material.transition.a a(int i2, boolean z3) {
        if (i2 == 0) {
            return z3 ? f16414a : f16415b;
        } else if (i2 == 1) {
            return z3 ? f16415b : f16414a;
        } else if (i2 != 2) {
            if (i2 == 3) {
                return f16417d;
            }
            throw new IllegalArgumentException("Invalid fade mode: " + i2);
        } else {
            return f16416c;
        }
    }
}

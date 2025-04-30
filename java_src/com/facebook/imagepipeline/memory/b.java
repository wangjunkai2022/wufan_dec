package com.facebook.imagepipeline.memory;
/* compiled from: BitmapCounterConfig.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    public static final int f12807b = 384;

    /* renamed from: a  reason: collision with root package name */
    private int f12808a;

    /* compiled from: BitmapCounterConfig.java */
    /* renamed from: com.facebook.imagepipeline.memory.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0081b {

        /* renamed from: a  reason: collision with root package name */
        private int f12809a;

        public b a() {
            return new b(this);
        }

        public int b() {
            return this.f12809a;
        }

        public C0081b c(int i2) {
            this.f12809a = i2;
            return this;
        }

        private C0081b() {
            this.f12809a = 384;
        }
    }

    public b(C0081b c0081b) {
        this.f12808a = 384;
        this.f12808a = c0081b.b();
    }

    public static C0081b b() {
        return new C0081b();
    }

    public int a() {
        return this.f12808a;
    }

    public void c(int i2) {
        this.f12808a = i2;
    }
}

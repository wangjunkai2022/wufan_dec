package com.facebook.imagepipeline.memory;
/* compiled from: NoOpPoolStatsTracker.java */
/* loaded from: classes2.dex */
public class z implements f0 {

    /* renamed from: h  reason: collision with root package name */
    private static z f12917h;

    private z() {
    }

    public static synchronized z h() {
        z zVar;
        synchronized (z.class) {
            if (f12917h == null) {
                f12917h = new z();
            }
            zVar = f12917h;
        }
        return zVar;
    }

    @Override // com.facebook.imagepipeline.memory.f0
    public void a() {
    }

    @Override // com.facebook.imagepipeline.memory.f0
    public void b(int i2) {
    }

    @Override // com.facebook.imagepipeline.memory.f0
    public void c(int i2) {
    }

    @Override // com.facebook.imagepipeline.memory.f0
    public void d(int i2) {
    }

    @Override // com.facebook.imagepipeline.memory.f0
    public void e(int i2) {
    }

    @Override // com.facebook.imagepipeline.memory.f0
    public void f(BasePool basePool) {
    }

    @Override // com.facebook.imagepipeline.memory.f0
    public void g() {
    }
}

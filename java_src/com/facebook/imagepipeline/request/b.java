package com.facebook.imagepipeline.request;
/* compiled from: BaseRepeatedPostProcessor.java */
/* loaded from: classes2.dex */
public abstract class b extends a implements e {

    /* renamed from: b  reason: collision with root package name */
    private f f13337b;

    private synchronized f g() {
        return this.f13337b;
    }

    @Override // com.facebook.imagepipeline.request.e
    public synchronized void b(f fVar) {
        this.f13337b = fVar;
    }

    public void update() {
        f g4 = g();
        if (g4 != null) {
            g4.update();
        }
    }
}

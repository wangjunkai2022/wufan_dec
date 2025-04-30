package com.facebook.imagepipeline.producers;
/* compiled from: DelegatingConsumer.java */
/* loaded from: classes2.dex */
public abstract class m<I, O> extends b<I> {

    /* renamed from: h  reason: collision with root package name */
    private final Consumer<O> f13144h;

    public m(Consumer<O> consumer) {
        this.f13144h = consumer;
    }

    @Override // com.facebook.imagepipeline.producers.b
    protected void f() {
        this.f13144h.a();
    }

    @Override // com.facebook.imagepipeline.producers.b
    protected void g(Throwable th) {
        this.f13144h.onFailure(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.producers.b
    public void i(float f4) {
        this.f13144h.c(f4);
    }

    public Consumer<O> p() {
        return this.f13144h;
    }
}

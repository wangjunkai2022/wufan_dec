package io.reactivex.internal.operators.flowable;
/* compiled from: AbstractFlowableWithUpstream.java */
/* loaded from: classes5.dex */
abstract class a<T, R> extends io.reactivex.j<R> implements x2.h<T> {

    /* renamed from: b  reason: collision with root package name */
    protected final io.reactivex.j<T> f67288b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.reactivex.j<T> jVar) {
        this.f67288b = (io.reactivex.j) io.reactivex.internal.functions.a.g(jVar, "source is null");
    }

    @Override // x2.h
    public final l3.b<T> source() {
        return this.f67288b;
    }
}

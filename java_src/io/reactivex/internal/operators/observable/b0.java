package io.reactivex.internal.operators.observable;
/* compiled from: ObservableDoOnLifecycle.java */
/* loaded from: classes5.dex */
public final class b0<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    private final w2.g<? super io.reactivex.disposables.b> f68978b;

    /* renamed from: c  reason: collision with root package name */
    private final w2.a f68979c;

    public b0(io.reactivex.z<T> zVar, w2.g<? super io.reactivex.disposables.b> gVar, w2.a aVar) {
        super(zVar);
        this.f68978b = gVar;
        this.f68979c = aVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new io.reactivex.internal.observers.g(g0Var, this.f68978b, this.f68979c));
    }
}

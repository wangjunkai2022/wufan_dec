package io.reactivex.internal.operators.maybe;
/* compiled from: MaybeJust.java */
/* loaded from: classes5.dex */
public final class y<T> extends io.reactivex.q<T> implements x2.m<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f67906a;

    public y(T t3) {
        this.f67906a = t3;
    }

    @Override // x2.m, java.util.concurrent.Callable
    public T call() {
        return this.f67906a;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        tVar.onSubscribe(io.reactivex.disposables.c.a());
        tVar.onSuccess((T) this.f67906a);
    }
}

package io.reactivex.internal.operators.maybe;
/* compiled from: MaybeError.java */
/* loaded from: classes5.dex */
public final class i<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Throwable f67863a;

    public i(Throwable th) {
        this.f67863a = th;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        tVar.onSubscribe(io.reactivex.disposables.c.a());
        tVar.onError(this.f67863a);
    }
}

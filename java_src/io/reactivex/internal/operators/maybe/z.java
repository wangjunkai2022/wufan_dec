package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: MaybeLift.java */
/* loaded from: classes5.dex */
public final class z<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.v<? extends R, ? super T> f67907b;

    public z(io.reactivex.w<T> wVar, io.reactivex.v<? extends R, ? super T> vVar) {
        super(wVar);
        this.f67907b = vVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super R> tVar) {
        try {
            this.f67812a.a((io.reactivex.t) io.reactivex.internal.functions.a.g(this.f67907b.a(tVar), "The operator returned a null MaybeObserver"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, tVar);
        }
    }
}

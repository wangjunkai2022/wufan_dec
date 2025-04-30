package io.reactivex.internal.operators.maybe;

import java.util.concurrent.Callable;
/* compiled from: MaybeFromCallable.java */
/* loaded from: classes5.dex */
public final class o<T> extends io.reactivex.q<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f67883a;

    public o(Callable<? extends T> callable) {
        this.f67883a = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return this.f67883a.call();
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        io.reactivex.disposables.b b4 = io.reactivex.disposables.c.b();
        tVar.onSubscribe(b4);
        if (b4.isDisposed()) {
            return;
        }
        try {
            Object obj = (T) this.f67883a.call();
            if (b4.isDisposed()) {
                return;
            }
            if (obj == null) {
                tVar.onComplete();
            } else {
                tVar.onSuccess(obj);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (!b4.isDisposed()) {
                tVar.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }
    }
}

package io.reactivex.internal.operators.maybe;

import java.util.concurrent.Callable;
/* compiled from: MaybeFromAction.java */
/* loaded from: classes5.dex */
public final class n<T> extends io.reactivex.q<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final w2.a f67882a;

    public n(w2.a aVar) {
        this.f67882a = aVar;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        this.f67882a.run();
        return null;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        io.reactivex.disposables.b b4 = io.reactivex.disposables.c.b();
        tVar.onSubscribe(b4);
        if (b4.isDisposed()) {
            return;
        }
        try {
            this.f67882a.run();
            if (b4.isDisposed()) {
                return;
            }
            tVar.onComplete();
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

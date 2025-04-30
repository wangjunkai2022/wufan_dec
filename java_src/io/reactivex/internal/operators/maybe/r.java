package io.reactivex.internal.operators.maybe;

import java.util.concurrent.Callable;
/* compiled from: MaybeFromRunnable.java */
/* loaded from: classes5.dex */
public final class r<T> extends io.reactivex.q<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f67890a;

    public r(Runnable runnable) {
        this.f67890a = runnable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        this.f67890a.run();
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
            this.f67890a.run();
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

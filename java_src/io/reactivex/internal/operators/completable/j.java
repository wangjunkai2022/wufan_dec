package io.reactivex.internal.operators.completable;

import java.util.concurrent.Callable;
/* compiled from: CompletableFromCallable.java */
/* loaded from: classes5.dex */
public final class j extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<?> f66068a;

    public j(Callable<?> callable) {
        this.f66068a = callable;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        io.reactivex.disposables.b b4 = io.reactivex.disposables.c.b();
        dVar.onSubscribe(b4);
        try {
            this.f66068a.call();
            if (b4.isDisposed()) {
                return;
            }
            dVar.onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (!b4.isDisposed()) {
                dVar.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }
    }
}

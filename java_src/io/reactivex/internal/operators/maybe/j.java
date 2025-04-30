package io.reactivex.internal.operators.maybe;

import java.util.concurrent.Callable;
/* compiled from: MaybeErrorCallable.java */
/* loaded from: classes5.dex */
public final class j<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f67864a;

    public j(Callable<? extends Throwable> callable) {
        this.f67864a = callable;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        tVar.onSubscribe(io.reactivex.disposables.c.a());
        try {
            th = (Throwable) io.reactivex.internal.functions.a.g(this.f67864a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        tVar.onError(th);
    }
}

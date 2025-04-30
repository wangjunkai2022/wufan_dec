package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* compiled from: MaybeDefer.java */
/* loaded from: classes5.dex */
public final class d<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends io.reactivex.w<? extends T>> f67830a;

    public d(Callable<? extends io.reactivex.w<? extends T>> callable) {
        this.f67830a = callable;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        try {
            ((io.reactivex.w) io.reactivex.internal.functions.a.g(this.f67830a.call(), "The maybeSupplier returned a null MaybeSource")).a(tVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, tVar);
        }
    }
}

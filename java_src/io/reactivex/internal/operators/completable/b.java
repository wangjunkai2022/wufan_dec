package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* compiled from: CompletableDefer.java */
/* loaded from: classes5.dex */
public final class b extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends io.reactivex.g> f66050a;

    public b(Callable<? extends io.reactivex.g> callable) {
        this.f66050a = callable;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        try {
            ((io.reactivex.g) io.reactivex.internal.functions.a.g(this.f66050a.call(), "The completableSupplier returned a null CompletableSource")).a(dVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, dVar);
        }
    }
}

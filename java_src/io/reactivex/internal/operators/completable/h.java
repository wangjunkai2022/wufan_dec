package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* compiled from: CompletableErrorSupplier.java */
/* loaded from: classes5.dex */
public final class h extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f66066a;

    public h(Callable<? extends Throwable> callable) {
        this.f66066a = callable;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        try {
            th = (Throwable) io.reactivex.internal.functions.a.g(this.f66066a.call(), "The error returned is null");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, dVar);
    }
}

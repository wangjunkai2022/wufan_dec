package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: CompletableError.java */
/* loaded from: classes5.dex */
public final class g extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Throwable f66065a;

    public g(Throwable th) {
        this.f66065a = th;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        EmptyDisposable.error(this.f66065a, dVar);
    }
}

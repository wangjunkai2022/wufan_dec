package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: CompletableEmpty.java */
/* loaded from: classes5.dex */
public final class f extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.a f66064a = new f();

    private f() {
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        EmptyDisposable.complete(dVar);
    }
}

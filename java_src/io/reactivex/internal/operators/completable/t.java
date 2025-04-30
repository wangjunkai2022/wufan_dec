package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: CompletableNever.java */
/* loaded from: classes5.dex */
public final class t extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    public static final io.reactivex.a f66089a = new t();

    private t() {
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        dVar.onSubscribe(EmptyDisposable.NEVER);
    }
}

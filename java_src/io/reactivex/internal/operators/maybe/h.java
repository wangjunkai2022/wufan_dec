package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: MaybeEmpty.java */
/* loaded from: classes5.dex */
public final class h extends io.reactivex.q<Object> implements x2.m<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final h f67859a = new h();

    @Override // x2.m, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super Object> tVar) {
        EmptyDisposable.complete(tVar);
    }
}

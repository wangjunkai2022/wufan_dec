package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: MaybeNever.java */
/* loaded from: classes5.dex */
public final class b0 extends io.reactivex.q<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final b0 f67822a = new b0();

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super Object> tVar) {
        tVar.onSubscribe(EmptyDisposable.NEVER);
    }
}

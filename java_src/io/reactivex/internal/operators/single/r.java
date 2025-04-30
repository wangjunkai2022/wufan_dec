package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.l0;
import io.reactivex.n0;
import io.reactivex.o0;
/* compiled from: SingleLift.java */
/* loaded from: classes5.dex */
public final class r<T, R> extends i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69797a;

    /* renamed from: b  reason: collision with root package name */
    final n0<? extends R, ? super T> f69798b;

    public r(o0<T> o0Var, n0<? extends R, ? super T> n0Var) {
        this.f69797a = o0Var;
        this.f69798b = n0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super R> l0Var) {
        try {
            this.f69797a.a((l0) io.reactivex.internal.functions.a.g(this.f69798b.a(l0Var), "The onLift returned a null SingleObserver"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}

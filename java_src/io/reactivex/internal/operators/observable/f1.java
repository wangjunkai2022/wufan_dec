package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.observable.e1;
import java.util.concurrent.Callable;
/* compiled from: ObservableReduceWithSingle.java */
/* loaded from: classes5.dex */
public final class f1<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69059a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f69060b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<R, ? super T, R> f69061c;

    public f1(io.reactivex.e0<T> e0Var, Callable<R> callable, w2.c<R, ? super T, R> cVar) {
        this.f69059a = e0Var;
        this.f69060b = callable;
        this.f69061c = cVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super R> l0Var) {
        try {
            this.f69059a.a(new e1.a(l0Var, this.f69061c, io.reactivex.internal.functions.a.g(this.f69060b.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}

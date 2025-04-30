package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.flowable.u0;
import java.util.concurrent.Callable;
/* compiled from: FlowableReduceWithSingle.java */
/* loaded from: classes5.dex */
public final class v0<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<T> f67545a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f67546b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<R, ? super T, R> f67547c;

    public v0(l3.b<T> bVar, Callable<R> callable, w2.c<R, ? super T, R> cVar) {
        this.f67545a = bVar;
        this.f67546b = callable;
        this.f67547c = cVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(io.reactivex.l0<? super R> l0Var) {
        try {
            this.f67545a.c(new u0.a(l0Var, this.f67547c, io.reactivex.internal.functions.a.g(this.f67546b.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}

package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.Callable;
/* compiled from: SingleDefer.java */
/* loaded from: classes5.dex */
public final class b<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends o0<? extends T>> f69734a;

    public b(Callable<? extends o0<? extends T>> callable) {
        this.f69734a = callable;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        try {
            ((o0) io.reactivex.internal.functions.a.g(this.f69734a.call(), "The singleSupplier returned a null SingleSource")).a(l0Var);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}

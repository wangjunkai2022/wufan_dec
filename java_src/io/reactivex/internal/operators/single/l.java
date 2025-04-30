package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.l0;
import java.util.concurrent.Callable;
/* compiled from: SingleError.java */
/* loaded from: classes5.dex */
public final class l<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f69784a;

    public l(Callable<? extends Throwable> callable) {
        this.f69784a = callable;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        try {
            th = (Throwable) io.reactivex.internal.functions.a.g(this.f69784a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, l0Var);
    }
}

package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.l0;
import java.util.concurrent.Callable;
/* compiled from: SingleFromCallable.java */
/* loaded from: classes5.dex */
public final class m<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f69785a;

    public m(Callable<? extends T> callable) {
        this.f69785a = callable;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        io.reactivex.disposables.b b4 = io.reactivex.disposables.c.b();
        l0Var.onSubscribe(b4);
        if (b4.isDisposed()) {
            return;
        }
        try {
            Object obj = (Object) io.reactivex.internal.functions.a.g(this.f69785a.call(), "The callable returned a null value");
            if (b4.isDisposed()) {
                return;
            }
            l0Var.onSuccess(obj);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (!b4.isDisposed()) {
                l0Var.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }
    }
}

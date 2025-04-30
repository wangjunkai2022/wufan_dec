package io.reactivex.internal.operators.maybe;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: MaybeFromFuture.java */
/* loaded from: classes5.dex */
public final class q<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Future<? extends T> f67887a;

    /* renamed from: b  reason: collision with root package name */
    final long f67888b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f67889c;

    public q(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        this.f67887a = future;
        this.f67888b = j4;
        this.f67889c = timeUnit;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        Object obj;
        io.reactivex.disposables.b b4 = io.reactivex.disposables.c.b();
        tVar.onSubscribe(b4);
        if (b4.isDisposed()) {
            return;
        }
        try {
            long j4 = this.f67888b;
            if (j4 <= 0) {
                obj = (T) this.f67887a.get();
            } else {
                obj = (T) this.f67887a.get(j4, this.f67889c);
            }
            if (b4.isDisposed()) {
                return;
            }
            if (obj == null) {
                tVar.onComplete();
            } else {
                tVar.onSuccess(obj);
            }
        } catch (Throwable th) {
            th = th;
            if (th instanceof ExecutionException) {
                th = th.getCause();
            }
            io.reactivex.exceptions.a.b(th);
            if (b4.isDisposed()) {
                return;
            }
            tVar.onError(th);
        }
    }
}

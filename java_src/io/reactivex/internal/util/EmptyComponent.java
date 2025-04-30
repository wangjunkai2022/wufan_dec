package io.reactivex.internal.util;

import io.reactivex.g0;
import io.reactivex.l0;
import io.reactivex.t;
/* loaded from: classes5.dex */
public enum EmptyComponent implements io.reactivex.o<Object>, g0<Object>, t<Object>, l0<Object>, io.reactivex.d, l3.d, io.reactivex.disposables.b {
    INSTANCE;

    public static <T> g0<T> asObserver() {
        return INSTANCE;
    }

    public static <T> l3.c<T> asSubscriber() {
        return INSTANCE;
    }

    @Override // l3.d
    public void cancel() {
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return true;
    }

    @Override // l3.c
    public void onComplete() {
    }

    @Override // l3.c
    public void onError(Throwable th) {
        io.reactivex.plugins.a.Y(th);
    }

    @Override // l3.c
    public void onNext(Object obj) {
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        bVar.dispose();
    }

    @Override // io.reactivex.t
    public void onSuccess(Object obj) {
    }

    @Override // l3.d
    public void request(long j4) {
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        dVar.cancel();
    }
}

package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.Functions;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ConsumerSingleObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.disposables.b, io.reactivex.observers.f {
    private static final long serialVersionUID = -7012088219455310787L;

    /* renamed from: a  reason: collision with root package name */
    final w2.g<? super T> f65869a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super Throwable> f65870b;

    public ConsumerSingleObserver(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2) {
        this.f65869a = gVar;
        this.f65870b = gVar2;
    }

    @Override // io.reactivex.observers.f
    public boolean a() {
        return this.f65870b != Functions.f65827f;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f65870b.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t3) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f65869a.accept(t3);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }
}

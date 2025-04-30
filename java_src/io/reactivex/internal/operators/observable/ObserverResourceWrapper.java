package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObserverResourceWrapper<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, io.reactivex.disposables.b {
    private static final long serialVersionUID = -8612022020200669122L;

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g0<? super T> f68959a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.b> f68960b = new AtomicReference<>();

    public ObserverResourceWrapper(io.reactivex.g0<? super T> g0Var) {
        this.f68959a = g0Var;
    }

    public void a(io.reactivex.disposables.b bVar) {
        DisposableHelper.set(this, bVar);
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        DisposableHelper.dispose(this.f68960b);
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f68960b.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        dispose();
        this.f68959a.onComplete();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        dispose();
        this.f68959a.onError(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        this.f68959a.onNext(t3);
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (DisposableHelper.setOnce(this.f68960b, bVar)) {
            this.f68959a.onSubscribe(this);
        }
    }
}

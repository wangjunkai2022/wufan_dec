package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class BiConsumerSingleObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.disposables.b {
    private static final long serialVersionUID = 4943102778943297569L;

    /* renamed from: a  reason: collision with root package name */
    final w2.b<? super T, ? super Throwable> f65864a;

    public BiConsumerSingleObserver(w2.b<? super T, ? super Throwable> bVar) {
        this.f65864a = bVar;
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
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f65864a.a(null, th);
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
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f65864a.a(t3, null);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }
}

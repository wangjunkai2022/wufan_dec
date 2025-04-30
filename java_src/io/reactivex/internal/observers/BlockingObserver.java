package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class BlockingObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements g0<T>, io.reactivex.disposables.b {

    /* renamed from: b  reason: collision with root package name */
    public static final Object f65865b = new Object();
    private static final long serialVersionUID = -4875965440900746268L;

    /* renamed from: a  reason: collision with root package name */
    final Queue<Object> f65866a;

    public BlockingObserver(Queue<Object> queue) {
        this.f65866a = queue;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        if (DisposableHelper.dispose(this)) {
            this.f65866a.offer(f65865b);
        }
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        this.f65866a.offer(NotificationLite.complete());
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        this.f65866a.offer(NotificationLite.error(th));
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        this.f65866a.offer(NotificationLite.next(t3));
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}

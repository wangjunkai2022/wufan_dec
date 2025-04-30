package io.reactivex.internal.subscribers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SubscriberResourceWrapper<T> extends AtomicReference<io.reactivex.disposables.b> implements o<T>, io.reactivex.disposables.b, l3.d {
    private static final long serialVersionUID = -8612022020200669122L;

    /* renamed from: a  reason: collision with root package name */
    final l3.c<? super T> f70002a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<l3.d> f70003b = new AtomicReference<>();

    public SubscriberResourceWrapper(l3.c<? super T> cVar) {
        this.f70002a = cVar;
    }

    public void a(io.reactivex.disposables.b bVar) {
        DisposableHelper.set(this, bVar);
    }

    @Override // l3.d
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        SubscriptionHelper.cancel(this.f70003b);
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f70003b.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // l3.c
    public void onComplete() {
        DisposableHelper.dispose(this);
        this.f70002a.onComplete();
    }

    @Override // l3.c
    public void onError(Throwable th) {
        DisposableHelper.dispose(this);
        this.f70002a.onError(th);
    }

    @Override // l3.c
    public void onNext(T t3) {
        this.f70002a.onNext(t3);
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.setOnce(this.f70003b, dVar)) {
            this.f70002a.onSubscribe(this);
        }
    }

    @Override // l3.d
    public void request(long j4) {
        if (SubscriptionHelper.validate(j4)) {
            this.f70003b.get().request(j4);
        }
    }
}

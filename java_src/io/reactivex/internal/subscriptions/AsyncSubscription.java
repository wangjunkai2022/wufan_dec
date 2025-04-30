package io.reactivex.internal.subscriptions;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.d;
/* loaded from: classes5.dex */
public final class AsyncSubscription extends AtomicLong implements d, b {
    private static final long serialVersionUID = 7028635084060361255L;

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<d> f70060a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<b> f70061b;

    public AsyncSubscription() {
        this.f70061b = new AtomicReference<>();
        this.f70060a = new AtomicReference<>();
    }

    public boolean a(b bVar) {
        return DisposableHelper.replace(this.f70061b, bVar);
    }

    public boolean b(b bVar) {
        return DisposableHelper.set(this.f70061b, bVar);
    }

    public void c(d dVar) {
        SubscriptionHelper.deferredSetOnce(this.f70060a, this, dVar);
    }

    @Override // l3.d
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        SubscriptionHelper.cancel(this.f70060a);
        DisposableHelper.dispose(this.f70061b);
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f70060a.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // l3.d
    public void request(long j4) {
        SubscriptionHelper.deferredRequest(this.f70060a, this, j4);
    }

    public AsyncSubscription(b bVar) {
        this();
        this.f70061b.lazySet(bVar);
    }
}

package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.o;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class BlockingSubscriber<T> extends AtomicReference<l3.d> implements o<T>, l3.d {

    /* renamed from: b  reason: collision with root package name */
    public static final Object f69964b = new Object();
    private static final long serialVersionUID = -4875965440900746268L;

    /* renamed from: a  reason: collision with root package name */
    final Queue<Object> f69965a;

    public BlockingSubscriber(Queue<Object> queue) {
        this.f69965a = queue;
    }

    public boolean a() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // l3.d
    public void cancel() {
        if (SubscriptionHelper.cancel(this)) {
            this.f69965a.offer(f69964b);
        }
    }

    @Override // l3.c
    public void onComplete() {
        this.f69965a.offer(NotificationLite.complete());
    }

    @Override // l3.c
    public void onError(Throwable th) {
        this.f69965a.offer(NotificationLite.error(th));
    }

    @Override // l3.c
    public void onNext(T t3) {
        this.f69965a.offer(NotificationLite.next(t3));
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            this.f69965a.offer(NotificationLite.subscription(this));
        }
    }

    @Override // l3.d
    public void request(long j4) {
        get().request(j4);
    }
}

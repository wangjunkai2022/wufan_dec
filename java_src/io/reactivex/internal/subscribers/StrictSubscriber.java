package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public class StrictSubscriber<T> extends AtomicInteger implements o<T>, l3.d {
    private static final long serialVersionUID = -4945028590049415624L;

    /* renamed from: a  reason: collision with root package name */
    final l3.c<? super T> f69996a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicThrowable f69997b = new AtomicThrowable();

    /* renamed from: c  reason: collision with root package name */
    final AtomicLong f69998c = new AtomicLong();

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<l3.d> f69999d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    final AtomicBoolean f70000e = new AtomicBoolean();

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f70001f;

    public StrictSubscriber(l3.c<? super T> cVar) {
        this.f69996a = cVar;
    }

    @Override // l3.d
    public void cancel() {
        if (this.f70001f) {
            return;
        }
        SubscriptionHelper.cancel(this.f69999d);
    }

    @Override // l3.c
    public void onComplete() {
        this.f70001f = true;
        io.reactivex.internal.util.g.b(this.f69996a, this, this.f69997b);
    }

    @Override // l3.c
    public void onError(Throwable th) {
        this.f70001f = true;
        io.reactivex.internal.util.g.d(this.f69996a, th, this, this.f69997b);
    }

    @Override // l3.c
    public void onNext(T t3) {
        io.reactivex.internal.util.g.f(this.f69996a, t3, this, this.f69997b);
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        if (this.f70000e.compareAndSet(false, true)) {
            this.f69996a.onSubscribe(this);
            SubscriptionHelper.deferredSetOnce(this.f69999d, this.f69998c, dVar);
            return;
        }
        dVar.cancel();
        cancel();
        onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
    }

    @Override // l3.d
    public void request(long j4) {
        if (j4 <= 0) {
            cancel();
            onError(new IllegalArgumentException("§3.9 violated: positive request amount required but it was " + j4));
            return;
        }
        SubscriptionHelper.deferredRequest(this.f69999d, this.f69998c, j4);
    }
}

package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.f;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ResourceSubscriber.java */
/* loaded from: classes5.dex */
public abstract class c<T> implements o<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<l3.d> f70395a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.internal.disposables.b f70396b = new io.reactivex.internal.disposables.b();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicLong f70397c = new AtomicLong();

    public final void a(io.reactivex.disposables.b bVar) {
        io.reactivex.internal.functions.a.g(bVar, "resource is null");
        this.f70396b.b(bVar);
    }

    protected void b() {
        c(Long.MAX_VALUE);
    }

    protected final void c(long j4) {
        SubscriptionHelper.deferredRequest(this.f70395a, this.f70397c, j4);
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        if (SubscriptionHelper.cancel(this.f70395a)) {
            this.f70396b.dispose();
        }
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return SubscriptionHelper.isCancelled(this.f70395a.get());
    }

    @Override // io.reactivex.o, l3.c
    public final void onSubscribe(l3.d dVar) {
        if (f.d(this.f70395a, dVar, getClass())) {
            long andSet = this.f70397c.getAndSet(0L);
            if (andSet != 0) {
                dVar.request(andSet);
            }
            b();
        }
    }
}

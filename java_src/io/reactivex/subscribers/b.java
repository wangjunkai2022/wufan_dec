package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.f;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: DisposableSubscriber.java */
/* loaded from: classes5.dex */
public abstract class b<T> implements o<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<l3.d> f70394a = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        dispose();
    }

    protected void b() {
        this.f70394a.get().request(Long.MAX_VALUE);
    }

    protected final void c(long j4) {
        this.f70394a.get().request(j4);
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        SubscriptionHelper.cancel(this.f70394a);
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return this.f70394a.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // io.reactivex.o, l3.c
    public final void onSubscribe(l3.d dVar) {
        if (f.d(this.f70394a, dVar, getClass())) {
            b();
        }
    }
}

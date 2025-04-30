package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.o;
import java.util.concurrent.CountDownLatch;
/* compiled from: BlockingBaseSubscriber.java */
/* loaded from: classes5.dex */
public abstract class c<T> extends CountDownLatch implements o<T> {

    /* renamed from: a  reason: collision with root package name */
    T f70014a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f70015b;

    /* renamed from: c  reason: collision with root package name */
    l3.d f70016c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f70017d;

    public c() {
        super(1);
    }

    public final T a() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                l3.d dVar = this.f70016c;
                this.f70016c = SubscriptionHelper.CANCELLED;
                if (dVar != null) {
                    dVar.cancel();
                }
                throw ExceptionHelper.e(e4);
            }
        }
        Throwable th = this.f70015b;
        if (th == null) {
            return this.f70014a;
        }
        throw ExceptionHelper.e(th);
    }

    @Override // l3.c
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.o, l3.c
    public final void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.validate(this.f70016c, dVar)) {
            this.f70016c = dVar;
            if (this.f70017d) {
                return;
            }
            dVar.request(Long.MAX_VALUE);
            if (this.f70017d) {
                this.f70016c = SubscriptionHelper.CANCELLED;
                dVar.cancel();
            }
        }
    }
}

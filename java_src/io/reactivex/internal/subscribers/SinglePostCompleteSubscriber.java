package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements o<T>, l3.d {

    /* renamed from: e  reason: collision with root package name */
    static final long f69990e = Long.MIN_VALUE;

    /* renamed from: f  reason: collision with root package name */
    static final long f69991f = Long.MAX_VALUE;
    private static final long serialVersionUID = 7917814472626990048L;

    /* renamed from: a  reason: collision with root package name */
    protected final l3.c<? super R> f69992a;

    /* renamed from: b  reason: collision with root package name */
    protected l3.d f69993b;

    /* renamed from: c  reason: collision with root package name */
    protected R f69994c;

    /* renamed from: d  reason: collision with root package name */
    protected long f69995d;

    public SinglePostCompleteSubscriber(l3.c<? super R> cVar) {
        this.f69992a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(R r3) {
        long j4 = this.f69995d;
        if (j4 != 0) {
            io.reactivex.internal.util.b.e(this, j4);
        }
        while (true) {
            long j5 = get();
            if ((j5 & Long.MIN_VALUE) != 0) {
                b(r3);
                return;
            } else if ((j5 & Long.MAX_VALUE) != 0) {
                lazySet(-9223372036854775807L);
                this.f69992a.onNext(r3);
                this.f69992a.onComplete();
                return;
            } else {
                this.f69994c = r3;
                if (compareAndSet(0L, Long.MIN_VALUE)) {
                    return;
                }
                this.f69994c = null;
            }
        }
    }

    protected void b(R r3) {
    }

    public void cancel() {
        this.f69993b.cancel();
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.validate(this.f69993b, dVar)) {
            this.f69993b = dVar;
            this.f69992a.onSubscribe(this);
        }
    }

    @Override // l3.d
    public final void request(long j4) {
        long j5;
        if (SubscriptionHelper.validate(j4)) {
            do {
                j5 = get();
                if ((j5 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, -9223372036854775807L)) {
                        this.f69992a.onNext((R) this.f69994c);
                        this.f69992a.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j5, io.reactivex.internal.util.b.c(j5, j4)));
            this.f69993b.request(j4);
        }
    }
}

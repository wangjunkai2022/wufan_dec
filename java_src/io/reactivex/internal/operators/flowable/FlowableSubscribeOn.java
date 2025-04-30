package io.reactivex.internal.operators.flowable;

import io.reactivex.h0;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableSubscribeOn<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f67011c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f67012d;

    /* loaded from: classes5.dex */
    static final class SubscribeOnSubscriber<T> extends AtomicReference<Thread> implements io.reactivex.o<T>, l3.d, Runnable {
        private static final long serialVersionUID = 8094547886072529208L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67013a;

        /* renamed from: b  reason: collision with root package name */
        final h0.c f67014b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<l3.d> f67015c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f67016d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final boolean f67017e;

        /* renamed from: f  reason: collision with root package name */
        l3.b<T> f67018f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final l3.d f67019a;

            /* renamed from: b  reason: collision with root package name */
            final long f67020b;

            a(l3.d dVar, long j4) {
                this.f67019a = dVar;
                this.f67020b = j4;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f67019a.request(this.f67020b);
            }
        }

        SubscribeOnSubscriber(l3.c<? super T> cVar, h0.c cVar2, l3.b<T> bVar, boolean z3) {
            this.f67013a = cVar;
            this.f67014b = cVar2;
            this.f67018f = bVar;
            this.f67017e = !z3;
        }

        void a(long j4, l3.d dVar) {
            if (!this.f67017e && Thread.currentThread() != get()) {
                this.f67014b.b(new a(dVar, j4));
            } else {
                dVar.request(j4);
            }
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f67015c);
            this.f67014b.dispose();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67013a.onComplete();
            this.f67014b.dispose();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67013a.onError(th);
            this.f67014b.dispose();
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67013a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this.f67015c, dVar)) {
                long andSet = this.f67016d.getAndSet(0L);
                if (andSet != 0) {
                    a(andSet, dVar);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                l3.d dVar = this.f67015c.get();
                if (dVar != null) {
                    a(j4, dVar);
                    return;
                }
                io.reactivex.internal.util.b.a(this.f67016d, j4);
                l3.d dVar2 = this.f67015c.get();
                if (dVar2 != null) {
                    long andSet = this.f67016d.getAndSet(0L);
                    if (andSet != 0) {
                        a(andSet, dVar2);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            lazySet(Thread.currentThread());
            l3.b<T> bVar = this.f67018f;
            this.f67018f = null;
            bVar.c(this);
        }
    }

    public FlowableSubscribeOn(io.reactivex.j<T> jVar, io.reactivex.h0 h0Var, boolean z3) {
        super(jVar);
        this.f67011c = h0Var;
        this.f67012d = z3;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        h0.c c4 = this.f67011c.c();
        SubscribeOnSubscriber subscribeOnSubscriber = new SubscribeOnSubscriber(cVar, c4, this.f67288b, this.f67012d);
        cVar.onSubscribe(subscribeOnSubscriber);
        c4.b(subscribeOnSubscriber);
    }
}

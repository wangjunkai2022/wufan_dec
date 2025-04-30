package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableTakeLast<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f67048c;

    /* loaded from: classes5.dex */
    static final class TakeLastSubscriber<T> extends ArrayDeque<T> implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = 7240042530241604978L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67049a;

        /* renamed from: b  reason: collision with root package name */
        final int f67050b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67051c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f67052d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f67053e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f67054f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f67055g = new AtomicInteger();

        TakeLastSubscriber(l3.c<? super T> cVar, int i2) {
            this.f67049a = cVar;
            this.f67050b = i2;
        }

        void a() {
            if (this.f67055g.getAndIncrement() == 0) {
                l3.c<? super T> cVar = this.f67049a;
                long j4 = this.f67054f.get();
                while (!this.f67053e) {
                    if (this.f67052d) {
                        long j5 = 0;
                        while (j5 != j4) {
                            if (this.f67053e) {
                                return;
                            }
                            Object obj = (T) poll();
                            if (obj == null) {
                                cVar.onComplete();
                                return;
                            } else {
                                cVar.onNext(obj);
                                j5++;
                            }
                        }
                        if (j5 != 0 && j4 != Long.MAX_VALUE) {
                            j4 = this.f67054f.addAndGet(-j5);
                        }
                    }
                    if (this.f67055g.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // l3.d
        public void cancel() {
            this.f67053e = true;
            this.f67051c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67052d = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67049a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67050b == size()) {
                poll();
            }
            offer(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67051c, dVar)) {
                this.f67051c = dVar;
                this.f67049a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67054f, j4);
                a();
            }
        }
    }

    public FlowableTakeLast(io.reactivex.j<T> jVar, int i2) {
        super(jVar);
        this.f67048c = i2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new TakeLastSubscriber(cVar, this.f67048c));
    }
}

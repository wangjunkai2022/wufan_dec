package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class FlowableUnsubscribeOn<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f67159c;

    /* loaded from: classes5.dex */
    static final class UnsubscribeSubscriber<T> extends AtomicBoolean implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = 1015244841293359600L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67160a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f67161b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67162c;

        /* loaded from: classes5.dex */
        final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                UnsubscribeSubscriber.this.f67162c.cancel();
            }
        }

        UnsubscribeSubscriber(l3.c<? super T> cVar, io.reactivex.h0 h0Var) {
            this.f67160a = cVar;
            this.f67161b = h0Var;
        }

        @Override // l3.d
        public void cancel() {
            if (compareAndSet(false, true)) {
                this.f67161b.e(new a());
            }
        }

        @Override // l3.c
        public void onComplete() {
            if (get()) {
                return;
            }
            this.f67160a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (get()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f67160a.onError(th);
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (get()) {
                return;
            }
            this.f67160a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67162c, dVar)) {
                this.f67162c = dVar;
                this.f67160a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67162c.request(j4);
        }
    }

    public FlowableUnsubscribeOn(io.reactivex.j<T> jVar, io.reactivex.h0 h0Var) {
        super(jVar);
        this.f67159c = h0Var;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new UnsubscribeSubscriber(cVar, this.f67159c));
    }
}

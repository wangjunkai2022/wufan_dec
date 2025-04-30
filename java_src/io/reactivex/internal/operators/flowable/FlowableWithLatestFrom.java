package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableWithLatestFrom<T, U, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final w2.c<? super T, ? super U, ? extends R> f67244c;

    /* renamed from: d  reason: collision with root package name */
    final l3.b<? extends U> f67245d;

    /* loaded from: classes5.dex */
    static final class WithLatestFromSubscriber<T, U, R> extends AtomicReference<U> implements x2.a<T>, l3.d {
        private static final long serialVersionUID = -312246233408980075L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f67246a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<? super T, ? super U, ? extends R> f67247b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<l3.d> f67248c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f67249d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<l3.d> f67250e = new AtomicReference<>();

        WithLatestFromSubscriber(l3.c<? super R> cVar, w2.c<? super T, ? super U, ? extends R> cVar2) {
            this.f67246a = cVar;
            this.f67247b = cVar2;
        }

        public void a(Throwable th) {
            SubscriptionHelper.cancel(this.f67248c);
            this.f67246a.onError(th);
        }

        public boolean b(l3.d dVar) {
            return SubscriptionHelper.setOnce(this.f67250e, dVar);
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f67248c);
            SubscriptionHelper.cancel(this.f67250e);
        }

        @Override // l3.c
        public void onComplete() {
            SubscriptionHelper.cancel(this.f67250e);
            this.f67246a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f67250e);
            this.f67246a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (v0(t3)) {
                return;
            }
            this.f67248c.get().request(1L);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f67248c, this.f67249d, dVar);
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f67248c, this.f67249d, j4);
        }

        @Override // x2.a
        public boolean v0(T t3) {
            U u3 = get();
            if (u3 != null) {
                try {
                    this.f67246a.onNext(io.reactivex.internal.functions.a.g(this.f67247b.apply(t3, u3), "The combiner returned a null value"));
                    return true;
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    this.f67246a.onError(th);
                }
            }
            return false;
        }
    }

    /* loaded from: classes5.dex */
    final class a implements io.reactivex.o<U> {

        /* renamed from: a  reason: collision with root package name */
        private final WithLatestFromSubscriber<T, U, R> f67251a;

        a(WithLatestFromSubscriber<T, U, R> withLatestFromSubscriber) {
            this.f67251a = withLatestFromSubscriber;
        }

        @Override // l3.c
        public void onComplete() {
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67251a.a(th);
        }

        @Override // l3.c
        public void onNext(U u3) {
            this.f67251a.lazySet(u3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (this.f67251a.b(dVar)) {
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableWithLatestFrom(io.reactivex.j<T> jVar, w2.c<? super T, ? super U, ? extends R> cVar, l3.b<? extends U> bVar) {
        super(jVar);
        this.f67244c = cVar;
        this.f67245d = bVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(cVar);
        WithLatestFromSubscriber withLatestFromSubscriber = new WithLatestFromSubscriber(eVar, this.f67244c);
        eVar.onSubscribe(withLatestFromSubscriber);
        this.f67245d.c(new a(withLatestFromSubscriber));
        this.f67288b.g6(withLatestFromSubscriber);
    }
}

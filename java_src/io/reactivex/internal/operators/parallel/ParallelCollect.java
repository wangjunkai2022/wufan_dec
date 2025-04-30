package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
/* loaded from: classes5.dex */
public final class ParallelCollect<T, C> extends io.reactivex.parallel.a<C> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f69416a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends C> f69417b;

    /* renamed from: c  reason: collision with root package name */
    final w2.b<? super C, ? super T> f69418c;

    /* loaded from: classes5.dex */
    static final class ParallelCollectSubscriber<T, C> extends DeferredScalarSubscriber<T, C> {
        private static final long serialVersionUID = -4767392946044436228L;

        /* renamed from: m  reason: collision with root package name */
        final w2.b<? super C, ? super T> f69419m;

        /* renamed from: n  reason: collision with root package name */
        C f69420n;

        /* renamed from: o  reason: collision with root package name */
        boolean f69421o;

        ParallelCollectSubscriber(l3.c<? super C> cVar, C c4, w2.b<? super C, ? super T> bVar) {
            super(cVar);
            this.f69420n = c4;
            this.f69419m = bVar;
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f69973k.cancel();
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, l3.c
        public void onComplete() {
            if (this.f69421o) {
                return;
            }
            this.f69421o = true;
            C c4 = this.f69420n;
            this.f69420n = null;
            d(c4);
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, l3.c
        public void onError(Throwable th) {
            if (this.f69421o) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69421o = true;
            this.f69420n = null;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f69421o) {
                return;
            }
            try {
                this.f69419m.a((C) this.f69420n, t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69973k, dVar)) {
                this.f69973k = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public ParallelCollect(io.reactivex.parallel.a<? extends T> aVar, Callable<? extends C> callable, w2.b<? super C, ? super T> bVar) {
        this.f69416a = aVar;
        this.f69417b = callable;
        this.f69418c = bVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69416a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super C>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super Object>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                try {
                    subscriberArr2[i2] = new ParallelCollectSubscriber(subscriberArr[i2], io.reactivex.internal.functions.a.g(this.f69417b.call(), "The initialSupplier returned a null value"), this.f69418c);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    V(subscriberArr, th);
                    return;
                }
            }
            this.f69416a.Q(subscriberArr2);
        }
    }

    void V(Subscriber<?>[] subscriberArr, Throwable th) {
        for (Subscriber<?> subscriber : subscriberArr) {
            EmptySubscription.error(th, subscriber);
        }
    }
}

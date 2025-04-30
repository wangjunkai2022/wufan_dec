package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
/* loaded from: classes5.dex */
public final class ParallelReduce<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f69456a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f69457b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<R, ? super T, R> f69458c;

    /* loaded from: classes5.dex */
    static final class ParallelReduceSubscriber<T, R> extends DeferredScalarSubscriber<T, R> {
        private static final long serialVersionUID = 8200530050639449080L;

        /* renamed from: m  reason: collision with root package name */
        final w2.c<R, ? super T, R> f69459m;

        /* renamed from: n  reason: collision with root package name */
        R f69460n;

        /* renamed from: o  reason: collision with root package name */
        boolean f69461o;

        ParallelReduceSubscriber(l3.c<? super R> cVar, R r3, w2.c<R, ? super T, R> cVar2) {
            super(cVar);
            this.f69460n = r3;
            this.f69459m = cVar2;
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f69973k.cancel();
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, l3.c
        public void onComplete() {
            if (this.f69461o) {
                return;
            }
            this.f69461o = true;
            R r3 = this.f69460n;
            this.f69460n = null;
            d(r3);
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, l3.c
        public void onError(Throwable th) {
            if (this.f69461o) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69461o = true;
            this.f69460n = null;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f69461o) {
                return;
            }
            try {
                this.f69460n = (R) io.reactivex.internal.functions.a.g(this.f69459m.apply(this.f69460n, t3), "The reducer returned a null value");
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

    public ParallelReduce(io.reactivex.parallel.a<? extends T> aVar, Callable<R> callable, w2.c<R, ? super T, R> cVar) {
        this.f69456a = aVar;
        this.f69457b = callable;
        this.f69458c = cVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69456a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super R>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super Object>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                try {
                    subscriberArr2[i2] = new ParallelReduceSubscriber(subscriberArr[i2], io.reactivex.internal.functions.a.g(this.f69457b.call(), "The initialSupplier returned a null value"), this.f69458c);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    V(subscriberArr, th);
                    return;
                }
            }
            this.f69456a.Q(subscriberArr2);
        }
    }

    void V(Subscriber<?>[] subscriberArr, Throwable th) {
        for (Subscriber<?> subscriber : subscriberArr) {
            EmptySubscription.error(th, subscriber);
        }
    }
}

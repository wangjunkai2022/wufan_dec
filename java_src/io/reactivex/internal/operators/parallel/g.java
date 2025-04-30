package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import w2.o;
/* compiled from: ParallelMap.java */
/* loaded from: classes5.dex */
public final class g<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f69548a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends R> f69549b;

    /* compiled from: ParallelMap.java */
    /* loaded from: classes5.dex */
    static final class a<T, R> implements x2.a<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final x2.a<? super R> f69550a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends R> f69551b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f69552c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69553d;

        a(x2.a<? super R> aVar, o<? super T, ? extends R> oVar) {
            this.f69550a = aVar;
            this.f69551b = oVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f69552c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69553d) {
                return;
            }
            this.f69553d = true;
            this.f69550a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69553d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69553d = true;
            this.f69550a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f69553d) {
                return;
            }
            try {
                this.f69550a.onNext(io.reactivex.internal.functions.a.g(this.f69551b.apply(t3), "The mapper returned a null value"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69552c, dVar)) {
                this.f69552c = dVar;
                this.f69550a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f69552c.request(j4);
        }

        @Override // x2.a
        public boolean v0(T t3) {
            if (this.f69553d) {
                return false;
            }
            try {
                return this.f69550a.v0(io.reactivex.internal.functions.a.g(this.f69551b.apply(t3), "The mapper returned a null value"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    /* compiled from: ParallelMap.java */
    /* loaded from: classes5.dex */
    static final class b<T, R> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f69554a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends R> f69555b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f69556c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69557d;

        b(l3.c<? super R> cVar, o<? super T, ? extends R> oVar) {
            this.f69554a = cVar;
            this.f69555b = oVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f69556c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69557d) {
                return;
            }
            this.f69557d = true;
            this.f69554a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69557d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69557d = true;
            this.f69554a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f69557d) {
                return;
            }
            try {
                this.f69554a.onNext(io.reactivex.internal.functions.a.g(this.f69555b.apply(t3), "The mapper returned a null value"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69556c, dVar)) {
                this.f69556c = dVar;
                this.f69554a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f69556c.request(j4);
        }
    }

    public g(io.reactivex.parallel.a<T> aVar, o<? super T, ? extends R> oVar) {
        this.f69548a = aVar;
        this.f69549b = oVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69548a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super R>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                Subscriber<? super R> subscriber = subscriberArr[i2];
                if (subscriber instanceof x2.a) {
                    subscriberArr2[i2] = new a((x2.a) subscriber, this.f69549b);
                } else {
                    subscriberArr2[i2] = new b(subscriber, this.f69549b);
                }
            }
            this.f69548a.Q(subscriberArr2);
        }
    }
}

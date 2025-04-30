package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableDoOnLifecycle.java */
/* loaded from: classes5.dex */
public final class y<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    private final w2.g<? super l3.d> f67571c;

    /* renamed from: d  reason: collision with root package name */
    private final w2.q f67572d;

    /* renamed from: e  reason: collision with root package name */
    private final w2.a f67573e;

    /* compiled from: FlowableDoOnLifecycle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67574a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super l3.d> f67575b;

        /* renamed from: c  reason: collision with root package name */
        final w2.q f67576c;

        /* renamed from: d  reason: collision with root package name */
        final w2.a f67577d;

        /* renamed from: e  reason: collision with root package name */
        l3.d f67578e;

        a(l3.c<? super T> cVar, w2.g<? super l3.d> gVar, w2.q qVar, w2.a aVar) {
            this.f67574a = cVar;
            this.f67575b = gVar;
            this.f67577d = aVar;
            this.f67576c = qVar;
        }

        @Override // l3.d
        public void cancel() {
            try {
                this.f67577d.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f67578e.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67578e != SubscriptionHelper.CANCELLED) {
                this.f67574a.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67578e != SubscriptionHelper.CANCELLED) {
                this.f67574a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67574a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            try {
                this.f67575b.accept(dVar);
                if (SubscriptionHelper.validate(this.f67578e, dVar)) {
                    this.f67578e = dVar;
                    this.f67574a.onSubscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dVar.cancel();
                this.f67578e = SubscriptionHelper.CANCELLED;
                EmptySubscription.error(th, this.f67574a);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            try {
                this.f67576c.a(j4);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f67578e.request(j4);
        }
    }

    public y(io.reactivex.j<T> jVar, w2.g<? super l3.d> gVar, w2.q qVar, w2.a aVar) {
        super(jVar);
        this.f67571c = gVar;
        this.f67572d = qVar;
        this.f67573e = aVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar, this.f67571c, this.f67572d, this.f67573e));
    }
}

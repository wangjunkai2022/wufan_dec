package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
/* compiled from: FlowableTimeInterval.java */
/* loaded from: classes5.dex */
public final class h1<T> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.schedulers.d<T>> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f67383c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f67384d;

    /* compiled from: FlowableTimeInterval.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super io.reactivex.schedulers.d<T>> f67385a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f67386b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.h0 f67387c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f67388d;

        /* renamed from: e  reason: collision with root package name */
        long f67389e;

        a(l3.c<? super io.reactivex.schedulers.d<T>> cVar, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f67385a = cVar;
            this.f67387c = h0Var;
            this.f67386b = timeUnit;
        }

        @Override // l3.d
        public void cancel() {
            this.f67388d.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67385a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67385a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            long d4 = this.f67387c.d(this.f67386b);
            long j4 = this.f67389e;
            this.f67389e = d4;
            this.f67385a.onNext(new io.reactivex.schedulers.d(t3, d4 - j4, this.f67386b));
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67388d, dVar)) {
                this.f67389e = this.f67387c.d(this.f67386b);
                this.f67388d = dVar;
                this.f67385a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67388d.request(j4);
        }
    }

    public h1(io.reactivex.j<T> jVar, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(jVar);
        this.f67383c = h0Var;
        this.f67384d = timeUnit;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super io.reactivex.schedulers.d<T>> cVar) {
        this.f67288b.g6(new a(cVar, this.f67384d, this.f67383c));
    }
}

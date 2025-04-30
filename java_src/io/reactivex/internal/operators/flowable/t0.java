package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableReduceMaybe.java */
/* loaded from: classes5.dex */
public final class t0<T> extends io.reactivex.q<T> implements x2.h<T>, x2.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67517a;

    /* renamed from: b  reason: collision with root package name */
    final w2.c<T, T, T> f67518b;

    /* compiled from: FlowableReduceMaybe.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67519a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<T, T, T> f67520b;

        /* renamed from: c  reason: collision with root package name */
        T f67521c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f67522d;

        /* renamed from: e  reason: collision with root package name */
        boolean f67523e;

        a(io.reactivex.t<? super T> tVar, w2.c<T, T, T> cVar) {
            this.f67519a = tVar;
            this.f67520b = cVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67522d.cancel();
            this.f67523e = true;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67523e;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67523e) {
                return;
            }
            this.f67523e = true;
            T t3 = this.f67521c;
            if (t3 != null) {
                this.f67519a.onSuccess(t3);
            } else {
                this.f67519a.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67523e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67523e = true;
            this.f67519a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67523e) {
                return;
            }
            T t4 = this.f67521c;
            if (t4 == null) {
                this.f67521c = t3;
                return;
            }
            try {
                this.f67521c = (T) io.reactivex.internal.functions.a.g(this.f67520b.apply(t4, t3), "The reducer returned a null value");
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67522d.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67522d, dVar)) {
                this.f67522d = dVar;
                this.f67519a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public t0(io.reactivex.j<T> jVar, w2.c<T, T, T> cVar) {
        this.f67517a = jVar;
        this.f67518b = cVar;
    }

    @Override // x2.b
    public io.reactivex.j<T> d() {
        return io.reactivex.plugins.a.P(new FlowableReduce(this.f67517a, this.f67518b));
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67517a.g6(new a(tVar, this.f67518b));
    }

    @Override // x2.h
    public l3.b<T> source() {
        return this.f67517a;
    }
}

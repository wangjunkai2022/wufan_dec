package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableTakeWhile.java */
/* loaded from: classes5.dex */
public final class g1<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.r<? super T> f67375c;

    /* compiled from: FlowableTakeWhile.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67376a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f67377b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67378c;

        /* renamed from: d  reason: collision with root package name */
        boolean f67379d;

        a(l3.c<? super T> cVar, w2.r<? super T> rVar) {
            this.f67376a = cVar;
            this.f67377b = rVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f67378c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67379d) {
                return;
            }
            this.f67379d = true;
            this.f67376a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67379d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67379d = true;
            this.f67376a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67379d) {
                return;
            }
            try {
                if (!this.f67377b.test(t3)) {
                    this.f67379d = true;
                    this.f67378c.cancel();
                    this.f67376a.onComplete();
                    return;
                }
                this.f67376a.onNext(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67378c.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67378c, dVar)) {
                this.f67378c = dVar;
                this.f67376a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67378c.request(j4);
        }
    }

    public g1(io.reactivex.j<T> jVar, w2.r<? super T> rVar) {
        super(jVar);
        this.f67375c = rVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar, this.f67375c));
    }
}

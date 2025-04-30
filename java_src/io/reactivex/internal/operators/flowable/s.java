package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableDematerialize.java */
/* loaded from: classes5.dex */
public final class s<T> extends io.reactivex.internal.operators.flowable.a<io.reactivex.y<T>, T> {

    /* compiled from: FlowableDematerialize.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<io.reactivex.y<T>>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67511a;

        /* renamed from: b  reason: collision with root package name */
        boolean f67512b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67513c;

        a(l3.c<? super T> cVar) {
            this.f67511a = cVar;
        }

        @Override // l3.c
        /* renamed from: a */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f67512b) {
                if (yVar.g()) {
                    io.reactivex.plugins.a.Y(yVar.d());
                }
            } else if (yVar.g()) {
                this.f67513c.cancel();
                onError(yVar.d());
            } else if (yVar.f()) {
                this.f67513c.cancel();
                onComplete();
            } else {
                this.f67511a.onNext(yVar.e());
            }
        }

        @Override // l3.d
        public void cancel() {
            this.f67513c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67512b) {
                return;
            }
            this.f67512b = true;
            this.f67511a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67512b) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67512b = true;
            this.f67511a.onError(th);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67513c, dVar)) {
                this.f67513c = dVar;
                this.f67511a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67513c.request(j4);
        }
    }

    public s(io.reactivex.j<io.reactivex.y<T>> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar));
    }
}

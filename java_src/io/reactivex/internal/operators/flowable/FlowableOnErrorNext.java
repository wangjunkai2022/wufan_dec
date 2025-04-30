package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
/* loaded from: classes5.dex */
public final class FlowableOnErrorNext<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends l3.b<? extends T>> f66746c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f66747d;

    /* loaded from: classes5.dex */
    static final class OnErrorNextSubscriber<T> extends SubscriptionArbiter implements io.reactivex.o<T> {
        private static final long serialVersionUID = 4063763155303814625L;

        /* renamed from: h  reason: collision with root package name */
        final l3.c<? super T> f66748h;

        /* renamed from: i  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends l3.b<? extends T>> f66749i;

        /* renamed from: j  reason: collision with root package name */
        final boolean f66750j;

        /* renamed from: k  reason: collision with root package name */
        boolean f66751k;

        /* renamed from: l  reason: collision with root package name */
        boolean f66752l;

        /* renamed from: m  reason: collision with root package name */
        long f66753m;

        OnErrorNextSubscriber(l3.c<? super T> cVar, w2.o<? super Throwable, ? extends l3.b<? extends T>> oVar, boolean z3) {
            this.f66748h = cVar;
            this.f66749i = oVar;
            this.f66750j = z3;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66752l) {
                return;
            }
            this.f66752l = true;
            this.f66751k = true;
            this.f66748h.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66751k) {
                if (this.f66752l) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                } else {
                    this.f66748h.onError(th);
                    return;
                }
            }
            this.f66751k = true;
            if (this.f66750j && !(th instanceof Exception)) {
                this.f66748h.onError(th);
                return;
            }
            try {
                l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66749i.apply(th), "The nextSupplier returned a null Publisher");
                long j4 = this.f66753m;
                if (j4 != 0) {
                    g(j4);
                }
                bVar.c(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f66748h.onError(new CompositeException(th, th2));
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66752l) {
                return;
            }
            if (!this.f66751k) {
                this.f66753m++;
            }
            this.f66748h.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            h(dVar);
        }
    }

    public FlowableOnErrorNext(io.reactivex.j<T> jVar, w2.o<? super Throwable, ? extends l3.b<? extends T>> oVar, boolean z3) {
        super(jVar);
        this.f66746c = oVar;
        this.f66747d = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        OnErrorNextSubscriber onErrorNextSubscriber = new OnErrorNextSubscriber(cVar, this.f66746c, this.f66747d);
        cVar.onSubscribe(onErrorNextSubscriber);
        this.f67288b.g6(onErrorNextSubscriber);
    }
}

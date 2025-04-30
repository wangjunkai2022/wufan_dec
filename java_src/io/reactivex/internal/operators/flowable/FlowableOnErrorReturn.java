package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
/* loaded from: classes5.dex */
public final class FlowableOnErrorReturn<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends T> f66754c;

    /* loaded from: classes5.dex */
    static final class OnErrorReturnSubscriber<T> extends SinglePostCompleteSubscriber<T, T> {
        private static final long serialVersionUID = -3740826063558713822L;

        /* renamed from: g  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends T> f66755g;

        OnErrorReturnSubscriber(l3.c<? super T> cVar, w2.o<? super Throwable, ? extends T> oVar) {
            super(cVar);
            this.f66755g = oVar;
        }

        @Override // l3.c
        public void onComplete() {
            this.f69992a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            try {
                a(io.reactivex.internal.functions.a.g(this.f66755g.apply(th), "The valueSupplier returned a null value"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f69992a.onError(new CompositeException(th, th2));
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f69995d++;
            this.f69992a.onNext(t3);
        }
    }

    public FlowableOnErrorReturn(io.reactivex.j<T> jVar, w2.o<? super Throwable, ? extends T> oVar) {
        super(jVar);
        this.f66754c = oVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new OnErrorReturnSubscriber(cVar, this.f66754c));
    }
}

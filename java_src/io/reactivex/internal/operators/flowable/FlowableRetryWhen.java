package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.FlowableRepeatWhen;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.processors.UnicastProcessor;
/* loaded from: classes5.dex */
public final class FlowableRetryWhen<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super io.reactivex.j<Throwable>, ? extends l3.b<?>> f66910c;

    /* loaded from: classes5.dex */
    static final class RetryWhenSubscriber<T> extends FlowableRepeatWhen.WhenSourceSubscriber<T, Throwable> {
        private static final long serialVersionUID = -2680129890138081029L;

        RetryWhenSubscriber(l3.c<? super T> cVar, io.reactivex.processors.a<Throwable> aVar, l3.d dVar) {
            super(cVar, aVar, dVar);
        }

        @Override // l3.c
        public void onComplete() {
            this.f66848j.cancel();
            this.f66846h.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            i(th);
        }
    }

    public FlowableRetryWhen(io.reactivex.j<T> jVar, w2.o<? super io.reactivex.j<Throwable>, ? extends l3.b<?>> oVar) {
        super(jVar);
        this.f66910c = oVar;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(cVar);
        io.reactivex.processors.a<T> N8 = UnicastProcessor.Q8(8).N8();
        try {
            l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66910c.apply(N8), "handler returned a null Publisher");
            FlowableRepeatWhen.WhenReceiver whenReceiver = new FlowableRepeatWhen.WhenReceiver(this.f67288b);
            RetryWhenSubscriber retryWhenSubscriber = new RetryWhenSubscriber(eVar, N8, whenReceiver);
            whenReceiver.f66845d = retryWhenSubscriber;
            cVar.onSubscribe(retryWhenSubscriber);
            bVar.c(whenReceiver);
            whenReceiver.onNext(0);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}

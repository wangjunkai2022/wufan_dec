package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
/* loaded from: classes5.dex */
public final class FlowableToList<T, U extends Collection<? super T>> extends a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f67157c;

    /* loaded from: classes5.dex */
    static final class ToListSubscriber<T, U extends Collection<? super T>> extends DeferredScalarSubscription<U> implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -8134157938864266736L;

        /* renamed from: k  reason: collision with root package name */
        l3.d f67158k;

        /* JADX WARN: Multi-variable type inference failed */
        ToListSubscriber(l3.c<? super U> cVar, U u3) {
            super(cVar);
            this.f70071b = u3;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f67158k.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            d(this.f70071b);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f70071b = null;
            this.f70070a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            Collection collection = (Collection) this.f70071b;
            if (collection != null) {
                collection.add(t3);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67158k, dVar)) {
                this.f67158k = dVar;
                this.f70070a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableToList(io.reactivex.j<T> jVar, Callable<U> callable) {
        super(jVar);
        this.f67157c = callable;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super U> cVar) {
        try {
            this.f67288b.g6(new ToListSubscriber(cVar, (Collection) io.reactivex.internal.functions.a.g(this.f67157c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}

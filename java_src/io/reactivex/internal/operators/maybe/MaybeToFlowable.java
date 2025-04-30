package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
/* loaded from: classes5.dex */
public final class MaybeToFlowable<T> extends io.reactivex.j<T> implements x2.f<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<T> f67787b;

    /* loaded from: classes5.dex */
    static final class MaybeToFlowableSubscriber<T> extends DeferredScalarSubscription<T> implements io.reactivex.t<T> {
        private static final long serialVersionUID = 7603343402964826922L;

        /* renamed from: k  reason: collision with root package name */
        io.reactivex.disposables.b f67788k;

        MaybeToFlowableSubscriber(l3.c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f67788k.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f70070a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f70070a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67788k, bVar)) {
                this.f67788k = bVar;
                this.f70070a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            d(t3);
        }
    }

    public MaybeToFlowable(io.reactivex.w<T> wVar) {
        this.f67787b = wVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67787b.a(new MaybeToFlowableSubscriber(cVar));
    }

    @Override // x2.f
    public io.reactivex.w<T> source() {
        return this.f67787b;
    }
}

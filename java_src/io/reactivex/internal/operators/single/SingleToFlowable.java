package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.l0;
import io.reactivex.o0;
/* loaded from: classes5.dex */
public final class SingleToFlowable<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final o0<? extends T> f69703b;

    /* loaded from: classes5.dex */
    static final class SingleToFlowableObserver<T> extends DeferredScalarSubscription<T> implements l0<T> {
        private static final long serialVersionUID = 187782011903685568L;

        /* renamed from: k  reason: collision with root package name */
        io.reactivex.disposables.b f69704k;

        SingleToFlowableObserver(l3.c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            super.cancel();
            this.f69704k.dispose();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f70070a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69704k, bVar)) {
                this.f69704k = bVar;
                this.f70070a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            d(t3);
        }
    }

    public SingleToFlowable(o0<? extends T> o0Var) {
        this.f69703b = o0Var;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        this.f69703b.a(new SingleToFlowableObserver(cVar));
    }
}

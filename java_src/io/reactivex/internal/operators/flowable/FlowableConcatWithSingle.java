package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableConcatWithSingle<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f66309c;

    /* loaded from: classes5.dex */
    static final class ConcatWithSubscriber<T> extends SinglePostCompleteSubscriber<T, T> implements io.reactivex.l0<T> {
        private static final long serialVersionUID = -7346385463600070225L;

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f66310g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.o0<? extends T> f66311h;

        ConcatWithSubscriber(l3.c<? super T> cVar, io.reactivex.o0<? extends T> o0Var) {
            super(cVar);
            this.f66311h = o0Var;
            this.f66310g = new AtomicReference<>();
        }

        @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber, l3.d
        public void cancel() {
            super.cancel();
            DisposableHelper.dispose(this.f66310g);
        }

        @Override // l3.c
        public void onComplete() {
            this.f69993b = SubscriptionHelper.CANCELLED;
            io.reactivex.o0<? extends T> o0Var = this.f66311h;
            this.f66311h = null;
            o0Var.a(this);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f69992a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f69995d++;
            this.f69992a.onNext(t3);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f66310g, bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            a(t3);
        }
    }

    public FlowableConcatWithSingle(io.reactivex.j<T> jVar, io.reactivex.o0<? extends T> o0Var) {
        super(jVar);
        this.f66309c = o0Var;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new ConcatWithSubscriber(cVar, this.f66309c));
    }
}

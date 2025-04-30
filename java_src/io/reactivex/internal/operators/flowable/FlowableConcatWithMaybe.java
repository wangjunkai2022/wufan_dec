package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableConcatWithMaybe<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.w<? extends T> f66305c;

    /* loaded from: classes5.dex */
    static final class ConcatWithSubscriber<T> extends SinglePostCompleteSubscriber<T, T> implements io.reactivex.t<T> {
        private static final long serialVersionUID = -7346385463600070225L;

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f66306g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.w<? extends T> f66307h;

        /* renamed from: i  reason: collision with root package name */
        boolean f66308i;

        ConcatWithSubscriber(l3.c<? super T> cVar, io.reactivex.w<? extends T> wVar) {
            super(cVar);
            this.f66307h = wVar;
            this.f66306g = new AtomicReference<>();
        }

        @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber, l3.d
        public void cancel() {
            super.cancel();
            DisposableHelper.dispose(this.f66306g);
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66308i) {
                this.f69992a.onComplete();
                return;
            }
            this.f66308i = true;
            this.f69993b = SubscriptionHelper.CANCELLED;
            io.reactivex.w<? extends T> wVar = this.f66307h;
            this.f66307h = null;
            wVar.a(this);
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

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f66306g, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            a(t3);
        }
    }

    public FlowableConcatWithMaybe(io.reactivex.j<T> jVar, io.reactivex.w<? extends T> wVar) {
        super(jVar);
        this.f66305c = wVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new ConcatWithSubscriber(cVar, this.f66305c));
    }
}

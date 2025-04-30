package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableConcatWithCompletable<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.g f66300c;

    public FlowableConcatWithCompletable(io.reactivex.j<T> jVar, io.reactivex.g gVar) {
        super(jVar);
        this.f66300c = gVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new ConcatWithSubscriber(cVar, this.f66300c));
    }

    /* loaded from: classes5.dex */
    static final class ConcatWithSubscriber<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.o<T>, io.reactivex.d, l3.d {
        private static final long serialVersionUID = -7346385463600070225L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66301a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f66302b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.g f66303c;

        /* renamed from: d  reason: collision with root package name */
        boolean f66304d;

        ConcatWithSubscriber(l3.c<? super T> cVar, io.reactivex.g gVar) {
            this.f66301a = cVar;
            this.f66303c = gVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f66302b.cancel();
            DisposableHelper.dispose(this);
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66304d) {
                this.f66301a.onComplete();
                return;
            }
            this.f66304d = true;
            this.f66302b = SubscriptionHelper.CANCELLED;
            io.reactivex.g gVar = this.f66303c;
            this.f66303c = null;
            gVar.a(this);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66301a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66301a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66302b, dVar)) {
                this.f66302b = dVar;
                this.f66301a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f66302b.request(j4);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }
}

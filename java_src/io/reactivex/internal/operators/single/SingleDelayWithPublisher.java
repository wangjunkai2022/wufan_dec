package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleDelayWithPublisher<T, U> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69609a;

    /* renamed from: b  reason: collision with root package name */
    final l3.b<U> f69610b;

    /* loaded from: classes5.dex */
    static final class OtherSubscriber<T, U> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.o<U>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69611a;

        /* renamed from: b  reason: collision with root package name */
        final o0<T> f69612b;

        /* renamed from: c  reason: collision with root package name */
        boolean f69613c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f69614d;

        OtherSubscriber(l0<? super T> l0Var, o0<T> o0Var) {
            this.f69611a = l0Var;
            this.f69612b = o0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69614d.cancel();
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69613c) {
                return;
            }
            this.f69613c = true;
            this.f69612b.a(new io.reactivex.internal.observers.o(this, this.f69611a));
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69613c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69613c = true;
            this.f69611a.onError(th);
        }

        @Override // l3.c
        public void onNext(U u3) {
            this.f69614d.cancel();
            onComplete();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69614d, dVar)) {
                this.f69614d = dVar;
                this.f69611a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public SingleDelayWithPublisher(o0<T> o0Var, l3.b<U> bVar) {
        this.f69609a = o0Var;
        this.f69610b = bVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69610b.c(new OtherSubscriber(l0Var, this.f69609a));
    }
}

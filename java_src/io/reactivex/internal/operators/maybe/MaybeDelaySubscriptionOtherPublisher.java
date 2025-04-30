package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeDelaySubscriptionOtherPublisher<T, U> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<U> f67647b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class DelayMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T> {
        private static final long serialVersionUID = 706635022205076709L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67648a;

        DelayMaybeObserver(io.reactivex.t<? super T> tVar) {
            this.f67648a = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67648a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67648a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67648a.onSuccess(t3);
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<Object>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final DelayMaybeObserver<T> f67649a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.w<T> f67650b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67651c;

        a(io.reactivex.t<? super T> tVar, io.reactivex.w<T> wVar) {
            this.f67649a = new DelayMaybeObserver<>(tVar);
            this.f67650b = wVar;
        }

        void a() {
            io.reactivex.w<T> wVar = this.f67650b;
            this.f67650b = null;
            wVar.a(this.f67649a);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67651c.cancel();
            this.f67651c = SubscriptionHelper.CANCELLED;
            DisposableHelper.dispose(this.f67649a);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f67649a.get());
        }

        @Override // l3.c
        public void onComplete() {
            l3.d dVar = this.f67651c;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar != subscriptionHelper) {
                this.f67651c = subscriptionHelper;
                a();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            l3.d dVar = this.f67651c;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar != subscriptionHelper) {
                this.f67651c = subscriptionHelper;
                this.f67649a.f67648a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            l3.d dVar = this.f67651c;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar != subscriptionHelper) {
                dVar.cancel();
                this.f67651c = subscriptionHelper;
                a();
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67651c, dVar)) {
                this.f67651c = dVar;
                this.f67649a.f67648a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public MaybeDelaySubscriptionOtherPublisher(io.reactivex.w<T> wVar, l3.b<U> bVar) {
        super(wVar);
        this.f67647b = bVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67647b.c(new a(tVar, this.f67812a));
    }
}

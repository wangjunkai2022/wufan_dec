package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeDelayOtherPublisher<T, U> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<U> f67640b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class OtherSubscriber<T> extends AtomicReference<l3.d> implements io.reactivex.o<Object> {
        private static final long serialVersionUID = -1215060610805418006L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67641a;

        /* renamed from: b  reason: collision with root package name */
        T f67642b;

        /* renamed from: c  reason: collision with root package name */
        Throwable f67643c;

        OtherSubscriber(io.reactivex.t<? super T> tVar) {
            this.f67641a = tVar;
        }

        @Override // l3.c
        public void onComplete() {
            Throwable th = this.f67643c;
            if (th != null) {
                this.f67641a.onError(th);
                return;
            }
            T t3 = this.f67642b;
            if (t3 != null) {
                this.f67641a.onSuccess(t3);
            } else {
                this.f67641a.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            Throwable th2 = this.f67643c;
            if (th2 == null) {
                this.f67641a.onError(th);
            } else {
                this.f67641a.onError(new CompositeException(th2, th));
            }
        }

        @Override // l3.c
        public void onNext(Object obj) {
            l3.d dVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (dVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                dVar.cancel();
                onComplete();
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T, U> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final OtherSubscriber<T> f67644a;

        /* renamed from: b  reason: collision with root package name */
        final l3.b<U> f67645b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67646c;

        a(io.reactivex.t<? super T> tVar, l3.b<U> bVar) {
            this.f67644a = new OtherSubscriber<>(tVar);
            this.f67645b = bVar;
        }

        void a() {
            this.f67645b.c(this.f67644a);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67646c.dispose();
            this.f67646c = DisposableHelper.DISPOSED;
            SubscriptionHelper.cancel(this.f67644a);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return SubscriptionHelper.isCancelled(this.f67644a.get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67646c = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67646c = DisposableHelper.DISPOSED;
            this.f67644a.f67643c = th;
            a();
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67646c, bVar)) {
                this.f67646c = bVar;
                this.f67644a.f67641a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67646c = DisposableHelper.DISPOSED;
            this.f67644a.f67642b = t3;
            a();
        }
    }

    public MaybeDelayOtherPublisher(io.reactivex.w<T> wVar, l3.b<U> bVar) {
        super(wVar);
        this.f67640b = bVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new a(tVar, this.f67640b));
    }
}

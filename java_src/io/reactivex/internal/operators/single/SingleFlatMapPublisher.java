package io.reactivex.internal.operators.single;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleFlatMapPublisher<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final o0<T> f69661b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<? extends R>> f69662c;

    public SingleFlatMapPublisher(o0<T> o0Var, w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        this.f69661b = o0Var;
        this.f69662c = oVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        this.f69661b.a(new SingleFlatMapPublisherObserver(cVar, this.f69662c));
    }

    /* loaded from: classes5.dex */
    static final class SingleFlatMapPublisherObserver<S, T> extends AtomicLong implements l0<S>, io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = 7759721921468635667L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f69663a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super S, ? extends l3.b<? extends T>> f69664b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<l3.d> f69665c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69666d;

        SingleFlatMapPublisherObserver(l3.c<? super T> cVar, w2.o<? super S, ? extends l3.b<? extends T>> oVar) {
            this.f69663a = cVar;
            this.f69664b = oVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f69666d.dispose();
            SubscriptionHelper.cancel(this.f69665c);
        }

        @Override // l3.c
        public void onComplete() {
            this.f69663a.onComplete();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69663a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f69663a.onNext(t3);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69666d = bVar;
            this.f69663a.onSubscribe(this);
        }

        @Override // io.reactivex.l0
        public void onSuccess(S s3) {
            try {
                ((l3.b) io.reactivex.internal.functions.a.g(this.f69664b.apply(s3), "the mapper returned a null Publisher")).c(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69663a.onError(th);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f69665c, this, j4);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f69665c, this, dVar);
        }
    }
}

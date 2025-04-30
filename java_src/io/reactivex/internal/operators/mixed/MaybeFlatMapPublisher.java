package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.b;
import l3.c;
import l3.d;
import w2.o;
/* loaded from: classes5.dex */
public final class MaybeFlatMapPublisher<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final w<T> f68029b;

    /* renamed from: c  reason: collision with root package name */
    final o<? super T, ? extends b<? extends R>> f68030c;

    public MaybeFlatMapPublisher(w<T> wVar, o<? super T, ? extends b<? extends R>> oVar) {
        this.f68029b = wVar;
        this.f68030c = oVar;
    }

    @Override // io.reactivex.j
    protected void h6(c<? super R> cVar) {
        this.f68029b.a(new FlatMapPublisherSubscriber(cVar, this.f68030c));
    }

    /* loaded from: classes5.dex */
    static final class FlatMapPublisherSubscriber<T, R> extends AtomicReference<d> implements io.reactivex.o<R>, t<T>, d {
        private static final long serialVersionUID = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f68031a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends b<? extends R>> f68032b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f68033c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f68034d = new AtomicLong();

        FlatMapPublisherSubscriber(c<? super R> cVar, o<? super T, ? extends b<? extends R>> oVar) {
            this.f68031a = cVar;
            this.f68032b = oVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f68033c.dispose();
            SubscriptionHelper.cancel(this);
        }

        @Override // l3.c
        public void onComplete() {
            this.f68031a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f68031a.onError(th);
        }

        @Override // l3.c
        public void onNext(R r3) {
            this.f68031a.onNext(r3);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68033c, bVar)) {
                this.f68033c = bVar;
                this.f68031a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                ((b) io.reactivex.internal.functions.a.g(this.f68032b.apply(t3), "The mapper returned a null Publisher")).c(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68031a.onError(th);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this, this.f68034d, j4);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this, this.f68034d, dVar);
        }
    }
}

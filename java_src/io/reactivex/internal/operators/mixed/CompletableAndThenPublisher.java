package io.reactivex.internal.operators.mixed;

import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.b;
import l3.c;
import l3.d;
/* loaded from: classes5.dex */
public final class CompletableAndThenPublisher<R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final g f67912b;

    /* renamed from: c  reason: collision with root package name */
    final b<? extends R> f67913c;

    public CompletableAndThenPublisher(g gVar, b<? extends R> bVar) {
        this.f67912b = gVar;
        this.f67913c = bVar;
    }

    @Override // io.reactivex.j
    protected void h6(c<? super R> cVar) {
        this.f67912b.a(new AndThenPublisherSubscriber(cVar, this.f67913c));
    }

    /* loaded from: classes5.dex */
    static final class AndThenPublisherSubscriber<R> extends AtomicReference<d> implements o<R>, io.reactivex.d, d {
        private static final long serialVersionUID = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f67914a;

        /* renamed from: b  reason: collision with root package name */
        b<? extends R> f67915b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67916c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f67917d = new AtomicLong();

        AndThenPublisherSubscriber(c<? super R> cVar, b<? extends R> bVar) {
            this.f67914a = cVar;
            this.f67915b = bVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f67916c.dispose();
            SubscriptionHelper.cancel(this);
        }

        @Override // l3.c
        public void onComplete() {
            b<? extends R> bVar = this.f67915b;
            if (bVar == null) {
                this.f67914a.onComplete();
                return;
            }
            this.f67915b = null;
            bVar.c(this);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67914a.onError(th);
        }

        @Override // l3.c
        public void onNext(R r3) {
            this.f67914a.onNext(r3);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67916c, bVar)) {
                this.f67916c = bVar;
                this.f67914a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this, this.f67917d, j4);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this, this.f67917d, dVar);
        }
    }
}

package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableOnBackpressureDrop<T> extends a<T, T> implements w2.g<T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super T> f66731c;

    /* loaded from: classes5.dex */
    static final class BackpressureDropSubscriber<T> extends AtomicLong implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -6246093802440953054L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66732a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super T> f66733b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f66734c;

        /* renamed from: d  reason: collision with root package name */
        boolean f66735d;

        BackpressureDropSubscriber(l3.c<? super T> cVar, w2.g<? super T> gVar) {
            this.f66732a = cVar;
            this.f66733b = gVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f66734c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66735d) {
                return;
            }
            this.f66735d = true;
            this.f66732a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66735d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66735d = true;
            this.f66732a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66735d) {
                return;
            }
            if (get() != 0) {
                this.f66732a.onNext(t3);
                io.reactivex.internal.util.b.e(this, 1L);
                return;
            }
            try {
                this.f66733b.accept(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66734c, dVar)) {
                this.f66734c = dVar;
                this.f66732a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }
    }

    public FlowableOnBackpressureDrop(io.reactivex.j<T> jVar) {
        super(jVar);
        this.f66731c = this;
    }

    @Override // w2.g
    public void accept(T t3) {
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new BackpressureDropSubscriber(cVar, this.f66731c));
    }

    public FlowableOnBackpressureDrop(io.reactivex.j<T> jVar, w2.g<? super T> gVar) {
        super(jVar);
        this.f66731c = gVar;
    }
}

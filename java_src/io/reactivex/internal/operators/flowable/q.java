package io.reactivex.internal.operators.flowable;

import io.reactivex.h0;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
/* compiled from: FlowableDelay.java */
/* loaded from: classes5.dex */
public final class q<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f67482c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f67483d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f67484e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f67485f;

    /* compiled from: FlowableDelay.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67486a;

        /* renamed from: b  reason: collision with root package name */
        final long f67487b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f67488c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f67489d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f67490e;

        /* renamed from: f  reason: collision with root package name */
        l3.d f67491f;

        /* compiled from: FlowableDelay.java */
        /* renamed from: io.reactivex.internal.operators.flowable.q$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        final class RunnableC0455a implements Runnable {
            RunnableC0455a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f67486a.onComplete();
                } finally {
                    a.this.f67489d.dispose();
                }
            }
        }

        /* compiled from: FlowableDelay.java */
        /* loaded from: classes5.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f67493a;

            b(Throwable th) {
                this.f67493a = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f67486a.onError(this.f67493a);
                } finally {
                    a.this.f67489d.dispose();
                }
            }
        }

        /* compiled from: FlowableDelay.java */
        /* loaded from: classes5.dex */
        final class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f67495a;

            c(T t3) {
                this.f67495a = t3;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f67486a.onNext((T) this.f67495a);
            }
        }

        a(l3.c<? super T> cVar, long j4, TimeUnit timeUnit, h0.c cVar2, boolean z3) {
            this.f67486a = cVar;
            this.f67487b = j4;
            this.f67488c = timeUnit;
            this.f67489d = cVar2;
            this.f67490e = z3;
        }

        @Override // l3.d
        public void cancel() {
            this.f67491f.cancel();
            this.f67489d.dispose();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67489d.c(new RunnableC0455a(), this.f67487b, this.f67488c);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67489d.c(new b(th), this.f67490e ? this.f67487b : 0L, this.f67488c);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67489d.c(new c(t3), this.f67487b, this.f67488c);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67491f, dVar)) {
                this.f67491f = dVar;
                this.f67486a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67491f.request(j4);
        }
    }

    public q(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z3) {
        super(jVar);
        this.f67482c = j4;
        this.f67483d = timeUnit;
        this.f67484e = h0Var;
        this.f67485f = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(this.f67485f ? cVar : new io.reactivex.subscribers.e(cVar), this.f67482c, this.f67483d, this.f67484e.c(), this.f67485f));
    }
}

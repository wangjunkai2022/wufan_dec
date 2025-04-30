package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableGenerate<T, S> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<S> f66491b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<S, io.reactivex.i<T>, S> f66492c;

    /* renamed from: d  reason: collision with root package name */
    final w2.g<? super S> f66493d;

    /* loaded from: classes5.dex */
    static final class GeneratorSubscription<T, S> extends AtomicLong implements io.reactivex.i<T>, l3.d {
        private static final long serialVersionUID = 7565982551505011832L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66494a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<S, ? super io.reactivex.i<T>, S> f66495b;

        /* renamed from: c  reason: collision with root package name */
        final w2.g<? super S> f66496c;

        /* renamed from: d  reason: collision with root package name */
        S f66497d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f66498e;

        /* renamed from: f  reason: collision with root package name */
        boolean f66499f;

        /* renamed from: g  reason: collision with root package name */
        boolean f66500g;

        GeneratorSubscription(l3.c<? super T> cVar, w2.c<S, ? super io.reactivex.i<T>, S> cVar2, w2.g<? super S> gVar, S s3) {
            this.f66494a = cVar;
            this.f66495b = cVar2;
            this.f66496c = gVar;
            this.f66497d = s3;
        }

        private void e(S s3) {
            try {
                this.f66496c.accept(s3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66498e) {
                return;
            }
            this.f66498e = true;
            if (io.reactivex.internal.util.b.a(this, 1L) == 0) {
                S s3 = this.f66497d;
                this.f66497d = null;
                e(s3);
            }
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (this.f66499f) {
                return;
            }
            this.f66499f = true;
            this.f66494a.onComplete();
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (this.f66499f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f66499f = true;
            this.f66494a.onError(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t3) {
            if (this.f66499f) {
                return;
            }
            if (this.f66500g) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t3 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f66500g = true;
                this.f66494a.onNext(t3);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4) && io.reactivex.internal.util.b.a(this, j4) == 0) {
                S s3 = this.f66497d;
                w2.c<S, ? super io.reactivex.i<T>, S> cVar = this.f66495b;
                do {
                    long j5 = 0;
                    while (true) {
                        if (j5 != j4) {
                            if (this.f66498e) {
                                this.f66497d = null;
                                e(s3);
                                return;
                            }
                            this.f66500g = false;
                            try {
                                s3 = cVar.apply(s3, this);
                                if (this.f66499f) {
                                    this.f66498e = true;
                                    this.f66497d = null;
                                    e(s3);
                                    return;
                                }
                                j5++;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                this.f66498e = true;
                                this.f66497d = null;
                                onError(th);
                                e(s3);
                                return;
                            }
                        } else {
                            j4 = get();
                            if (j5 == j4) {
                                this.f66497d = s3;
                                j4 = addAndGet(-j5);
                            }
                        }
                    }
                } while (j4 != 0);
            }
        }
    }

    public FlowableGenerate(Callable<S> callable, w2.c<S, io.reactivex.i<T>, S> cVar, w2.g<? super S> gVar) {
        this.f66491b = callable;
        this.f66492c = cVar;
        this.f66493d = gVar;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        try {
            cVar.onSubscribe(new GeneratorSubscription(cVar, this.f66492c, this.f66493d, this.f66491b.call()));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}

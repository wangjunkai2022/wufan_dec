package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableFlatMapCompletableCompletable<T> extends io.reactivex.a implements x2.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f66421a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.g> f66422b;

    /* renamed from: c  reason: collision with root package name */
    final int f66423c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f66424d;

    /* loaded from: classes5.dex */
    static final class FlatMapCompletableMainSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66425a;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.g> f66427c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f66428d;

        /* renamed from: f  reason: collision with root package name */
        final int f66430f;

        /* renamed from: g  reason: collision with root package name */
        l3.d f66431g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f66432h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f66426b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.a f66429e = new io.reactivex.disposables.a();

        /* loaded from: classes5.dex */
        final class InnerObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b {
            private static final long serialVersionUID = 8606673141535671828L;

            InnerObserver() {
            }

            @Override // io.reactivex.disposables.b
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.b
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.d
            public void onComplete() {
                FlatMapCompletableMainSubscriber.this.a(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                FlatMapCompletableMainSubscriber.this.b(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        FlatMapCompletableMainSubscriber(io.reactivex.d dVar, w2.o<? super T, ? extends io.reactivex.g> oVar, boolean z3, int i2) {
            this.f66425a = dVar;
            this.f66427c = oVar;
            this.f66428d = z3;
            this.f66430f = i2;
            lazySet(1);
        }

        void a(FlatMapCompletableMainSubscriber<T>.InnerObserver innerObserver) {
            this.f66429e.delete(innerObserver);
            onComplete();
        }

        void b(FlatMapCompletableMainSubscriber<T>.InnerObserver innerObserver, Throwable th) {
            this.f66429e.delete(innerObserver);
            onError(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66432h = true;
            this.f66431g.cancel();
            this.f66429e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66429e.isDisposed();
        }

        @Override // l3.c
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable c4 = this.f66426b.c();
                if (c4 != null) {
                    this.f66425a.onError(c4);
                } else {
                    this.f66425a.onComplete();
                }
            } else if (this.f66430f != Integer.MAX_VALUE) {
                this.f66431g.request(1L);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66426b.a(th)) {
                if (this.f66428d) {
                    if (decrementAndGet() == 0) {
                        this.f66425a.onError(this.f66426b.c());
                        return;
                    } else if (this.f66430f != Integer.MAX_VALUE) {
                        this.f66431g.request(1L);
                        return;
                    } else {
                        return;
                    }
                }
                dispose();
                if (getAndSet(0) > 0) {
                    this.f66425a.onError(this.f66426b.c());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.a.g(this.f66427c.apply(t3), "The mapper returned a null CompletableSource");
                getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.f66432h || !this.f66429e.b(innerObserver)) {
                    return;
                }
                gVar.a(innerObserver);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66431g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66431g, dVar)) {
                this.f66431g = dVar;
                this.f66425a.onSubscribe(this);
                int i2 = this.f66430f;
                if (i2 == Integer.MAX_VALUE) {
                    dVar.request(Long.MAX_VALUE);
                } else {
                    dVar.request(i2);
                }
            }
        }
    }

    public FlowableFlatMapCompletableCompletable(io.reactivex.j<T> jVar, w2.o<? super T, ? extends io.reactivex.g> oVar, boolean z3, int i2) {
        this.f66421a = jVar;
        this.f66422b = oVar;
        this.f66424d = z3;
        this.f66423c = i2;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66421a.g6(new FlatMapCompletableMainSubscriber(dVar, this.f66422b, this.f66424d, this.f66423c));
    }

    @Override // x2.b
    public io.reactivex.j<T> d() {
        return io.reactivex.plugins.a.P(new FlowableFlatMapCompletable(this.f66421a, this.f66422b, this.f66424d, this.f66423c));
    }
}

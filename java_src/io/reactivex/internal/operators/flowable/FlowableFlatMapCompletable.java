package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableFlatMapCompletable<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.g> f66409c;

    /* renamed from: d  reason: collision with root package name */
    final int f66410d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f66411e;

    /* loaded from: classes5.dex */
    static final class FlatMapCompletableMainSubscriber<T> extends BasicIntQueueSubscription<T> implements io.reactivex.o<T> {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66412a;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.g> f66414c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f66415d;

        /* renamed from: f  reason: collision with root package name */
        final int f66417f;

        /* renamed from: g  reason: collision with root package name */
        l3.d f66418g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f66419h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f66413b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.a f66416e = new io.reactivex.disposables.a();

        /* loaded from: classes5.dex */
        final class InnerConsumer extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b {
            private static final long serialVersionUID = 8606673141535671828L;

            InnerConsumer() {
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
                FlatMapCompletableMainSubscriber.this.d(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                FlatMapCompletableMainSubscriber.this.e(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        FlatMapCompletableMainSubscriber(l3.c<? super T> cVar, w2.o<? super T, ? extends io.reactivex.g> oVar, boolean z3, int i2) {
            this.f66412a = cVar;
            this.f66414c = oVar;
            this.f66415d = z3;
            this.f66417f = i2;
            lazySet(1);
        }

        @Override // l3.d
        public void cancel() {
            this.f66419h = true;
            this.f66418g.cancel();
            this.f66416e.dispose();
        }

        @Override // x2.o
        public void clear() {
        }

        void d(FlatMapCompletableMainSubscriber<T>.InnerConsumer innerConsumer) {
            this.f66416e.delete(innerConsumer);
            onComplete();
        }

        void e(FlatMapCompletableMainSubscriber<T>.InnerConsumer innerConsumer, Throwable th) {
            this.f66416e.delete(innerConsumer);
            onError(th);
        }

        @Override // x2.o
        public boolean isEmpty() {
            return true;
        }

        @Override // l3.c
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable c4 = this.f66413b.c();
                if (c4 != null) {
                    this.f66412a.onError(c4);
                } else {
                    this.f66412a.onComplete();
                }
            } else if (this.f66417f != Integer.MAX_VALUE) {
                this.f66418g.request(1L);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66413b.a(th)) {
                if (this.f66415d) {
                    if (decrementAndGet() == 0) {
                        this.f66412a.onError(this.f66413b.c());
                        return;
                    } else if (this.f66417f != Integer.MAX_VALUE) {
                        this.f66418g.request(1L);
                        return;
                    } else {
                        return;
                    }
                }
                cancel();
                if (getAndSet(0) > 0) {
                    this.f66412a.onError(this.f66413b.c());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.a.g(this.f66414c.apply(t3), "The mapper returned a null CompletableSource");
                getAndIncrement();
                InnerConsumer innerConsumer = new InnerConsumer();
                if (this.f66419h || !this.f66416e.b(innerConsumer)) {
                    return;
                }
                gVar.a(innerConsumer);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66418g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66418g, dVar)) {
                this.f66418g = dVar;
                this.f66412a.onSubscribe(this);
                int i2 = this.f66417f;
                if (i2 == Integer.MAX_VALUE) {
                    dVar.request(Long.MAX_VALUE);
                } else {
                    dVar.request(i2);
                }
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            return null;
        }

        @Override // l3.d
        public void request(long j4) {
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return i2 & 2;
        }
    }

    public FlowableFlatMapCompletable(io.reactivex.j<T> jVar, w2.o<? super T, ? extends io.reactivex.g> oVar, boolean z3, int i2) {
        super(jVar);
        this.f66409c = oVar;
        this.f66411e = z3;
        this.f66410d = i2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new FlatMapCompletableMainSubscriber(cVar, this.f66409c, this.f66411e, this.f66410d));
    }
}

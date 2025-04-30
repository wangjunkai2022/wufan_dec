package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableConcat extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<? extends io.reactivex.g> f65953a;

    /* renamed from: b  reason: collision with root package name */
    final int f65954b;

    /* loaded from: classes5.dex */
    static final class CompletableConcatSubscriber extends AtomicInteger implements io.reactivex.o<io.reactivex.g>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 9032184911934499404L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f65955a;

        /* renamed from: b  reason: collision with root package name */
        final int f65956b;

        /* renamed from: c  reason: collision with root package name */
        final int f65957c;

        /* renamed from: d  reason: collision with root package name */
        final ConcatInnerObserver f65958d = new ConcatInnerObserver(this);

        /* renamed from: e  reason: collision with root package name */
        final AtomicBoolean f65959e = new AtomicBoolean();

        /* renamed from: f  reason: collision with root package name */
        int f65960f;

        /* renamed from: g  reason: collision with root package name */
        int f65961g;

        /* renamed from: h  reason: collision with root package name */
        x2.o<io.reactivex.g> f65962h;

        /* renamed from: i  reason: collision with root package name */
        l3.d f65963i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f65964j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f65965k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class ConcatInnerObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d {
            private static final long serialVersionUID = -5454794857847146511L;

            /* renamed from: a  reason: collision with root package name */
            final CompletableConcatSubscriber f65966a;

            ConcatInnerObserver(CompletableConcatSubscriber completableConcatSubscriber) {
                this.f65966a = completableConcatSubscriber;
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f65966a.b();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f65966a.c(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.replace(this, bVar);
            }
        }

        CompletableConcatSubscriber(io.reactivex.d dVar, int i2) {
            this.f65955a = dVar;
            this.f65956b = i2;
            this.f65957c = i2 - (i2 >> 2);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!isDisposed()) {
                if (!this.f65965k) {
                    boolean z3 = this.f65964j;
                    try {
                        io.reactivex.g poll = this.f65962h.poll();
                        boolean z4 = poll == null;
                        if (z3 && z4) {
                            if (this.f65959e.compareAndSet(false, true)) {
                                this.f65955a.onComplete();
                                return;
                            }
                            return;
                        } else if (!z4) {
                            this.f65965k = true;
                            poll.a(this.f65958d);
                            e();
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        c(th);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        void b() {
            this.f65965k = false;
            a();
        }

        void c(Throwable th) {
            if (this.f65959e.compareAndSet(false, true)) {
                this.f65963i.cancel();
                this.f65955a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        /* renamed from: d */
        public void onNext(io.reactivex.g gVar) {
            if (this.f65960f == 0 && !this.f65962h.offer(gVar)) {
                onError(new MissingBackpressureException());
            } else {
                a();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f65963i.cancel();
            DisposableHelper.dispose(this.f65958d);
        }

        void e() {
            if (this.f65960f != 1) {
                int i2 = this.f65961g + 1;
                if (i2 == this.f65957c) {
                    this.f65961g = 0;
                    this.f65963i.request(i2);
                    return;
                }
                this.f65961g = i2;
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f65958d.get());
        }

        @Override // l3.c
        public void onComplete() {
            this.f65964j = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f65959e.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f65958d);
                this.f65955a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f65963i, dVar)) {
                this.f65963i = dVar;
                int i2 = this.f65956b;
                long j4 = i2 == Integer.MAX_VALUE ? Long.MAX_VALUE : i2;
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f65960f = requestFusion;
                        this.f65962h = lVar;
                        this.f65964j = true;
                        this.f65955a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f65960f = requestFusion;
                        this.f65962h = lVar;
                        this.f65955a.onSubscribe(this);
                        dVar.request(j4);
                        return;
                    }
                }
                if (this.f65956b == Integer.MAX_VALUE) {
                    this.f65962h = new io.reactivex.internal.queue.a(io.reactivex.j.V());
                } else {
                    this.f65962h = new SpscArrayQueue(this.f65956b);
                }
                this.f65955a.onSubscribe(this);
                dVar.request(j4);
            }
        }
    }

    public CompletableConcat(l3.b<? extends io.reactivex.g> bVar, int i2) {
        this.f65953a = bVar;
        this.f65954b = i2;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        this.f65953a.c(new CompletableConcatSubscriber(dVar, this.f65954b));
    }
}

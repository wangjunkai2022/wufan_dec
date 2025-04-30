package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscribers.InnerQueuedSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableConcatMapEager<T, R> extends a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<? extends R>> f66284c;

    /* renamed from: d  reason: collision with root package name */
    final int f66285d;

    /* renamed from: e  reason: collision with root package name */
    final int f66286e;

    /* renamed from: f  reason: collision with root package name */
    final ErrorMode f66287f;

    /* loaded from: classes5.dex */
    static final class ConcatMapEagerDelayErrorSubscriber<T, R> extends AtomicInteger implements io.reactivex.o<T>, l3.d, io.reactivex.internal.subscribers.g<R> {
        private static final long serialVersionUID = -4255299542215038287L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f66288a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends l3.b<? extends R>> f66289b;

        /* renamed from: c  reason: collision with root package name */
        final int f66290c;

        /* renamed from: d  reason: collision with root package name */
        final int f66291d;

        /* renamed from: e  reason: collision with root package name */
        final ErrorMode f66292e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f66293f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final AtomicLong f66294g = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        final io.reactivex.internal.queue.a<InnerQueuedSubscriber<R>> f66295h;

        /* renamed from: i  reason: collision with root package name */
        l3.d f66296i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f66297j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f66298k;

        /* renamed from: l  reason: collision with root package name */
        volatile InnerQueuedSubscriber<R> f66299l;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ConcatMapEagerDelayErrorSubscriber(l3.c<? super R> cVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, int i4, ErrorMode errorMode) {
            this.f66288a = cVar;
            this.f66289b = oVar;
            this.f66290c = i2;
            this.f66291d = i4;
            this.f66292e = errorMode;
            this.f66295h = new io.reactivex.internal.queue.a<>(Math.min(i4, i2));
        }

        @Override // io.reactivex.internal.subscribers.g
        public void a(InnerQueuedSubscriber<R> innerQueuedSubscriber, R r3) {
            if (innerQueuedSubscriber.b().offer(r3)) {
                b();
                return;
            }
            innerQueuedSubscriber.cancel();
            d(innerQueuedSubscriber, new MissingBackpressureException());
        }

        @Override // io.reactivex.internal.subscribers.g
        public void b() {
            InnerQueuedSubscriber<R> innerQueuedSubscriber;
            int i2;
            long j4;
            boolean z3;
            x2.o<R> b4;
            if (getAndIncrement() != 0) {
                return;
            }
            InnerQueuedSubscriber<R> innerQueuedSubscriber2 = this.f66299l;
            l3.c<? super R> cVar = this.f66288a;
            ErrorMode errorMode = this.f66292e;
            int i4 = 1;
            while (true) {
                long j5 = this.f66294g.get();
                if (innerQueuedSubscriber2 != null) {
                    innerQueuedSubscriber = innerQueuedSubscriber2;
                } else if (errorMode != ErrorMode.END && this.f66293f.get() != null) {
                    e();
                    cVar.onError(this.f66293f.c());
                    return;
                } else {
                    boolean z4 = this.f66298k;
                    innerQueuedSubscriber = this.f66295h.poll();
                    if (z4 && innerQueuedSubscriber == null) {
                        Throwable c4 = this.f66293f.c();
                        if (c4 != null) {
                            cVar.onError(c4);
                            return;
                        } else {
                            cVar.onComplete();
                            return;
                        }
                    } else if (innerQueuedSubscriber != null) {
                        this.f66299l = innerQueuedSubscriber;
                    }
                }
                if (innerQueuedSubscriber == null || (b4 = innerQueuedSubscriber.b()) == null) {
                    i2 = i4;
                    j4 = 0;
                    z3 = false;
                } else {
                    i2 = i4;
                    j4 = 0;
                    while (j4 != j5) {
                        if (this.f66297j) {
                            e();
                            return;
                        } else if (errorMode == ErrorMode.IMMEDIATE && this.f66293f.get() != null) {
                            this.f66299l = null;
                            innerQueuedSubscriber.cancel();
                            e();
                            cVar.onError(this.f66293f.c());
                            return;
                        } else {
                            boolean a4 = innerQueuedSubscriber.a();
                            try {
                                R poll = b4.poll();
                                boolean z5 = poll == null;
                                if (a4 && z5) {
                                    this.f66299l = null;
                                    this.f66296i.request(1L);
                                    innerQueuedSubscriber = null;
                                    z3 = true;
                                    break;
                                } else if (z5) {
                                    break;
                                } else {
                                    cVar.onNext(poll);
                                    j4++;
                                    innerQueuedSubscriber.c();
                                }
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                this.f66299l = null;
                                innerQueuedSubscriber.cancel();
                                e();
                                cVar.onError(th);
                                return;
                            }
                        }
                    }
                    z3 = false;
                    if (j4 == j5) {
                        if (this.f66297j) {
                            e();
                            return;
                        } else if (errorMode == ErrorMode.IMMEDIATE && this.f66293f.get() != null) {
                            this.f66299l = null;
                            innerQueuedSubscriber.cancel();
                            e();
                            cVar.onError(this.f66293f.c());
                            return;
                        } else {
                            boolean a5 = innerQueuedSubscriber.a();
                            boolean isEmpty = b4.isEmpty();
                            if (a5 && isEmpty) {
                                this.f66299l = null;
                                this.f66296i.request(1L);
                                innerQueuedSubscriber = null;
                                z3 = true;
                            }
                        }
                    }
                }
                if (j4 != 0 && j5 != Long.MAX_VALUE) {
                    this.f66294g.addAndGet(-j4);
                }
                if (z3) {
                    innerQueuedSubscriber2 = innerQueuedSubscriber;
                    i4 = i2;
                } else {
                    i4 = addAndGet(-i2);
                    if (i4 == 0) {
                        return;
                    }
                    innerQueuedSubscriber2 = innerQueuedSubscriber;
                }
            }
        }

        @Override // io.reactivex.internal.subscribers.g
        public void c(InnerQueuedSubscriber<R> innerQueuedSubscriber) {
            innerQueuedSubscriber.d();
            b();
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66297j) {
                return;
            }
            this.f66297j = true;
            this.f66296i.cancel();
            f();
        }

        @Override // io.reactivex.internal.subscribers.g
        public void d(InnerQueuedSubscriber<R> innerQueuedSubscriber, Throwable th) {
            if (this.f66293f.a(th)) {
                innerQueuedSubscriber.d();
                if (this.f66292e != ErrorMode.END) {
                    this.f66296i.cancel();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void e() {
            while (true) {
                InnerQueuedSubscriber<R> poll = this.f66295h.poll();
                if (poll == null) {
                    return;
                }
                poll.cancel();
            }
        }

        void f() {
            if (getAndIncrement() == 0) {
                do {
                    e();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f66298k = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66293f.a(th)) {
                this.f66298k = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            try {
                l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66289b.apply(t3), "The mapper returned a null Publisher");
                InnerQueuedSubscriber<R> innerQueuedSubscriber = new InnerQueuedSubscriber<>(this, this.f66291d);
                if (this.f66297j) {
                    return;
                }
                this.f66295h.offer(innerQueuedSubscriber);
                bVar.c(innerQueuedSubscriber);
                if (this.f66297j) {
                    innerQueuedSubscriber.cancel();
                    f();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f66296i.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66296i, dVar)) {
                this.f66296i = dVar;
                this.f66288a.onSubscribe(this);
                int i2 = this.f66290c;
                dVar.request(i2 == Integer.MAX_VALUE ? Long.MAX_VALUE : i2);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66294g, j4);
                b();
            }
        }
    }

    public FlowableConcatMapEager(io.reactivex.j<T> jVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, int i4, ErrorMode errorMode) {
        super(jVar);
        this.f66284c = oVar;
        this.f66285d = i2;
        this.f66286e = i4;
        this.f66287f = errorMode;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        this.f67288b.g6(new ConcatMapEagerDelayErrorSubscriber(cVar, this.f66284c, this.f66285d, this.f66286e, this.f66287f));
    }
}

package io.reactivex.internal.operators.mixed;

import io.reactivex.disposables.b;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.j;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.c;
import l3.d;
import w2.o;
import x2.n;
/* loaded from: classes5.dex */
public final class FlowableConcatMapMaybe<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final j<T> f67935b;

    /* renamed from: c  reason: collision with root package name */
    final o<? super T, ? extends w<? extends R>> f67936c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f67937d;

    /* renamed from: e  reason: collision with root package name */
    final int f67938e;

    /* loaded from: classes5.dex */
    static final class ConcatMapMaybeSubscriber<T, R> extends AtomicInteger implements io.reactivex.o<T>, d {

        /* renamed from: p  reason: collision with root package name */
        static final int f67939p = 0;

        /* renamed from: q  reason: collision with root package name */
        static final int f67940q = 1;

        /* renamed from: r  reason: collision with root package name */
        static final int f67941r = 2;
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f67942a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends w<? extends R>> f67943b;

        /* renamed from: c  reason: collision with root package name */
        final int f67944c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f67945d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f67946e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final ConcatMapMaybeObserver<R> f67947f = new ConcatMapMaybeObserver<>(this);

        /* renamed from: g  reason: collision with root package name */
        final n<T> f67948g;

        /* renamed from: h  reason: collision with root package name */
        final ErrorMode f67949h;

        /* renamed from: i  reason: collision with root package name */
        d f67950i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f67951j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f67952k;

        /* renamed from: l  reason: collision with root package name */
        long f67953l;

        /* renamed from: m  reason: collision with root package name */
        int f67954m;

        /* renamed from: n  reason: collision with root package name */
        R f67955n;

        /* renamed from: o  reason: collision with root package name */
        volatile int f67956o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class ConcatMapMaybeObserver<R> extends AtomicReference<b> implements t<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final ConcatMapMaybeSubscriber<?, R> f67957a;

            ConcatMapMaybeObserver(ConcatMapMaybeSubscriber<?, R> concatMapMaybeSubscriber) {
                this.f67957a = concatMapMaybeSubscriber;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f67957a.b();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f67957a.c(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(b bVar) {
                DisposableHelper.replace(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r3) {
                this.f67957a.d(r3);
            }
        }

        ConcatMapMaybeSubscriber(c<? super R> cVar, o<? super T, ? extends w<? extends R>> oVar, int i2, ErrorMode errorMode) {
            this.f67942a = cVar;
            this.f67943b = oVar;
            this.f67944c = i2;
            this.f67949h = errorMode;
            this.f67948g = new SpscArrayQueue(i2);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            c<? super R> cVar = this.f67942a;
            ErrorMode errorMode = this.f67949h;
            n<T> nVar = this.f67948g;
            AtomicThrowable atomicThrowable = this.f67946e;
            AtomicLong atomicLong = this.f67945d;
            int i2 = this.f67944c;
            int i4 = i2 - (i2 >> 1);
            int i5 = 1;
            while (true) {
                if (this.f67952k) {
                    nVar.clear();
                    this.f67955n = null;
                } else {
                    int i6 = this.f67956o;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i6 != 0))) {
                        if (i6 == 0) {
                            boolean z3 = this.f67951j;
                            T poll = nVar.poll();
                            boolean z4 = poll == null;
                            if (z3 && z4) {
                                Throwable c4 = atomicThrowable.c();
                                if (c4 == null) {
                                    cVar.onComplete();
                                    return;
                                } else {
                                    cVar.onError(c4);
                                    return;
                                }
                            } else if (!z4) {
                                int i7 = this.f67954m + 1;
                                if (i7 == i4) {
                                    this.f67954m = 0;
                                    this.f67950i.request(i4);
                                } else {
                                    this.f67954m = i7;
                                }
                                try {
                                    w wVar = (w) io.reactivex.internal.functions.a.g(this.f67943b.apply(poll), "The mapper returned a null MaybeSource");
                                    this.f67956o = 1;
                                    wVar.a(this.f67947f);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    this.f67950i.cancel();
                                    nVar.clear();
                                    atomicThrowable.a(th);
                                    cVar.onError(atomicThrowable.c());
                                    return;
                                }
                            }
                        } else if (i6 == 2) {
                            long j4 = this.f67953l;
                            if (j4 != atomicLong.get()) {
                                this.f67955n = null;
                                cVar.onNext((R) this.f67955n);
                                this.f67953l = j4 + 1;
                                this.f67956o = 0;
                            }
                        }
                    }
                }
                i5 = addAndGet(-i5);
                if (i5 == 0) {
                    return;
                }
            }
            nVar.clear();
            this.f67955n = null;
            cVar.onError(atomicThrowable.c());
        }

        void b() {
            this.f67956o = 0;
            a();
        }

        void c(Throwable th) {
            if (this.f67946e.a(th)) {
                if (this.f67949h != ErrorMode.END) {
                    this.f67950i.cancel();
                }
                this.f67956o = 0;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.d
        public void cancel() {
            this.f67952k = true;
            this.f67950i.cancel();
            this.f67947f.a();
            if (getAndIncrement() == 0) {
                this.f67948g.clear();
                this.f67955n = null;
            }
        }

        void d(R r3) {
            this.f67955n = r3;
            this.f67956o = 2;
            a();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67951j = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67946e.a(th)) {
                if (this.f67949h == ErrorMode.IMMEDIATE) {
                    this.f67947f.a();
                }
                this.f67951j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (!this.f67948g.offer(t3)) {
                this.f67950i.cancel();
                onError(new MissingBackpressureException("queue full?!"));
                return;
            }
            a();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f67950i, dVar)) {
                this.f67950i = dVar;
                this.f67942a.onSubscribe(this);
                dVar.request(this.f67944c);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f67945d, j4);
            a();
        }
    }

    public FlowableConcatMapMaybe(j<T> jVar, o<? super T, ? extends w<? extends R>> oVar, ErrorMode errorMode, int i2) {
        this.f67935b = jVar;
        this.f67936c = oVar;
        this.f67937d = errorMode;
        this.f67938e = i2;
    }

    @Override // io.reactivex.j
    protected void h6(c<? super R> cVar) {
        this.f67935b.g6(new ConcatMapMaybeSubscriber(cVar, this.f67936c, this.f67938e, this.f67937d));
    }
}

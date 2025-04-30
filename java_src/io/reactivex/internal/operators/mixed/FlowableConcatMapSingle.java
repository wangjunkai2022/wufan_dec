package io.reactivex.internal.operators.mixed;

import io.reactivex.disposables.b;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.j;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.c;
import l3.d;
import w2.o;
import x2.n;
/* loaded from: classes5.dex */
public final class FlowableConcatMapSingle<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final j<T> f67958b;

    /* renamed from: c  reason: collision with root package name */
    final o<? super T, ? extends o0<? extends R>> f67959c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f67960d;

    /* renamed from: e  reason: collision with root package name */
    final int f67961e;

    /* loaded from: classes5.dex */
    static final class ConcatMapSingleSubscriber<T, R> extends AtomicInteger implements io.reactivex.o<T>, d {

        /* renamed from: p  reason: collision with root package name */
        static final int f67962p = 0;

        /* renamed from: q  reason: collision with root package name */
        static final int f67963q = 1;

        /* renamed from: r  reason: collision with root package name */
        static final int f67964r = 2;
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f67965a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends o0<? extends R>> f67966b;

        /* renamed from: c  reason: collision with root package name */
        final int f67967c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f67968d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f67969e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final ConcatMapSingleObserver<R> f67970f = new ConcatMapSingleObserver<>(this);

        /* renamed from: g  reason: collision with root package name */
        final n<T> f67971g;

        /* renamed from: h  reason: collision with root package name */
        final ErrorMode f67972h;

        /* renamed from: i  reason: collision with root package name */
        d f67973i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f67974j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f67975k;

        /* renamed from: l  reason: collision with root package name */
        long f67976l;

        /* renamed from: m  reason: collision with root package name */
        int f67977m;

        /* renamed from: n  reason: collision with root package name */
        R f67978n;

        /* renamed from: o  reason: collision with root package name */
        volatile int f67979o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class ConcatMapSingleObserver<R> extends AtomicReference<b> implements l0<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final ConcatMapSingleSubscriber<?, R> f67980a;

            ConcatMapSingleObserver(ConcatMapSingleSubscriber<?, R> concatMapSingleSubscriber) {
                this.f67980a = concatMapSingleSubscriber;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f67980a.b(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(b bVar) {
                DisposableHelper.replace(this, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r3) {
                this.f67980a.c(r3);
            }
        }

        ConcatMapSingleSubscriber(c<? super R> cVar, o<? super T, ? extends o0<? extends R>> oVar, int i2, ErrorMode errorMode) {
            this.f67965a = cVar;
            this.f67966b = oVar;
            this.f67967c = i2;
            this.f67972h = errorMode;
            this.f67971g = new SpscArrayQueue(i2);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            c<? super R> cVar = this.f67965a;
            ErrorMode errorMode = this.f67972h;
            n<T> nVar = this.f67971g;
            AtomicThrowable atomicThrowable = this.f67969e;
            AtomicLong atomicLong = this.f67968d;
            int i2 = this.f67967c;
            int i4 = i2 - (i2 >> 1);
            int i5 = 1;
            while (true) {
                if (this.f67975k) {
                    nVar.clear();
                    this.f67978n = null;
                } else {
                    int i6 = this.f67979o;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i6 != 0))) {
                        if (i6 == 0) {
                            boolean z3 = this.f67974j;
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
                                int i7 = this.f67977m + 1;
                                if (i7 == i4) {
                                    this.f67977m = 0;
                                    this.f67973i.request(i4);
                                } else {
                                    this.f67977m = i7;
                                }
                                try {
                                    o0 o0Var = (o0) io.reactivex.internal.functions.a.g(this.f67966b.apply(poll), "The mapper returned a null SingleSource");
                                    this.f67979o = 1;
                                    o0Var.a(this.f67970f);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    this.f67973i.cancel();
                                    nVar.clear();
                                    atomicThrowable.a(th);
                                    cVar.onError(atomicThrowable.c());
                                    return;
                                }
                            }
                        } else if (i6 == 2) {
                            long j4 = this.f67976l;
                            if (j4 != atomicLong.get()) {
                                this.f67978n = null;
                                cVar.onNext((R) this.f67978n);
                                this.f67976l = j4 + 1;
                                this.f67979o = 0;
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
            this.f67978n = null;
            cVar.onError(atomicThrowable.c());
        }

        void b(Throwable th) {
            if (this.f67969e.a(th)) {
                if (this.f67972h != ErrorMode.END) {
                    this.f67973i.cancel();
                }
                this.f67979o = 0;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void c(R r3) {
            this.f67978n = r3;
            this.f67979o = 2;
            a();
        }

        @Override // l3.d
        public void cancel() {
            this.f67975k = true;
            this.f67973i.cancel();
            this.f67970f.a();
            if (getAndIncrement() == 0) {
                this.f67971g.clear();
                this.f67978n = null;
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f67974j = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67969e.a(th)) {
                if (this.f67972h == ErrorMode.IMMEDIATE) {
                    this.f67970f.a();
                }
                this.f67974j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (!this.f67971g.offer(t3)) {
                this.f67973i.cancel();
                onError(new MissingBackpressureException("queue full?!"));
                return;
            }
            a();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f67973i, dVar)) {
                this.f67973i = dVar;
                this.f67965a.onSubscribe(this);
                dVar.request(this.f67967c);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f67968d, j4);
            a();
        }
    }

    public FlowableConcatMapSingle(j<T> jVar, o<? super T, ? extends o0<? extends R>> oVar, ErrorMode errorMode, int i2) {
        this.f67958b = jVar;
        this.f67959c = oVar;
        this.f67960d = errorMode;
        this.f67961e = i2;
    }

    @Override // io.reactivex.j
    protected void h6(c<? super R> cVar) {
        this.f67958b.g6(new ConcatMapSingleSubscriber(cVar, this.f67959c, this.f67961e, this.f67960d));
    }
}

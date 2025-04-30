package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableMergeWithSingle<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f66666c;

    /* loaded from: classes5.dex */
    static final class MergeWithObserver<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d {

        /* renamed from: o  reason: collision with root package name */
        static final int f66667o = 1;

        /* renamed from: p  reason: collision with root package name */
        static final int f66668p = 2;
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66669a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<l3.d> f66670b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final OtherObserver<T> f66671c = new OtherObserver<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f66672d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f66673e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final int f66674f;

        /* renamed from: g  reason: collision with root package name */
        final int f66675g;

        /* renamed from: h  reason: collision with root package name */
        volatile x2.n<T> f66676h;

        /* renamed from: i  reason: collision with root package name */
        T f66677i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f66678j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f66679k;

        /* renamed from: l  reason: collision with root package name */
        volatile int f66680l;

        /* renamed from: m  reason: collision with root package name */
        long f66681m;

        /* renamed from: n  reason: collision with root package name */
        int f66682n;

        /* loaded from: classes5.dex */
        static final class OtherObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.l0<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final MergeWithObserver<T> f66683a;

            OtherObserver(MergeWithObserver<T> mergeWithObserver) {
                this.f66683a = mergeWithObserver;
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f66683a.d(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(T t3) {
                this.f66683a.e(t3);
            }
        }

        MergeWithObserver(l3.c<? super T> cVar) {
            this.f66669a = cVar;
            int V = io.reactivex.j.V();
            this.f66674f = V;
            this.f66675g = V - (V >> 2);
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            l3.c<? super T> cVar = this.f66669a;
            long j4 = this.f66681m;
            int i2 = this.f66682n;
            int i4 = this.f66675g;
            int i5 = 1;
            int i6 = 1;
            while (true) {
                long j5 = this.f66673e.get();
                while (j4 != j5) {
                    if (this.f66678j) {
                        this.f66677i = null;
                        this.f66676h = null;
                        return;
                    } else if (this.f66672d.get() != null) {
                        this.f66677i = null;
                        this.f66676h = null;
                        cVar.onError(this.f66672d.c());
                        return;
                    } else {
                        int i7 = this.f66680l;
                        if (i7 == i5) {
                            this.f66677i = null;
                            this.f66680l = 2;
                            cVar.onNext((T) this.f66677i);
                            j4++;
                        } else {
                            boolean z3 = this.f66679k;
                            x2.n<T> nVar = this.f66676h;
                            T poll = nVar != null ? nVar.poll() : (Object) null;
                            boolean z4 = poll == null;
                            if (z3 && z4 && i7 == 2) {
                                this.f66676h = null;
                                cVar.onComplete();
                                return;
                            } else if (z4) {
                                break;
                            } else {
                                cVar.onNext(poll);
                                j4++;
                                i2++;
                                if (i2 == i4) {
                                    this.f66670b.get().request(i4);
                                    i2 = 0;
                                }
                                i5 = 1;
                            }
                        }
                    }
                }
                if (j4 == j5) {
                    if (this.f66678j) {
                        this.f66677i = null;
                        this.f66676h = null;
                        return;
                    } else if (this.f66672d.get() != null) {
                        this.f66677i = null;
                        this.f66676h = null;
                        cVar.onError(this.f66672d.c());
                        return;
                    } else {
                        boolean z5 = this.f66679k;
                        x2.n<T> nVar2 = this.f66676h;
                        boolean z6 = nVar2 == null || nVar2.isEmpty();
                        if (z5 && z6 && this.f66680l == 2) {
                            this.f66676h = null;
                            cVar.onComplete();
                            return;
                        }
                    }
                }
                this.f66681m = j4;
                this.f66682n = i2;
                i6 = addAndGet(-i6);
                if (i6 == 0) {
                    return;
                }
                i5 = 1;
            }
        }

        x2.n<T> c() {
            x2.n<T> nVar = this.f66676h;
            if (nVar == null) {
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(io.reactivex.j.V());
                this.f66676h = spscArrayQueue;
                return spscArrayQueue;
            }
            return nVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f66678j = true;
            SubscriptionHelper.cancel(this.f66670b);
            DisposableHelper.dispose(this.f66671c);
            if (getAndIncrement() == 0) {
                this.f66676h = null;
                this.f66677i = null;
            }
        }

        void d(Throwable th) {
            if (this.f66672d.a(th)) {
                SubscriptionHelper.cancel(this.f66670b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void e(T t3) {
            if (compareAndSet(0, 1)) {
                long j4 = this.f66681m;
                if (this.f66673e.get() != j4) {
                    this.f66681m = j4 + 1;
                    this.f66669a.onNext(t3);
                    this.f66680l = 2;
                } else {
                    this.f66677i = t3;
                    this.f66680l = 1;
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            } else {
                this.f66677i = t3;
                this.f66680l = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // l3.c
        public void onComplete() {
            this.f66679k = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66672d.a(th)) {
                SubscriptionHelper.cancel(this.f66670b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (compareAndSet(0, 1)) {
                long j4 = this.f66681m;
                if (this.f66673e.get() != j4) {
                    x2.n<T> nVar = this.f66676h;
                    if (nVar != null && !nVar.isEmpty()) {
                        nVar.offer(t3);
                    } else {
                        this.f66681m = j4 + 1;
                        this.f66669a.onNext(t3);
                        int i2 = this.f66682n + 1;
                        if (i2 == this.f66675g) {
                            this.f66682n = 0;
                            this.f66670b.get().request(i2);
                        } else {
                            this.f66682n = i2;
                        }
                    }
                } else {
                    c().offer(t3);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                c().offer(t3);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this.f66670b, dVar, this.f66674f);
        }

        @Override // l3.d
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f66673e, j4);
            a();
        }
    }

    public FlowableMergeWithSingle(io.reactivex.j<T> jVar, io.reactivex.o0<? extends T> o0Var) {
        super(jVar);
        this.f66666c = o0Var;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(cVar);
        cVar.onSubscribe(mergeWithObserver);
        this.f67288b.g6(mergeWithObserver);
        this.f66666c.a(mergeWithObserver.f66671c);
    }
}

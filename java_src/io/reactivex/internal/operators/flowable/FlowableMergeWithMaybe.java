package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableMergeWithMaybe<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.w<? extends T> f66648c;

    /* loaded from: classes5.dex */
    static final class MergeWithObserver<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d {

        /* renamed from: o  reason: collision with root package name */
        static final int f66649o = 1;

        /* renamed from: p  reason: collision with root package name */
        static final int f66650p = 2;
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66651a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<l3.d> f66652b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final OtherObserver<T> f66653c = new OtherObserver<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f66654d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f66655e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final int f66656f;

        /* renamed from: g  reason: collision with root package name */
        final int f66657g;

        /* renamed from: h  reason: collision with root package name */
        volatile x2.n<T> f66658h;

        /* renamed from: i  reason: collision with root package name */
        T f66659i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f66660j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f66661k;

        /* renamed from: l  reason: collision with root package name */
        volatile int f66662l;

        /* renamed from: m  reason: collision with root package name */
        long f66663m;

        /* renamed from: n  reason: collision with root package name */
        int f66664n;

        /* loaded from: classes5.dex */
        static final class OtherObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final MergeWithObserver<T> f66665a;

            OtherObserver(MergeWithObserver<T> mergeWithObserver) {
                this.f66665a = mergeWithObserver;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f66665a.d();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f66665a.e(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(T t3) {
                this.f66665a.f(t3);
            }
        }

        MergeWithObserver(l3.c<? super T> cVar) {
            this.f66651a = cVar;
            int V = io.reactivex.j.V();
            this.f66656f = V;
            this.f66657g = V - (V >> 2);
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            l3.c<? super T> cVar = this.f66651a;
            long j4 = this.f66663m;
            int i2 = this.f66664n;
            int i4 = this.f66657g;
            int i5 = 1;
            int i6 = 1;
            while (true) {
                long j5 = this.f66655e.get();
                while (j4 != j5) {
                    if (this.f66660j) {
                        this.f66659i = null;
                        this.f66658h = null;
                        return;
                    } else if (this.f66654d.get() != null) {
                        this.f66659i = null;
                        this.f66658h = null;
                        cVar.onError(this.f66654d.c());
                        return;
                    } else {
                        int i7 = this.f66662l;
                        if (i7 == i5) {
                            this.f66659i = null;
                            this.f66662l = 2;
                            cVar.onNext((T) this.f66659i);
                            j4++;
                        } else {
                            boolean z3 = this.f66661k;
                            x2.n<T> nVar = this.f66658h;
                            T poll = nVar != null ? nVar.poll() : (Object) null;
                            boolean z4 = poll == null;
                            if (z3 && z4 && i7 == 2) {
                                this.f66658h = null;
                                cVar.onComplete();
                                return;
                            } else if (z4) {
                                break;
                            } else {
                                cVar.onNext(poll);
                                j4++;
                                i2++;
                                if (i2 == i4) {
                                    this.f66652b.get().request(i4);
                                    i2 = 0;
                                }
                                i5 = 1;
                            }
                        }
                    }
                }
                if (j4 == j5) {
                    if (this.f66660j) {
                        this.f66659i = null;
                        this.f66658h = null;
                        return;
                    } else if (this.f66654d.get() != null) {
                        this.f66659i = null;
                        this.f66658h = null;
                        cVar.onError(this.f66654d.c());
                        return;
                    } else {
                        boolean z5 = this.f66661k;
                        x2.n<T> nVar2 = this.f66658h;
                        boolean z6 = nVar2 == null || nVar2.isEmpty();
                        if (z5 && z6 && this.f66662l == 2) {
                            this.f66658h = null;
                            cVar.onComplete();
                            return;
                        }
                    }
                }
                this.f66663m = j4;
                this.f66664n = i2;
                i6 = addAndGet(-i6);
                if (i6 == 0) {
                    return;
                }
                i5 = 1;
            }
        }

        x2.n<T> c() {
            x2.n<T> nVar = this.f66658h;
            if (nVar == null) {
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(io.reactivex.j.V());
                this.f66658h = spscArrayQueue;
                return spscArrayQueue;
            }
            return nVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f66660j = true;
            SubscriptionHelper.cancel(this.f66652b);
            DisposableHelper.dispose(this.f66653c);
            if (getAndIncrement() == 0) {
                this.f66658h = null;
                this.f66659i = null;
            }
        }

        void d() {
            this.f66662l = 2;
            a();
        }

        void e(Throwable th) {
            if (this.f66654d.a(th)) {
                SubscriptionHelper.cancel(this.f66652b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void f(T t3) {
            if (compareAndSet(0, 1)) {
                long j4 = this.f66663m;
                if (this.f66655e.get() != j4) {
                    this.f66663m = j4 + 1;
                    this.f66651a.onNext(t3);
                    this.f66662l = 2;
                } else {
                    this.f66659i = t3;
                    this.f66662l = 1;
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            } else {
                this.f66659i = t3;
                this.f66662l = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // l3.c
        public void onComplete() {
            this.f66661k = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66654d.a(th)) {
                SubscriptionHelper.cancel(this.f66652b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (compareAndSet(0, 1)) {
                long j4 = this.f66663m;
                if (this.f66655e.get() != j4) {
                    x2.n<T> nVar = this.f66658h;
                    if (nVar != null && !nVar.isEmpty()) {
                        nVar.offer(t3);
                    } else {
                        this.f66663m = j4 + 1;
                        this.f66651a.onNext(t3);
                        int i2 = this.f66664n + 1;
                        if (i2 == this.f66657g) {
                            this.f66664n = 0;
                            this.f66652b.get().request(i2);
                        } else {
                            this.f66664n = i2;
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
            SubscriptionHelper.setOnce(this.f66652b, dVar, this.f66656f);
        }

        @Override // l3.d
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f66655e, j4);
            a();
        }
    }

    public FlowableMergeWithMaybe(io.reactivex.j<T> jVar, io.reactivex.w<? extends T> wVar) {
        super(jVar);
        this.f66648c = wVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(cVar);
        cVar.onSubscribe(mergeWithObserver);
        this.f67288b.g6(mergeWithObserver);
        this.f66648c.a(mergeWithObserver.f66653c);
    }
}

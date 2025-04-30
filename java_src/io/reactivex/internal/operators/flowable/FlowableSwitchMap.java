package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableSwitchMap<T, R> extends a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends l3.b<? extends R>> f67021c;

    /* renamed from: d  reason: collision with root package name */
    final int f67022d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f67023e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SwitchMapInnerSubscriber<T, R> extends AtomicReference<l3.d> implements io.reactivex.o<R> {
        private static final long serialVersionUID = 3837284832786408377L;

        /* renamed from: a  reason: collision with root package name */
        final SwitchMapSubscriber<T, R> f67024a;

        /* renamed from: b  reason: collision with root package name */
        final long f67025b;

        /* renamed from: c  reason: collision with root package name */
        final int f67026c;

        /* renamed from: d  reason: collision with root package name */
        volatile x2.o<R> f67027d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f67028e;

        /* renamed from: f  reason: collision with root package name */
        int f67029f;

        SwitchMapInnerSubscriber(SwitchMapSubscriber<T, R> switchMapSubscriber, long j4, int i2) {
            this.f67024a = switchMapSubscriber;
            this.f67025b = j4;
            this.f67026c = i2;
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // l3.c
        public void onComplete() {
            SwitchMapSubscriber<T, R> switchMapSubscriber = this.f67024a;
            if (this.f67025b == switchMapSubscriber.f67041k) {
                this.f67028e = true;
                switchMapSubscriber.b();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            SwitchMapSubscriber<T, R> switchMapSubscriber = this.f67024a;
            if (this.f67025b == switchMapSubscriber.f67041k && switchMapSubscriber.f67036f.a(th)) {
                if (!switchMapSubscriber.f67034d) {
                    switchMapSubscriber.f67038h.cancel();
                }
                this.f67028e = true;
                switchMapSubscriber.b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(R r3) {
            SwitchMapSubscriber<T, R> switchMapSubscriber = this.f67024a;
            if (this.f67025b == switchMapSubscriber.f67041k) {
                if (this.f67029f == 0 && !this.f67027d.offer(r3)) {
                    onError(new MissingBackpressureException("Queue full?!"));
                } else {
                    switchMapSubscriber.b();
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f67029f = requestFusion;
                        this.f67027d = lVar;
                        this.f67028e = true;
                        this.f67024a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f67029f = requestFusion;
                        this.f67027d = lVar;
                        dVar.request(this.f67026c);
                        return;
                    }
                }
                this.f67027d = new SpscArrayQueue(this.f67026c);
                dVar.request(this.f67026c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SwitchMapSubscriber<T, R> extends AtomicInteger implements io.reactivex.o<T>, l3.d {

        /* renamed from: l  reason: collision with root package name */
        static final SwitchMapInnerSubscriber<Object, Object> f67030l;
        private static final long serialVersionUID = -3491074160481096299L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f67031a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends l3.b<? extends R>> f67032b;

        /* renamed from: c  reason: collision with root package name */
        final int f67033c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f67034d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f67035e;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f67037g;

        /* renamed from: h  reason: collision with root package name */
        l3.d f67038h;

        /* renamed from: k  reason: collision with root package name */
        volatile long f67041k;

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<SwitchMapInnerSubscriber<T, R>> f67039i = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicLong f67040j = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f67036f = new AtomicThrowable();

        static {
            SwitchMapInnerSubscriber<Object, Object> switchMapInnerSubscriber = new SwitchMapInnerSubscriber<>(null, -1L, 1);
            f67030l = switchMapInnerSubscriber;
            switchMapInnerSubscriber.a();
        }

        SwitchMapSubscriber(l3.c<? super R> cVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, boolean z3) {
            this.f67031a = cVar;
            this.f67032b = oVar;
            this.f67033c = i2;
            this.f67034d = z3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            SwitchMapInnerSubscriber<Object, Object> switchMapInnerSubscriber;
            SwitchMapInnerSubscriber<T, R> switchMapInnerSubscriber2 = this.f67039i.get();
            SwitchMapInnerSubscriber<Object, Object> switchMapInnerSubscriber3 = f67030l;
            if (switchMapInnerSubscriber2 == switchMapInnerSubscriber3 || (switchMapInnerSubscriber = (SwitchMapInnerSubscriber) this.f67039i.getAndSet(switchMapInnerSubscriber3)) == switchMapInnerSubscriber3 || switchMapInnerSubscriber == null) {
                return;
            }
            switchMapInnerSubscriber.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:113:0x000c, code lost:
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00e5, code lost:
            r14 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x011d, code lost:
            if (r12 == 0) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0121, code lost:
            if (r17.f67037g != false) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x012a, code lost:
            if (r8 == Long.MAX_VALUE) goto L75;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x012c, code lost:
            r17.f67040j.addAndGet(-r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0132, code lost:
            r6.get().request(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x013b, code lost:
            if (r14 == false) goto L77;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void b() {
            /*
                Method dump skipped, instructions count: 327
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableSwitchMap.SwitchMapSubscriber.b():void");
        }

        @Override // l3.d
        public void cancel() {
            if (this.f67037g) {
                return;
            }
            this.f67037g = true;
            this.f67038h.cancel();
            a();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67035e) {
                return;
            }
            this.f67035e = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (!this.f67035e && this.f67036f.a(th)) {
                if (!this.f67034d) {
                    a();
                }
                this.f67035e = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            SwitchMapInnerSubscriber<T, R> switchMapInnerSubscriber;
            if (this.f67035e) {
                return;
            }
            long j4 = this.f67041k + 1;
            this.f67041k = j4;
            SwitchMapInnerSubscriber<T, R> switchMapInnerSubscriber2 = this.f67039i.get();
            if (switchMapInnerSubscriber2 != null) {
                switchMapInnerSubscriber2.a();
            }
            try {
                l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f67032b.apply(t3), "The publisher returned is null");
                SwitchMapInnerSubscriber<T, R> switchMapInnerSubscriber3 = new SwitchMapInnerSubscriber<>(this, j4, this.f67033c);
                do {
                    switchMapInnerSubscriber = this.f67039i.get();
                    if (switchMapInnerSubscriber == f67030l) {
                        return;
                    }
                } while (!this.f67039i.compareAndSet(switchMapInnerSubscriber, switchMapInnerSubscriber3));
                bVar.c(switchMapInnerSubscriber3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67038h.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67038h, dVar)) {
                this.f67038h = dVar;
                this.f67031a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67040j, j4);
                if (this.f67041k == 0) {
                    this.f67038h.request(Long.MAX_VALUE);
                } else {
                    b();
                }
            }
        }
    }

    public FlowableSwitchMap(io.reactivex.j<T> jVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, boolean z3) {
        super(jVar);
        this.f67021c = oVar;
        this.f67022d = i2;
        this.f67023e = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        if (w0.b(this.f67288b, cVar, this.f67021c)) {
            return;
        }
        this.f67288b.g6(new SwitchMapSubscriber(cVar, this.f67021c, this.f67022d, this.f67023e));
    }
}

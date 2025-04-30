package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class ObservableTakeLastTimed<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f68766b;

    /* renamed from: c  reason: collision with root package name */
    final long f68767c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f68768d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f68769e;

    /* renamed from: f  reason: collision with root package name */
    final int f68770f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f68771g;

    /* loaded from: classes5.dex */
    static final class TakeLastTimedObserver<T> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68772a;

        /* renamed from: b  reason: collision with root package name */
        final long f68773b;

        /* renamed from: c  reason: collision with root package name */
        final long f68774c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f68775d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.h0 f68776e;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f68777f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f68778g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.b f68779h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68780i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f68781j;

        TakeLastTimedObserver(io.reactivex.g0<? super T> g0Var, long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, boolean z3) {
            this.f68772a = g0Var;
            this.f68773b = j4;
            this.f68774c = j5;
            this.f68775d = timeUnit;
            this.f68776e = h0Var;
            this.f68777f = new io.reactivex.internal.queue.a<>(i2);
            this.f68778g = z3;
        }

        void a() {
            Throwable th;
            if (compareAndSet(false, true)) {
                io.reactivex.g0<? super T> g0Var = this.f68772a;
                io.reactivex.internal.queue.a<Object> aVar = this.f68777f;
                boolean z3 = this.f68778g;
                while (!this.f68780i) {
                    if (!z3 && (th = this.f68781j) != null) {
                        aVar.clear();
                        g0Var.onError(th);
                        return;
                    }
                    Object poll = aVar.poll();
                    if (poll == null) {
                        Throwable th2 = this.f68781j;
                        if (th2 != null) {
                            g0Var.onError(th2);
                            return;
                        } else {
                            g0Var.onComplete();
                            return;
                        }
                    }
                    Object poll2 = aVar.poll();
                    if (((Long) poll).longValue() >= this.f68776e.d(this.f68775d) - this.f68774c) {
                        g0Var.onNext(poll2);
                    }
                }
                aVar.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68780i) {
                return;
            }
            this.f68780i = true;
            this.f68779h.dispose();
            if (compareAndSet(false, true)) {
                this.f68777f.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68780i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68781j = th;
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            io.reactivex.internal.queue.a<Object> aVar = this.f68777f;
            long d4 = this.f68776e.d(this.f68775d);
            long j4 = this.f68774c;
            long j5 = this.f68773b;
            boolean z3 = j5 == Long.MAX_VALUE;
            aVar.offer(Long.valueOf(d4), t3);
            while (!aVar.isEmpty()) {
                if (((Long) aVar.peek()).longValue() > d4 - j4 && (z3 || (aVar.m() >> 1) <= j5)) {
                    return;
                }
                aVar.poll();
                aVar.poll();
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68779h, bVar)) {
                this.f68779h = bVar;
                this.f68772a.onSubscribe(this);
            }
        }
    }

    public ObservableTakeLastTimed(io.reactivex.e0<T> e0Var, long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, boolean z3) {
        super(e0Var);
        this.f68766b = j4;
        this.f68767c = j5;
        this.f68768d = timeUnit;
        this.f68769e = h0Var;
        this.f68770f = i2;
        this.f68771g = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new TakeLastTimedObserver(g0Var, this.f68766b, this.f68767c, this.f68768d, this.f68769e, this.f68770f, this.f68771g));
    }
}

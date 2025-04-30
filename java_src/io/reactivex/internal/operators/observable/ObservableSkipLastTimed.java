package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableSkipLastTimed<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f68722b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f68723c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f68724d;

    /* renamed from: e  reason: collision with root package name */
    final int f68725e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f68726f;

    /* loaded from: classes5.dex */
    static final class SkipLastTimedObserver<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68727a;

        /* renamed from: b  reason: collision with root package name */
        final long f68728b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f68729c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f68730d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f68731e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f68732f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.b f68733g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68734h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68735i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f68736j;

        SkipLastTimedObserver(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, boolean z3) {
            this.f68727a = g0Var;
            this.f68728b = j4;
            this.f68729c = timeUnit;
            this.f68730d = h0Var;
            this.f68731e = new io.reactivex.internal.queue.a<>(i2);
            this.f68732f = z3;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super T> g0Var = this.f68727a;
            io.reactivex.internal.queue.a<Object> aVar = this.f68731e;
            boolean z3 = this.f68732f;
            TimeUnit timeUnit = this.f68729c;
            io.reactivex.h0 h0Var = this.f68730d;
            long j4 = this.f68728b;
            int i2 = 1;
            while (!this.f68734h) {
                boolean z4 = this.f68735i;
                Long l4 = (Long) aVar.peek();
                boolean z5 = l4 == null;
                long d4 = h0Var.d(timeUnit);
                if (!z5 && l4.longValue() > d4 - j4) {
                    z5 = true;
                }
                if (z4) {
                    if (!z3) {
                        Throwable th = this.f68736j;
                        if (th != null) {
                            this.f68731e.clear();
                            g0Var.onError(th);
                            return;
                        } else if (z5) {
                            g0Var.onComplete();
                            return;
                        }
                    } else if (z5) {
                        Throwable th2 = this.f68736j;
                        if (th2 != null) {
                            g0Var.onError(th2);
                            return;
                        } else {
                            g0Var.onComplete();
                            return;
                        }
                    }
                }
                if (z5) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    aVar.poll();
                    g0Var.onNext(aVar.poll());
                }
            }
            this.f68731e.clear();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68734h) {
                return;
            }
            this.f68734h = true;
            this.f68733g.dispose();
            if (getAndIncrement() == 0) {
                this.f68731e.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68734h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68735i = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68736j = th;
            this.f68735i = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68731e.offer(Long.valueOf(this.f68730d.d(this.f68729c)), t3);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68733g, bVar)) {
                this.f68733g = bVar;
                this.f68727a.onSubscribe(this);
            }
        }
    }

    public ObservableSkipLastTimed(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2, boolean z3) {
        super(e0Var);
        this.f68722b = j4;
        this.f68723c = timeUnit;
        this.f68724d = h0Var;
        this.f68725e = i2;
        this.f68726f = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new SkipLastTimedObserver(g0Var, this.f68722b, this.f68723c, this.f68724d, this.f68725e, this.f68726f));
    }
}

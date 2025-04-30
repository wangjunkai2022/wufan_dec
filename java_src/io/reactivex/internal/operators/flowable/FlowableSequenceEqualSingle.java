package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.FlowableSequenceEqual;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class FlowableSequenceEqualSingle<T> extends io.reactivex.i0<Boolean> implements x2.b<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<? extends T> f66966a;

    /* renamed from: b  reason: collision with root package name */
    final l3.b<? extends T> f66967b;

    /* renamed from: c  reason: collision with root package name */
    final w2.d<? super T, ? super T> f66968c;

    /* renamed from: d  reason: collision with root package name */
    final int f66969d;

    /* loaded from: classes5.dex */
    static final class EqualCoordinator<T> extends AtomicInteger implements io.reactivex.disposables.b, FlowableSequenceEqual.a {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f66970a;

        /* renamed from: b  reason: collision with root package name */
        final w2.d<? super T, ? super T> f66971b;

        /* renamed from: c  reason: collision with root package name */
        final FlowableSequenceEqual.EqualSubscriber<T> f66972c;

        /* renamed from: d  reason: collision with root package name */
        final FlowableSequenceEqual.EqualSubscriber<T> f66973d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f66974e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        T f66975f;

        /* renamed from: g  reason: collision with root package name */
        T f66976g;

        EqualCoordinator(io.reactivex.l0<? super Boolean> l0Var, int i2, w2.d<? super T, ? super T> dVar) {
            this.f66970a = l0Var;
            this.f66971b = dVar;
            this.f66972c = new FlowableSequenceEqual.EqualSubscriber<>(this, i2);
            this.f66973d = new FlowableSequenceEqual.EqualSubscriber<>(this, i2);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.a
        public void a(Throwable th) {
            if (this.f66974e.a(th)) {
                b();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.a
        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            int i2 = 1;
            do {
                x2.o<T> oVar = this.f66972c.f66963e;
                x2.o<T> oVar2 = this.f66973d.f66963e;
                if (oVar != null && oVar2 != null) {
                    while (!isDisposed()) {
                        if (this.f66974e.get() != null) {
                            c();
                            this.f66970a.onError(this.f66974e.c());
                            return;
                        }
                        boolean z3 = this.f66972c.f66964f;
                        T t3 = this.f66975f;
                        if (t3 == null) {
                            try {
                                t3 = oVar.poll();
                                this.f66975f = t3;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                c();
                                this.f66974e.a(th);
                                this.f66970a.onError(this.f66974e.c());
                                return;
                            }
                        }
                        boolean z4 = t3 == null;
                        boolean z5 = this.f66973d.f66964f;
                        T t4 = this.f66976g;
                        if (t4 == null) {
                            try {
                                t4 = oVar2.poll();
                                this.f66976g = t4;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                c();
                                this.f66974e.a(th2);
                                this.f66970a.onError(this.f66974e.c());
                                return;
                            }
                        }
                        boolean z6 = t4 == null;
                        if (z3 && z5 && z4 && z6) {
                            this.f66970a.onSuccess(Boolean.TRUE);
                            return;
                        } else if (z3 && z5 && z4 != z6) {
                            c();
                            this.f66970a.onSuccess(Boolean.FALSE);
                            return;
                        } else if (!z4 && !z6) {
                            try {
                                if (!this.f66971b.a(t3, t4)) {
                                    c();
                                    this.f66970a.onSuccess(Boolean.FALSE);
                                    return;
                                }
                                this.f66975f = null;
                                this.f66976g = null;
                                this.f66972c.b();
                                this.f66973d.b();
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                c();
                                this.f66974e.a(th3);
                                this.f66970a.onError(this.f66974e.c());
                                return;
                            }
                        }
                    }
                    this.f66972c.clear();
                    this.f66973d.clear();
                    return;
                } else if (isDisposed()) {
                    this.f66972c.clear();
                    this.f66973d.clear();
                    return;
                } else if (this.f66974e.get() != null) {
                    c();
                    this.f66970a.onError(this.f66974e.c());
                    return;
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        void c() {
            this.f66972c.a();
            this.f66972c.clear();
            this.f66973d.a();
            this.f66973d.clear();
        }

        void d(l3.b<? extends T> bVar, l3.b<? extends T> bVar2) {
            bVar.c(this.f66972c);
            bVar2.c(this.f66973d);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66972c.a();
            this.f66973d.a();
            if (getAndIncrement() == 0) {
                this.f66972c.clear();
                this.f66973d.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return SubscriptionHelper.isCancelled(this.f66972c.get());
        }
    }

    public FlowableSequenceEqualSingle(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, w2.d<? super T, ? super T> dVar, int i2) {
        this.f66966a = bVar;
        this.f66967b = bVar2;
        this.f66968c = dVar;
        this.f66969d = i2;
    }

    @Override // io.reactivex.i0
    public void Y0(io.reactivex.l0<? super Boolean> l0Var) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(l0Var, this.f66969d, this.f66968c);
        l0Var.onSubscribe(equalCoordinator);
        equalCoordinator.d(this.f66966a, this.f66967b);
    }

    @Override // x2.b
    public io.reactivex.j<Boolean> d() {
        return io.reactivex.plugins.a.P(new FlowableSequenceEqual(this.f66966a, this.f66967b, this.f66968c, this.f66969d));
    }
}

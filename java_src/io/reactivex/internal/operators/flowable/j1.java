package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.processors.UnicastProcessor;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: FlowableWindowBoundarySelector.java */
/* loaded from: classes5.dex */
public final class j1<T, B, V> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final l3.b<B> f67405c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super B, ? extends l3.b<V>> f67406d;

    /* renamed from: e  reason: collision with root package name */
    final int f67407e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowBoundarySelector.java */
    /* loaded from: classes5.dex */
    public static final class a<T, V> extends io.reactivex.subscribers.b<V> {

        /* renamed from: b  reason: collision with root package name */
        final c<T, ?, V> f67408b;

        /* renamed from: c  reason: collision with root package name */
        final UnicastProcessor<T> f67409c;

        /* renamed from: d  reason: collision with root package name */
        boolean f67410d;

        a(c<T, ?, V> cVar, UnicastProcessor<T> unicastProcessor) {
            this.f67408b = cVar;
            this.f67409c = unicastProcessor;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67410d) {
                return;
            }
            this.f67410d = true;
            this.f67408b.l(this);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67410d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67410d = true;
            this.f67408b.n(th);
        }

        @Override // l3.c
        public void onNext(V v3) {
            a();
            onComplete();
        }
    }

    /* compiled from: FlowableWindowBoundarySelector.java */
    /* loaded from: classes5.dex */
    static final class b<T, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final c<T, B, ?> f67411b;

        b(c<T, B, ?> cVar) {
            this.f67411b = cVar;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67411b.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67411b.n(th);
        }

        @Override // l3.c
        public void onNext(B b4) {
            this.f67411b.o(b4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowBoundarySelector.java */
    /* loaded from: classes5.dex */
    public static final class c<T, B, V> extends io.reactivex.internal.subscribers.h<T, Object, io.reactivex.j<T>> implements l3.d {
        final l3.b<B> C0;
        final w2.o<? super B, ? extends l3.b<V>> D0;
        final int E0;
        final io.reactivex.disposables.a F0;
        l3.d G0;
        final AtomicReference<io.reactivex.disposables.b> H0;
        final List<UnicastProcessor<T>> I0;
        final AtomicLong J0;

        c(l3.c<? super io.reactivex.j<T>> cVar, l3.b<B> bVar, w2.o<? super B, ? extends l3.b<V>> oVar, int i2) {
            super(cVar, new MpscLinkedQueue());
            this.H0 = new AtomicReference<>();
            AtomicLong atomicLong = new AtomicLong();
            this.J0 = atomicLong;
            this.C0 = bVar;
            this.D0 = oVar;
            this.E0 = i2;
            this.F0 = new io.reactivex.disposables.a();
            this.I0 = new ArrayList();
            atomicLong.lazySet(1L);
        }

        @Override // l3.d
        public void cancel() {
            this.f70023z0 = true;
        }

        void dispose() {
            this.F0.dispose();
            DisposableHelper.dispose(this.H0);
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.m
        public boolean f(l3.c<? super io.reactivex.j<T>> cVar, Object obj) {
            return false;
        }

        void l(a<T, V> aVar) {
            this.F0.delete(aVar);
            this.f70022y0.offer(new d(aVar.f67409c, null));
            if (b()) {
                m();
            }
        }

        void m() {
            x2.o oVar = this.f70022y0;
            l3.c<? super V> cVar = this.f70021x0;
            List<UnicastProcessor<T>> list = this.I0;
            int i2 = 1;
            while (true) {
                boolean z3 = this.A0;
                Object poll = oVar.poll();
                boolean z4 = poll == null;
                if (z3 && z4) {
                    dispose();
                    Throwable th = this.B0;
                    if (th != null) {
                        for (UnicastProcessor<T> unicastProcessor : list) {
                            unicastProcessor.onError(th);
                        }
                    } else {
                        for (UnicastProcessor<T> unicastProcessor2 : list) {
                            unicastProcessor2.onComplete();
                        }
                    }
                    list.clear();
                    return;
                } else if (z4) {
                    i2 = a(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (poll instanceof d) {
                    d dVar = (d) poll;
                    UnicastProcessor<T> unicastProcessor3 = dVar.f67412a;
                    if (unicastProcessor3 != null) {
                        if (list.remove(unicastProcessor3)) {
                            dVar.f67412a.onComplete();
                            if (this.J0.decrementAndGet() == 0) {
                                dispose();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.f70023z0) {
                        UnicastProcessor<T> Q8 = UnicastProcessor.Q8(this.E0);
                        long d4 = d();
                        if (d4 != 0) {
                            list.add(Q8);
                            cVar.onNext(Q8);
                            if (d4 != Long.MAX_VALUE) {
                                g(1L);
                            }
                            try {
                                l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.D0.apply((B) dVar.f67413b), "The publisher supplied is null");
                                a aVar = new a(this, Q8);
                                if (this.F0.b(aVar)) {
                                    this.J0.getAndIncrement();
                                    bVar.c(aVar);
                                }
                            } catch (Throwable th2) {
                                this.f70023z0 = true;
                                cVar.onError(th2);
                            }
                        } else {
                            this.f70023z0 = true;
                            cVar.onError(new MissingBackpressureException("Could not deliver new window due to lack of requests"));
                        }
                    }
                } else {
                    for (UnicastProcessor<T> unicastProcessor4 : list) {
                        unicastProcessor4.onNext((T) NotificationLite.getValue(poll));
                    }
                }
            }
        }

        void n(Throwable th) {
            this.G0.cancel();
            this.F0.dispose();
            DisposableHelper.dispose(this.H0);
            this.f70021x0.onError(th);
        }

        void o(B b4) {
            this.f70022y0.offer(new d(null, b4));
            if (b()) {
                m();
            }
        }

        @Override // l3.c
        public void onComplete() {
            if (this.A0) {
                return;
            }
            this.A0 = true;
            if (b()) {
                m();
            }
            if (this.J0.decrementAndGet() == 0) {
                this.F0.dispose();
            }
            this.f70021x0.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.A0) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.B0 = th;
            this.A0 = true;
            if (b()) {
                m();
            }
            if (this.J0.decrementAndGet() == 0) {
                this.F0.dispose();
            }
            this.f70021x0.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.A0) {
                return;
            }
            if (h()) {
                for (UnicastProcessor<T> unicastProcessor : this.I0) {
                    unicastProcessor.onNext(t3);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.f70022y0.offer(NotificationLite.next(t3));
                if (!b()) {
                    return;
                }
            }
            m();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.G0, dVar)) {
                this.G0 = dVar;
                this.f70021x0.onSubscribe(this);
                if (this.f70023z0) {
                    return;
                }
                b bVar = new b(this);
                if (this.H0.compareAndSet(null, bVar)) {
                    this.J0.getAndIncrement();
                    dVar.request(Long.MAX_VALUE);
                    this.C0.c(bVar);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            k(j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowBoundarySelector.java */
    /* loaded from: classes5.dex */
    public static final class d<T, B> {

        /* renamed from: a  reason: collision with root package name */
        final UnicastProcessor<T> f67412a;

        /* renamed from: b  reason: collision with root package name */
        final B f67413b;

        d(UnicastProcessor<T> unicastProcessor, B b4) {
            this.f67412a = unicastProcessor;
            this.f67413b = b4;
        }
    }

    public j1(io.reactivex.j<T> jVar, l3.b<B> bVar, w2.o<? super B, ? extends l3.b<V>> oVar, int i2) {
        super(jVar);
        this.f67405c = bVar;
        this.f67406d = oVar;
        this.f67407e = i2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super io.reactivex.j<T>> cVar) {
        this.f67288b.g6(new c(new io.reactivex.subscribers.e(cVar), this.f67405c, this.f67406d, this.f67407e));
    }
}

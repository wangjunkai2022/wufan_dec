package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.subjects.UnicastSubject;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ObservableWindowBoundarySelector.java */
/* loaded from: classes5.dex */
public final class w1<T, B, V> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<B> f69328b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super B, ? extends io.reactivex.e0<V>> f69329c;

    /* renamed from: d  reason: collision with root package name */
    final int f69330d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWindowBoundarySelector.java */
    /* loaded from: classes5.dex */
    public static final class a<T, V> extends io.reactivex.observers.d<V> {

        /* renamed from: b  reason: collision with root package name */
        final c<T, ?, V> f69331b;

        /* renamed from: c  reason: collision with root package name */
        final UnicastSubject<T> f69332c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69333d;

        a(c<T, ?, V> cVar, UnicastSubject<T> unicastSubject) {
            this.f69331b = cVar;
            this.f69332c = unicastSubject;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69333d) {
                return;
            }
            this.f69333d = true;
            this.f69331b.i(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69333d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69333d = true;
            this.f69331b.l(th);
        }

        @Override // io.reactivex.g0
        public void onNext(V v3) {
            dispose();
            onComplete();
        }
    }

    /* compiled from: ObservableWindowBoundarySelector.java */
    /* loaded from: classes5.dex */
    static final class b<T, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final c<T, B, ?> f69334b;

        b(c<T, B, ?> cVar) {
            this.f69334b = cVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69334b.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69334b.l(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b4) {
            this.f69334b.m(b4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWindowBoundarySelector.java */
    /* loaded from: classes5.dex */
    public static final class c<T, B, V> extends io.reactivex.internal.observers.k<T, Object, io.reactivex.z<T>> implements io.reactivex.disposables.b {
        final io.reactivex.e0<B> K;

        /* renamed from: n0  reason: collision with root package name */
        final w2.o<? super B, ? extends io.reactivex.e0<V>> f69335n0;

        /* renamed from: o0  reason: collision with root package name */
        final int f69336o0;

        /* renamed from: p0  reason: collision with root package name */
        final io.reactivex.disposables.a f69337p0;

        /* renamed from: q0  reason: collision with root package name */
        io.reactivex.disposables.b f69338q0;

        /* renamed from: r0  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f69339r0;

        /* renamed from: s0  reason: collision with root package name */
        final List<UnicastSubject<T>> f69340s0;

        /* renamed from: t0  reason: collision with root package name */
        final AtomicLong f69341t0;

        c(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, io.reactivex.e0<B> e0Var, w2.o<? super B, ? extends io.reactivex.e0<V>> oVar, int i2) {
            super(g0Var, new MpscLinkedQueue());
            this.f69339r0 = new AtomicReference<>();
            AtomicLong atomicLong = new AtomicLong();
            this.f69341t0 = atomicLong;
            this.K = e0Var;
            this.f69335n0 = oVar;
            this.f69336o0 = i2;
            this.f69337p0 = new io.reactivex.disposables.a();
            this.f69340s0 = new ArrayList();
            atomicLong.lazySet(1L);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.H = true;
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.j
        public void f(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, Object obj) {
        }

        void i(a<T, V> aVar) {
            this.f69337p0.delete(aVar);
            this.G.offer(new d(aVar.f69332c, null));
            if (b()) {
                k();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.H;
        }

        void j() {
            this.f69337p0.dispose();
            DisposableHelper.dispose(this.f69339r0);
        }

        void k() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.G;
            io.reactivex.g0<? super V> g0Var = this.F;
            List<UnicastSubject<T>> list = this.f69340s0;
            int i2 = 1;
            while (true) {
                boolean z3 = this.I;
                Object poll = mpscLinkedQueue.poll();
                boolean z4 = poll == null;
                if (z3 && z4) {
                    j();
                    Throwable th = this.J;
                    if (th != null) {
                        for (UnicastSubject<T> unicastSubject : list) {
                            unicastSubject.onError(th);
                        }
                    } else {
                        for (UnicastSubject<T> unicastSubject2 : list) {
                            unicastSubject2.onComplete();
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
                    UnicastSubject<T> unicastSubject3 = dVar.f69342a;
                    if (unicastSubject3 != null) {
                        if (list.remove(unicastSubject3)) {
                            dVar.f69342a.onComplete();
                            if (this.f69341t0.decrementAndGet() == 0) {
                                j();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.H) {
                        UnicastSubject<T> l8 = UnicastSubject.l8(this.f69336o0);
                        list.add(l8);
                        g0Var.onNext(l8);
                        try {
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f69335n0.apply((B) dVar.f69343b), "The ObservableSource supplied is null");
                            a aVar = new a(this, l8);
                            if (this.f69337p0.b(aVar)) {
                                this.f69341t0.getAndIncrement();
                                e0Var.a(aVar);
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.H = true;
                            g0Var.onError(th2);
                        }
                    }
                } else {
                    for (UnicastSubject<T> unicastSubject4 : list) {
                        unicastSubject4.onNext((T) NotificationLite.getValue(poll));
                    }
                }
            }
        }

        void l(Throwable th) {
            this.f69338q0.dispose();
            this.f69337p0.dispose();
            onError(th);
        }

        void m(B b4) {
            this.G.offer(new d(null, b4));
            if (b()) {
                k();
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.I) {
                return;
            }
            this.I = true;
            if (b()) {
                k();
            }
            if (this.f69341t0.decrementAndGet() == 0) {
                this.f69337p0.dispose();
            }
            this.F.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.I) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.J = th;
            this.I = true;
            if (b()) {
                k();
            }
            if (this.f69341t0.decrementAndGet() == 0) {
                this.f69337p0.dispose();
            }
            this.F.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (d()) {
                for (UnicastSubject<T> unicastSubject : this.f69340s0) {
                    unicastSubject.onNext(t3);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.G.offer(NotificationLite.next(t3));
                if (!b()) {
                    return;
                }
            }
            k();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69338q0, bVar)) {
                this.f69338q0 = bVar;
                this.F.onSubscribe(this);
                if (this.H) {
                    return;
                }
                b bVar2 = new b(this);
                if (this.f69339r0.compareAndSet(null, bVar2)) {
                    this.f69341t0.getAndIncrement();
                    this.K.a(bVar2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWindowBoundarySelector.java */
    /* loaded from: classes5.dex */
    public static final class d<T, B> {

        /* renamed from: a  reason: collision with root package name */
        final UnicastSubject<T> f69342a;

        /* renamed from: b  reason: collision with root package name */
        final B f69343b;

        d(UnicastSubject<T> unicastSubject, B b4) {
            this.f69342a = unicastSubject;
            this.f69343b = b4;
        }
    }

    public w1(io.reactivex.e0<T> e0Var, io.reactivex.e0<B> e0Var2, w2.o<? super B, ? extends io.reactivex.e0<V>> oVar, int i2) {
        super(e0Var);
        this.f69328b = e0Var2;
        this.f69329c = oVar;
        this.f69330d = i2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        this.f68961a.a(new c(new io.reactivex.observers.l(g0Var), this.f69328b, this.f69329c, this.f69330d));
    }
}

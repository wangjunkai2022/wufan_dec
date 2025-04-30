package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableWindowBoundarySupplier<T, B> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends io.reactivex.e0<B>> f68904b;

    /* renamed from: c  reason: collision with root package name */
    final int f68905c;

    /* loaded from: classes5.dex */
    static final class WindowBoundaryMainObserver<T, B> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b, Runnable {

        /* renamed from: l  reason: collision with root package name */
        static final a<Object, Object> f68906l = new a<>(null);

        /* renamed from: m  reason: collision with root package name */
        static final Object f68907m = new Object();
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.z<T>> f68908a;

        /* renamed from: b  reason: collision with root package name */
        final int f68909b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<a<T, B>> f68910c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f68911d = new AtomicInteger(1);

        /* renamed from: e  reason: collision with root package name */
        final MpscLinkedQueue<Object> f68912e = new MpscLinkedQueue<>();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f68913f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f68914g = new AtomicBoolean();

        /* renamed from: h  reason: collision with root package name */
        final Callable<? extends io.reactivex.e0<B>> f68915h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.disposables.b f68916i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f68917j;

        /* renamed from: k  reason: collision with root package name */
        UnicastSubject<T> f68918k;

        WindowBoundaryMainObserver(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, int i2, Callable<? extends io.reactivex.e0<B>> callable) {
            this.f68908a = g0Var;
            this.f68909b = i2;
            this.f68915h = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            a<Object, Object> aVar = f68906l;
            io.reactivex.disposables.b bVar = (io.reactivex.disposables.b) this.f68910c.getAndSet(aVar);
            if (bVar == null || bVar == aVar) {
                return;
            }
            bVar.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super io.reactivex.z<T>> g0Var = this.f68908a;
            MpscLinkedQueue<Object> mpscLinkedQueue = this.f68912e;
            AtomicThrowable atomicThrowable = this.f68913f;
            int i2 = 1;
            while (this.f68911d.get() != 0) {
                UnicastSubject<T> unicastSubject = this.f68918k;
                boolean z3 = this.f68917j;
                if (z3 && atomicThrowable.get() != null) {
                    mpscLinkedQueue.clear();
                    Throwable c4 = atomicThrowable.c();
                    if (unicastSubject != 0) {
                        this.f68918k = null;
                        unicastSubject.onError(c4);
                    }
                    g0Var.onError(c4);
                    return;
                }
                Object poll = mpscLinkedQueue.poll();
                boolean z4 = poll == null;
                if (z3 && z4) {
                    Throwable c5 = atomicThrowable.c();
                    if (c5 == null) {
                        if (unicastSubject != 0) {
                            this.f68918k = null;
                            unicastSubject.onComplete();
                        }
                        g0Var.onComplete();
                        return;
                    }
                    if (unicastSubject != 0) {
                        this.f68918k = null;
                        unicastSubject.onError(c5);
                    }
                    g0Var.onError(c5);
                    return;
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (poll != f68907m) {
                    unicastSubject.onNext(poll);
                } else {
                    if (unicastSubject != 0) {
                        this.f68918k = null;
                        unicastSubject.onComplete();
                    }
                    if (!this.f68914g.get()) {
                        UnicastSubject<T> m8 = UnicastSubject.m8(this.f68909b, this);
                        this.f68918k = m8;
                        this.f68911d.getAndIncrement();
                        try {
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68915h.call(), "The other Callable returned a null ObservableSource");
                            a<T, B> aVar = new a<>(this);
                            if (this.f68910c.compareAndSet(null, aVar)) {
                                e0Var.a(aVar);
                                g0Var.onNext(m8);
                            }
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            atomicThrowable.a(th);
                            this.f68917j = true;
                        }
                    }
                }
            }
            mpscLinkedQueue.clear();
            this.f68918k = null;
        }

        void c() {
            this.f68916i.dispose();
            this.f68917j = true;
            b();
        }

        void d(Throwable th) {
            this.f68916i.dispose();
            if (this.f68913f.a(th)) {
                this.f68917j = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68914g.compareAndSet(false, true)) {
                a();
                if (this.f68911d.decrementAndGet() == 0) {
                    this.f68916i.dispose();
                }
            }
        }

        void e(a<T, B> aVar) {
            this.f68910c.compareAndSet(aVar, null);
            this.f68912e.offer(f68907m);
            b();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68914g.get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            a();
            this.f68917j = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            a();
            if (this.f68913f.a(th)) {
                this.f68917j = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68912e.offer(t3);
            b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68916i, bVar)) {
                this.f68916i = bVar;
                this.f68908a.onSubscribe(this);
                this.f68912e.offer(f68907m);
                b();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f68911d.decrementAndGet() == 0) {
                this.f68916i.dispose();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final WindowBoundaryMainObserver<T, B> f68919b;

        /* renamed from: c  reason: collision with root package name */
        boolean f68920c;

        a(WindowBoundaryMainObserver<T, B> windowBoundaryMainObserver) {
            this.f68919b = windowBoundaryMainObserver;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68920c) {
                return;
            }
            this.f68920c = true;
            this.f68919b.c();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68920c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f68920c = true;
            this.f68919b.d(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b4) {
            if (this.f68920c) {
                return;
            }
            this.f68920c = true;
            dispose();
            this.f68919b.e(this);
        }
    }

    public ObservableWindowBoundarySupplier(io.reactivex.e0<T> e0Var, Callable<? extends io.reactivex.e0<B>> callable, int i2) {
        super(e0Var);
        this.f68904b = callable;
        this.f68905c = i2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        this.f68961a.a(new WindowBoundaryMainObserver(g0Var, this.f68905c, this.f68904b));
    }
}

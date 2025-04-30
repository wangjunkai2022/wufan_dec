package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableWindowBoundary<T, B> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<B> f68889b;

    /* renamed from: c  reason: collision with root package name */
    final int f68890c;

    /* loaded from: classes5.dex */
    static final class WindowBoundaryMainObserver<T, B> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b, Runnable {

        /* renamed from: k  reason: collision with root package name */
        static final Object f68891k = new Object();
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.z<T>> f68892a;

        /* renamed from: b  reason: collision with root package name */
        final int f68893b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, B> f68894c = new a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68895d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f68896e = new AtomicInteger(1);

        /* renamed from: f  reason: collision with root package name */
        final MpscLinkedQueue<Object> f68897f = new MpscLinkedQueue<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f68898g = new AtomicThrowable();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f68899h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68900i;

        /* renamed from: j  reason: collision with root package name */
        UnicastSubject<T> f68901j;

        WindowBoundaryMainObserver(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, int i2) {
            this.f68892a = g0Var;
            this.f68893b = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super io.reactivex.z<T>> g0Var = this.f68892a;
            MpscLinkedQueue<Object> mpscLinkedQueue = this.f68897f;
            AtomicThrowable atomicThrowable = this.f68898g;
            int i2 = 1;
            while (this.f68896e.get() != 0) {
                UnicastSubject<T> unicastSubject = this.f68901j;
                boolean z3 = this.f68900i;
                if (z3 && atomicThrowable.get() != null) {
                    mpscLinkedQueue.clear();
                    Throwable c4 = atomicThrowable.c();
                    if (unicastSubject != 0) {
                        this.f68901j = null;
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
                            this.f68901j = null;
                            unicastSubject.onComplete();
                        }
                        g0Var.onComplete();
                        return;
                    }
                    if (unicastSubject != 0) {
                        this.f68901j = null;
                        unicastSubject.onError(c5);
                    }
                    g0Var.onError(c5);
                    return;
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (poll != f68891k) {
                    unicastSubject.onNext(poll);
                } else {
                    if (unicastSubject != 0) {
                        this.f68901j = null;
                        unicastSubject.onComplete();
                    }
                    if (!this.f68899h.get()) {
                        UnicastSubject<T> m8 = UnicastSubject.m8(this.f68893b, this);
                        this.f68901j = m8;
                        this.f68896e.getAndIncrement();
                        g0Var.onNext(m8);
                    }
                }
            }
            mpscLinkedQueue.clear();
            this.f68901j = null;
        }

        void b() {
            DisposableHelper.dispose(this.f68895d);
            this.f68900i = true;
            a();
        }

        void c(Throwable th) {
            DisposableHelper.dispose(this.f68895d);
            if (this.f68898g.a(th)) {
                this.f68900i = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void d() {
            this.f68897f.offer(f68891k);
            a();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68899h.compareAndSet(false, true)) {
                this.f68894c.dispose();
                if (this.f68896e.decrementAndGet() == 0) {
                    DisposableHelper.dispose(this.f68895d);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68899h.get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68894c.dispose();
            this.f68900i = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68894c.dispose();
            if (this.f68898g.a(th)) {
                this.f68900i = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68897f.offer(t3);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this.f68895d, bVar)) {
                d();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f68896e.decrementAndGet() == 0) {
                DisposableHelper.dispose(this.f68895d);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final WindowBoundaryMainObserver<T, B> f68902b;

        /* renamed from: c  reason: collision with root package name */
        boolean f68903c;

        a(WindowBoundaryMainObserver<T, B> windowBoundaryMainObserver) {
            this.f68902b = windowBoundaryMainObserver;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68903c) {
                return;
            }
            this.f68903c = true;
            this.f68902b.b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68903c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f68903c = true;
            this.f68902b.c(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b4) {
            if (this.f68903c) {
                return;
            }
            this.f68902b.d();
        }
    }

    public ObservableWindowBoundary(io.reactivex.e0<T> e0Var, io.reactivex.e0<B> e0Var2, int i2) {
        super(e0Var);
        this.f68889b = e0Var2;
        this.f68890c = i2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        WindowBoundaryMainObserver windowBoundaryMainObserver = new WindowBoundaryMainObserver(g0Var, this.f68890c);
        g0Var.onSubscribe(windowBoundaryMainObserver);
        this.f68889b.a(windowBoundaryMainObserver.f68894c);
        this.f68961a.a(windowBoundaryMainObserver);
    }
}

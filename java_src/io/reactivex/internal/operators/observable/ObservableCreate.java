package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableCreate<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.c0<T> f68275a;

    /* loaded from: classes5.dex */
    static final class CreateEmitter<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.b0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -3434801548987643227L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68276a;

        CreateEmitter(io.reactivex.g0<? super T> g0Var) {
            this.f68276a = g0Var;
        }

        @Override // io.reactivex.b0
        public boolean a(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.f68276a.onError(th);
                dispose();
                return true;
            } catch (Throwable th2) {
                dispose();
                throw th2;
            }
        }

        @Override // io.reactivex.b0
        public void b(w2.f fVar) {
            c(new CancellableDisposable(fVar));
        }

        @Override // io.reactivex.b0
        public void c(io.reactivex.disposables.b bVar) {
            DisposableHelper.set(this, bVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.b0, io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            try {
                this.f68276a.onComplete();
            } finally {
                dispose();
            }
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t3) {
            if (t3 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (isDisposed()) {
            } else {
                this.f68276a.onNext(t3);
            }
        }

        @Override // io.reactivex.b0
        public io.reactivex.b0<T> serialize() {
            return new SerializedEmitter(this);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", CreateEmitter.class.getSimpleName(), super.toString());
        }
    }

    /* loaded from: classes5.dex */
    static final class SerializedEmitter<T> extends AtomicInteger implements io.reactivex.b0<T> {
        private static final long serialVersionUID = 4883307006032401862L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.b0<T> f68277a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f68278b = new AtomicThrowable();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.internal.queue.a<T> f68279c = new io.reactivex.internal.queue.a<>(16);

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f68280d;

        SerializedEmitter(io.reactivex.b0<T> b0Var) {
            this.f68277a = b0Var;
        }

        @Override // io.reactivex.b0
        public boolean a(Throwable th) {
            if (!this.f68277a.isDisposed() && !this.f68280d) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.f68278b.a(th)) {
                    this.f68280d = true;
                    e();
                    return true;
                }
            }
            return false;
        }

        @Override // io.reactivex.b0
        public void b(w2.f fVar) {
            this.f68277a.b(fVar);
        }

        @Override // io.reactivex.b0
        public void c(io.reactivex.disposables.b bVar) {
            this.f68277a.c(bVar);
        }

        void e() {
            if (getAndIncrement() == 0) {
                f();
            }
        }

        void f() {
            io.reactivex.b0<T> b0Var = this.f68277a;
            io.reactivex.internal.queue.a<T> aVar = this.f68279c;
            AtomicThrowable atomicThrowable = this.f68278b;
            int i2 = 1;
            while (!b0Var.isDisposed()) {
                if (atomicThrowable.get() != null) {
                    aVar.clear();
                    b0Var.onError(atomicThrowable.c());
                    return;
                }
                boolean z3 = this.f68280d;
                T poll = aVar.poll();
                boolean z4 = poll == null;
                if (z3 && z4) {
                    b0Var.onComplete();
                    return;
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    b0Var.onNext(poll);
                }
            }
            aVar.clear();
        }

        @Override // io.reactivex.b0, io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68277a.isDisposed();
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (this.f68277a.isDisposed() || this.f68280d) {
                return;
            }
            this.f68280d = true;
            e();
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t3) {
            if (this.f68277a.isDisposed() || this.f68280d) {
                return;
            }
            if (t3 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f68277a.onNext(t3);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                io.reactivex.internal.queue.a<T> aVar = this.f68279c;
                synchronized (aVar) {
                    aVar.offer(t3);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            f();
        }

        @Override // io.reactivex.b0
        public io.reactivex.b0<T> serialize() {
            return this;
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.f68277a.toString();
        }
    }

    public ObservableCreate(io.reactivex.c0<T> c0Var) {
        this.f68275a = c0Var;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        CreateEmitter createEmitter = new CreateEmitter(g0Var);
        g0Var.onSubscribe(createEmitter);
        try {
            this.f68275a.a(createEmitter);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            createEmitter.onError(th);
        }
    }
}

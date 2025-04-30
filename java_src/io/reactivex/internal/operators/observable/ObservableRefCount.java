package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableRefCount<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.observables.a<T> f68561a;

    /* renamed from: b  reason: collision with root package name */
    final int f68562b;

    /* renamed from: c  reason: collision with root package name */
    final long f68563c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f68564d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f68565e;

    /* renamed from: f  reason: collision with root package name */
    RefConnection f68566f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class RefConnection extends AtomicReference<io.reactivex.disposables.b> implements Runnable, w2.g<io.reactivex.disposables.b> {
        private static final long serialVersionUID = -4552101107598366241L;

        /* renamed from: a  reason: collision with root package name */
        final ObservableRefCount<?> f68567a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f68568b;

        /* renamed from: c  reason: collision with root package name */
        long f68569c;

        /* renamed from: d  reason: collision with root package name */
        boolean f68570d;

        RefConnection(ObservableRefCount<?> observableRefCount) {
            this.f68567a = observableRefCount;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(io.reactivex.disposables.b bVar) throws Exception {
            DisposableHelper.replace(this, bVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f68567a.h8(this);
        }
    }

    /* loaded from: classes5.dex */
    static final class RefCountObserver<T> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -7419642935409022375L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68571a;

        /* renamed from: b  reason: collision with root package name */
        final ObservableRefCount<T> f68572b;

        /* renamed from: c  reason: collision with root package name */
        final RefConnection f68573c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f68574d;

        RefCountObserver(io.reactivex.g0<? super T> g0Var, ObservableRefCount<T> observableRefCount, RefConnection refConnection) {
            this.f68571a = g0Var;
            this.f68572b = observableRefCount;
            this.f68573c = refConnection;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68574d.dispose();
            if (compareAndSet(false, true)) {
                this.f68572b.f8(this.f68573c);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68574d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f68572b.g8(this.f68573c);
                this.f68571a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f68572b.g8(this.f68573c);
                this.f68571a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68571a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68574d, bVar)) {
                this.f68574d = bVar;
                this.f68571a.onSubscribe(this);
            }
        }
    }

    public ObservableRefCount(io.reactivex.observables.a<T> aVar) {
        this(aVar, 1, 0L, TimeUnit.NANOSECONDS, io.reactivex.schedulers.b.h());
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        RefConnection refConnection;
        boolean z3;
        io.reactivex.disposables.b bVar;
        synchronized (this) {
            refConnection = this.f68566f;
            if (refConnection == null) {
                refConnection = new RefConnection(this);
                this.f68566f = refConnection;
            }
            long j4 = refConnection.f68569c;
            if (j4 == 0 && (bVar = refConnection.f68568b) != null) {
                bVar.dispose();
            }
            long j5 = j4 + 1;
            refConnection.f68569c = j5;
            z3 = true;
            if (refConnection.f68570d || j5 != this.f68562b) {
                z3 = false;
            } else {
                refConnection.f68570d = true;
            }
        }
        this.f68561a.a(new RefCountObserver(g0Var, this, refConnection));
        if (z3) {
            this.f68561a.j8(refConnection);
        }
    }

    void f8(RefConnection refConnection) {
        synchronized (this) {
            RefConnection refConnection2 = this.f68566f;
            if (refConnection2 != null && refConnection2 == refConnection) {
                long j4 = refConnection.f68569c - 1;
                refConnection.f68569c = j4;
                if (j4 == 0 && refConnection.f68570d) {
                    if (this.f68563c == 0) {
                        h8(refConnection);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    refConnection.f68568b = sequentialDisposable;
                    sequentialDisposable.a(this.f68565e.f(refConnection, this.f68563c, this.f68564d));
                }
            }
        }
    }

    void g8(RefConnection refConnection) {
        synchronized (this) {
            RefConnection refConnection2 = this.f68566f;
            if (refConnection2 != null && refConnection2 == refConnection) {
                this.f68566f = null;
                io.reactivex.disposables.b bVar = refConnection.f68568b;
                if (bVar != null) {
                    bVar.dispose();
                }
            }
            long j4 = refConnection.f68569c - 1;
            refConnection.f68569c = j4;
            if (j4 == 0) {
                io.reactivex.observables.a<T> aVar = this.f68561a;
                if (aVar instanceof io.reactivex.disposables.b) {
                    ((io.reactivex.disposables.b) aVar).dispose();
                } else if (aVar instanceof io.reactivex.internal.disposables.c) {
                    ((io.reactivex.internal.disposables.c) aVar).b(refConnection.get());
                }
            }
        }
    }

    void h8(RefConnection refConnection) {
        synchronized (this) {
            if (refConnection.f68569c == 0 && refConnection == this.f68566f) {
                this.f68566f = null;
                io.reactivex.disposables.b bVar = refConnection.get();
                DisposableHelper.dispose(refConnection);
                io.reactivex.observables.a<T> aVar = this.f68561a;
                if (aVar instanceof io.reactivex.disposables.b) {
                    ((io.reactivex.disposables.b) aVar).dispose();
                } else if (aVar instanceof io.reactivex.internal.disposables.c) {
                    ((io.reactivex.internal.disposables.c) aVar).b(bVar);
                }
            }
        }
    }

    public ObservableRefCount(io.reactivex.observables.a<T> aVar, int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f68561a = aVar;
        this.f68562b = i2;
        this.f68563c = j4;
        this.f68564d = timeUnit;
        this.f68565e = h0Var;
    }
}

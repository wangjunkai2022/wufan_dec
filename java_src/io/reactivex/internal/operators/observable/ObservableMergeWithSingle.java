package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableMergeWithSingle<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f68506b;

    /* loaded from: classes5.dex */
    static final class MergeWithObserver<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: j  reason: collision with root package name */
        static final int f68507j = 1;

        /* renamed from: k  reason: collision with root package name */
        static final int f68508k = 2;
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68509a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68510b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final OtherObserver<T> f68511c = new OtherObserver<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68512d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile x2.n<T> f68513e;

        /* renamed from: f  reason: collision with root package name */
        T f68514f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68515g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68516h;

        /* renamed from: i  reason: collision with root package name */
        volatile int f68517i;

        /* loaded from: classes5.dex */
        static final class OtherObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.l0<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final MergeWithObserver<T> f68518a;

            OtherObserver(MergeWithObserver<T> mergeWithObserver) {
                this.f68518a = mergeWithObserver;
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f68518a.d(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(T t3) {
                this.f68518a.e(t3);
            }
        }

        MergeWithObserver(io.reactivex.g0<? super T> g0Var) {
            this.f68509a = g0Var;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.g0<? super T> g0Var = this.f68509a;
            int i2 = 1;
            while (!this.f68515g) {
                if (this.f68512d.get() != null) {
                    this.f68514f = null;
                    this.f68513e = null;
                    g0Var.onError(this.f68512d.c());
                    return;
                }
                int i4 = this.f68517i;
                if (i4 == 1) {
                    this.f68514f = null;
                    this.f68517i = 2;
                    g0Var.onNext((T) this.f68514f);
                    i4 = 2;
                }
                boolean z3 = this.f68516h;
                x2.n<T> nVar = this.f68513e;
                T poll = nVar != null ? nVar.poll() : (Object) null;
                boolean z4 = poll == null;
                if (z3 && z4 && i4 == 2) {
                    this.f68513e = null;
                    g0Var.onComplete();
                    return;
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    g0Var.onNext(poll);
                }
            }
            this.f68514f = null;
            this.f68513e = null;
        }

        x2.n<T> c() {
            x2.n<T> nVar = this.f68513e;
            if (nVar == null) {
                io.reactivex.internal.queue.a aVar = new io.reactivex.internal.queue.a(io.reactivex.z.S());
                this.f68513e = aVar;
                return aVar;
            }
            return nVar;
        }

        void d(Throwable th) {
            if (this.f68512d.a(th)) {
                DisposableHelper.dispose(this.f68510b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68515g = true;
            DisposableHelper.dispose(this.f68510b);
            DisposableHelper.dispose(this.f68511c);
            if (getAndIncrement() == 0) {
                this.f68513e = null;
                this.f68514f = null;
            }
        }

        void e(T t3) {
            if (compareAndSet(0, 1)) {
                this.f68509a.onNext(t3);
                this.f68517i = 2;
            } else {
                this.f68514f = t3;
                this.f68517i = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68510b.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68516h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68512d.a(th)) {
                DisposableHelper.dispose(this.f68510b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (compareAndSet(0, 1)) {
                this.f68509a.onNext(t3);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                c().offer(t3);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68510b, bVar);
        }
    }

    public ObservableMergeWithSingle(io.reactivex.z<T> zVar, io.reactivex.o0<? extends T> o0Var) {
        super(zVar);
        this.f68506b = o0Var;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(g0Var);
        g0Var.onSubscribe(mergeWithObserver);
        this.f68961a.a(mergeWithObserver);
        this.f68506b.a(mergeWithObserver.f68511c);
    }
}

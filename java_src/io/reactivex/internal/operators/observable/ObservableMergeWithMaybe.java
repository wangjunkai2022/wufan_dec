package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableMergeWithMaybe<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T> f68493b;

    /* loaded from: classes5.dex */
    static final class MergeWithObserver<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: j  reason: collision with root package name */
        static final int f68494j = 1;

        /* renamed from: k  reason: collision with root package name */
        static final int f68495k = 2;
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68496a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68497b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final OtherObserver<T> f68498c = new OtherObserver<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68499d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile x2.n<T> f68500e;

        /* renamed from: f  reason: collision with root package name */
        T f68501f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68502g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68503h;

        /* renamed from: i  reason: collision with root package name */
        volatile int f68504i;

        /* loaded from: classes5.dex */
        static final class OtherObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final MergeWithObserver<T> f68505a;

            OtherObserver(MergeWithObserver<T> mergeWithObserver) {
                this.f68505a = mergeWithObserver;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f68505a.d();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f68505a.e(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(T t3) {
                this.f68505a.f(t3);
            }
        }

        MergeWithObserver(io.reactivex.g0<? super T> g0Var) {
            this.f68496a = g0Var;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.g0<? super T> g0Var = this.f68496a;
            int i2 = 1;
            while (!this.f68502g) {
                if (this.f68499d.get() != null) {
                    this.f68501f = null;
                    this.f68500e = null;
                    g0Var.onError(this.f68499d.c());
                    return;
                }
                int i4 = this.f68504i;
                if (i4 == 1) {
                    this.f68501f = null;
                    this.f68504i = 2;
                    g0Var.onNext((T) this.f68501f);
                    i4 = 2;
                }
                boolean z3 = this.f68503h;
                x2.n<T> nVar = this.f68500e;
                T poll = nVar != null ? nVar.poll() : (Object) null;
                boolean z4 = poll == null;
                if (z3 && z4 && i4 == 2) {
                    this.f68500e = null;
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
            this.f68501f = null;
            this.f68500e = null;
        }

        x2.n<T> c() {
            x2.n<T> nVar = this.f68500e;
            if (nVar == null) {
                io.reactivex.internal.queue.a aVar = new io.reactivex.internal.queue.a(io.reactivex.z.S());
                this.f68500e = aVar;
                return aVar;
            }
            return nVar;
        }

        void d() {
            this.f68504i = 2;
            a();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68502g = true;
            DisposableHelper.dispose(this.f68497b);
            DisposableHelper.dispose(this.f68498c);
            if (getAndIncrement() == 0) {
                this.f68500e = null;
                this.f68501f = null;
            }
        }

        void e(Throwable th) {
            if (this.f68499d.a(th)) {
                DisposableHelper.dispose(this.f68497b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void f(T t3) {
            if (compareAndSet(0, 1)) {
                this.f68496a.onNext(t3);
                this.f68504i = 2;
            } else {
                this.f68501f = t3;
                this.f68504i = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68497b.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68503h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68499d.a(th)) {
                DisposableHelper.dispose(this.f68497b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (compareAndSet(0, 1)) {
                this.f68496a.onNext(t3);
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
            DisposableHelper.setOnce(this.f68497b, bVar);
        }
    }

    public ObservableMergeWithMaybe(io.reactivex.z<T> zVar, io.reactivex.w<? extends T> wVar) {
        super(zVar);
        this.f68493b = wVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(g0Var);
        g0Var.onSubscribe(mergeWithObserver);
        this.f68961a.a(mergeWithObserver);
        this.f68493b.a(mergeWithObserver.f68498c);
    }
}

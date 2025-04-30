package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ObservableDebounce.java */
/* loaded from: classes5.dex */
public final class r<T, U> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.e0<U>> f69245b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableDebounce.java */
    /* loaded from: classes5.dex */
    public static final class a<T, U> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69246a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<U>> f69247b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69248c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f69249d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        volatile long f69250e;

        /* renamed from: f  reason: collision with root package name */
        boolean f69251f;

        /* compiled from: ObservableDebounce.java */
        /* renamed from: io.reactivex.internal.operators.observable.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        static final class C0458a<T, U> extends io.reactivex.observers.d<U> {

            /* renamed from: b  reason: collision with root package name */
            final a<T, U> f69252b;

            /* renamed from: c  reason: collision with root package name */
            final long f69253c;

            /* renamed from: d  reason: collision with root package name */
            final T f69254d;

            /* renamed from: e  reason: collision with root package name */
            boolean f69255e;

            /* renamed from: f  reason: collision with root package name */
            final AtomicBoolean f69256f = new AtomicBoolean();

            C0458a(a<T, U> aVar, long j4, T t3) {
                this.f69252b = aVar;
                this.f69253c = j4;
                this.f69254d = t3;
            }

            void b() {
                if (this.f69256f.compareAndSet(false, true)) {
                    this.f69252b.a(this.f69253c, this.f69254d);
                }
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                if (this.f69255e) {
                    return;
                }
                this.f69255e = true;
                b();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                if (this.f69255e) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                }
                this.f69255e = true;
                this.f69252b.onError(th);
            }

            @Override // io.reactivex.g0
            public void onNext(U u3) {
                if (this.f69255e) {
                    return;
                }
                this.f69255e = true;
                dispose();
                b();
            }
        }

        a(io.reactivex.g0<? super T> g0Var, w2.o<? super T, ? extends io.reactivex.e0<U>> oVar) {
            this.f69246a = g0Var;
            this.f69247b = oVar;
        }

        void a(long j4, T t3) {
            if (j4 == this.f69250e) {
                this.f69246a.onNext(t3);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69248c.dispose();
            DisposableHelper.dispose(this.f69249d);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69248c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69251f) {
                return;
            }
            this.f69251f = true;
            io.reactivex.disposables.b bVar = this.f69249d.get();
            if (bVar != DisposableHelper.DISPOSED) {
                ((C0458a) bVar).b();
                DisposableHelper.dispose(this.f69249d);
                this.f69246a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f69249d);
            this.f69246a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69251f) {
                return;
            }
            long j4 = this.f69250e + 1;
            this.f69250e = j4;
            io.reactivex.disposables.b bVar = this.f69249d.get();
            if (bVar != null) {
                bVar.dispose();
            }
            try {
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f69247b.apply(t3), "The ObservableSource supplied is null");
                C0458a c0458a = new C0458a(this, j4, t3);
                if (this.f69249d.compareAndSet(bVar, c0458a)) {
                    e0Var.a(c0458a);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                this.f69246a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69248c, bVar)) {
                this.f69248c = bVar;
                this.f69246a.onSubscribe(this);
            }
        }
    }

    public r(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.e0<U>> oVar) {
        super(e0Var);
        this.f69245b = oVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(new io.reactivex.observers.l(g0Var), this.f69245b));
    }
}

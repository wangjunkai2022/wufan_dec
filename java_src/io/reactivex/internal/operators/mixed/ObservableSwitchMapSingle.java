package io.reactivex.internal.operators.mixed;

import io.reactivex.disposables.b;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.l0;
import io.reactivex.o0;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
/* loaded from: classes5.dex */
public final class ObservableSwitchMapSingle<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f68115a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends o0<? extends R>> f68116b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68117c;

    /* loaded from: classes5.dex */
    static final class SwitchMapSingleMainObserver<T, R> extends AtomicInteger implements g0<T>, b {

        /* renamed from: i  reason: collision with root package name */
        static final SwitchMapSingleObserver<Object> f68118i = new SwitchMapSingleObserver<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f68119a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends o0<? extends R>> f68120b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f68121c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68122d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<SwitchMapSingleObserver<R>> f68123e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        b f68124f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68125g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68126h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class SwitchMapSingleObserver<R> extends AtomicReference<b> implements l0<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final SwitchMapSingleMainObserver<?, R> f68127a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f68128b;

            SwitchMapSingleObserver(SwitchMapSingleMainObserver<?, R> switchMapSingleMainObserver) {
                this.f68127a = switchMapSingleMainObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f68127a.c(this, th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r3) {
                this.f68128b = r3;
                this.f68127a.b();
            }
        }

        SwitchMapSingleMainObserver(g0<? super R> g0Var, o<? super T, ? extends o0<? extends R>> oVar, boolean z3) {
            this.f68119a = g0Var;
            this.f68120b = oVar;
            this.f68121c = z3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            SwitchMapSingleObserver<Object> switchMapSingleObserver = f68118i;
            SwitchMapSingleObserver<Object> switchMapSingleObserver2 = (SwitchMapSingleObserver) this.f68123e.getAndSet(switchMapSingleObserver);
            if (switchMapSingleObserver2 == null || switchMapSingleObserver2 == switchMapSingleObserver) {
                return;
            }
            switchMapSingleObserver2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            g0<? super R> g0Var = this.f68119a;
            AtomicThrowable atomicThrowable = this.f68122d;
            AtomicReference<SwitchMapSingleObserver<R>> atomicReference = this.f68123e;
            int i2 = 1;
            while (!this.f68126h) {
                if (atomicThrowable.get() != null && !this.f68121c) {
                    g0Var.onError(atomicThrowable.c());
                    return;
                }
                boolean z3 = this.f68125g;
                SwitchMapSingleObserver<R> switchMapSingleObserver = atomicReference.get();
                boolean z4 = switchMapSingleObserver == null;
                if (z3 && z4) {
                    Throwable c4 = atomicThrowable.c();
                    if (c4 != null) {
                        g0Var.onError(c4);
                        return;
                    } else {
                        g0Var.onComplete();
                        return;
                    }
                } else if (!z4 && switchMapSingleObserver.f68128b != null) {
                    atomicReference.compareAndSet(switchMapSingleObserver, null);
                    g0Var.onNext((R) switchMapSingleObserver.f68128b);
                } else {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        void c(SwitchMapSingleObserver<R> switchMapSingleObserver, Throwable th) {
            if (this.f68123e.compareAndSet(switchMapSingleObserver, null) && this.f68122d.a(th)) {
                if (!this.f68121c) {
                    this.f68124f.dispose();
                    a();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68126h = true;
            this.f68124f.dispose();
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68126h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68125g = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68122d.a(th)) {
                if (!this.f68121c) {
                    a();
                }
                this.f68125g = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onNext(T t3) {
            SwitchMapSingleObserver<R> switchMapSingleObserver;
            SwitchMapSingleObserver<R> switchMapSingleObserver2 = this.f68123e.get();
            if (switchMapSingleObserver2 != null) {
                switchMapSingleObserver2.a();
            }
            try {
                o0 o0Var = (o0) io.reactivex.internal.functions.a.g(this.f68120b.apply(t3), "The mapper returned a null SingleSource");
                SwitchMapSingleObserver<R> switchMapSingleObserver3 = new SwitchMapSingleObserver<>(this);
                do {
                    switchMapSingleObserver = this.f68123e.get();
                    if (switchMapSingleObserver == f68118i) {
                        return;
                    }
                } while (!this.f68123e.compareAndSet(switchMapSingleObserver, switchMapSingleObserver3));
                o0Var.a(switchMapSingleObserver3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68124f.dispose();
                this.f68123e.getAndSet(f68118i);
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(b bVar) {
            if (DisposableHelper.validate(this.f68124f, bVar)) {
                this.f68124f = bVar;
                this.f68119a.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapSingle(z<T> zVar, o<? super T, ? extends o0<? extends R>> oVar, boolean z3) {
        this.f68115a = zVar;
        this.f68116b = oVar;
        this.f68117c = z3;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super R> g0Var) {
        if (a.c(this.f68115a, this.f68116b, g0Var)) {
            return;
        }
        this.f68115a.a(new SwitchMapSingleMainObserver(g0Var, this.f68116b, this.f68117c));
    }
}

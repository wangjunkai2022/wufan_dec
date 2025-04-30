package io.reactivex.internal.operators.mixed;

import io.reactivex.disposables.b;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
/* loaded from: classes5.dex */
public final class ObservableSwitchMapMaybe<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f68101a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends w<? extends R>> f68102b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68103c;

    /* loaded from: classes5.dex */
    static final class SwitchMapMaybeMainObserver<T, R> extends AtomicInteger implements g0<T>, b {

        /* renamed from: i  reason: collision with root package name */
        static final SwitchMapMaybeObserver<Object> f68104i = new SwitchMapMaybeObserver<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f68105a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends w<? extends R>> f68106b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f68107c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f68108d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<SwitchMapMaybeObserver<R>> f68109e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        b f68110f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68111g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68112h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class SwitchMapMaybeObserver<R> extends AtomicReference<b> implements t<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final SwitchMapMaybeMainObserver<?, R> f68113a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f68114b;

            SwitchMapMaybeObserver(SwitchMapMaybeMainObserver<?, R> switchMapMaybeMainObserver) {
                this.f68113a = switchMapMaybeMainObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f68113a.c(this);
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f68113a.d(this, th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r3) {
                this.f68114b = r3;
                this.f68113a.b();
            }
        }

        SwitchMapMaybeMainObserver(g0<? super R> g0Var, o<? super T, ? extends w<? extends R>> oVar, boolean z3) {
            this.f68105a = g0Var;
            this.f68106b = oVar;
            this.f68107c = z3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            SwitchMapMaybeObserver<Object> switchMapMaybeObserver = f68104i;
            SwitchMapMaybeObserver<Object> switchMapMaybeObserver2 = (SwitchMapMaybeObserver) this.f68109e.getAndSet(switchMapMaybeObserver);
            if (switchMapMaybeObserver2 == null || switchMapMaybeObserver2 == switchMapMaybeObserver) {
                return;
            }
            switchMapMaybeObserver2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            g0<? super R> g0Var = this.f68105a;
            AtomicThrowable atomicThrowable = this.f68108d;
            AtomicReference<SwitchMapMaybeObserver<R>> atomicReference = this.f68109e;
            int i2 = 1;
            while (!this.f68112h) {
                if (atomicThrowable.get() != null && !this.f68107c) {
                    g0Var.onError(atomicThrowable.c());
                    return;
                }
                boolean z3 = this.f68111g;
                SwitchMapMaybeObserver<R> switchMapMaybeObserver = atomicReference.get();
                boolean z4 = switchMapMaybeObserver == null;
                if (z3 && z4) {
                    Throwable c4 = atomicThrowable.c();
                    if (c4 != null) {
                        g0Var.onError(c4);
                        return;
                    } else {
                        g0Var.onComplete();
                        return;
                    }
                } else if (!z4 && switchMapMaybeObserver.f68114b != null) {
                    atomicReference.compareAndSet(switchMapMaybeObserver, null);
                    g0Var.onNext((R) switchMapMaybeObserver.f68114b);
                } else {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        void c(SwitchMapMaybeObserver<R> switchMapMaybeObserver) {
            if (this.f68109e.compareAndSet(switchMapMaybeObserver, null)) {
                b();
            }
        }

        void d(SwitchMapMaybeObserver<R> switchMapMaybeObserver, Throwable th) {
            if (this.f68109e.compareAndSet(switchMapMaybeObserver, null) && this.f68108d.a(th)) {
                if (!this.f68107c) {
                    this.f68110f.dispose();
                    a();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68112h = true;
            this.f68110f.dispose();
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68112h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68111g = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68108d.a(th)) {
                if (!this.f68107c) {
                    a();
                }
                this.f68111g = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onNext(T t3) {
            SwitchMapMaybeObserver<R> switchMapMaybeObserver;
            SwitchMapMaybeObserver<R> switchMapMaybeObserver2 = this.f68109e.get();
            if (switchMapMaybeObserver2 != null) {
                switchMapMaybeObserver2.a();
            }
            try {
                w wVar = (w) io.reactivex.internal.functions.a.g(this.f68106b.apply(t3), "The mapper returned a null MaybeSource");
                SwitchMapMaybeObserver<R> switchMapMaybeObserver3 = new SwitchMapMaybeObserver<>(this);
                do {
                    switchMapMaybeObserver = this.f68109e.get();
                    if (switchMapMaybeObserver == f68104i) {
                        return;
                    }
                } while (!this.f68109e.compareAndSet(switchMapMaybeObserver, switchMapMaybeObserver3));
                wVar.a(switchMapMaybeObserver3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68110f.dispose();
                this.f68109e.getAndSet(f68104i);
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(b bVar) {
            if (DisposableHelper.validate(this.f68110f, bVar)) {
                this.f68110f = bVar;
                this.f68105a.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapMaybe(z<T> zVar, o<? super T, ? extends w<? extends R>> oVar, boolean z3) {
        this.f68101a = zVar;
        this.f68102b = oVar;
        this.f68103c = z3;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super R> g0Var) {
        if (a.b(this.f68101a, this.f68102b, g0Var)) {
            return;
        }
        this.f68101a.a(new SwitchMapMaybeMainObserver(g0Var, this.f68102b, this.f68103c));
    }
}

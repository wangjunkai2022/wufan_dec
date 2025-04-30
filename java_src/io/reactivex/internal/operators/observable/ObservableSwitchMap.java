package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableSwitchMap<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.e0<? extends R>> f68742b;

    /* renamed from: c  reason: collision with root package name */
    final int f68743c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f68744d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SwitchMapInnerObserver<T, R> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<R> {
        private static final long serialVersionUID = 3837284832786408377L;

        /* renamed from: a  reason: collision with root package name */
        final SwitchMapObserver<T, R> f68745a;

        /* renamed from: b  reason: collision with root package name */
        final long f68746b;

        /* renamed from: c  reason: collision with root package name */
        final int f68747c;

        /* renamed from: d  reason: collision with root package name */
        volatile x2.o<R> f68748d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f68749e;

        SwitchMapInnerObserver(SwitchMapObserver<T, R> switchMapObserver, long j4, int i2) {
            this.f68745a = switchMapObserver;
            this.f68746b = j4;
            this.f68747c = i2;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68746b == this.f68745a.f68760j) {
                this.f68749e = true;
                this.f68745a.b();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68745a.c(this, th);
        }

        @Override // io.reactivex.g0
        public void onNext(R r3) {
            if (this.f68746b == this.f68745a.f68760j) {
                if (r3 != null) {
                    this.f68748d.offer(r3);
                }
                this.f68745a.b();
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                if (bVar instanceof x2.j) {
                    x2.j jVar = (x2.j) bVar;
                    int requestFusion = jVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f68748d = jVar;
                        this.f68749e = true;
                        this.f68745a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f68748d = jVar;
                        return;
                    }
                }
                this.f68748d = new io.reactivex.internal.queue.a(this.f68747c);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class SwitchMapObserver<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: k  reason: collision with root package name */
        static final SwitchMapInnerObserver<Object, Object> f68750k;
        private static final long serialVersionUID = -3491074160481096299L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68751a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<? extends R>> f68752b;

        /* renamed from: c  reason: collision with root package name */
        final int f68753c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f68754d;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f68756f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68757g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.b f68758h;

        /* renamed from: j  reason: collision with root package name */
        volatile long f68760j;

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<SwitchMapInnerObserver<T, R>> f68759i = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f68755e = new AtomicThrowable();

        static {
            SwitchMapInnerObserver<Object, Object> switchMapInnerObserver = new SwitchMapInnerObserver<>(null, -1L, 1);
            f68750k = switchMapInnerObserver;
            switchMapInnerObserver.a();
        }

        SwitchMapObserver(io.reactivex.g0<? super R> g0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, int i2, boolean z3) {
            this.f68751a = g0Var;
            this.f68752b = oVar;
            this.f68753c = i2;
            this.f68754d = z3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            SwitchMapInnerObserver<Object, Object> switchMapInnerObserver;
            SwitchMapInnerObserver<T, R> switchMapInnerObserver2 = this.f68759i.get();
            SwitchMapInnerObserver<Object, Object> switchMapInnerObserver3 = f68750k;
            if (switchMapInnerObserver2 == switchMapInnerObserver3 || (switchMapInnerObserver = (SwitchMapInnerObserver) this.f68759i.getAndSet(switchMapInnerObserver3)) == switchMapInnerObserver3 || switchMapInnerObserver == null) {
                return;
            }
            switchMapInnerObserver.a();
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x000f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x00e9 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void b() {
            /*
                Method dump skipped, instructions count: 241
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableSwitchMap.SwitchMapObserver.b():void");
        }

        void c(SwitchMapInnerObserver<T, R> switchMapInnerObserver, Throwable th) {
            if (switchMapInnerObserver.f68746b == this.f68760j && this.f68755e.a(th)) {
                if (!this.f68754d) {
                    this.f68758h.dispose();
                }
                switchMapInnerObserver.f68749e = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68757g) {
                return;
            }
            this.f68757g = true;
            this.f68758h.dispose();
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68757g;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68756f) {
                return;
            }
            this.f68756f = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (!this.f68756f && this.f68755e.a(th)) {
                if (!this.f68754d) {
                    a();
                }
                this.f68756f = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            SwitchMapInnerObserver<T, R> switchMapInnerObserver;
            long j4 = this.f68760j + 1;
            this.f68760j = j4;
            SwitchMapInnerObserver<T, R> switchMapInnerObserver2 = this.f68759i.get();
            if (switchMapInnerObserver2 != null) {
                switchMapInnerObserver2.a();
            }
            try {
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68752b.apply(t3), "The ObservableSource returned is null");
                SwitchMapInnerObserver<T, R> switchMapInnerObserver3 = new SwitchMapInnerObserver<>(this, j4, this.f68753c);
                do {
                    switchMapInnerObserver = this.f68759i.get();
                    if (switchMapInnerObserver == f68750k) {
                        return;
                    }
                } while (!this.f68759i.compareAndSet(switchMapInnerObserver, switchMapInnerObserver3));
                e0Var.a(switchMapInnerObserver3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68758h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68758h, bVar)) {
                this.f68758h = bVar;
                this.f68751a.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMap(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, int i2, boolean z3) {
        super(e0Var);
        this.f68742b = oVar;
        this.f68743c = i2;
        this.f68744d = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super R> g0Var) {
        if (ObservableScalarXMap.b(this.f68961a, g0Var, this.f68742b)) {
            return;
        }
        this.f68961a.a(new SwitchMapObserver(g0Var, this.f68742b, this.f68743c, this.f68744d));
    }
}

package io.reactivex.internal.operators.mixed;

import io.reactivex.disposables.b;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.l0;
import io.reactivex.o0;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
import x2.n;
/* loaded from: classes5.dex */
public final class ObservableConcatMapSingle<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f68070a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends o0<? extends R>> f68071b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f68072c;

    /* renamed from: d  reason: collision with root package name */
    final int f68073d;

    /* loaded from: classes5.dex */
    static final class ConcatMapSingleMainObserver<T, R> extends AtomicInteger implements g0<T>, b {

        /* renamed from: l  reason: collision with root package name */
        static final int f68074l = 0;

        /* renamed from: m  reason: collision with root package name */
        static final int f68075m = 1;

        /* renamed from: n  reason: collision with root package name */
        static final int f68076n = 2;
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f68077a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends o0<? extends R>> f68078b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f68079c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final ConcatMapSingleObserver<R> f68080d = new ConcatMapSingleObserver<>(this);

        /* renamed from: e  reason: collision with root package name */
        final n<T> f68081e;

        /* renamed from: f  reason: collision with root package name */
        final ErrorMode f68082f;

        /* renamed from: g  reason: collision with root package name */
        b f68083g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68084h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68085i;

        /* renamed from: j  reason: collision with root package name */
        R f68086j;

        /* renamed from: k  reason: collision with root package name */
        volatile int f68087k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class ConcatMapSingleObserver<R> extends AtomicReference<b> implements l0<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final ConcatMapSingleMainObserver<?, R> f68088a;

            ConcatMapSingleObserver(ConcatMapSingleMainObserver<?, R> concatMapSingleMainObserver) {
                this.f68088a = concatMapSingleMainObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f68088a.b(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(b bVar) {
                DisposableHelper.replace(this, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r3) {
                this.f68088a.c(r3);
            }
        }

        ConcatMapSingleMainObserver(g0<? super R> g0Var, o<? super T, ? extends o0<? extends R>> oVar, int i2, ErrorMode errorMode) {
            this.f68077a = g0Var;
            this.f68078b = oVar;
            this.f68082f = errorMode;
            this.f68081e = new io.reactivex.internal.queue.a(i2);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            g0<? super R> g0Var = this.f68077a;
            ErrorMode errorMode = this.f68082f;
            n<T> nVar = this.f68081e;
            AtomicThrowable atomicThrowable = this.f68079c;
            int i2 = 1;
            while (true) {
                if (this.f68085i) {
                    nVar.clear();
                    this.f68086j = null;
                } else {
                    int i4 = this.f68087k;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i4 != 0))) {
                        if (i4 == 0) {
                            boolean z3 = this.f68084h;
                            T poll = nVar.poll();
                            boolean z4 = poll == null;
                            if (z3 && z4) {
                                Throwable c4 = atomicThrowable.c();
                                if (c4 == null) {
                                    g0Var.onComplete();
                                    return;
                                } else {
                                    g0Var.onError(c4);
                                    return;
                                }
                            } else if (!z4) {
                                try {
                                    o0 o0Var = (o0) io.reactivex.internal.functions.a.g(this.f68078b.apply(poll), "The mapper returned a null SingleSource");
                                    this.f68087k = 1;
                                    o0Var.a(this.f68080d);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    this.f68083g.dispose();
                                    nVar.clear();
                                    atomicThrowable.a(th);
                                    g0Var.onError(atomicThrowable.c());
                                    return;
                                }
                            }
                        } else if (i4 == 2) {
                            this.f68086j = null;
                            g0Var.onNext((R) this.f68086j);
                            this.f68087k = 0;
                        }
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
            nVar.clear();
            this.f68086j = null;
            g0Var.onError(atomicThrowable.c());
        }

        void b(Throwable th) {
            if (this.f68079c.a(th)) {
                if (this.f68082f != ErrorMode.END) {
                    this.f68083g.dispose();
                }
                this.f68087k = 0;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void c(R r3) {
            this.f68086j = r3;
            this.f68087k = 2;
            a();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68085i = true;
            this.f68083g.dispose();
            this.f68080d.a();
            if (getAndIncrement() == 0) {
                this.f68081e.clear();
                this.f68086j = null;
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68085i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68084h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68079c.a(th)) {
                if (this.f68082f == ErrorMode.IMMEDIATE) {
                    this.f68080d.a();
                }
                this.f68084h = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68081e.offer(t3);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(b bVar) {
            if (DisposableHelper.validate(this.f68083g, bVar)) {
                this.f68083g = bVar;
                this.f68077a.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMapSingle(z<T> zVar, o<? super T, ? extends o0<? extends R>> oVar, ErrorMode errorMode, int i2) {
        this.f68070a = zVar;
        this.f68071b = oVar;
        this.f68072c = errorMode;
        this.f68073d = i2;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super R> g0Var) {
        if (a.c(this.f68070a, this.f68071b, g0Var)) {
            return;
        }
        this.f68070a.a(new ConcatMapSingleMainObserver(g0Var, this.f68071b, this.f68073d, this.f68072c));
    }
}

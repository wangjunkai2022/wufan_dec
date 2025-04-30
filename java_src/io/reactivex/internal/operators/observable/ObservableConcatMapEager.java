package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.InnerQueuedObserver;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableConcatMapEager<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.e0<? extends R>> f68245b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f68246c;

    /* renamed from: d  reason: collision with root package name */
    final int f68247d;

    /* renamed from: e  reason: collision with root package name */
    final int f68248e;

    /* loaded from: classes5.dex */
    static final class ConcatMapEagerMainObserver<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b, io.reactivex.internal.observers.j<R> {
        private static final long serialVersionUID = 8080567949447303262L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68249a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<? extends R>> f68250b;

        /* renamed from: c  reason: collision with root package name */
        final int f68251c;

        /* renamed from: d  reason: collision with root package name */
        final int f68252d;

        /* renamed from: e  reason: collision with root package name */
        final ErrorMode f68253e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f68254f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final ArrayDeque<InnerQueuedObserver<R>> f68255g = new ArrayDeque<>();

        /* renamed from: h  reason: collision with root package name */
        x2.o<T> f68256h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.disposables.b f68257i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f68258j;

        /* renamed from: k  reason: collision with root package name */
        int f68259k;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f68260l;

        /* renamed from: m  reason: collision with root package name */
        InnerQueuedObserver<R> f68261m;

        /* renamed from: n  reason: collision with root package name */
        int f68262n;

        ConcatMapEagerMainObserver(io.reactivex.g0<? super R> g0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, int i2, int i4, ErrorMode errorMode) {
            this.f68249a = g0Var;
            this.f68250b = oVar;
            this.f68251c = i2;
            this.f68252d = i4;
            this.f68253e = errorMode;
        }

        void a() {
            InnerQueuedObserver<R> innerQueuedObserver = this.f68261m;
            if (innerQueuedObserver != null) {
                innerQueuedObserver.dispose();
            }
            while (true) {
                InnerQueuedObserver<R> poll = this.f68255g.poll();
                if (poll == null) {
                    return;
                }
                poll.dispose();
            }
        }

        @Override // io.reactivex.internal.observers.j
        public void b() {
            R poll;
            boolean z3;
            if (getAndIncrement() != 0) {
                return;
            }
            x2.o<T> oVar = this.f68256h;
            ArrayDeque<InnerQueuedObserver<R>> arrayDeque = this.f68255g;
            io.reactivex.g0<? super R> g0Var = this.f68249a;
            ErrorMode errorMode = this.f68253e;
            int i2 = 1;
            while (true) {
                int i4 = this.f68262n;
                while (i4 != this.f68251c) {
                    if (this.f68260l) {
                        oVar.clear();
                        a();
                        return;
                    } else if (errorMode == ErrorMode.IMMEDIATE && this.f68254f.get() != null) {
                        oVar.clear();
                        a();
                        g0Var.onError(this.f68254f.c());
                        return;
                    } else {
                        try {
                            T poll2 = oVar.poll();
                            if (poll2 == null) {
                                break;
                            }
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68250b.apply(poll2), "The mapper returned a null ObservableSource");
                            InnerQueuedObserver<R> innerQueuedObserver = new InnerQueuedObserver<>(this, this.f68252d);
                            arrayDeque.offer(innerQueuedObserver);
                            e0Var.a(innerQueuedObserver);
                            i4++;
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f68257i.dispose();
                            oVar.clear();
                            a();
                            this.f68254f.a(th);
                            g0Var.onError(this.f68254f.c());
                            return;
                        }
                    }
                }
                this.f68262n = i4;
                if (this.f68260l) {
                    oVar.clear();
                    a();
                    return;
                } else if (errorMode == ErrorMode.IMMEDIATE && this.f68254f.get() != null) {
                    oVar.clear();
                    a();
                    g0Var.onError(this.f68254f.c());
                    return;
                } else {
                    InnerQueuedObserver<R> innerQueuedObserver2 = this.f68261m;
                    if (innerQueuedObserver2 == null) {
                        if (errorMode == ErrorMode.BOUNDARY && this.f68254f.get() != null) {
                            oVar.clear();
                            a();
                            g0Var.onError(this.f68254f.c());
                            return;
                        }
                        boolean z4 = this.f68258j;
                        InnerQueuedObserver<R> poll3 = arrayDeque.poll();
                        boolean z5 = poll3 == null;
                        if (z4 && z5) {
                            if (this.f68254f.get() != null) {
                                oVar.clear();
                                a();
                                g0Var.onError(this.f68254f.c());
                                return;
                            }
                            g0Var.onComplete();
                            return;
                        }
                        if (!z5) {
                            this.f68261m = poll3;
                        }
                        innerQueuedObserver2 = poll3;
                    }
                    if (innerQueuedObserver2 != null) {
                        x2.o<R> c4 = innerQueuedObserver2.c();
                        while (!this.f68260l) {
                            boolean b4 = innerQueuedObserver2.b();
                            if (errorMode == ErrorMode.IMMEDIATE && this.f68254f.get() != null) {
                                oVar.clear();
                                a();
                                g0Var.onError(this.f68254f.c());
                                return;
                            }
                            try {
                                poll = c4.poll();
                                z3 = poll == null;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                this.f68254f.a(th2);
                                this.f68261m = null;
                                this.f68262n--;
                            }
                            if (b4 && z3) {
                                this.f68261m = null;
                                this.f68262n--;
                            } else if (!z3) {
                                g0Var.onNext(poll);
                            }
                        }
                        oVar.clear();
                        a();
                        return;
                    }
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.observers.j
        public void c(InnerQueuedObserver<R> innerQueuedObserver, Throwable th) {
            if (this.f68254f.a(th)) {
                if (this.f68253e == ErrorMode.IMMEDIATE) {
                    this.f68257i.dispose();
                }
                innerQueuedObserver.d();
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.observers.j
        public void d(InnerQueuedObserver<R> innerQueuedObserver) {
            innerQueuedObserver.d();
            b();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68260l = true;
            if (getAndIncrement() == 0) {
                this.f68256h.clear();
                a();
            }
        }

        @Override // io.reactivex.internal.observers.j
        public void e(InnerQueuedObserver<R> innerQueuedObserver, R r3) {
            innerQueuedObserver.c().offer(r3);
            b();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68260l;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68258j = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68254f.a(th)) {
                this.f68258j = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68259k == 0) {
                this.f68256h.offer(t3);
            }
            b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68257i, bVar)) {
                this.f68257i = bVar;
                if (bVar instanceof x2.j) {
                    x2.j jVar = (x2.j) bVar;
                    int requestFusion = jVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f68259k = requestFusion;
                        this.f68256h = jVar;
                        this.f68258j = true;
                        this.f68249a.onSubscribe(this);
                        b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f68259k = requestFusion;
                        this.f68256h = jVar;
                        this.f68249a.onSubscribe(this);
                        return;
                    }
                }
                this.f68256h = new io.reactivex.internal.queue.a(this.f68252d);
                this.f68249a.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMapEager(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, ErrorMode errorMode, int i2, int i4) {
        super(e0Var);
        this.f68245b = oVar;
        this.f68246c = errorMode;
        this.f68247d = i2;
        this.f68248e = i4;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super R> g0Var) {
        this.f68961a.a(new ConcatMapEagerMainObserver(g0Var, this.f68245b, this.f68247d, this.f68248e, this.f68246c));
    }
}

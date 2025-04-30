package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
/* loaded from: classes5.dex */
public final class ObservableObserveOn<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f68519b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f68520c;

    /* renamed from: d  reason: collision with root package name */
    final int f68521d;

    /* loaded from: classes5.dex */
    static final class ObserveOnObserver<T> extends BasicIntQueueDisposable<T> implements io.reactivex.g0<T>, Runnable {
        private static final long serialVersionUID = 6576896619930983584L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68522a;

        /* renamed from: b  reason: collision with root package name */
        final h0.c f68523b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f68524c;

        /* renamed from: d  reason: collision with root package name */
        final int f68525d;

        /* renamed from: e  reason: collision with root package name */
        x2.o<T> f68526e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.b f68527f;

        /* renamed from: g  reason: collision with root package name */
        Throwable f68528g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f68529h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68530i;

        /* renamed from: j  reason: collision with root package name */
        int f68531j;

        /* renamed from: k  reason: collision with root package name */
        boolean f68532k;

        ObserveOnObserver(io.reactivex.g0<? super T> g0Var, h0.c cVar, boolean z3, int i2) {
            this.f68522a = g0Var;
            this.f68523b = cVar;
            this.f68524c = z3;
            this.f68525d = i2;
        }

        boolean a(boolean z3, boolean z4, io.reactivex.g0<? super T> g0Var) {
            if (this.f68530i) {
                this.f68526e.clear();
                return true;
            } else if (z3) {
                Throwable th = this.f68528g;
                if (this.f68524c) {
                    if (z4) {
                        this.f68530i = true;
                        if (th != null) {
                            g0Var.onError(th);
                        } else {
                            g0Var.onComplete();
                        }
                        this.f68523b.dispose();
                        return true;
                    }
                    return false;
                } else if (th != null) {
                    this.f68530i = true;
                    this.f68526e.clear();
                    g0Var.onError(th);
                    this.f68523b.dispose();
                    return true;
                } else if (z4) {
                    this.f68530i = true;
                    g0Var.onComplete();
                    this.f68523b.dispose();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            int i2 = 1;
            while (!this.f68530i) {
                boolean z3 = this.f68529h;
                Throwable th = this.f68528g;
                if (!this.f68524c && z3 && th != null) {
                    this.f68530i = true;
                    this.f68522a.onError(this.f68528g);
                    this.f68523b.dispose();
                    return;
                }
                this.f68522a.onNext(null);
                if (z3) {
                    this.f68530i = true;
                    Throwable th2 = this.f68528g;
                    if (th2 != null) {
                        this.f68522a.onError(th2);
                    } else {
                        this.f68522a.onComplete();
                    }
                    this.f68523b.dispose();
                    return;
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
        }

        void c() {
            x2.o<T> oVar = this.f68526e;
            io.reactivex.g0<? super T> g0Var = this.f68522a;
            int i2 = 1;
            while (!a(this.f68529h, oVar.isEmpty(), g0Var)) {
                while (true) {
                    boolean z3 = this.f68529h;
                    try {
                        Object obj = (T) oVar.poll();
                        boolean z4 = obj == null;
                        if (a(z3, z4, g0Var)) {
                            return;
                        }
                        if (z4) {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        } else {
                            g0Var.onNext(obj);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f68530i = true;
                        this.f68527f.dispose();
                        oVar.clear();
                        g0Var.onError(th);
                        this.f68523b.dispose();
                        return;
                    }
                }
            }
        }

        @Override // x2.o
        public void clear() {
            this.f68526e.clear();
        }

        void d() {
            if (getAndIncrement() == 0) {
                this.f68523b.b(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68530i) {
                return;
            }
            this.f68530i = true;
            this.f68527f.dispose();
            this.f68523b.dispose();
            if (getAndIncrement() == 0) {
                this.f68526e.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68530i;
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f68526e.isEmpty();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68529h) {
                return;
            }
            this.f68529h = true;
            d();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68529h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f68528g = th;
            this.f68529h = true;
            d();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68529h) {
                return;
            }
            if (this.f68531j != 2) {
                this.f68526e.offer(t3);
            }
            d();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68527f, bVar)) {
                this.f68527f = bVar;
                if (bVar instanceof x2.j) {
                    x2.j jVar = (x2.j) bVar;
                    int requestFusion = jVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f68531j = requestFusion;
                        this.f68526e = jVar;
                        this.f68529h = true;
                        this.f68522a.onSubscribe(this);
                        d();
                        return;
                    } else if (requestFusion == 2) {
                        this.f68531j = requestFusion;
                        this.f68526e = jVar;
                        this.f68522a.onSubscribe(this);
                        return;
                    }
                }
                this.f68526e = new io.reactivex.internal.queue.a(this.f68525d);
                this.f68522a.onSubscribe(this);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            return this.f68526e.poll();
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f68532k = true;
                return 2;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f68532k) {
                b();
            } else {
                c();
            }
        }
    }

    public ObservableObserveOn(io.reactivex.e0<T> e0Var, io.reactivex.h0 h0Var, boolean z3, int i2) {
        super(e0Var);
        this.f68519b = h0Var;
        this.f68520c = z3;
        this.f68521d = i2;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.h0 h0Var = this.f68519b;
        if (h0Var instanceof io.reactivex.internal.schedulers.l) {
            this.f68961a.a(g0Var);
            return;
        }
        this.f68961a.a(new ObserveOnObserver(g0Var, h0Var.c(), this.f68520c, this.f68521d));
    }
}
